; ModuleID = '/llk/IR_all_yes/drivers/media/pci/pt3/pt3.c_pt.bc'
source_filename = "../drivers/media/pci/pt3/pt3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pt3_adap_config = type { %struct.i2c_board_info, %struct.tc90522_config, %struct.i2c_board_info, %union.tuner_config, i32 }
%struct.tc90522_config = type { ptr, ptr, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%union.tuner_config = type { %struct.qm1d1c0042_config }
%struct.qm1d1c0042_config = type { ptr, i32, i8, i8, i32, i32, i32 }
%struct.reg_val = type { i8, i8 }
%struct.mxl301rf_config = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.pt3_board = type { ptr, [2 x ptr], %struct.mutex, i32, i32, i32, %struct.i2c_adapter, ptr, [4 x ptr] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.pt3_adapter = type { %struct.dvb_adapter, i32, %struct.dvb_demux, %struct.dmxdev, ptr, ptr, ptr, ptr, i32, i8, i8, [16 x %struct.dma_data_buffer], i32, i32, i32, i32, [4 x %struct.xfer_desc_buffer], i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dma_data_buffer = type { i32, ptr }
%struct.xfer_desc_buffer = type { i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.98], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.98 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.99 }>
%union.anon.99 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dvb_demux_feed = type { %union.anon.90, %union.anon.91, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.90 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__param_str_adapter_nr = internal constant [21 x i8] c"earth_pt3.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype298 = internal constant [45 x i8] c"earth_pt3.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr299 = internal constant [46 x i8] c"earth_pt3.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__param_str_one_adapter = internal constant [22 x i8] c"earth_pt3.one_adapter\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@one_adapter = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_one_adapter = internal constant %struct.kernel_param { ptr @__param_str_one_adapter, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @one_adapter } }, section "__param", align 4
@__UNIQUE_ID_one_adaptertype300 = internal constant [36 x i8] c"earth_pt3.parmtype=one_adapter:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_one_adapter301 = internal constant [66 x i8] c"earth_pt3.parm=one_adapter:Place FE's together under one adapter.\00", section ".modinfo", align 1
@__param_str_num_bufs = internal constant [19 x i8] c"earth_pt3.num_bufs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_bufs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_num_bufs = internal constant %struct.kernel_param { ptr @__param_str_num_bufs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @num_bufs } }, section "__param", align 4
@__UNIQUE_ID_num_bufstype302 = internal constant [32 x i8] c"earth_pt3.parmtype=num_bufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_bufs303 = internal constant [62 x i8] c"earth_pt3.parm=num_bufs:Number of DMA buffer (188KiB) per FE.\00", section ".modinfo", align 1
@__initcall__kmod_earth_pt3__311_806_pt3_driver_init6 = internal global ptr @pt3_driver_init, section ".initcall6.init", align 4
@pt3_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pt3_id_table, ptr @pt3_probe, ptr @pt3_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pt3_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pt3_driver_exit = internal global ptr @pt3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description312 = internal constant [43 x i8] c"earth_pt3.description=Earthsoft PT3 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [33 x i8] c"earth_pt3.author=Akihiro TSUKADA\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [47 x i8] c"earth_pt3.file=drivers/media/pci/pt3/earth-pt3\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [22 x i8] c"earth_pt3.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"earth_pt3\00", [22 x i8] zeroinitializer }, align 32
@pt3_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4466, i32 19477, i32 61069, i32 872, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pt3_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pt3_suspend, ptr @pt3_resume, ptr @pt3_suspend, ptr @pt3_resume, ptr @pt3_suspend, ptr @pt3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pt3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pt3_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/pci/pt3/pt3.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pt3_probe._entry_ptr = internal global ptr @pt3_probe._entry, section ".printk_index", align 4
@pt3_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 721, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Use 32bit DMA\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pt3_probe._entry_ptr.9 = internal global ptr @pt3_probe._entry.6, section ".printk_index", align 4
@pt3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pt3->lock\00", [21 x i8] zeroinitializer }, align 32
@pt3_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 736, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PT%d, I/F-ver.:%d not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pt3_probe._entry_ptr.14 = internal global ptr @pt3_probe._entry.11, section ".printk_index", align 4
@pt3_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @pt3_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @pt3_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pt3_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to create FE%d\0A\00", [41 x i8] zeroinitializer }, align 32
@pt3_probe._entry_ptr.17 = internal global ptr @pt3_probe._entry.15, section ".printk_index", align 4
@pt3_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to init frontends\0A\00", [38 x i8] zeroinitializer }, align 32
@pt3_probe._entry_ptr.20 = internal global ptr @pt3_probe._entry.18, section ".printk_index", align 4
@pt3_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 779, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"successfully init'ed PT%d (fw:0x%02x, I/F:0x%02x)\0A\00", [45 x i8] zeroinitializer }, align 32
@pt3_probe._entry_ptr.23 = internal global ptr @pt3_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PT3 DVB\00", [24 x i8] zeroinitializer }, align 32
@pt3_alloc_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 544, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register adapter dev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pt3_alloc_adapter\00", [46 x i8] zeroinitializer }, align 32
@pt3_alloc_adapter._entry_ptr = internal global ptr @pt3_alloc_adapter._entry, section ".printk_index", align 4
@pt3_alloc_adapter._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 560, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init dmx dev\0A\00", [40 x i8] zeroinitializer }, align 32
@pt3_alloc_adapter._entry_ptr.29 = internal global ptr @pt3_alloc_adapter._entry.27, section ".printk_index", align 4
@pt3_alloc_adapter._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init dmxdev\0A\00", [41 x i8] zeroinitializer }, align 32
@pt3_alloc_adapter._entry_ptr.32 = internal global ptr @pt3_alloc_adapter._entry.30, section ".printk_index", align 4
@pt3_alloc_adapter._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to alloc DMA buffers\0A\00", [35 x i8] zeroinitializer }, align 32
@pt3_alloc_adapter._entry_ptr.35 = internal global ptr @pt3_alloc_adapter._entry.33, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pt3-ad%i-dmx%i\00", [17 x i8] zeroinitializer }, align 32
@pt3_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 471, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PT3 (adap:%d, dmx:%d): failed to start kthread\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pt3_start_streaming\00", [44 x i8] zeroinitializer }, align 32
@pt3_start_streaming._entry_ptr = internal global ptr @pt3_start_streaming._entry, section ".printk_index", align 4
@pt3_fetch_thread.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pt3_fetch_thread\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PT3: [%s] started\0A\00", [45 x i8] zeroinitializer }, align 32
@pt3_fetch_thread.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.41, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PT3: [%s] exited\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@pt3_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 487, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PT3: failed to stop streaming of adap:%d/FE:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pt3_stop_streaming\00", [45 x i8] zeroinitializer }, align 32
@pt3_stop_streaming._entry_ptr = internal global ptr @pt3_stop_streaming._entry, section ".printk_index", align 4
@adap_conf = internal constant { [4 x %struct.pt3_adap_config], [128 x i8] } { [4 x %struct.pt3_adap_config] [%struct.pt3_adap_config { %struct.i2c_board_info { [20 x i8] c"tc90522sat\00\00\00\00\00\00\00\00\00\00", i16 0, i16 17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"qm1d1c0042\00\00\00\00\00\00\00\00\00\00", i16 0, i16 99, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.tuner_config { %struct.qm1d1c0042_config { ptr null, i32 0, i8 1, i8 0, i32 0, i32 0, i32 0 } }, i32 1049180 }, %struct.pt3_adap_config { %struct.i2c_board_info { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i16 0, i16 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"mxl301rf\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 98, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.tuner_config zeroinitializer, i32 515142857 }, %struct.pt3_adap_config { %struct.i2c_board_info { [20 x i8] c"tc90522sat\00\00\00\00\00\00\00\00\00\00", i16 0, i16 19, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"qm1d1c0042\00\00\00\00\00\00\00\00\00\00", i16 0, i16 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.tuner_config { %struct.qm1d1c0042_config { ptr null, i32 0, i8 1, i8 0, i32 0, i32 0, i32 0 } }, i32 1049780 }, %struct.pt3_adap_config { %struct.i2c_board_info { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i16 0, i16 18, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"mxl301rf\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 97, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.tuner_config zeroinitializer, i32 521142857 }], [128 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc90522\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tc90522sat\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qm1d1c0042\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxl301rf\00", [23 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 250, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init demod chips\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pt3_fe_init\00", [20 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr = internal global ptr @pt3_fe_init._entry, section ".printk_index", align 4
@init0_sat = internal constant { [2 x %struct.reg_val], [28 x i8] } { [2 x %struct.reg_val] [%struct.reg_val { i8 3, i8 1 }, %struct.reg_val { i8 30, i8 16 }], [28 x i8] zeroinitializer }, align 32
@init0_ter = internal constant { [2 x %struct.reg_val], [28 x i8] } { [2 x %struct.reg_val] [%struct.reg_val { i8 1, i8 64 }, %struct.reg_val { i8 28, i8 16 }], [28 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 266, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"demod[%d] failed in init sequence0\0A\00", [60 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.53 = internal global ptr @pt3_fe_init._entry.51, section ".printk_index", align 4
@pt3_fe_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 277, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to control tuner module\0A\00", [32 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.56 = internal global ptr @pt3_fe_init._entry.54, section ".printk_index", align 4
@cfg_sat = internal constant { [2 x %struct.reg_val], [28 x i8] } { [2 x %struct.reg_val] [%struct.reg_val { i8 28, i8 21 }, %struct.reg_val { i8 31, i8 4 }], [28 x i8] zeroinitializer }, align 32
@cfg_ter = internal constant { [1 x %struct.reg_val], [30 x i8] } { [1 x %struct.reg_val] [%struct.reg_val { i8 29, i8 1 }], [30 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.3, i32 292, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"demod[%d] failed in init sequence1\0A\00", [60 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.59 = internal global ptr @pt3_fe_init._entry.57, section ".printk_index", align 4
@pt3_fe_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.3, i32 306, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init SAT-tuner[%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.62 = internal global ptr @pt3_fe_init._entry.60, section ".printk_index", align 4
@pt3_fe_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.50, ptr @.str.3, i32 312, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init TERR-tuners\0A\00", [36 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.65 = internal global ptr @pt3_fe_init._entry.63, section ".printk_index", align 4
@pt3_fe_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 318, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.67 = internal global ptr @pt3_fe_init._entry.66, section ".printk_index", align 4
@pt3_fe_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.50, ptr @.str.3, i32 339, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed in initial tuning of tuner[%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.70 = internal global ptr @pt3_fe_init._entry.68, section ".printk_index", align 4
@pt3_fe_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.50, ptr @.str.3, i32 361, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FE[%d] failed to standby\0A\00", [38 x i8] zeroinitializer }, align 32
@pt3_fe_init._entry_ptr.73 = internal global ptr @pt3_fe_init._entry.71, section ".printk_index", align 4
@pt3_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to alloc DMA bufs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pt3_resume\00", [21 x i8] zeroinitializer }, align 32
@pt3_resume._entry_ptr = internal global ptr @pt3_resume._entry, section ".printk_index", align 4
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"one_adapter\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 26, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"num_bufs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 30, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"pt3_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 797, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 24, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 806, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"pt3_id_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 789, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"pt3_pm_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 795, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 718, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 721, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 729, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 735, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [13 x i8] c"pt3_i2c_algo\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 35, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 766, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 772, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 777, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 540, i32 47 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 543, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 560, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 568, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 574, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 463, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 469, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 438, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 453, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 57, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 485, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"adap_conf\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 40, i32 37 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 381, i32 24 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 387, i32 25 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 394, i32 25 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 402, i32 25 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 250, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [10 x i8] c"init0_sat\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 217, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant [10 x i8] c"init0_ter\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 221, i32 29 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 265, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 277, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [8 x i8] c"cfg_sat\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 225, i32 29 }
@___asan_gen_.268 = private unnamed_addr constant [8 x i8] c"cfg_ter\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 229, i32 29 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 291, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 305, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 312, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 318, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 338, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 361, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.311 = private constant [31 x i8] c"../drivers/media/pci/pt3/pt3.c\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 666, i32 4 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_adapter_nr299, ptr @__UNIQUE_ID_adapter_nrtype298, ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__UNIQUE_ID_num_bufs303, ptr @__UNIQUE_ID_num_bufstype302, ptr @__UNIQUE_ID_one_adapter301, ptr @__UNIQUE_ID_one_adaptertype300, ptr @__exitcall_pt3_driver_exit, ptr @__initcall__kmod_earth_pt3__311_806_pt3_driver_init6, ptr @__param_adapter_nr, ptr @__param_num_bufs, ptr @__param_one_adapter, ptr @pt3_alloc_adapter._entry, ptr @pt3_alloc_adapter._entry.27, ptr @pt3_alloc_adapter._entry.30, ptr @pt3_alloc_adapter._entry.33, ptr @pt3_alloc_adapter._entry_ptr, ptr @pt3_alloc_adapter._entry_ptr.29, ptr @pt3_alloc_adapter._entry_ptr.32, ptr @pt3_alloc_adapter._entry_ptr.35, ptr @pt3_driver_exit, ptr @pt3_fe_init._entry, ptr @pt3_fe_init._entry.51, ptr @pt3_fe_init._entry.54, ptr @pt3_fe_init._entry.57, ptr @pt3_fe_init._entry.60, ptr @pt3_fe_init._entry.63, ptr @pt3_fe_init._entry.66, ptr @pt3_fe_init._entry.68, ptr @pt3_fe_init._entry.71, ptr @pt3_fe_init._entry_ptr, ptr @pt3_fe_init._entry_ptr.53, ptr @pt3_fe_init._entry_ptr.56, ptr @pt3_fe_init._entry_ptr.59, ptr @pt3_fe_init._entry_ptr.62, ptr @pt3_fe_init._entry_ptr.65, ptr @pt3_fe_init._entry_ptr.67, ptr @pt3_fe_init._entry_ptr.70, ptr @pt3_fe_init._entry_ptr.73, ptr @pt3_probe._entry, ptr @pt3_probe._entry.11, ptr @pt3_probe._entry.15, ptr @pt3_probe._entry.18, ptr @pt3_probe._entry.21, ptr @pt3_probe._entry.6, ptr @pt3_probe._entry_ptr, ptr @pt3_probe._entry_ptr.14, ptr @pt3_probe._entry_ptr.17, ptr @pt3_probe._entry_ptr.20, ptr @pt3_probe._entry_ptr.23, ptr @pt3_probe._entry_ptr.9, ptr @pt3_resume._entry, ptr @pt3_resume._entry_ptr, ptr @pt3_start_streaming._entry, ptr @pt3_start_streaming._entry_ptr, ptr @pt3_stop_streaming._entry, ptr @pt3_stop_streaming._entry_ptr, ptr @one_adapter, ptr @num_bufs, ptr @pt3_driver, ptr @adapter_nr, ptr @.str, ptr @pt3_id_table, ptr @pt3_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @pt3_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @pt3_i2c_algo, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @adap_conf, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @init0_sat, ptr @init0_ter, ptr @.str.52, ptr @.str.55, ptr @cfg_sat, ptr @cfg_ter, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_adapter to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_alloc_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_alloc_adapter._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_alloc_adapter._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_alloc_adapter._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_conf to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init0_sat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init0_ter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_sat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ter to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_fe_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt3_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pt3_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pt3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @pt3_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %cfg.i = alloca %struct.tc90522_config, align 4
  %tcfg.i = alloca %struct.qm1d1c0042_config, align 4
  %tcfg16.i = alloca %struct.mxl301rf_config, align 4
  %rev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rev) #9
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rev, align 1, !annotation !186
  %call = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull %rev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @pcim_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @pci_set_master(ptr noundef %pdev) #9
  %call7 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 5, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call12 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #9
  br label %if.end32

if.else:                                          ; preds = %if.end11
  %call19 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %do.end

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %if.end32

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end32:                                         ; preds = %if.then22, %if.then15
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1504, i32 noundef 3520) #9
  %tobool35.not = icmp eq ptr %call.i, null
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %call.i, align 8
  %lock = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @pt3_probe.__key) #9
  %call42 = call ptr @pcim_iomap_table(ptr noundef %pdev) #9
  %5 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call42, align 4
  %regs = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regs, align 4
  %call44 = call ptr @pcim_iomap_table(ptr noundef %pdev) #9
  %arrayidx45 = getelementptr ptr, ptr %call44, i32 2
  %8 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.pt3_board, ptr %call.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx47, align 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !187
  %14 = call i32 @llvm.bswap.i32(i32 %13) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  %shr.mask = and i32 %14, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 50397184, i32 %shr.mask)
  %cmp51.not = icmp eq i32 %shr.mask, 50397184
  br i1 %cmp51.not, label %if.end60, label %do.end56

do.end56:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %shr58 = lshr i32 %14, 24
  %and = lshr i32 %14, 16
  %shr59 = and i32 %and, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %shr58, i32 noundef %shr59) #12
  br label %cleanup

if.end60:                                         ; preds = %if.end37
  %15 = load i32, ptr @num_bufs, align 4
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 2)
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 16)
  %num_bufs = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %num_bufs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_bufs, align 8
  %call71 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4096, i32 noundef 3264) #9
  %i2c_buf = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %i2c_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call71, ptr %i2c_buf, align 8
  %tobool73.not = icmp eq ptr %call71, null
  br i1 %tobool73.not, label %if.end60.cleanup_crit_edge, label %if.end75

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %if.end60
  %i2c_adap = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %i2c_adap, align 8
  %algo = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pt3_i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 6, i32 9, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 6, i32 12
  %call78 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #9
  %driver_data.i.i198 = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 6, i32 9, i32 8
  %24 = ptrtoint ptr %driver_data.i.i198 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i198, align 4
  %call79 = call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end75.cleanup_crit_edge, label %for.cond.preheader

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end75
  %adaps.i = getelementptr inbounds %struct.pt3_board, ptr %call.i, i32 0, i32 8
  %tuner_i2c.i = getelementptr inbounds %struct.tc90522_config, ptr %cfg.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0236 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 2088) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.do.end101_crit_edge, label %if.end.i

for.body.do.end101_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end101

if.end.i:                                         ; preds = %for.body
  %arrayidx.i = getelementptr %struct.pt3_board, ptr %call.i, i32 0, i32 8, i32 %i.0236
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %adap_idx.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %adap_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0236, ptr %adap_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0236)
  %cmp.i = icmp eq i32 %i.0236, 0
  br i1 %cmp.i, label %if.end.i.if.then2.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %28 = load i8, ptr @one_adapter, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not.i = icmp eq i8 %28, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then2.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then2.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.then2.i:                                       ; preds = %lor.lhs.false.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %call3.i = call i32 @dvb_register_adapter(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef %dev.i, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %pt3_alloc_adapter.exit.thread212, label %if.then2.i.if.end13.i_crit_edge

if.then2.i.if.end13.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

pt3_alloc_adapter.exit.thread212:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.25) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.i, align 4
  br label %do.end101

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %adaps.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adaps.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then2.i.if.end13.i_crit_edge
  %da.0.i = phi ptr [ %35, %if.else.i ], [ %call7.i.i.i, %if.then2.i.if.end13.i_crit_edge ]
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %call7.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %priv.i, align 8
  %demux.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %demux.i, align 8
  %priv16.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %priv16.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %priv16.i, align 4
  %feednum.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 256, ptr %feednum.i, align 4
  %filternum.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 256, ptr %filternum.i, align 8
  %start_feed.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @pt3_start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pt3_stop_feed, ptr %stop_feed.i, align 4
  %call22.i = call i32 @dvb_dmx_init(ptr noundef %demux.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end27.i, label %if.end30.i

do.end27.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 8
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.28) #12
  br label %err_adap.i

if.end30.i:                                       ; preds = %if.end13.i
  %dmxdev.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 3
  %filternum31.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %filternum31.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 256, ptr %filternum31.i, align 8
  %demux35.i = getelementptr inbounds %struct.pt3_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %demux35.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %demux.i, ptr %demux35.i, align 4
  %call37.i = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %da.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %if.end45.i

do.end42.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 8
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.31) #12
  br label %err_demux.i

if.end45.i:                                       ; preds = %if.end30.i
  %call46.i = call i32 @pt3_alloc_dmabuf(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end90_crit_edge, label %do.end51.i

if.end45.i.if.end90_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.end51.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 8
  %dev53.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.34) #12
  call void @pt3_free_dmabuf(ptr noundef nonnull %call7.i.i.i) #9
  call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #9
  br label %err_demux.i

err_demux.i:                                      ; preds = %do.end51.i, %do.end42.i
  %ret.0.i = phi i32 [ %call37.i, %do.end42.i ], [ %call46.i, %do.end51.i ]
  call void @dvb_dmx_release(ptr noundef %demux.i) #9
  br label %err_adap.i

err_adap.i:                                       ; preds = %err_demux.i, %do.end27.i
  %ret.1.i = phi i32 [ %call22.i, %do.end27.i ], [ %ret.0.i, %err_demux.i ]
  br i1 %cmp.i, label %err_adap.i.if.then60.i_crit_edge, label %lor.lhs.false58.i

err_adap.i.if.then60.i_crit_edge:                 ; preds = %err_adap.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i

lor.lhs.false58.i:                                ; preds = %err_adap.i
  %51 = load i8, ptr @one_adapter, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool59.not.i = icmp eq i8 %51, 0
  br i1 %tobool59.not.i, label %lor.lhs.false58.i.if.then60.i_crit_edge, label %lor.lhs.false58.i.pt3_alloc_adapter.exit_crit_edge

lor.lhs.false58.i.pt3_alloc_adapter.exit_crit_edge: ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_alloc_adapter.exit

lor.lhs.false58.i.if.then60.i_crit_edge:          ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i

if.then60.i:                                      ; preds = %lor.lhs.false58.i.if.then60.i_crit_edge, %err_adap.i.if.then60.i_crit_edge
  %call61.i = call i32 @dvb_unregister_adapter(ptr noundef %da.0.i) #9
  br label %pt3_alloc_adapter.exit

pt3_alloc_adapter.exit:                           ; preds = %if.then60.i, %lor.lhs.false58.i.pt3_alloc_adapter.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp87 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp87, label %pt3_alloc_adapter.exit.do.end101_crit_edge, label %pt3_alloc_adapter.exit.if.end90_crit_edge

pt3_alloc_adapter.exit.if.end90_crit_edge:        ; preds = %pt3_alloc_adapter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

pt3_alloc_adapter.exit.do.end101_crit_edge:       ; preds = %pt3_alloc_adapter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end101

if.end90:                                         ; preds = %pt3_alloc_adapter.exit.if.end90_crit_edge, %if.end45.i.if.end90_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i) #9
  %arrayidx.i199 = getelementptr [4 x %struct.pt3_adap_config], ptr @adap_conf, i32 0, i32 %i.0236
  %demod_cfg.i = getelementptr [4 x %struct.pt3_adap_config], ptr @adap_conf, i32 0, i32 %i.0236, i32 1
  %53 = call ptr @memcpy(ptr %cfg.i, ptr %demod_cfg.i, i32 12)
  %54 = ptrtoint ptr %tuner_i2c.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %tuner_i2c.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %arrayidx.i199, i32 0, i32 2
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr.i, align 2
  %conv.i = trunc i16 %56 to i8
  %call.i200 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.45, ptr noundef %arrayidx.i199, ptr noundef %i2c_adap, i8 noundef zeroext %conv.i, ptr noundef nonnull %cfg.i) #9
  %tobool.not.i201 = icmp eq ptr %call.i200, null
  br i1 %tobool.not.i201, label %if.end90.pt3_attach_fe.exit.thread_crit_edge, label %if.end.i202

if.end90.pt3_attach_fe.exit.thread_crit_edge:     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_attach_fe.exit.thread

if.end.i202:                                      ; preds = %if.end90
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %i2c_demod.i = getelementptr inbounds %struct.pt3_adapter, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %i2c_demod.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i200, ptr %i2c_demod.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %call.i200, i32 0, i32 2
  %call4.i = call i32 @strncmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(11) @.str.46, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i203

if.then6.i:                                       ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tcfg.i) #9
  %tuner_cfg.i = getelementptr [4 x %struct.pt3_adap_config], ptr @adap_conf, i32 0, i32 %i.0236, i32 3
  %60 = call ptr @memcpy(ptr %tcfg.i, ptr %tuner_cfg.i, i32 24)
  %61 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i, align 4
  %63 = ptrtoint ptr %tcfg.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %tcfg.i, align 4
  %tuner_info.i = getelementptr [4 x %struct.pt3_adap_config], ptr @adap_conf, i32 0, i32 %i.0236, i32 2
  %64 = ptrtoint ptr %tuner_i2c.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tuner_i2c.i, align 4
  %addr13.i = getelementptr [4 x %struct.pt3_adap_config], ptr @adap_conf, i32 0, i32 %i.0236, i32 2, i32 2
  %66 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr13.i, align 2
  %conv14.i = trunc i16 %67 to i8
  %call15.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str.47, ptr noundef %tuner_info.i, ptr noundef %65, i8 noundef zeroext %conv14.i, ptr noundef nonnull %tcfg.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tcfg.i) #9
  br label %if.end29.i

if.else.i203:                                     ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcfg16.i) #9
  %68 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i, align 4
  %70 = ptrtoint ptr %tcfg16.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %tcfg16.i, align 4
  %tuner_info22.i = getelementptr [4 x %struct.pt3_adap_config], ptr @adap_conf, i32 0, i32 %i.0236, i32 2
  %71 = ptrtoint ptr %tuner_i2c.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tuner_i2c.i, align 4
  %addr26.i = getelementptr [4 x %struct.pt3_adap_config], ptr @adap_conf, i32 0, i32 %i.0236, i32 2, i32 2
  %73 = ptrtoint ptr %addr26.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr26.i, align 2
  %conv27.i = trunc i16 %74 to i8
  %call28.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str.48, ptr noundef %tuner_info22.i, ptr noundef %72, i8 noundef zeroext %conv27.i, ptr noundef nonnull %tcfg16.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfg16.i) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i203, %if.then6.i
  %cl.0.i = phi ptr [ %call28.i, %if.else.i203 ], [ %call15.i, %if.then6.i ]
  %tobool30.not.i = icmp eq ptr %cl.0.i, null
  br i1 %tobool30.not.i, label %if.end29.i.err_demod_module_release.i_crit_edge, label %if.end32.i

if.end29.i.err_demod_module_release.i_crit_edge:  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_demod_module_release.i

if.end32.i:                                       ; preds = %if.end29.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %i2c_tuner.i = getelementptr inbounds %struct.pt3_adapter, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %i2c_tuner.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %cl.0.i, ptr %i2c_tuner.i, align 8
  %78 = load i8, ptr @one_adapter, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool36.not.i = icmp eq i8 %78, 0
  %spec.select.i = select i1 %tobool36.not.i, i32 %i.0236, i32 0
  %arrayidx38.i = getelementptr %struct.pt3_board, ptr %call.i, i32 0, i32 8, i32 %spec.select.i
  %79 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx38.i, align 4
  %81 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cfg.i, align 4
  %call41.i = call i32 @dvb_register_frontend(ptr noundef %80, ptr noundef %82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp.i204 = icmp slt i32 %call41.i, 0
  br i1 %cmp.i204, label %err_tuner_module_release.i, label %for.inc

err_tuner_module_release.i:                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %i2c_tuner51.i = getelementptr inbounds %struct.pt3_adapter, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %i2c_tuner51.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c_tuner51.i, align 8
  call void @dvb_module_release(ptr noundef %86) #9
  br label %err_demod_module_release.i

err_demod_module_release.i:                       ; preds = %err_tuner_module_release.i, %if.end29.i.err_demod_module_release.i_crit_edge
  %ret.0.i205 = phi i32 [ %call41.i, %err_tuner_module_release.i ], [ -19, %if.end29.i.err_demod_module_release.i_crit_edge ]
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 4
  %i2c_demod54.i = getelementptr inbounds %struct.pt3_adapter, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %i2c_demod54.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i2c_demod54.i, align 4
  call void @dvb_module_release(ptr noundef %90) #9
  br label %pt3_attach_fe.exit.thread

pt3_attach_fe.exit.thread:                        ; preds = %err_demod_module_release.i, %if.end90.pt3_attach_fe.exit.thread_crit_edge
  %retval.0.i206.ph = phi i32 [ %ret.0.i205, %err_demod_module_release.i ], [ -19, %if.end90.pt3_attach_fe.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #9
  br label %do.end101

for.inc:                                          ; preds = %if.end32.i
  %91 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfg.i, align 4
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 4
  %fe48.i = getelementptr inbounds %struct.pt3_adapter, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %fe48.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %fe48.i, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #9
  %inc = add nuw nsw i32 %i.0236, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end103, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end101:                                        ; preds = %pt3_attach_fe.exit.thread, %pt3_alloc_adapter.exit.do.end101_crit_edge, %pt3_alloc_adapter.exit.thread212, %for.body.do.end101_crit_edge
  %ret.1.ph = phi i32 [ %retval.0.i206.ph, %pt3_attach_fe.exit.thread ], [ %call3.i, %pt3_alloc_adapter.exit.thread212 ], [ %ret.1.i, %pt3_alloc_adapter.exit.do.end101_crit_edge ], [ -12, %for.body.do.end101_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %i.0236) #12
  br label %while.body

if.end103:                                        ; preds = %for.inc
  %call104 = call fastcc i32 @pt3_fe_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end110, label %do.end115

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %while.body

do.end115:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %shr117 = lshr i32 %14, 24
  %shr118 = lshr i32 %14, 8
  %and119 = and i32 %shr118, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %shr117, i32 noundef %and119, i32 noundef 1) #12
  br label %cleanup

while.body:                                       ; preds = %do.end110, %do.end101
  %i.1 = phi i32 [ %i.0236, %do.end101 ], [ 3, %do.end110 ]
  %ret.2 = phi i32 [ %ret.1.ph, %do.end101 ], [ %call104, %do.end110 ]
  call fastcc void @pt3_cleanup_adapter(ptr noundef nonnull %call.i, i32 noundef %i.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp122.not = icmp eq i32 %i.1, 0
  br i1 %cmp122.not, label %while.body.while.end_crit_edge, label %while.body.1

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %dec = add nsw i32 %i.1, -1
  call fastcc void @pt3_cleanup_adapter(ptr noundef nonnull %call.i, i32 noundef %dec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1)
  %cmp122.1.not = icmp eq i32 %i.1, 1
  br i1 %cmp122.1.not, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %dec.1 = add nsw i32 %i.1, -2
  call fastcc void @pt3_cleanup_adapter(ptr noundef nonnull %call.i, i32 noundef %dec.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1)
  %cmp122.2 = icmp ugt i32 %i.1, 2
  br i1 %cmp122.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %dec.2 = add nsw i32 %i.1, -3
  call fastcc void @pt3_cleanup_adapter(ptr noundef nonnull %call.i, i32 noundef %dec.2)
  br label %while.end

while.end:                                        ; preds = %while.body.3, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge
  call void @i2c_del_adapter(ptr noundef %i2c_adap) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end115, %if.end75.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %do.end56, %if.end32.cleanup_crit_edge, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end56 ], [ %ret.2, %while.end ], [ 0, %do.end115 ], [ %call19, %do.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ], [ -12, %if.end60.cleanup_crit_edge ], [ %call79, %if.end75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rev) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pt3_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @pt3_cleanup_adapter(ptr noundef %1, i32 noundef 3)
  tail call fastcc void @pt3_cleanup_adapter(ptr noundef %1, i32 noundef 2)
  tail call fastcc void @pt3_cleanup_adapter(ptr noundef %1, i32 noundef 1)
  tail call fastcc void @pt3_cleanup_adapter(ptr noundef %1, i32 noundef 0)
  %i2c_adap = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 6
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt3_fe_init(ptr noundef %pt3) unnamed_addr #2 align 64 {
entry:
  %msg.i.i371 = alloca %struct.i2c_msg, align 4
  %rv.i372 = alloca %struct.reg_val, align 2
  %msg.i352 = alloca %struct.i2c_msg, align 4
  %msg.i333 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %rv.i = alloca %struct.reg_val, align 2
  %msg.i313 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pt3_i2c_reset(ptr noundef %pt3) #9
  %call = tail call i32 @pt3_init_all_demods(ptr noundef %pt3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %msg.i313, i32 4
  %flags.i316 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 1
  %buf.i318 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 3
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0403 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 %i.0403
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %fe2 = getelementptr inbounds %struct.pt3_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fe2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe2, align 8
  %delsys = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %delsys to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %delsys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %9)
  %cmp4 = icmp eq i8 %9, 9
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %1, align 4
  %i2c_demod.i = getelementptr inbounds %struct.pt3_adapter, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %i2c_demod.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_demod.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %1, align 4
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @init0_sat, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %cmp3.i, i32 -66, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp4.i = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp4.i, label %if.then6.pt3_demod_write.exit_crit_edge, label %for.cond.i

if.then6.pt3_demod_write.exit_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_demod_write.exit

for.cond.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr getelementptr inbounds ([2 x %struct.reg_val], ptr @init0_sat, i32 0, i32 1), ptr %buf.i, align 4
  %21 = ptrtoint ptr %i2c_demod.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_demod.i, align 4
  %adapter.i.1 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i.1, align 8
  %call.i.1 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp3.i.1 = icmp eq i32 %call.i.1, 0
  %25 = call i32 @llvm.smin.i32(i32 %call.i.1, i32 0)
  %26 = select i1 %cmp3.i.1, i32 -66, i32 %25
  br label %pt3_demod_write.exit

pt3_demod_write.exit:                             ; preds = %for.cond.i, %if.then6.pt3_demod_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.then6.pt3_demod_write.exit_crit_edge ], [ %26, %for.cond.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.end13

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i313) #9
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %0, align 4
  %i2c_demod.i314 = getelementptr inbounds %struct.pt3_adapter, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %i2c_demod.i314 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_demod.i314, align 4
  %addr.i315 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i315 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i315, align 2
  %32 = ptrtoint ptr %msg.i313 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i313, align 4
  %33 = ptrtoint ptr %flags.i316 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i316, align 2
  store i16 2, ptr %0, align 4
  %34 = ptrtoint ptr %buf.i318 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @init0_ter, ptr %buf.i318, align 4
  %adapter.i324 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %35 = ptrtoint ptr %adapter.i324 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i324, align 8
  %call.i325 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i313, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %cmp3.i326 = icmp eq i32 %call.i325, 0
  %spec.store.select.i327 = select i1 %cmp3.i326, i32 -66, i32 %call.i325
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i327)
  %cmp4.i328 = icmp slt i32 %spec.store.select.i327, 0
  br i1 %cmp4.i328, label %if.else.pt3_demod_write.exit331_crit_edge, label %for.cond.i321

if.else.pt3_demod_write.exit331_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_demod_write.exit331

for.cond.i321:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %buf.i318 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr getelementptr inbounds ([2 x %struct.reg_val], ptr @init0_ter, i32 0, i32 1), ptr %buf.i318, align 4
  %38 = ptrtoint ptr %i2c_demod.i314 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_demod.i314, align 4
  %adapter.i324.1 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %adapter.i324.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i324.1, align 8
  %call.i325.1 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i313, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325.1)
  %cmp3.i326.1 = icmp eq i32 %call.i325.1, 0
  %42 = call i32 @llvm.smin.i32(i32 %call.i325.1, i32 0)
  %43 = select i1 %cmp3.i326.1, i32 -66, i32 %42
  br label %pt3_demod_write.exit331

pt3_demod_write.exit331:                          ; preds = %for.cond.i321, %if.else.pt3_demod_write.exit331_crit_edge
  %retval.0.i330 = phi i32 [ %spec.store.select.i327, %if.else.pt3_demod_write.exit331_crit_edge ], [ %43, %for.cond.i321 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i313) #9
  br label %if.end13

if.end13:                                         ; preds = %pt3_demod_write.exit331, %pt3_demod_write.exit
  %ret.0 = phi i32 [ %retval.0.i, %pt3_demod_write.exit ], [ %retval.0.i330, %pt3_demod_write.exit331 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp14 = icmp slt i32 %ret.0, 0
  br i1 %cmp14, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pt3, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21, ptr noundef nonnull @.str.52, i32 noundef %i.0403) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init, align 4
  %call24 = call i32 %47(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %for.inc

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end22
  %inc = add nuw nsw i32 %i.0403, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rv.i) #9
  %48 = ptrtoint ptr %rv.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 7897, ptr %rv.i, align 2
  %arrayidx.i332 = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 3
  %49 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i332, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %51 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %i2c_demod.i.i = getelementptr inbounds %struct.pt3_adapter, ptr %50, i32 0, i32 5
  %53 = ptrtoint ptr %i2c_demod.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_demod.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr.i.i, align 2
  %57 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %rv.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 3
  %60 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  %62 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  %63 = select i1 %cmp3.i.i, i32 -66, i32 %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp30 = icmp slt i32 %63, 0
  br i1 %cmp30, label %do.end35, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.end
  %64 = getelementptr inbounds i8, ptr %msg.i352, i32 4
  %flags.i355 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i352, i32 0, i32 1
  %buf.i357 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i352, i32 0, i32 3
  %65 = getelementptr inbounds i8, ptr %msg.i333, i32 4
  %flags.i336 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i333, i32 0, i32 1
  %buf.i338 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i333, i32 0, i32 3
  br label %for.body42

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pt3, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.55) #12
  br label %cleanup

for.body42:                                       ; preds = %for.inc70.for.body42_crit_edge, %for.cond39.preheader
  %i.1404 = phi i32 [ 0, %for.cond39.preheader ], [ %inc71, %for.inc70.for.body42_crit_edge ]
  %arrayidx44 = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 %i.1404
  %68 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx44, align 4
  %fe45 = getelementptr inbounds %struct.pt3_adapter, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %fe45 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fe45, align 8
  %delsys47 = getelementptr inbounds %struct.dvb_frontend, ptr %71, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %delsys47 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %delsys47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %73)
  %cmp50 = icmp eq i8 %73, 9
  br i1 %cmp50, label %if.then52, label %if.else56

if.then52:                                        ; preds = %for.body42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i333) #9
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %65, align 4
  %i2c_demod.i334 = getelementptr inbounds %struct.pt3_adapter, ptr %69, i32 0, i32 5
  %75 = ptrtoint ptr %i2c_demod.i334 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c_demod.i334, align 4
  %addr.i335 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %addr.i335 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %addr.i335, align 2
  %79 = ptrtoint ptr %msg.i333 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %msg.i333, align 4
  %80 = ptrtoint ptr %flags.i336 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i336, align 2
  store i16 2, ptr %65, align 4
  %81 = ptrtoint ptr %buf.i338 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @cfg_sat, ptr %buf.i338, align 4
  %adapter.i344 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 3
  %82 = ptrtoint ptr %adapter.i344 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter.i344, align 8
  %call.i345 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i333, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %cmp3.i346 = icmp eq i32 %call.i345, 0
  %spec.store.select.i347 = select i1 %cmp3.i346, i32 -66, i32 %call.i345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i347)
  %cmp4.i348 = icmp slt i32 %spec.store.select.i347, 0
  br i1 %cmp4.i348, label %if.then52.pt3_demod_write.exit351_crit_edge, label %for.cond.i341

if.then52.pt3_demod_write.exit351_crit_edge:      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_demod_write.exit351

for.cond.i341:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %buf.i338 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr getelementptr inbounds ([2 x %struct.reg_val], ptr @cfg_sat, i32 0, i32 1), ptr %buf.i338, align 4
  %85 = ptrtoint ptr %i2c_demod.i334 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c_demod.i334, align 4
  %adapter.i344.1 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %adapter.i344.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adapter.i344.1, align 8
  %call.i345.1 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i333, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345.1)
  %cmp3.i346.1 = icmp eq i32 %call.i345.1, 0
  %89 = call i32 @llvm.smin.i32(i32 %call.i345.1, i32 0)
  %90 = select i1 %cmp3.i346.1, i32 -66, i32 %89
  br label %pt3_demod_write.exit351

pt3_demod_write.exit351:                          ; preds = %for.cond.i341, %if.then52.pt3_demod_write.exit351_crit_edge
  %retval.0.i350 = phi i32 [ %spec.store.select.i347, %if.then52.pt3_demod_write.exit351_crit_edge ], [ %90, %for.cond.i341 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i333) #9
  br label %if.end60

if.else56:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i352) #9
  %91 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %64, align 4
  %i2c_demod.i353 = getelementptr inbounds %struct.pt3_adapter, ptr %69, i32 0, i32 5
  %92 = ptrtoint ptr %i2c_demod.i353 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_demod.i353, align 4
  %addr.i354 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %addr.i354 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %addr.i354, align 2
  %96 = ptrtoint ptr %msg.i352 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %msg.i352, align 4
  %97 = ptrtoint ptr %flags.i355 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %flags.i355, align 2
  store i16 2, ptr %64, align 4
  %98 = ptrtoint ptr %buf.i357 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @cfg_ter, ptr %buf.i357, align 4
  %adapter.i363 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 3
  %99 = ptrtoint ptr %adapter.i363 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %adapter.i363, align 8
  %call.i364 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %msg.i352, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %cmp3.i365 = icmp eq i32 %call.i364, 0
  %101 = call i32 @llvm.smin.i32(i32 %call.i364, i32 0)
  %102 = select i1 %cmp3.i365, i32 -66, i32 %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i352) #9
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %pt3_demod_write.exit351
  %ret.1 = phi i32 [ %retval.0.i350, %pt3_demod_write.exit351 ], [ %102, %if.else56 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp61 = icmp slt i32 %ret.1, 0
  br i1 %cmp61, label %do.end66, label %for.inc70

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pt3, align 8
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev68, ptr noundef nonnull @.str.58, i32 noundef %i.1404) #12
  br label %cleanup

for.inc70:                                        ; preds = %if.end60
  %inc71 = add nuw nsw i32 %i.1404, 1
  %exitcond423.not = icmp eq i32 %inc71, 4
  br i1 %exitcond423.not, label %for.end72, label %for.inc70.for.body42_crit_edge

for.inc70.for.body42_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.end72:                                        ; preds = %for.inc70
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #9
  %arrayidx78 = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 0
  %105 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx78, align 4
  %fe79 = getelementptr inbounds %struct.pt3_adapter, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %fe79 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fe79, align 8
  %delsys81 = getelementptr inbounds %struct.dvb_frontend, ptr %108, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %delsys81 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %delsys81, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %110)
  %cmp84.not = icmp eq i8 %110, 9
  br i1 %cmp84.not, label %if.end87, label %for.end72.for.inc100_crit_edge

for.end72.for.inc100_crit_edge:                   ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.end87:                                         ; preds = %for.end72
  %init89 = getelementptr inbounds %struct.dvb_frontend, ptr %108, i32 0, i32 1, i32 32, i32 2
  %111 = ptrtoint ptr %init89 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init89, align 4
  %call90 = call i32 %112(ptr noundef %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end87.do.end96_crit_edge, label %if.end87.for.inc100_crit_edge

if.end87.for.inc100_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.end87.do.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

do.end96:                                         ; preds = %if.end87.3.do.end96_crit_edge, %if.end87.2.do.end96_crit_edge, %if.end87.1.do.end96_crit_edge, %if.end87.do.end96_crit_edge
  %i.2405.lcssa = phi i32 [ 0, %if.end87.do.end96_crit_edge ], [ 1, %if.end87.1.do.end96_crit_edge ], [ 2, %if.end87.2.do.end96_crit_edge ], [ 3, %if.end87.3.do.end96_crit_edge ]
  %call90.lcssa = phi i32 [ %call90, %if.end87.do.end96_crit_edge ], [ %call90.1, %if.end87.1.do.end96_crit_edge ], [ %call90.2, %if.end87.2.do.end96_crit_edge ], [ %call90.3, %if.end87.3.do.end96_crit_edge ]
  %113 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pt3, align 8
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev98, ptr noundef nonnull @.str.61, i32 noundef %i.2405.lcssa) #12
  br label %cleanup

for.inc100:                                       ; preds = %if.end87.for.inc100_crit_edge, %for.end72.for.inc100_crit_edge
  %arrayidx78.1 = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 1
  %115 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx78.1, align 4
  %fe79.1 = getelementptr inbounds %struct.pt3_adapter, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %fe79.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fe79.1, align 8
  %delsys81.1 = getelementptr inbounds %struct.dvb_frontend, ptr %118, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %delsys81.1 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %delsys81.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %120)
  %cmp84.not.1 = icmp eq i8 %120, 9
  br i1 %cmp84.not.1, label %if.end87.1, label %for.inc100.for.inc100.1_crit_edge

for.inc100.for.inc100.1_crit_edge:                ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100.1

if.end87.1:                                       ; preds = %for.inc100
  %init89.1 = getelementptr inbounds %struct.dvb_frontend, ptr %118, i32 0, i32 1, i32 32, i32 2
  %121 = ptrtoint ptr %init89.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %init89.1, align 4
  %call90.1 = call i32 %122(ptr noundef %118) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.1)
  %cmp91.1 = icmp slt i32 %call90.1, 0
  br i1 %cmp91.1, label %if.end87.1.do.end96_crit_edge, label %if.end87.1.for.inc100.1_crit_edge

if.end87.1.for.inc100.1_crit_edge:                ; preds = %if.end87.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100.1

if.end87.1.do.end96_crit_edge:                    ; preds = %if.end87.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

for.inc100.1:                                     ; preds = %if.end87.1.for.inc100.1_crit_edge, %for.inc100.for.inc100.1_crit_edge
  %arrayidx78.2 = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 2
  %123 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx78.2, align 4
  %fe79.2 = getelementptr inbounds %struct.pt3_adapter, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %fe79.2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fe79.2, align 8
  %delsys81.2 = getelementptr inbounds %struct.dvb_frontend, ptr %126, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %delsys81.2 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %delsys81.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %128)
  %cmp84.not.2 = icmp eq i8 %128, 9
  br i1 %cmp84.not.2, label %if.end87.2, label %for.inc100.1.for.inc100.2_crit_edge

for.inc100.1.for.inc100.2_crit_edge:              ; preds = %for.inc100.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100.2

if.end87.2:                                       ; preds = %for.inc100.1
  %init89.2 = getelementptr inbounds %struct.dvb_frontend, ptr %126, i32 0, i32 1, i32 32, i32 2
  %129 = ptrtoint ptr %init89.2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %init89.2, align 4
  %call90.2 = call i32 %130(ptr noundef %126) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.2)
  %cmp91.2 = icmp slt i32 %call90.2, 0
  br i1 %cmp91.2, label %if.end87.2.do.end96_crit_edge, label %if.end87.2.for.inc100.2_crit_edge

if.end87.2.for.inc100.2_crit_edge:                ; preds = %if.end87.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100.2

if.end87.2.do.end96_crit_edge:                    ; preds = %if.end87.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

for.inc100.2:                                     ; preds = %if.end87.2.for.inc100.2_crit_edge, %for.inc100.1.for.inc100.2_crit_edge
  %131 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i332, align 4
  %fe79.3 = getelementptr inbounds %struct.pt3_adapter, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %fe79.3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fe79.3, align 8
  %delsys81.3 = getelementptr inbounds %struct.dvb_frontend, ptr %134, i32 0, i32 1, i32 1
  %135 = ptrtoint ptr %delsys81.3 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %delsys81.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %136)
  %cmp84.not.3 = icmp eq i8 %136, 9
  br i1 %cmp84.not.3, label %if.end87.3, label %for.inc100.2.for.inc100.3_crit_edge

for.inc100.2.for.inc100.3_crit_edge:              ; preds = %for.inc100.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100.3

if.end87.3:                                       ; preds = %for.inc100.2
  %init89.3 = getelementptr inbounds %struct.dvb_frontend, ptr %134, i32 0, i32 1, i32 32, i32 2
  %137 = ptrtoint ptr %init89.3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init89.3, align 4
  %call90.3 = call i32 %138(ptr noundef %134) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.3)
  %cmp91.3 = icmp slt i32 %call90.3, 0
  br i1 %cmp91.3, label %if.end87.3.do.end96_crit_edge, label %if.end87.3.for.inc100.3_crit_edge

if.end87.3.for.inc100.3_crit_edge:                ; preds = %if.end87.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100.3

if.end87.3.do.end96_crit_edge:                    ; preds = %if.end87.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

for.inc100.3:                                     ; preds = %if.end87.3.for.inc100.3_crit_edge, %for.inc100.2.for.inc100.3_crit_edge
  %call103 = call i32 @pt3_init_all_mxl301rf(ptr noundef %pt3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.end109, label %if.end112

do.end109:                                        ; preds = %for.inc100.3
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pt3, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev111, ptr noundef nonnull @.str.64) #12
  br label %cleanup

if.end112:                                        ; preds = %for.inc100.3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rv.i372) #9
  %141 = ptrtoint ptr %rv.i372 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 7901, ptr %rv.i372, align 2
  %142 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i332, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i371) #9
  %144 = getelementptr inbounds i8, ptr %msg.i.i371, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 196607, ptr %144, align 4
  %i2c_demod.i.i375 = getelementptr inbounds %struct.pt3_adapter, ptr %143, i32 0, i32 5
  %146 = ptrtoint ptr %i2c_demod.i.i375 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i2c_demod.i.i375, align 4
  %addr.i.i376 = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %addr.i.i376 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %addr.i.i376, align 2
  %150 = ptrtoint ptr %msg.i.i371 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %msg.i.i371, align 4
  %flags.i.i377 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i371, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i.i377 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i.i377, align 2
  %buf.i.i378 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i371, i32 0, i32 3
  %152 = ptrtoint ptr %buf.i.i378 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %rv.i372, ptr %buf.i.i378, align 4
  %adapter.i.i379 = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 3
  %153 = ptrtoint ptr %adapter.i.i379 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %adapter.i.i379, align 8
  %call.i.i380 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %msg.i.i371, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i380)
  %cmp3.i.i381 = icmp eq i32 %call.i.i380, 0
  %155 = call i32 @llvm.smin.i32(i32 %call.i.i380, i32 0) #9
  %156 = select i1 %cmp3.i.i381, i32 -66, i32 %155
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i371) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rv.i372) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp114 = icmp slt i32 %156, 0
  br i1 %cmp114, label %do.end119, label %for.body126.preheader

for.body126.preheader:                            ; preds = %if.end112
  %157 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx78, align 4
  %fe129 = getelementptr inbounds %struct.pt3_adapter, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %fe129 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fe129, align 8
  %delsys131 = getelementptr inbounds %struct.dvb_frontend, ptr %160, i32 0, i32 1, i32 1
  %161 = ptrtoint ptr %delsys131 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %delsys131, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %162)
  %cmp134 = icmp eq i8 %162, 8
  br i1 %cmp134, label %if.end141, label %for.body126.preheader.land.lhs.true_crit_edge

for.body126.preheader.land.lhs.true_crit_edge:    ; preds = %for.body126.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

do.end119:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pt3, align 8
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %164, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev121, ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end141:                                        ; preds = %for.body126.preheader
  %init139 = getelementptr inbounds %struct.dvb_frontend, ptr %160, i32 0, i32 1, i32 32, i32 2
  %165 = ptrtoint ptr %init139 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %init139, align 4
  %call140 = call i32 %166(ptr noundef %160) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp142 = icmp eq i32 %call140, 0
  br i1 %cmp142, label %if.end141.land.lhs.true_crit_edge, label %if.end141.if.end153_crit_edge

if.end141.if.end153_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.end141.land.lhs.true_crit_edge:                ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end141.land.lhs.true_crit_edge, %for.body126.preheader.land.lhs.true_crit_edge
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %160, i32 0, i32 8
  %167 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp144 = icmp eq i32 %168, 0
  br i1 %cmp144, label %if.then146, label %land.lhs.true.for.inc163_crit_edge

land.lhs.true.for.inc163_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163

if.then146:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1049180, ptr %dtv_property_cache, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %160, i32 0, i32 1, i32 32, i32 6
  %170 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %set_params, align 4
  %call152 = call i32 %171(ptr noundef %160) #9
  br label %if.end153

if.end153:                                        ; preds = %if.then146, %if.end141.if.end153_crit_edge
  %ret.4 = phi i32 [ %call152, %if.then146 ], [ %call140, %if.end141.if.end153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp154 = icmp slt i32 %ret.4, 0
  br i1 %cmp154, label %if.end153.do.end159_crit_edge, label %if.end153.for.inc163_crit_edge

if.end153.for.inc163_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163

if.end153.do.end159_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

do.end159:                                        ; preds = %if.end153.3.do.end159_crit_edge, %if.end153.2.do.end159_crit_edge, %if.end153.1.do.end159_crit_edge, %if.end153.do.end159_crit_edge
  %i.3407.lcssa = phi i32 [ 0, %if.end153.do.end159_crit_edge ], [ 1, %if.end153.1.do.end159_crit_edge ], [ 2, %if.end153.2.do.end159_crit_edge ], [ 3, %if.end153.3.do.end159_crit_edge ]
  %ret.4.lcssa = phi i32 [ %ret.4, %if.end153.do.end159_crit_edge ], [ %ret.4.1, %if.end153.1.do.end159_crit_edge ], [ %ret.4.2, %if.end153.2.do.end159_crit_edge ], [ %ret.4.3, %if.end153.3.do.end159_crit_edge ]
  %172 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pt3, align 8
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev161, ptr noundef nonnull @.str.69, i32 noundef %i.3407.lcssa) #12
  br label %cleanup

for.inc163:                                       ; preds = %if.end153.for.inc163_crit_edge, %land.lhs.true.for.inc163_crit_edge
  %174 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx78.1, align 4
  %fe129.1 = getelementptr inbounds %struct.pt3_adapter, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %fe129.1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %fe129.1, align 8
  %delsys131.1 = getelementptr inbounds %struct.dvb_frontend, ptr %177, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %delsys131.1 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %delsys131.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %179)
  %cmp134.1 = icmp eq i8 %179, 8
  br i1 %cmp134.1, label %if.end141.1, label %for.inc163.land.lhs.true.1_crit_edge

for.inc163.land.lhs.true.1_crit_edge:             ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1

if.end141.1:                                      ; preds = %for.inc163
  %init139.1 = getelementptr inbounds %struct.dvb_frontend, ptr %177, i32 0, i32 1, i32 32, i32 2
  %180 = ptrtoint ptr %init139.1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %init139.1, align 4
  %call140.1 = call i32 %181(ptr noundef %177) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.1)
  %cmp142.1 = icmp eq i32 %call140.1, 0
  br i1 %cmp142.1, label %if.end141.1.land.lhs.true.1_crit_edge, label %if.end141.1.if.end153.1_crit_edge

if.end141.1.if.end153.1_crit_edge:                ; preds = %if.end141.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.1

if.end141.1.land.lhs.true.1_crit_edge:            ; preds = %if.end141.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %if.end141.1.land.lhs.true.1_crit_edge, %for.inc163.land.lhs.true.1_crit_edge
  %dtv_property_cache.1 = getelementptr inbounds %struct.dvb_frontend, ptr %177, i32 0, i32 8
  %182 = ptrtoint ptr %dtv_property_cache.1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %dtv_property_cache.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp144.1 = icmp eq i32 %183, 0
  br i1 %cmp144.1, label %if.then146.1, label %land.lhs.true.1.for.inc163.1_crit_edge

land.lhs.true.1.for.inc163.1_crit_edge:           ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.1

if.then146.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %dtv_property_cache.1 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 515142857, ptr %dtv_property_cache.1, align 4
  %set_params.1 = getelementptr inbounds %struct.dvb_frontend, ptr %177, i32 0, i32 1, i32 32, i32 6
  %185 = ptrtoint ptr %set_params.1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %set_params.1, align 4
  %call152.1 = call i32 %186(ptr noundef %177) #9
  br label %if.end153.1

if.end153.1:                                      ; preds = %if.then146.1, %if.end141.1.if.end153.1_crit_edge
  %ret.4.1 = phi i32 [ %call152.1, %if.then146.1 ], [ %call140.1, %if.end141.1.if.end153.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.1)
  %cmp154.1 = icmp slt i32 %ret.4.1, 0
  br i1 %cmp154.1, label %if.end153.1.do.end159_crit_edge, label %if.end153.1.for.inc163.1_crit_edge

if.end153.1.for.inc163.1_crit_edge:               ; preds = %if.end153.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.1

if.end153.1.do.end159_crit_edge:                  ; preds = %if.end153.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

for.inc163.1:                                     ; preds = %if.end153.1.for.inc163.1_crit_edge, %land.lhs.true.1.for.inc163.1_crit_edge
  %187 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx78.2, align 4
  %fe129.2 = getelementptr inbounds %struct.pt3_adapter, ptr %188, i32 0, i32 4
  %189 = ptrtoint ptr %fe129.2 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %fe129.2, align 8
  %delsys131.2 = getelementptr inbounds %struct.dvb_frontend, ptr %190, i32 0, i32 1, i32 1
  %191 = ptrtoint ptr %delsys131.2 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %delsys131.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %192)
  %cmp134.2 = icmp eq i8 %192, 8
  br i1 %cmp134.2, label %if.end141.2, label %for.inc163.1.land.lhs.true.2_crit_edge

for.inc163.1.land.lhs.true.2_crit_edge:           ; preds = %for.inc163.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

if.end141.2:                                      ; preds = %for.inc163.1
  %init139.2 = getelementptr inbounds %struct.dvb_frontend, ptr %190, i32 0, i32 1, i32 32, i32 2
  %193 = ptrtoint ptr %init139.2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %init139.2, align 4
  %call140.2 = call i32 %194(ptr noundef %190) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.2)
  %cmp142.2 = icmp eq i32 %call140.2, 0
  br i1 %cmp142.2, label %if.end141.2.land.lhs.true.2_crit_edge, label %if.end141.2.if.end153.2_crit_edge

if.end141.2.if.end153.2_crit_edge:                ; preds = %if.end141.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.2

if.end141.2.land.lhs.true.2_crit_edge:            ; preds = %if.end141.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %if.end141.2.land.lhs.true.2_crit_edge, %for.inc163.1.land.lhs.true.2_crit_edge
  %dtv_property_cache.2 = getelementptr inbounds %struct.dvb_frontend, ptr %190, i32 0, i32 8
  %195 = ptrtoint ptr %dtv_property_cache.2 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %dtv_property_cache.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp144.2 = icmp eq i32 %196, 0
  br i1 %cmp144.2, label %if.then146.2, label %land.lhs.true.2.for.inc163.2_crit_edge

land.lhs.true.2.for.inc163.2_crit_edge:           ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.2

if.then146.2:                                     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %dtv_property_cache.2 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1049780, ptr %dtv_property_cache.2, align 4
  %set_params.2 = getelementptr inbounds %struct.dvb_frontend, ptr %190, i32 0, i32 1, i32 32, i32 6
  %198 = ptrtoint ptr %set_params.2 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %set_params.2, align 4
  %call152.2 = call i32 %199(ptr noundef %190) #9
  br label %if.end153.2

if.end153.2:                                      ; preds = %if.then146.2, %if.end141.2.if.end153.2_crit_edge
  %ret.4.2 = phi i32 [ %call152.2, %if.then146.2 ], [ %call140.2, %if.end141.2.if.end153.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.2)
  %cmp154.2 = icmp slt i32 %ret.4.2, 0
  br i1 %cmp154.2, label %if.end153.2.do.end159_crit_edge, label %if.end153.2.for.inc163.2_crit_edge

if.end153.2.for.inc163.2_crit_edge:               ; preds = %if.end153.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.2

if.end153.2.do.end159_crit_edge:                  ; preds = %if.end153.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

for.inc163.2:                                     ; preds = %if.end153.2.for.inc163.2_crit_edge, %land.lhs.true.2.for.inc163.2_crit_edge
  %200 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx.i332, align 4
  %fe129.3 = getelementptr inbounds %struct.pt3_adapter, ptr %201, i32 0, i32 4
  %202 = ptrtoint ptr %fe129.3 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %fe129.3, align 8
  %delsys131.3 = getelementptr inbounds %struct.dvb_frontend, ptr %203, i32 0, i32 1, i32 1
  %204 = ptrtoint ptr %delsys131.3 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %delsys131.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %205)
  %cmp134.3 = icmp eq i8 %205, 8
  br i1 %cmp134.3, label %if.end141.3, label %for.inc163.2.land.lhs.true.3_crit_edge

for.inc163.2.land.lhs.true.3_crit_edge:           ; preds = %for.inc163.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3

if.end141.3:                                      ; preds = %for.inc163.2
  %init139.3 = getelementptr inbounds %struct.dvb_frontend, ptr %203, i32 0, i32 1, i32 32, i32 2
  %206 = ptrtoint ptr %init139.3 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %init139.3, align 4
  %call140.3 = call i32 %207(ptr noundef %203) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.3)
  %cmp142.3 = icmp eq i32 %call140.3, 0
  br i1 %cmp142.3, label %if.end141.3.land.lhs.true.3_crit_edge, label %if.end141.3.if.end153.3_crit_edge

if.end141.3.if.end153.3_crit_edge:                ; preds = %if.end141.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.3

if.end141.3.land.lhs.true.3_crit_edge:            ; preds = %if.end141.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %if.end141.3.land.lhs.true.3_crit_edge, %for.inc163.2.land.lhs.true.3_crit_edge
  %dtv_property_cache.3 = getelementptr inbounds %struct.dvb_frontend, ptr %203, i32 0, i32 8
  %208 = ptrtoint ptr %dtv_property_cache.3 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dtv_property_cache.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp144.3 = icmp eq i32 %209, 0
  br i1 %cmp144.3, label %if.then146.3, label %land.lhs.true.3.for.inc163.3_crit_edge

land.lhs.true.3.for.inc163.3_crit_edge:           ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.3

if.then146.3:                                     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %dtv_property_cache.3 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 521142857, ptr %dtv_property_cache.3, align 4
  %set_params.3 = getelementptr inbounds %struct.dvb_frontend, ptr %203, i32 0, i32 1, i32 32, i32 6
  %211 = ptrtoint ptr %set_params.3 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %set_params.3, align 4
  %call152.3 = call i32 %212(ptr noundef %203) #9
  br label %if.end153.3

if.end153.3:                                      ; preds = %if.then146.3, %if.end141.3.if.end153.3_crit_edge
  %ret.4.3 = phi i32 [ %call152.3, %if.then146.3 ], [ %call140.3, %if.end141.3.if.end153.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.3)
  %cmp154.3 = icmp slt i32 %ret.4.3, 0
  br i1 %cmp154.3, label %if.end153.3.do.end159_crit_edge, label %if.end153.3.for.inc163.3_crit_edge

if.end153.3.for.inc163.3_crit_edge:               ; preds = %if.end153.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.3

if.end153.3.do.end159_crit_edge:                  ; preds = %if.end153.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

for.inc163.3:                                     ; preds = %if.end153.3.for.inc163.3_crit_edge, %land.lhs.true.3.for.inc163.3_crit_edge
  %213 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx78, align 4
  %fe172 = getelementptr inbounds %struct.pt3_adapter, ptr %214, i32 0, i32 4
  %215 = ptrtoint ptr %fe172 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %fe172, align 8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %216, i32 0, i32 1, i32 32, i32 3
  %217 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %sleep, align 4
  %tobool.not = icmp eq ptr %218, null
  br i1 %tobool.not, label %for.inc163.3.if.end184_crit_edge, label %if.end180

for.inc163.3.if.end184_crit_edge:                 ; preds = %for.inc163.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.end180:                                        ; preds = %for.inc163.3
  %call179 = call i32 %218(ptr noundef %216) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp181 = icmp slt i32 %call179, 0
  br i1 %cmp181, label %if.end180.do.end216_crit_edge, label %if.end180.if.end184_crit_edge

if.end180.if.end184_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.end180.do.end216_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end184:                                        ; preds = %if.end180.if.end184_crit_edge, %for.inc163.3.if.end184_crit_edge
  %sleep186 = getelementptr inbounds %struct.dvb_frontend, ptr %216, i32 0, i32 1, i32 6
  %219 = ptrtoint ptr %sleep186 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %sleep186, align 4
  %tobool187.not = icmp eq ptr %220, null
  br i1 %tobool187.not, label %if.end184.if.end196_crit_edge, label %if.end192

if.end184.if.end196_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.end192:                                        ; preds = %if.end184
  %call191 = call i32 %220(ptr noundef %216) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp193 = icmp slt i32 %call191, 0
  br i1 %cmp193, label %if.end192.do.end216_crit_edge, label %if.end192.if.end196_crit_edge

if.end192.if.end196_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.end192.do.end216_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end196:                                        ; preds = %if.end192.if.end196_crit_edge, %if.end184.if.end196_crit_edge
  %delsys198 = getelementptr inbounds %struct.dvb_frontend, ptr %216, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %delsys198 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %delsys198, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %222)
  %cmp201 = icmp eq i8 %222, 9
  br i1 %cmp201, label %if.then203, label %if.else205

if.then203:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %216, i32 0, i32 1, i32 25
  %223 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @pt3_set_voltage, ptr %set_voltage, align 4
  br label %for.inc208

if.else205:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %set_lna = getelementptr inbounds %struct.dvb_frontend, ptr %216, i32 0, i32 1, i32 30
  %224 = ptrtoint ptr %set_lna to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @pt3_set_lna, ptr %set_lna, align 4
  br label %for.inc208

for.inc208:                                       ; preds = %if.else205, %if.then203
  %225 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx78.1, align 4
  %fe172.1 = getelementptr inbounds %struct.pt3_adapter, ptr %226, i32 0, i32 4
  %227 = ptrtoint ptr %fe172.1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %fe172.1, align 8
  %sleep.1 = getelementptr inbounds %struct.dvb_frontend, ptr %228, i32 0, i32 1, i32 32, i32 3
  %229 = ptrtoint ptr %sleep.1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %sleep.1, align 4
  %tobool.not.1 = icmp eq ptr %230, null
  br i1 %tobool.not.1, label %for.inc208.if.end184.1_crit_edge, label %if.end180.1

for.inc208.if.end184.1_crit_edge:                 ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.1

if.end180.1:                                      ; preds = %for.inc208
  %call179.1 = call i32 %230(ptr noundef %228) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.1)
  %cmp181.1 = icmp slt i32 %call179.1, 0
  br i1 %cmp181.1, label %if.end180.1.do.end216_crit_edge, label %if.end180.1.if.end184.1_crit_edge

if.end180.1.if.end184.1_crit_edge:                ; preds = %if.end180.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.1

if.end180.1.do.end216_crit_edge:                  ; preds = %if.end180.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end184.1:                                      ; preds = %if.end180.1.if.end184.1_crit_edge, %for.inc208.if.end184.1_crit_edge
  %sleep186.1 = getelementptr inbounds %struct.dvb_frontend, ptr %228, i32 0, i32 1, i32 6
  %231 = ptrtoint ptr %sleep186.1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %sleep186.1, align 4
  %tobool187.not.1 = icmp eq ptr %232, null
  br i1 %tobool187.not.1, label %if.end184.1.if.end196.1_crit_edge, label %if.end192.1

if.end184.1.if.end196.1_crit_edge:                ; preds = %if.end184.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196.1

if.end192.1:                                      ; preds = %if.end184.1
  %call191.1 = call i32 %232(ptr noundef %228) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.1)
  %cmp193.1 = icmp slt i32 %call191.1, 0
  br i1 %cmp193.1, label %if.end192.1.do.end216_crit_edge, label %if.end192.1.if.end196.1_crit_edge

if.end192.1.if.end196.1_crit_edge:                ; preds = %if.end192.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196.1

if.end192.1.do.end216_crit_edge:                  ; preds = %if.end192.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end196.1:                                      ; preds = %if.end192.1.if.end196.1_crit_edge, %if.end184.1.if.end196.1_crit_edge
  %delsys198.1 = getelementptr inbounds %struct.dvb_frontend, ptr %228, i32 0, i32 1, i32 1
  %233 = ptrtoint ptr %delsys198.1 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %delsys198.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %234)
  %cmp201.1 = icmp eq i8 %234, 9
  br i1 %cmp201.1, label %if.then203.1, label %if.else205.1

if.else205.1:                                     ; preds = %if.end196.1
  call void @__sanitizer_cov_trace_pc() #11
  %set_lna.1 = getelementptr inbounds %struct.dvb_frontend, ptr %228, i32 0, i32 1, i32 30
  %235 = ptrtoint ptr %set_lna.1 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @pt3_set_lna, ptr %set_lna.1, align 4
  br label %for.inc208.1

if.then203.1:                                     ; preds = %if.end196.1
  call void @__sanitizer_cov_trace_pc() #11
  %set_voltage.1 = getelementptr inbounds %struct.dvb_frontend, ptr %228, i32 0, i32 1, i32 25
  %236 = ptrtoint ptr %set_voltage.1 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @pt3_set_voltage, ptr %set_voltage.1, align 4
  br label %for.inc208.1

for.inc208.1:                                     ; preds = %if.then203.1, %if.else205.1
  %237 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx78.2, align 4
  %fe172.2 = getelementptr inbounds %struct.pt3_adapter, ptr %238, i32 0, i32 4
  %239 = ptrtoint ptr %fe172.2 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %fe172.2, align 8
  %sleep.2 = getelementptr inbounds %struct.dvb_frontend, ptr %240, i32 0, i32 1, i32 32, i32 3
  %241 = ptrtoint ptr %sleep.2 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %sleep.2, align 4
  %tobool.not.2 = icmp eq ptr %242, null
  br i1 %tobool.not.2, label %for.inc208.1.if.end184.2_crit_edge, label %if.end180.2

for.inc208.1.if.end184.2_crit_edge:               ; preds = %for.inc208.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.2

if.end180.2:                                      ; preds = %for.inc208.1
  %call179.2 = call i32 %242(ptr noundef %240) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.2)
  %cmp181.2 = icmp slt i32 %call179.2, 0
  br i1 %cmp181.2, label %if.end180.2.do.end216_crit_edge, label %if.end180.2.if.end184.2_crit_edge

if.end180.2.if.end184.2_crit_edge:                ; preds = %if.end180.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.2

if.end180.2.do.end216_crit_edge:                  ; preds = %if.end180.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end184.2:                                      ; preds = %if.end180.2.if.end184.2_crit_edge, %for.inc208.1.if.end184.2_crit_edge
  %sleep186.2 = getelementptr inbounds %struct.dvb_frontend, ptr %240, i32 0, i32 1, i32 6
  %243 = ptrtoint ptr %sleep186.2 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %sleep186.2, align 4
  %tobool187.not.2 = icmp eq ptr %244, null
  br i1 %tobool187.not.2, label %if.end184.2.if.end196.2_crit_edge, label %if.end192.2

if.end184.2.if.end196.2_crit_edge:                ; preds = %if.end184.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196.2

if.end192.2:                                      ; preds = %if.end184.2
  %call191.2 = call i32 %244(ptr noundef %240) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.2)
  %cmp193.2 = icmp slt i32 %call191.2, 0
  br i1 %cmp193.2, label %if.end192.2.do.end216_crit_edge, label %if.end192.2.if.end196.2_crit_edge

if.end192.2.if.end196.2_crit_edge:                ; preds = %if.end192.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196.2

if.end192.2.do.end216_crit_edge:                  ; preds = %if.end192.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end196.2:                                      ; preds = %if.end192.2.if.end196.2_crit_edge, %if.end184.2.if.end196.2_crit_edge
  %delsys198.2 = getelementptr inbounds %struct.dvb_frontend, ptr %240, i32 0, i32 1, i32 1
  %245 = ptrtoint ptr %delsys198.2 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %delsys198.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %246)
  %cmp201.2 = icmp eq i8 %246, 9
  br i1 %cmp201.2, label %if.then203.2, label %if.else205.2

if.else205.2:                                     ; preds = %if.end196.2
  call void @__sanitizer_cov_trace_pc() #11
  %set_lna.2 = getelementptr inbounds %struct.dvb_frontend, ptr %240, i32 0, i32 1, i32 30
  %247 = ptrtoint ptr %set_lna.2 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @pt3_set_lna, ptr %set_lna.2, align 4
  br label %for.inc208.2

if.then203.2:                                     ; preds = %if.end196.2
  call void @__sanitizer_cov_trace_pc() #11
  %set_voltage.2 = getelementptr inbounds %struct.dvb_frontend, ptr %240, i32 0, i32 1, i32 25
  %248 = ptrtoint ptr %set_voltage.2 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @pt3_set_voltage, ptr %set_voltage.2, align 4
  br label %for.inc208.2

for.inc208.2:                                     ; preds = %if.then203.2, %if.else205.2
  %249 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arrayidx.i332, align 4
  %fe172.3 = getelementptr inbounds %struct.pt3_adapter, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %fe172.3 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %fe172.3, align 8
  %sleep.3 = getelementptr inbounds %struct.dvb_frontend, ptr %252, i32 0, i32 1, i32 32, i32 3
  %253 = ptrtoint ptr %sleep.3 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %sleep.3, align 4
  %tobool.not.3 = icmp eq ptr %254, null
  br i1 %tobool.not.3, label %for.inc208.2.if.end184.3_crit_edge, label %if.end180.3

for.inc208.2.if.end184.3_crit_edge:               ; preds = %for.inc208.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.3

if.end180.3:                                      ; preds = %for.inc208.2
  %call179.3 = call i32 %254(ptr noundef %252) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.3)
  %cmp181.3 = icmp slt i32 %call179.3, 0
  br i1 %cmp181.3, label %if.end180.3.do.end216_crit_edge, label %if.end180.3.if.end184.3_crit_edge

if.end180.3.if.end184.3_crit_edge:                ; preds = %if.end180.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.3

if.end180.3.do.end216_crit_edge:                  ; preds = %if.end180.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end184.3:                                      ; preds = %if.end180.3.if.end184.3_crit_edge, %for.inc208.2.if.end184.3_crit_edge
  %sleep186.3 = getelementptr inbounds %struct.dvb_frontend, ptr %252, i32 0, i32 1, i32 6
  %255 = ptrtoint ptr %sleep186.3 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %sleep186.3, align 4
  %tobool187.not.3 = icmp eq ptr %256, null
  br i1 %tobool187.not.3, label %if.end184.3.if.end196.3_crit_edge, label %if.end192.3

if.end184.3.if.end196.3_crit_edge:                ; preds = %if.end184.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196.3

if.end192.3:                                      ; preds = %if.end184.3
  %call191.3 = call i32 %256(ptr noundef %252) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.3)
  %cmp193.3 = icmp slt i32 %call191.3, 0
  br i1 %cmp193.3, label %if.end192.3.do.end216_crit_edge, label %if.end192.3.if.end196.3_crit_edge

if.end192.3.if.end196.3_crit_edge:                ; preds = %if.end192.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196.3

if.end192.3.do.end216_crit_edge:                  ; preds = %if.end192.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end196.3:                                      ; preds = %if.end192.3.if.end196.3_crit_edge, %if.end184.3.if.end196.3_crit_edge
  %delsys198.3 = getelementptr inbounds %struct.dvb_frontend, ptr %252, i32 0, i32 1, i32 1
  %257 = ptrtoint ptr %delsys198.3 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %delsys198.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %258)
  %cmp201.3 = icmp eq i8 %258, 9
  br i1 %cmp201.3, label %if.then203.3, label %if.else205.3

if.else205.3:                                     ; preds = %if.end196.3
  call void @__sanitizer_cov_trace_pc() #11
  %set_lna.3 = getelementptr inbounds %struct.dvb_frontend, ptr %252, i32 0, i32 1, i32 30
  %259 = ptrtoint ptr %set_lna.3 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @pt3_set_lna, ptr %set_lna.3, align 4
  br label %cleanup

if.then203.3:                                     ; preds = %if.end196.3
  call void @__sanitizer_cov_trace_pc() #11
  %set_voltage.3 = getelementptr inbounds %struct.dvb_frontend, ptr %252, i32 0, i32 1, i32 25
  %260 = ptrtoint ptr %set_voltage.3 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @pt3_set_voltage, ptr %set_voltage.3, align 4
  br label %cleanup

do.end216:                                        ; preds = %if.end192.3.do.end216_crit_edge, %if.end180.3.do.end216_crit_edge, %if.end192.2.do.end216_crit_edge, %if.end180.2.do.end216_crit_edge, %if.end192.1.do.end216_crit_edge, %if.end180.1.do.end216_crit_edge, %if.end192.do.end216_crit_edge, %if.end180.do.end216_crit_edge
  %i.4409.lcssa = phi i32 [ 0, %if.end192.do.end216_crit_edge ], [ 0, %if.end180.do.end216_crit_edge ], [ 1, %if.end180.1.do.end216_crit_edge ], [ 1, %if.end192.1.do.end216_crit_edge ], [ 2, %if.end180.2.do.end216_crit_edge ], [ 2, %if.end192.2.do.end216_crit_edge ], [ 3, %if.end180.3.do.end216_crit_edge ], [ 3, %if.end192.3.do.end216_crit_edge ]
  %ret.8.ph = phi i32 [ %call191, %if.end192.do.end216_crit_edge ], [ %call179, %if.end180.do.end216_crit_edge ], [ %call179.1, %if.end180.1.do.end216_crit_edge ], [ %call191.1, %if.end192.1.do.end216_crit_edge ], [ %call179.2, %if.end180.2.do.end216_crit_edge ], [ %call191.2, %if.end192.2.do.end216_crit_edge ], [ %call179.3, %if.end180.3.do.end216_crit_edge ], [ %call191.3, %if.end192.3.do.end216_crit_edge ]
  %261 = ptrtoint ptr %pt3 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pt3, align 8
  %dev218 = getelementptr inbounds %struct.pci_dev, ptr %262, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev218, ptr noundef nonnull @.str.72, i32 noundef %i.4409.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end216, %if.then203.3, %if.else205.3, %do.end159, %do.end119, %do.end109, %do.end96, %do.end66, %do.end35, %if.end22.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %do.end19 ], [ %63, %do.end35 ], [ %ret.1, %do.end66 ], [ %call90.lcssa, %do.end96 ], [ %call103, %do.end109 ], [ %156, %do.end119 ], [ %ret.4.lcssa, %do.end159 ], [ %ret.8.ph, %do.end216 ], [ 0, %if.then203.3 ], [ 0, %if.else205.3 ], [ %call24, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt3_cleanup_adapter(ptr nocapture noundef %pt3, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %thread = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %call.i = tail call i32 @pt3_stop_dma(ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then1.pt3_stop_streaming.exit_crit_edge, label %do.end.i

if.then1.pt3_stop_streaming.exit_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_stop_streaming.exit

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %fe.i = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe.i, align 8
  %id.i = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %7, i32 noundef %11) #12
  br label %pt3_stop_streaming.exit

pt3_stop_streaming.exit:                          ; preds = %do.end.i, %if.then1.pt3_stop_streaming.exit_crit_edge
  %12 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %thread, align 4
  %call2.i = tail call i32 @kthread_stop(ptr noundef %13) #9
  %14 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %thread, align 4
  br label %if.end2

if.end2:                                          ; preds = %pt3_stop_streaming.exit, %if.end.if.end2_crit_edge
  %demux = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 2
  %close = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 2, i32 0, i32 4
  %15 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %close, align 4
  %call4 = tail call i32 %16(ptr noundef %demux) #9
  %fe = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe, align 8
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.end2.if.end14_crit_edge, label %if.then6

if.end2.if.end14_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %if.end2
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %callback, align 4
  %20 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fe, align 8
  %frontend_priv = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %frontend_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %frontend_priv, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.then6.if.end13_crit_edge, label %if.then10

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @dvb_unregister_frontend(ptr noundef %21) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then6.if.end13_crit_edge
  %i2c_tuner = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %i2c_tuner to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_tuner, align 8
  tail call void @dvb_module_release(ptr noundef %25) #9
  %i2c_demod = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %i2c_demod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_demod, align 4
  tail call void @dvb_module_release(ptr noundef %27) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end2.if.end14_crit_edge
  tail call void @pt3_free_dmabuf(ptr noundef nonnull %1) #9
  %dmxdev = getelementptr inbounds %struct.pt3_adapter, ptr %1, i32 0, i32 3
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp16 = icmp eq i32 %index, 0
  br i1 %cmp16, label %if.end14.if.then18_crit_edge, label %lor.lhs.false

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end14
  %28 = load i8, ptr @one_adapter, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  %call19 = tail call i32 @dvb_unregister_adapter(ptr noundef nonnull %1) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false.if.end20_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #9
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_i2c_master_xfer(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_i2c_functionality(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_start_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !176) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %entry.cleanup_crit_edge, !prof !190

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit:                              ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %signal_pending.exit
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %11 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %demux, align 4
  %num_feeds = getelementptr i8, ptr %12, i32 1640
  %13 = ptrtoint ptr %num_feeds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_feeds, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %num_feeds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %12, i32 -256
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 8
  %dmxdev.i = getelementptr i8, ptr %12, i32 624
  %17 = ptrtoint ptr %dmxdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmxdev.i, align 8
  %id.i = getelementptr inbounds %struct.dvb_device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 4
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @pt3_fetch_thread, ptr noundef %add.ptr, i32 noundef -1, ptr noundef nonnull @.str.36, i32 noundef %16, i32 noundef %20) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end13.i

if.then4.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call.i to i32
  %thread6.i = getelementptr i8, ptr %12, i32 1636
  %22 = ptrtoint ptr %thread6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %thread6.i, align 4
  %device.i = getelementptr i8, ptr %12, i32 -220
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 8
  %27 = ptrtoint ptr %dmxdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dmxdev.i, align 8
  %id12.i = getelementptr inbounds %struct.dvb_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %id12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.37, i32 noundef %26, i32 noundef %30) #12
  br label %cleanup

if.end13.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #9
  %thread14.i = getelementptr i8, ptr %12, i32 1636
  %31 = ptrtoint ptr %thread14.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %thread14.i, align 4
  %call15.i = tail call i32 @pt3_start_dma(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13.i, %if.then4.i, %if.end.cleanup_crit_edge, %signal_pending.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %signal_pending.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %21, %if.then4.i ], [ %call15.i, %if.end13.i ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_stop_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -256
  %num_feeds = getelementptr i8, ptr %1, i32 1640
  %2 = ptrtoint ptr %num_feeds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_feeds, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %num_feeds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %thread = getelementptr i8, ptr %1, i32 1636
  %4 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %num_feeds to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_feeds, align 8
  %call.i = tail call i32 @pt3_stop_dma(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.pt3_stop_streaming.exit_crit_edge, label %do.end.i

if.end.pt3_stop_streaming.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_stop_streaming.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr i8, ptr %1, i32 -220
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 8
  %fe.i = getelementptr i8, ptr %1, i32 1624
  %11 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe.i, align 8
  %id.i = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef %10, i32 noundef %14) #12
  br label %pt3_stop_streaming.exit

pt3_stop_streaming.exit:                          ; preds = %do.end.i, %if.end.pt3_stop_streaming.exit_crit_edge
  %15 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %thread, align 4
  %call2.i = tail call i32 @kthread_stop(ptr noundef %16) #9
  %17 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %thread, align 4
  br label %cleanup

cleanup:                                          ; preds = %pt3_stop_streaming.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %pt3_stop_streaming.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_alloc_dmabuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pt3_free_dmabuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_fetch_thread(ptr noundef %data) #2 align 64 {
entry:
  %delay = alloca i64, align 8
  %was_frozen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %delay) #9
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %delay, align 8, !annotation !186
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %was_frozen) #9
  %1 = ptrtoint ptr %was_frozen to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %was_frozen, align 1, !annotation !186
  tail call void @pt3_init_dmabuf(ptr noundef %data) #9
  %num_discard = getelementptr inbounds %struct.pt3_adapter, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %num_discard to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %num_discard, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pt3_fetch_thread.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pt3_fetch_thread, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !191

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.dvb_adapter, ptr %data, i32 0, i32 6
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %thread = getelementptr inbounds %struct.pt3_adapter, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thread, align 4
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pt3_fetch_thread.__UNIQUE_ID_ddebug304, ptr noundef %4, ptr noundef nonnull @.str.40, ptr noundef %comm) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @set_freezable() #9
  %call4121 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef nonnull %was_frozen) #9
  br i1 %call4121, label %do.end.do.body86_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.do.body86_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86

while.body:                                       ; preds = %freezable_schedule_hrtimeout_range.exit.while.body_crit_edge, %do.end.while.body_crit_edge
  %7 = ptrtoint ptr %was_frozen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %was_frozen, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %while.body.if.end10_crit_edge, label %if.then8

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %num_discard to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %num_discard, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %while.body.if.end10_crit_edge
  %call11 = call i32 @pt3_proc_dma(ptr noundef %data) #9
  %10 = ptrtoint ptr %delay to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 10000000, ptr %delay, align 8
  br label %__here

__here:                                           ; preds = %if.end10
  %11 = call i32 @llvm.read_register.i32(metadata !176) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@pt3_fetch_thread, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 2, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !192
  %18 = call i32 @llvm.read_register.i32(metadata !176) #9
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %23, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %call.i = call i32 @schedule_hrtimeout_range(ptr noundef nonnull %delay, i64 noundef 2000000, i32 noundef 1) #9
  %24 = call i32 @llvm.read_register.i32(metadata !176) #9
  %and.i.i1.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %29, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  %30 = call i32 @llvm.read_register.i32(metadata !176) #9
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %__here.if.end.i.i.i_crit_edge

__here.if.end.i.i.i_crit_edge:                    ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %__here.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 57) #9
  %36 = call i32 @llvm.read_register.i32(metadata !176) #9
  %and.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %40 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.freezable_schedule_hrtimeout_range.exit_crit_edge, label %freezing.exit.i.i.i.i, !prof !190

if.end.i.i.i.freezable_schedule_hrtimeout_range.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freezable_schedule_hrtimeout_range.exit

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %39) #9
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.freezable_schedule_hrtimeout_range.exit_crit_edge, !prof !194

freezing.exit.i.i.i.i.freezable_schedule_hrtimeout_range.exit_crit_edge: ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freezable_schedule_hrtimeout_range.exit

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %freezable_schedule_hrtimeout_range.exit

freezable_schedule_hrtimeout_range.exit:          ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.freezable_schedule_hrtimeout_range.exit_crit_edge, %if.end.i.i.i.freezable_schedule_hrtimeout_range.exit_crit_edge
  %call4 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef nonnull %was_frozen) #9
  br i1 %call4, label %freezable_schedule_hrtimeout_range.exit.do.body86_crit_edge, label %freezable_schedule_hrtimeout_range.exit.while.body_crit_edge

freezable_schedule_hrtimeout_range.exit.while.body_crit_edge: ; preds = %freezable_schedule_hrtimeout_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

freezable_schedule_hrtimeout_range.exit.do.body86_crit_edge: ; preds = %freezable_schedule_hrtimeout_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86

do.body86:                                        ; preds = %freezable_schedule_hrtimeout_range.exit.do.body86_crit_edge, %do.end.do.body86_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pt3_fetch_thread.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pt3_fetch_thread, %if.then98)) #9
          to label %do.end106 [label %if.then98], !srcloc !191

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %device100 = getelementptr inbounds %struct.dvb_adapter, ptr %data, i32 0, i32 6
  %41 = ptrtoint ptr %device100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device100, align 4
  %thread101 = getelementptr inbounds %struct.pt3_adapter, ptr %data, i32 0, i32 7
  %43 = ptrtoint ptr %thread101 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %thread101, align 4
  %comm102 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 101
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pt3_fetch_thread.__UNIQUE_ID_ddebug306, ptr noundef %42, ptr noundef nonnull @.str.41, ptr noundef %comm102) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then98, %do.body86
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %was_frozen) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %delay) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_start_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pt3_init_dmabuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_freezable_should_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_proc_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_stop_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pt3_i2c_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_init_all_demods(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt3_set_tuner_power(ptr nocapture noundef readonly %pt3, i1 noundef zeroext %tuner_on, i1 noundef zeroext %amp_on) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %rv = alloca %struct.reg_val, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rv) #9
  %0 = ptrtoint ptr %rv to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 7833, ptr %rv, align 2
  br i1 %tuner_on, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.reg_val, ptr %rv, i32 0, i32 1
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = or i8 %2, 64
  store i8 %3, ptr %val, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %amp_on, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val5 = getelementptr inbounds %struct.reg_val, ptr %rv, i32 0, i32 1
  %4 = ptrtoint ptr %val5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val5, align 1
  %6 = or i8 %5, 4
  store i8 %6, ptr %val5, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %arrayidx = getelementptr %struct.pt3_board, ptr %pt3, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %i2c_demod.i = getelementptr inbounds %struct.pt3_adapter, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %i2c_demod.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_demod.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rv, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  %20 = call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  %21 = select i1 %cmp3.i, i32 -66, i32 %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rv) #9
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pt3_init_all_mxl301rf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_set_voltage(ptr noundef readonly %fe, i32 noundef %volt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @one_adapter, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %1 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %arrayidx.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %fe1.i = getelementptr inbounds %struct.pt3_adapter, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %fe1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe1.i, align 8
  %cmp2.i = icmp eq ptr %8, %fe
  br i1 %cmp2.i, label %if.then.i.pt3_find_adapter.exit_crit_edge, label %for.cond.i

if.then.i.pt3_find_adapter.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

for.cond.i:                                       ; preds = %if.then.i
  %arrayidx.1.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  %fe1.1.i = getelementptr inbounds %struct.pt3_adapter, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %fe1.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe1.1.i, align 8
  %cmp2.1.i = icmp eq ptr %12, %fe
  br i1 %cmp2.1.i, label %for.cond.i.pt3_find_adapter.exit_crit_edge, label %for.cond.1.i

for.cond.i.pt3_find_adapter.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2.i, align 4
  %fe1.2.i = getelementptr inbounds %struct.pt3_adapter, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %fe1.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe1.2.i, align 8
  %cmp2.2.i = icmp eq ptr %16, %fe
  br i1 %cmp2.2.i, label %for.cond.1.i.pt3_find_adapter.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.pt3_find_adapter.exit_crit_edge:     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.3.i, align 4
  %fe1.3.i = getelementptr inbounds %struct.pt3_adapter, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %fe1.3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe1.3.i, align 8
  %cmp2.3.i = icmp eq ptr %20, %fe
  br i1 %cmp2.3.i, label %for.cond.2.i.pt3_find_adapter.exit_crit_edge, label %for.cond.2.i.if.end6.i_crit_edge

for.cond.2.i.if.end6.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

for.cond.2.i.pt3_find_adapter.exit_crit_edge:     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

if.end6.i:                                        ; preds = %for.cond.2.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %dvb7.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %21 = ptrtoint ptr %dvb7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb7.i, align 4
  br label %pt3_find_adapter.exit

pt3_find_adapter.exit:                            ; preds = %if.end6.i, %for.cond.2.i.pt3_find_adapter.exit_crit_edge, %for.cond.1.i.pt3_find_adapter.exit_crit_edge, %for.cond.i.pt3_find_adapter.exit_crit_edge, %if.then.i.pt3_find_adapter.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end6.i ], [ %6, %if.then.i.pt3_find_adapter.exit_crit_edge ], [ %10, %for.cond.i.pt3_find_adapter.exit_crit_edge ], [ %14, %for.cond.1.i.pt3_find_adapter.exit_crit_edge ], [ %18, %for.cond.2.i.pt3_find_adapter.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %volt)
  %cmp = icmp ne i32 %volt, 2
  %cur_lnb = getelementptr inbounds %struct.pt3_adapter, ptr %retval.0.i, i32 0, i32 10
  %23 = ptrtoint ptr %cur_lnb to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cur_lnb, align 1, !range !189
  %25 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp3 = icmp eq i8 %24, %25
  br i1 %cmp3, label %pt3_find_adapter.exit.cleanup_crit_edge, label %if.end

pt3_find_adapter.exit.cleanup_crit_edge:          ; preds = %pt3_find_adapter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %pt3_find_adapter.exit
  %26 = ptrtoint ptr %cur_lnb to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cur_lnb, align 1
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %retval.0.i, i32 0, i32 5
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.pt3_board, ptr %28, i32 0, i32 2
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %lnb_on_cnt = getelementptr inbounds %struct.pt3_board, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %lnb_on_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lnb_on_cnt, align 8
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %inc = add i32 %30, 1
  %31 = ptrtoint ptr %lnb_on_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc, ptr %lnb_on_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp19 = icmp slt i32 %inc, 2
  br i1 %cmp19, label %if.then21, label %if.then13.if.end32_crit_edge

if.then13.if.end32_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.else:                                          ; preds = %if.end11
  %dec = add i32 %30, -1
  %32 = ptrtoint ptr %lnb_on_cnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dec, ptr %lnb_on_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp27 = icmp slt i32 %dec, 1
  br i1 %cmp27, label %if.then29, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %lnb_on_cnt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %lnb_on_cnt, align 8
  %regs.i = getelementptr inbounds %struct.pt3_board, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #9, !srcloc !196
  br label %if.end32

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %lnb_on_cnt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %lnb_on_cnt, align 8
  %regs.i51 = getelementptr inbounds %struct.pt3_board, ptr %28, i32 0, i32 1
  %37 = ptrtoint ptr %regs.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 201326592) #9, !srcloc !196
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then21, %if.else.if.end32_crit_edge, %if.then13.if.end32_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge, %pt3_find_adapter.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ 0, %pt3_find_adapter.exit.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_set_lna(ptr noundef readonly %fe) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %rv.i = alloca %struct.reg_val, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @one_adapter, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %1 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %arrayidx.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %fe1.i = getelementptr inbounds %struct.pt3_adapter, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %fe1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe1.i, align 8
  %cmp2.i = icmp eq ptr %8, %fe
  br i1 %cmp2.i, label %if.then.i.pt3_find_adapter.exit_crit_edge, label %for.cond.i

if.then.i.pt3_find_adapter.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

for.cond.i:                                       ; preds = %if.then.i
  %arrayidx.1.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  %fe1.1.i = getelementptr inbounds %struct.pt3_adapter, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %fe1.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe1.1.i, align 8
  %cmp2.1.i = icmp eq ptr %12, %fe
  br i1 %cmp2.1.i, label %for.cond.i.pt3_find_adapter.exit_crit_edge, label %for.cond.1.i

for.cond.i.pt3_find_adapter.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2.i, align 4
  %fe1.2.i = getelementptr inbounds %struct.pt3_adapter, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %fe1.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe1.2.i, align 8
  %cmp2.2.i = icmp eq ptr %16, %fe
  br i1 %cmp2.2.i, label %for.cond.1.i.pt3_find_adapter.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.pt3_find_adapter.exit_crit_edge:     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.pt3_board, ptr %4, i32 0, i32 8, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.3.i, align 4
  %fe1.3.i = getelementptr inbounds %struct.pt3_adapter, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %fe1.3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe1.3.i, align 8
  %cmp2.3.i = icmp eq ptr %20, %fe
  br i1 %cmp2.3.i, label %for.cond.2.i.pt3_find_adapter.exit_crit_edge, label %for.cond.2.i.if.end6.i_crit_edge

for.cond.2.i.if.end6.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

for.cond.2.i.pt3_find_adapter.exit_crit_edge:     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pt3_find_adapter.exit

if.end6.i:                                        ; preds = %for.cond.2.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %dvb7.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %21 = ptrtoint ptr %dvb7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb7.i, align 4
  br label %pt3_find_adapter.exit

pt3_find_adapter.exit:                            ; preds = %if.end6.i, %for.cond.2.i.pt3_find_adapter.exit_crit_edge, %for.cond.1.i.pt3_find_adapter.exit_crit_edge, %for.cond.i.pt3_find_adapter.exit_crit_edge, %if.then.i.pt3_find_adapter.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end6.i ], [ %6, %if.then.i.pt3_find_adapter.exit_crit_edge ], [ %10, %for.cond.i.pt3_find_adapter.exit_crit_edge ], [ %14, %for.cond.1.i.pt3_find_adapter.exit_crit_edge ], [ %18, %for.cond.2.i.pt3_find_adapter.exit_crit_edge ]
  %lna = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 41
  %23 = ptrtoint ptr %lna to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lna, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp = icmp eq i32 %24, -1
  br i1 %cmp, label %pt3_find_adapter.exit.cleanup_crit_edge, label %lor.lhs.false

pt3_find_adapter.exit.cleanup_crit_edge:          ; preds = %pt3_find_adapter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %pt3_find_adapter.exit
  %cur_lna = getelementptr inbounds %struct.pt3_adapter, ptr %retval.0.i, i32 0, i32 9
  %25 = ptrtoint ptr %cur_lna to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cur_lna, align 4, !range !189
  %27 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %27)
  %cmp1 = icmp eq i32 %24, %27
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %retval.0.i, i32 0, i32 5
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.pt3_board, ptr %29, i32 0, i32 2
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7 = icmp ne i32 %24, 0
  %lna_on_cnt = getelementptr inbounds %struct.pt3_board, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %lna_on_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lna_on_cnt, align 4
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %inc = add i32 %31, 1
  %32 = ptrtoint ptr %lna_on_cnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc, ptr %lna_on_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp13 = icmp slt i32 %inc, 2
  br i1 %cmp13, label %if.then15, label %if.then8.if.end29_crit_edge

if.then8.if.end29_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else:                                          ; preds = %if.end6
  %dec = add i32 %31, -1
  %33 = ptrtoint ptr %lna_on_cnt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec, ptr %lna_on_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp22 = icmp slt i32 %dec, 1
  br i1 %cmp22, label %if.then24, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %lna_on_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %lna_on_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rv.i) #9
  %35 = ptrtoint ptr %rv.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 7901, ptr %rv.i, align 2
  %arrayidx.i55 = getelementptr %struct.pt3_board, ptr %29, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i55, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %38 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %38, align 4
  %i2c_demod.i.i = getelementptr inbounds %struct.pt3_adapter, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %i2c_demod.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_demod.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr.i.i, align 2
  %44 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rv.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 3
  %47 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  %49 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  %50 = select i1 %cmp3.i.i, i32 -66, i32 %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rv.i) #9
  br label %if.end29

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %lna_on_cnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %lna_on_cnt, align 4
  %call26 = tail call fastcc i32 @pt3_set_tuner_power(ptr noundef %29, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.then15, %if.else.if.end29_crit_edge, %if.then8.if.end29_crit_edge
  %ret.0 = phi i32 [ %50, %if.then15 ], [ %call26, %if.then24 ], [ 0, %if.then8.if.end29_crit_edge ], [ 0, %if.else.if.end29_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  %frombool = zext i1 %tobool7 to i8
  %52 = ptrtoint ptr %cur_lna to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool, ptr %cur_lna, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %pt3_find_adapter.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end29 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %pt3_find_adapter.exit.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %rv.i = alloca %struct.reg_val, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %num_feeds = getelementptr inbounds %struct.pt3_adapter, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %num_feeds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_feeds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @pt3_stop_dma(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fe = getelementptr inbounds %struct.pt3_adapter, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %call3 = tail call i32 @dvb_frontend_suspend(ptr noundef %7) #9
  tail call void @pt3_free_dmabuf(ptr noundef %3) #9
  %arrayidx.1 = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %num_feeds.1 = getelementptr inbounds %struct.pt3_adapter, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %num_feeds.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_feeds.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.1 = icmp sgt i32 %11, 0
  br i1 %cmp1.1, label %if.then.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2.1 = tail call i32 @pt3_stop_dma(ptr noundef %9) #9
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %fe.1 = getelementptr inbounds %struct.pt3_adapter, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %fe.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe.1, align 8
  %call3.1 = tail call i32 @dvb_frontend_suspend(ptr noundef %13) #9
  tail call void @pt3_free_dmabuf(ptr noundef %9) #9
  %arrayidx.2 = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %num_feeds.2 = getelementptr inbounds %struct.pt3_adapter, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %num_feeds.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_feeds.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.2 = icmp sgt i32 %17, 0
  br i1 %cmp1.2, label %if.then.2, label %if.end.1.if.end.2_crit_edge

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  %call2.2 = tail call i32 @pt3_stop_dma(ptr noundef %15) #9
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %fe.2 = getelementptr inbounds %struct.pt3_adapter, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %fe.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fe.2, align 8
  %call3.2 = tail call i32 @dvb_frontend_suspend(ptr noundef %19) #9
  tail call void @pt3_free_dmabuf(ptr noundef %15) #9
  %arrayidx.3 = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %num_feeds.3 = getelementptr inbounds %struct.pt3_adapter, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %num_feeds.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_feeds.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.3 = icmp sgt i32 %23, 0
  br i1 %cmp1.3, label %if.then.3, label %if.end.2.if.end.3_crit_edge

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  %call2.3 = tail call i32 @pt3_stop_dma(ptr noundef %21) #9
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %fe.3 = getelementptr inbounds %struct.pt3_adapter, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %fe.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fe.3, align 8
  %call3.3 = tail call i32 @dvb_frontend_suspend(ptr noundef %25) #9
  tail call void @pt3_free_dmabuf(ptr noundef %21) #9
  %regs.i = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201326592) #9, !srcloc !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rv.i) #9
  %28 = ptrtoint ptr %rv.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 7833, ptr %rv.i, align 2
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %31 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %i2c_demod.i.i = getelementptr inbounds %struct.pt3_adapter, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %i2c_demod.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_demod.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i.i, align 2
  %37 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rv.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 3
  %40 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rv.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt3_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %rv.i = alloca %struct.reg_val, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @pt3_fe_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lna_on_cnt = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lna_on_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lna_on_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rv.i) #9
  %4 = ptrtoint ptr %rv.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 7901, ptr %rv.i, align 2
  %arrayidx.i = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %i2c_demod.i.i = getelementptr inbounds %struct.pt3_adapter, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %i2c_demod.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_demod.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i.i, align 2
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rv.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rv.i) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %lnb_on_cnt = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %lnb_on_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lnb_on_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5 = icmp sgt i32 %19, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #9, !srcloc !196
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %arrayidx = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %fe = getelementptr inbounds %struct.pt3_adapter, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fe, align 8
  %call9 = call i32 @dvb_frontend_resume(ptr noundef %25) #9
  %call10 = call i32 @pt3_alloc_dmabuf(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.74) #12
  br label %for.inc

if.end14:                                         ; preds = %if.end7
  %num_feeds = getelementptr inbounds %struct.pt3_adapter, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %num_feeds to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_feeds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp15 = icmp sgt i32 %29, 0
  br i1 %cmp15, label %if.then16, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call i32 @pt3_start_dma(ptr noundef %23) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end14.for.inc_crit_edge, %do.end
  %arrayidx.1 = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.1, align 4
  %fe.1 = getelementptr inbounds %struct.pt3_adapter, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %fe.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fe.1, align 8
  %call9.1 = call i32 @dvb_frontend_resume(ptr noundef %33) #9
  %call10.1 = call i32 @pt3_alloc_dmabuf(ptr noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %if.end14.1, label %do.end.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %dev13.1 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.1, ptr noundef nonnull @.str.74) #12
  br label %for.inc.1

if.end14.1:                                       ; preds = %for.inc
  %num_feeds.1 = getelementptr inbounds %struct.pt3_adapter, ptr %31, i32 0, i32 8
  %36 = ptrtoint ptr %num_feeds.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_feeds.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp15.1 = icmp sgt i32 %37, 0
  br i1 %cmp15.1, label %if.then16.1, label %if.end14.1.for.inc.1_crit_edge

if.end14.1.for.inc.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then16.1:                                      ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  %call17.1 = call i32 @pt3_start_dma(ptr noundef %31) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then16.1, %if.end14.1.for.inc.1_crit_edge, %do.end.1
  %arrayidx.2 = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 2
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.2, align 4
  %fe.2 = getelementptr inbounds %struct.pt3_adapter, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %fe.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fe.2, align 8
  %call9.2 = call i32 @dvb_frontend_resume(ptr noundef %41) #9
  %call10.2 = call i32 @pt3_alloc_dmabuf(ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %tobool11.not.2 = icmp eq i32 %call10.2, 0
  br i1 %tobool11.not.2, label %if.end14.2, label %do.end.2

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %dev13.2 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.2, ptr noundef nonnull @.str.74) #12
  br label %for.inc.2

if.end14.2:                                       ; preds = %for.inc.1
  %num_feeds.2 = getelementptr inbounds %struct.pt3_adapter, ptr %39, i32 0, i32 8
  %44 = ptrtoint ptr %num_feeds.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_feeds.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp15.2 = icmp sgt i32 %45, 0
  br i1 %cmp15.2, label %if.then16.2, label %if.end14.2.for.inc.2_crit_edge

if.end14.2.for.inc.2_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then16.2:                                      ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  %call17.2 = call i32 @pt3_start_dma(ptr noundef %39) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then16.2, %if.end14.2.for.inc.2_crit_edge, %do.end.2
  %arrayidx.3 = getelementptr %struct.pt3_board, ptr %1, i32 0, i32 8, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.3, align 4
  %fe.3 = getelementptr inbounds %struct.pt3_adapter, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %fe.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fe.3, align 8
  %call9.3 = call i32 @dvb_frontend_resume(ptr noundef %49) #9
  %call10.3 = call i32 @pt3_alloc_dmabuf(ptr noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3)
  %tobool11.not.3 = icmp eq i32 %call10.3, 0
  br i1 %tobool11.not.3, label %if.end14.3, label %do.end.3

do.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %dev13.3 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.3, ptr noundef nonnull @.str.74) #12
  br label %cleanup

if.end14.3:                                       ; preds = %for.inc.2
  %num_feeds.3 = getelementptr inbounds %struct.pt3_adapter, ptr %47, i32 0, i32 8
  %52 = ptrtoint ptr %num_feeds.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_feeds.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp15.3 = icmp sgt i32 %53, 0
  br i1 %cmp15.3, label %if.then16.3, label %if.end14.3.cleanup_crit_edge

if.end14.3.cleanup_crit_edge:                     ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16.3:                                      ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #11
  %call17.3 = call i32 @pt3_start_dma(ptr noundef %47) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16.3, %if.end14.3.cleanup_crit_edge, %do.end.3, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !108, !110, !112, !113, !114, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !165, !167, !169, !171, !173, !174, !175}
!llvm.named.register.sp = !{!176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/pt3/pt3.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype298, !1, !"__UNIQUE_ID_adapter_nrtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr299, !1, !"__UNIQUE_ID_adapter_nr299", i1 false, i1 false}
!4 = !{ptr @__param_one_adapter, !5, !"__param_one_adapter", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/pt3/pt3.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_one_adaptertype300, !5, !"__UNIQUE_ID_one_adaptertype300", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_one_adapter301, !8, !"__UNIQUE_ID_one_adapter301", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/pt3/pt3.c", i32 28, i32 1}
!9 = !{ptr @__param_num_bufs, !10, !"__param_num_bufs", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/pt3/pt3.c", i32 31, i32 1}
!11 = !{ptr @__UNIQUE_ID_num_bufstype302, !10, !"__UNIQUE_ID_num_bufstype302", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_num_bufs303, !13, !"__UNIQUE_ID_num_bufs303", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/pt3/pt3.c", i32 32, i32 1}
!14 = !{ptr @__initcall__kmod_earth_pt3__311_806_pt3_driver_init6, !15, !"__initcall__kmod_earth_pt3__311_806_pt3_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/pt3/pt3.c", i32 806, i32 1}
!16 = !{ptr @__exitcall_pt3_driver_exit, !15, !"__exitcall_pt3_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_description312, !18, !"__UNIQUE_ID_description312", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/pt3/pt3.c", i32 808, i32 1}
!19 = !{ptr @__UNIQUE_ID_author313, !20, !"__UNIQUE_ID_author313", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/pt3/pt3.c", i32 809, i32 1}
!21 = !{ptr @__UNIQUE_ID_file314, !22, !"__UNIQUE_ID_file314", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/pt3/pt3.c", i32 810, i32 1}
!23 = !{ptr @__UNIQUE_ID_license315, !22, !"__UNIQUE_ID_license315", i1 false, i1 false}
!24 = !{ptr @one_adapter, !25, !"one_adapter", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/pt3/pt3.c", i32 26, i32 13}
!26 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!27 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!28 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_str_one_adapter, !5, !"__param_str_one_adapter", i1 false, i1 false}
!30 = !{ptr @__param_str_num_bufs, !10, !"__param_str_num_bufs", i1 false, i1 false}
!31 = !{ptr @num_bufs, !32, !"num_bufs", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/pt3/pt3.c", i32 30, i32 12}
!33 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pt3_driver, !35, !"pt3_driver", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/pt3/pt3.c", i32 797, i32 26}
!36 = !{ptr @pt3_id_table, !37, !"pt3_id_table", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/pt3/pt3.c", i32 789, i32 35}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/pt3/pt3.c", i32 718, i32 4}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pt3_probe._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @pt3_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/pt3/pt3.c", i32 721, i32 3}
!48 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pt3_probe._entry.6, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pt3_probe._entry_ptr.9, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @pt3_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/pt3/pt3.c", i32 729, i32 2}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/pt3/pt3.c", i32 735, i32 3}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pt3_probe._entry.11, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @pt3_probe._entry_ptr.14, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/pt3/pt3.c", i32 766, i32 3}
!61 = !{ptr @pt3_probe._entry.15, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pt3_probe._entry_ptr.17, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/pt3/pt3.c", i32 772, i32 3}
!65 = !{ptr @pt3_probe._entry.18, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pt3_probe._entry_ptr.20, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/pt3/pt3.c", i32 777, i32 2}
!69 = !{ptr @pt3_probe._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pt3_probe._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pt3_i2c_algo, !72, !"pt3_i2c_algo", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/pt3/pt3.c", i32 35, i32 35}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/pt3/pt3.c", i32 540, i32 47}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/pt3/pt3.c", i32 543, i32 4}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pt3_alloc_adapter._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @pt3_alloc_adapter._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/pt3/pt3.c", i32 560, i32 3}
!82 = !{ptr @pt3_alloc_adapter._entry.27, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pt3_alloc_adapter._entry_ptr.29, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/pt3/pt3.c", i32 568, i32 3}
!86 = !{ptr @pt3_alloc_adapter._entry.30, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pt3_alloc_adapter._entry_ptr.32, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/pt3/pt3.c", i32 574, i32 3}
!90 = !{ptr @pt3_alloc_adapter._entry.33, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @pt3_alloc_adapter._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/pt3/pt3.c", i32 463, i32 11}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/pt3/pt3.c", i32 469, i32 3}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pt3_start_streaming._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @pt3_start_streaming._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/pt3/pt3.c", i32 438, i32 2}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pt3_fetch_thread.__UNIQUE_ID_ddebug304, !100, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/pt3/pt3.c", i32 448, i32 3}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/pt3/pt3.c", i32 453, i32 2}
!107 = !{ptr @pt3_fetch_thread.__UNIQUE_ID_ddebug306, !106, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/pt3/pt3.c", i32 485, i32 3}
!112 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pt3_stop_streaming._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @pt3_stop_streaming._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/pt3/pt3.c", i32 381, i32 24}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/pt3/pt3.c", i32 387, i32 25}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/pt3/pt3.c", i32 394, i32 25}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/pt3/pt3.c", i32 402, i32 25}
!123 = !{ptr @adap_conf, !124, !"adap_conf", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/pt3/pt3.c", i32 40, i32 37}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/pt3/pt3.c", i32 250, i32 3}
!127 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pt3_fe_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pt3_fe_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/pt3/pt3.c", i32 265, i32 4}
!132 = !{ptr @pt3_fe_init._entry.51, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pt3_fe_init._entry_ptr.53, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/pt3/pt3.c", i32 277, i32 3}
!136 = !{ptr @pt3_fe_init._entry.54, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @pt3_fe_init._entry_ptr.56, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/pt3/pt3.c", i32 291, i32 4}
!140 = !{ptr @pt3_fe_init._entry.57, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @pt3_fe_init._entry_ptr.59, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/pt3/pt3.c", i32 305, i32 4}
!144 = !{ptr @pt3_fe_init._entry.60, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @pt3_fe_init._entry_ptr.62, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/pt3/pt3.c", i32 312, i32 3}
!148 = !{ptr @pt3_fe_init._entry.63, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @pt3_fe_init._entry_ptr.65, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @pt3_fe_init._entry.66, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/pt3/pt3.c", i32 318, i32 3}
!152 = !{ptr @pt3_fe_init._entry_ptr.67, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/pt3/pt3.c", i32 338, i32 4}
!155 = !{ptr @pt3_fe_init._entry.68, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @pt3_fe_init._entry_ptr.70, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/pt3/pt3.c", i32 361, i32 3}
!159 = !{ptr @pt3_fe_init._entry.71, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @pt3_fe_init._entry_ptr.73, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @init0_sat, !162, !"init0_sat", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/pt3/pt3.c", i32 217, i32 29}
!163 = !{ptr @init0_ter, !164, !"init0_ter", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/pt3/pt3.c", i32 221, i32 29}
!165 = !{ptr @cfg_sat, !166, !"cfg_sat", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/pt3/pt3.c", i32 225, i32 29}
!167 = !{ptr @cfg_ter, !168, !"cfg_ter", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/pt3/pt3.c", i32 229, i32 29}
!169 = !{ptr @pt3_pm_ops, !170, !"pt3_pm_ops", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/pt3/pt3.c", i32 795, i32 8}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/pt3/pt3.c", i32 666, i32 4}
!173 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pt3_resume._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @pt3_resume._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{!"sp"}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{!"auto-init"}
!187 = !{i64 5018062}
!188 = !{i64 2152558411}
!189 = !{i8 0, i8 2}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i64 2148678702, i64 2148678707, i64 2148678720, i64 2148678764, i64 2148678798, i64 2148678819}
!192 = !{i64 2156550998}
!193 = !{i64 2150470544}
!194 = !{!"branch_weights", i32 1, i32 2000}
!195 = !{i64 2152559766}
!196 = !{i64 5017644}
