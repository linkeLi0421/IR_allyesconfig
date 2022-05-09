; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-dvb.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pvr2_context = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pvr2_context_stream, %struct.mutex, i32, i32, i32, ptr }
%struct.pvr2_context_stream = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pvr2_hdw = type { ptr, ptr, %struct.v4l2_device, ptr, %struct.work_struct, ptr, %struct.mutex, i32, [32 x i8], [32 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, [128 x ptr], i32, i32, i32, %struct.IR_i2c_init_data, [500 x i32], i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, [64 x i8], i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_tuner, i32, %struct.v4l2_cropcap, i32, i64, i64, i64, i32, i32, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, [32 x ptr], [32 x [16 x i8]], i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pvr2_ctl_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i16, i32, i32, i32, i16, i32, i16, i16, i16, i16 }
%struct.pvr2_device_desc = type { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i16 }
%struct.pvr2_device_client_table = type { ptr, i8 }
%struct.pvr2_string_table = type { ptr, i32 }
%struct.pvr2_channel = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pvr2_dvb_adapter = type { %struct.pvr2_channel, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [2 x ptr], [2 x ptr], ptr, i32, i32, ptr, %struct.mutex, i8, %struct.wait_queue_head, [32 x ptr] }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.151], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.151 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.152 }>
%union.anon.152 = type { i64 }
%struct.pvr2_dvb_props = type { ptr, ptr }
%struct.dvb_demux_feed = type { %union.anon.149, %union.anon.150, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.149 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.150 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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

@__param_str_adapter_nr = internal constant [19 x i8] c"pvrusb2.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [43 x i8] c"pvrusb2.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [44 x i8] c"pvrusb2.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@pvr2_dvb_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&adap->buffer_wait_data\00", [40 x i8] zeroinitializer }, align 32
@pvr2_dvb_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&adap->lock\00", [20 x i8] zeroinitializer }, align 32
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pvrusb2-dvb\00", [20 x i8] zeroinitializer }, align 32
@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_dvb_adapter_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016pvrusb2: dvb_register_adapter failed: error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pvr2_dvb_adapter_init\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-dvb.c\00", [56 x i8] zeroinitializer }, align 32
@pvr2_dvb_adapter_init._entry_ptr = internal global ptr @pvr2_dvb_adapter_init._entry, section ".printk_index", align 4
@pvr2_dvb_adapter_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016pvrusb2: dvb_dmx_init failed: error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@pvr2_dvb_adapter_init._entry_ptr.9 = internal global ptr @pvr2_dvb_adapter_init._entry.7, section ".printk_index", align 4
@pvr2_dvb_adapter_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pvrusb2: dvb_dmxdev_init failed: error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pvr2_dvb_adapter_init._entry_ptr.12 = internal global ptr @pvr2_dvb_adapter_init._entry.10, section ".printk_index", align 4
@pvr2_dvb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016pvrusb2: start pid: 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_dvb_start_feed\00", [44 x i8] zeroinitializer }, align 32
@pvr2_dvb_start_feed._entry_ptr = internal global ptr @pvr2_dvb_start_feed._entry, section ".printk_index", align 4
@pvr2_dvb_ctrl_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016pvrusb2: start feeding demux\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_dvb_ctrl_feed\00", [45 x i8] zeroinitializer }, align 32
@pvr2_dvb_ctrl_feed._entry_ptr = internal global ptr @pvr2_dvb_ctrl_feed._entry, section ".printk_index", align 4
@pvr2_dvb_ctrl_feed._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016pvrusb2: stop feeding demux\0A\00", [33 x i8] zeroinitializer }, align 32
@pvr2_dvb_ctrl_feed._entry_ptr.19 = internal global ptr @pvr2_dvb_ctrl_feed._entry.17, section ".printk_index", align 4
@pvr2_dvb_feed_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016pvrusb2: dvb feed thread started\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_dvb_feed_func\00", [45 x i8] zeroinitializer }, align 32
@pvr2_dvb_feed_func._entry_ptr = internal global ptr @pvr2_dvb_feed_func._entry, section ".printk_index", align 4
@pvr2_dvb_feed_func._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.6, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016pvrusb2: dvb feed thread stopped\0A\00", [60 x i8] zeroinitializer }, align 32
@pvr2_dvb_feed_func._entry_ptr.24 = internal global ptr @pvr2_dvb_feed_func._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@pvr2_dvb_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016pvrusb2: stop pid: 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_dvb_stop_feed\00", [45 x i8] zeroinitializer }, align 32
@pvr2_dvb_stop_feed._entry_ptr = internal global ptr @pvr2_dvb_stop_feed._entry, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016pvrusb2: fe_props not defined!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pvr2_dvb_frontend_init\00", [41 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr = internal global ptr @pvr2_dvb_frontend_init._entry, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.6, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016pvrusb2: failed to grab control of dtv input (code=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.32 = internal global ptr @pvr2_dvb_frontend_init._entry.30, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.6, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016pvrusb2: frontend_attach not defined!\0A\00", [55 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.35 = internal global ptr @pvr2_dvb_frontend_init._entry.33, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.6, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016pvrusb2: frontend registration failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.38 = internal global ptr @pvr2_dvb_frontend_init._entry.36, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.6, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016pvrusb2: transferring fe[%d] ts_bus_ctrl() to pvr2_dvb_bus_ctrl()\0A\00", [59 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.41 = internal global ptr @pvr2_dvb_frontend_init._entry.39, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.6, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: no frontend was attached!\0A\00", [58 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.44 = internal global ptr @pvr2_dvb_frontend_init._entry.42, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.29, ptr @.str.6, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016pvrusb2: tuner attach failed\0A\00", [32 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.47 = internal global ptr @pvr2_dvb_frontend_init._entry.45, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.6, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.49 = internal global ptr @pvr2_dvb_frontend_init._entry.48, section ".printk_index", align 4
@pvr2_dvb_frontend_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.6, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_dvb_frontend_init._entry_ptr.51 = internal global ptr @pvr2_dvb_frontend_init._entry.50, section ".printk_index", align 4
@pvr2_dvb_adapter_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: unregistering DVB devices\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pvr2_dvb_adapter_exit\00", [42 x i8] zeroinitializer }, align 32
@pvr2_dvb_adapter_exit._entry_ptr = internal global ptr @pvr2_dvb_adapter_exit._entry, section ".printk_index", align 4
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 458, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 459, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 19, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 247, i32 46 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 252, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 270, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 281, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 225, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 203, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 212, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 28, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 75, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 57, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 231, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 316, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 324, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 331, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 339, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 347, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 351, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 358, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 371, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 382, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [43 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 300, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__param_adapter_nr, ptr @pvr2_dvb_adapter_exit._entry, ptr @pvr2_dvb_adapter_exit._entry_ptr, ptr @pvr2_dvb_adapter_init._entry, ptr @pvr2_dvb_adapter_init._entry.10, ptr @pvr2_dvb_adapter_init._entry.7, ptr @pvr2_dvb_adapter_init._entry_ptr, ptr @pvr2_dvb_adapter_init._entry_ptr.12, ptr @pvr2_dvb_adapter_init._entry_ptr.9, ptr @pvr2_dvb_ctrl_feed._entry, ptr @pvr2_dvb_ctrl_feed._entry.17, ptr @pvr2_dvb_ctrl_feed._entry_ptr, ptr @pvr2_dvb_ctrl_feed._entry_ptr.19, ptr @pvr2_dvb_feed_func._entry, ptr @pvr2_dvb_feed_func._entry.22, ptr @pvr2_dvb_feed_func._entry_ptr, ptr @pvr2_dvb_feed_func._entry_ptr.24, ptr @pvr2_dvb_frontend_init._entry, ptr @pvr2_dvb_frontend_init._entry.30, ptr @pvr2_dvb_frontend_init._entry.33, ptr @pvr2_dvb_frontend_init._entry.36, ptr @pvr2_dvb_frontend_init._entry.39, ptr @pvr2_dvb_frontend_init._entry.42, ptr @pvr2_dvb_frontend_init._entry.45, ptr @pvr2_dvb_frontend_init._entry.48, ptr @pvr2_dvb_frontend_init._entry.50, ptr @pvr2_dvb_frontend_init._entry_ptr, ptr @pvr2_dvb_frontend_init._entry_ptr.32, ptr @pvr2_dvb_frontend_init._entry_ptr.35, ptr @pvr2_dvb_frontend_init._entry_ptr.38, ptr @pvr2_dvb_frontend_init._entry_ptr.41, ptr @pvr2_dvb_frontend_init._entry_ptr.44, ptr @pvr2_dvb_frontend_init._entry_ptr.47, ptr @pvr2_dvb_frontend_init._entry_ptr.49, ptr @pvr2_dvb_frontend_init._entry_ptr.51, ptr @pvr2_dvb_start_feed._entry, ptr @pvr2_dvb_start_feed._entry_ptr, ptr @pvr2_dvb_stop_feed._entry, ptr @pvr2_dvb_stop_feed._entry_ptr, ptr @pvr2_dvb_create.__key, ptr @.str, ptr @pvr2_dvb_create.__key.1, ptr @.str.2, ptr @adapter_nr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_adapter_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_adapter_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_adapter_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_ctrl_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_ctrl_feed._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_feed_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_feed_func._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_frontend_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_dvb_adapter_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_dvb_create(ptr noundef %pvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdw = getelementptr inbounds %struct.pvr2_context, ptr %pvr, i32 0, i32 6
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %hdw_desc = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hdw_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw_desc, align 8
  %dvb_props = getelementptr inbounds %struct.pvr2_device_desc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dvb_props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb_props, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2400) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @pvr2_channel_init(ptr noundef nonnull %call7.i.i, ptr noundef %pvr) #7
  %check_func = getelementptr inbounds %struct.pvr2_channel, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %check_func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pvr2_dvb_internal_check, ptr %check_func, align 8
  %buffer_wait_data = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %buffer_wait_data, ptr noundef nonnull @.str, ptr noundef nonnull @pvr2_dvb_create.__key) #7
  %lock = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @pvr2_dvb_create.__key.1) #7
  %dvb_adap.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 1
  %hdw.i = getelementptr inbounds %struct.pvr2_channel, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdw.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %call.i = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adap.i, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef %dev.i, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %12 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.fail1_crit_edge, label %do.end.i

do.body.i.fail1_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %fail1

if.end6.i:                                        ; preds = %if.end3
  %priv.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %priv.i, align 4
  %demux.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 13, ptr %demux.i, align 8
  %priv9.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %priv9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %priv9.i, align 4
  %filternum.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 256, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pvr2_dvb_start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pvr2_dvb_stop_feed, ptr %stop_feed.i, align 4
  %write_to_decoder.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3, i32 6
  %20 = ptrtoint ptr %write_to_decoder.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %write_to_decoder.i, align 8
  %call16.i = tail call i32 @dvb_dmx_init(ptr noundef %demux.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.body19.i, label %if.end31.i

do.body19.i:                                      ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %21 = load i32, ptr @pvrusb2_debug, align 4
  %and20.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.err_dmx.i_crit_edge, label %do.end25.i

do.body19.i.err_dmx.i_crit_edge:                  ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dmx.i

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call16.i) #11
  br label %err_dmx.i

if.end31.i:                                       ; preds = %if.end6.i
  %22 = ptrtoint ptr %filternum.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %filternum.i, align 8
  %dmxdev.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 2
  %filternum34.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %filternum34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %filternum34.i, align 4
  %demux38.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %demux38.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %demux.i, ptr %demux38.i, align 8
  %capabilities40.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %capabilities40.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %capabilities40.i, align 8
  %call43.i = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %dvb_adap.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %do.body46.i, label %if.end10

do.body46.i:                                      ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %27 = load i32, ptr @pvrusb2_debug, align 4
  %and47.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.body46.i.err_dmx_dev.i_crit_edge, label %do.end52.i

do.body46.i.err_dmx_dev.i_crit_edge:              ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dmx_dev.i

do.end52.i:                                       ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #9
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call43.i) #11
  br label %err_dmx_dev.i

err_dmx_dev.i:                                    ; preds = %do.end52.i, %do.body46.i.err_dmx_dev.i_crit_edge
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #7
  br label %err_dmx.i

err_dmx.i:                                        ; preds = %err_dmx_dev.i, %do.end25.i, %do.body19.i.err_dmx.i_crit_edge
  %call65.i = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap.i) #7
  br label %fail1

if.end10:                                         ; preds = %if.end31.i
  %dvb_net.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 4
  %call62.i = tail call i32 @dvb_net_init(ptr noundef %dvb_adap.i, ptr noundef %dvb_net.i, ptr noundef %demux.i) #7
  %28 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdw.i, align 8
  %hdw_desc.i = getelementptr inbounds %struct.pvr2_hdw, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %hdw_desc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdw_desc.i, align 8
  %dvb_props2.i = getelementptr inbounds %struct.pvr2_device_desc, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %dvb_props2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dvb_props2.i, align 8
  %cmp.i30 = icmp eq ptr %33, null
  br i1 %cmp.i30, label %do.body.i33, label %if.end7.i

do.body.i33:                                      ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %34 = load i32, ptr @pvrusb2_debug, align 4
  %and.i31 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool.not.i32 = icmp eq i32 %and.i31, 0
  br i1 %tobool.not.i32, label %do.body.i33.fail2_crit_edge, label %do.end.i35

do.body.i33.fail2_crit_edge:                      ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

do.end.i35:                                       ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  %call.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %fail2

if.end7.i:                                        ; preds = %if.end10
  %call9.i = tail call i32 @pvr2_channel_limit_inputs(ptr noundef nonnull %call7.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end24.i, label %do.body12.i

do.body12.i:                                      ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %35 = load i32, ptr @pvrusb2_debug, align 4
  %and13.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.pvr2_dvb_frontend_init.exit_crit_edge, label %do.end18.i

do.body12.i.pvr2_dvb_frontend_init.exit_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_frontend_init.exit

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call9.i) #11
  br label %pvr2_dvb_frontend_init.exit

if.end24.i:                                       ; preds = %if.end7.i
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %cmp25.i = icmp eq ptr %37, null
  br i1 %cmp25.i, label %do.body27.i, label %if.end39.i

do.body27.i:                                      ; preds = %if.end24.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %38 = load i32, ptr @pvrusb2_debug, align 4
  %and28.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.done.i_crit_edge, label %do.end33.i

do.body27.i.done.i_crit_edge:                     ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  br label %done.i

if.end39.i:                                       ; preds = %if.end24.i
  %call41.i = tail call i32 %37(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp eq i32 %call41.i, 0
  br i1 %cmp42.i, label %land.lhs.true.i, label %if.end39.i.do.body92.i_crit_edge

if.end39.i.do.body92.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92.i

land.lhs.true.i:                                  ; preds = %if.end39.i
  %fe.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fe.i, align 8
  %tobool43.not.i = icmp eq ptr %40, null
  br i1 %tobool43.not.i, label %land.lhs.true.i.do.body92.i_crit_edge, label %if.then44.i

land.lhs.true.i.do.body92.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92.i

if.then44.i:                                      ; preds = %land.lhs.true.i
  %call47.i = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adap.i, ptr noundef nonnull %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i37 = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i37, label %if.end62.i, label %do.body50.i

do.body50.i:                                      ; preds = %if.then44.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %41 = load i32, ptr @pvrusb2_debug, align 4
  %and51.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %do.body50.i.fail_frontend0.i_crit_edge, label %do.end56.i

do.body50.i.fail_frontend0.i_crit_edge:           ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_frontend0.i

do.end56.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #11
  br label %fail_frontend0.i

if.end62.i:                                       ; preds = %if.then44.i
  %42 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fe.i, align 8
  %standby.i = getelementptr inbounds %struct.dvb_frontend, ptr %43, i32 0, i32 1, i32 33, i32 5
  %44 = ptrtoint ptr %standby.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %standby.i, align 4
  %tobool65.not.i = icmp eq ptr %45, null
  br i1 %tobool65.not.i, label %if.end62.i.do.body75.i_crit_edge, label %if.then66.i

if.end62.i.do.body75.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body75.i

if.then66.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %45(ptr noundef %43) #7
  br label %do.body75.i

do.body75.i:                                      ; preds = %if.then66.i, %if.end62.i.do.body75.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %46 = load i32, ptr @pvrusb2_debug, align 4
  %and76.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %do.body75.i.do.end88.i_crit_edge, label %do.end81.i

do.body75.i.do.end88.i_crit_edge:                 ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88.i

do.end81.i:                                       ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fe.i, align 8
  %id.i = getelementptr inbounds %struct.dvb_frontend, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id.i, align 4
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %50) #11
  br label %do.end88.i

do.end88.i:                                       ; preds = %do.end81.i, %do.body75.i.do.end88.i_crit_edge
  %51 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fe.i, align 8
  %ts_bus_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %52, i32 0, i32 1, i32 29
  %53 = ptrtoint ptr %ts_bus_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @pvr2_dvb_bus_ctrl, ptr %ts_bus_ctrl.i, align 4
  %tuner_attach.i = getelementptr inbounds %struct.pvr2_dvb_props, ptr %33, i32 0, i32 1
  %54 = ptrtoint ptr %tuner_attach.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tuner_attach.i, align 4
  %tobool105.not.i = icmp eq ptr %55, null
  br i1 %tobool105.not.i, label %do.end88.i.if.end123.i_crit_edge, label %land.lhs.true106.i

do.end88.i.if.end123.i_crit_edge:                 ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

do.body92.i:                                      ; preds = %land.lhs.true.i.do.body92.i_crit_edge, %if.end39.i.do.body92.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %56 = load i32, ptr @pvrusb2_debug, align 4
  %and93.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %do.body92.i.fail2_crit_edge, label %do.end98.i

do.body92.i.fail2_crit_edge:                      ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

do.end98.i:                                       ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #9
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %fail2

land.lhs.true106.i:                               ; preds = %do.end88.i
  %call108.i = tail call i32 %55(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %land.lhs.true106.i.if.end123.i_crit_edge, label %do.body111.i

land.lhs.true106.i.if.end123.i_crit_edge:         ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

do.body111.i:                                     ; preds = %land.lhs.true106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %57 = load i32, ptr @pvrusb2_debug, align 4
  %and112.i = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %do.body111.i.fail_tuner.i_crit_edge, label %do.end117.i

do.body111.i.fail_tuner.i_crit_edge:              ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_tuner.i

do.end117.i:                                      ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #9
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  br label %fail_tuner.i

if.end123.i:                                      ; preds = %land.lhs.true106.i.if.end123.i_crit_edge, %do.end88.i.if.end123.i_crit_edge
  %arrayidx125.i = getelementptr %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx125.i, align 4
  %tobool126.not.i = icmp eq ptr %59, null
  br i1 %tobool126.not.i, label %if.end123.i.done.i_crit_edge, label %if.then127.i

if.end123.i.done.i_crit_edge:                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.then127.i:                                     ; preds = %if.end123.i
  %id130.i = getelementptr inbounds %struct.dvb_frontend, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %id130.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %id130.i, align 4
  %61 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fe.i, align 8
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tuner_priv.i, align 4
  %65 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx125.i, align 4
  %tuner_priv135.i = getelementptr inbounds %struct.dvb_frontend, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %tuner_priv135.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %tuner_priv135.i, align 4
  %68 = load ptr, ptr %arrayidx125.i, align 4
  %tuner_ops.i = getelementptr inbounds %struct.dvb_frontend, ptr %68, i32 0, i32 1, i32 32
  %69 = load ptr, ptr %fe.i, align 8
  %tuner_ops142.i = getelementptr inbounds %struct.dvb_frontend, ptr %69, i32 0, i32 1, i32 32
  %70 = call ptr @memcpy(ptr %tuner_ops.i, ptr %tuner_ops142.i, i32 220)
  %71 = load ptr, ptr %arrayidx125.i, align 4
  %call146.i = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adap.i, ptr noundef %71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %if.end161.i, label %do.body149.i

do.body149.i:                                     ; preds = %if.then127.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %72 = load i32, ptr @pvrusb2_debug, align 4
  %and150.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %do.body149.i.do.end160.i_crit_edge, label %do.end155.i

do.body149.i.do.end160.i_crit_edge:               ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end160.i

do.end155.i:                                      ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #9
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #11
  br label %do.end160.i

do.end160.i:                                      ; preds = %do.end155.i, %do.body149.i.do.end160.i_crit_edge
  %73 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx125.i, align 4
  tail call void @dvb_frontend_detach(ptr noundef %74) #7
  %75 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx125.i, align 4
  br label %fail_tuner.i

if.end161.i:                                      ; preds = %if.then127.i
  %mfe_shared.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 1, i32 8
  %76 = ptrtoint ptr %mfe_shared.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %mfe_shared.i, align 8
  %77 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx125.i, align 4
  %standby167.i = getelementptr inbounds %struct.dvb_frontend, ptr %78, i32 0, i32 1, i32 33, i32 5
  %79 = ptrtoint ptr %standby167.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %standby167.i, align 4
  %tobool168.not.i = icmp eq ptr %80, null
  br i1 %tobool168.not.i, label %if.end161.i.do.body178.i_crit_edge, label %if.then169.i

if.end161.i.do.body178.i_crit_edge:               ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body178.i

if.then169.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %80(ptr noundef %78) #7
  br label %do.body178.i

do.body178.i:                                     ; preds = %if.then169.i, %if.end161.i.do.body178.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %81 = load i32, ptr @pvrusb2_debug, align 4
  %and179.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  br i1 %tobool180.not.i, label %do.body178.i.do.end192.i_crit_edge, label %do.end184.i

do.body178.i.do.end192.i_crit_edge:               ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end192.i

do.end184.i:                                      ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx125.i, align 4
  %id188.i = getelementptr inbounds %struct.dvb_frontend, ptr %83, i32 0, i32 10
  %84 = ptrtoint ptr %id188.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id188.i, align 4
  %call189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %85) #11
  br label %do.end192.i

do.end192.i:                                      ; preds = %do.end184.i, %do.body178.i.do.end192.i_crit_edge
  %86 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx125.i, align 4
  %ts_bus_ctrl196.i = getelementptr inbounds %struct.dvb_frontend, ptr %87, i32 0, i32 1, i32 29
  %88 = ptrtoint ptr %ts_bus_ctrl196.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @pvr2_dvb_bus_ctrl, ptr %ts_bus_ctrl196.i, align 4
  br label %done.i

done.i:                                           ; preds = %do.end192.i, %if.end123.i.done.i_crit_edge, %do.end33.i, %do.body27.i.done.i_crit_edge
  %ret.0.i38 = phi i32 [ 0, %do.end192.i ], [ 0, %if.end123.i.done.i_crit_edge ], [ -22, %do.end33.i ], [ -22, %do.body27.i.done.i_crit_edge ]
  %call199.i = tail call i32 @pvr2_channel_limit_inputs(ptr noundef nonnull %call7.i.i, i32 noundef 0) #7
  br label %pvr2_dvb_frontend_init.exit

fail_tuner.i:                                     ; preds = %do.end160.i, %do.end117.i, %do.body111.i.fail_tuner.i_crit_edge
  %89 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fe.i, align 8
  %call206.i = tail call i32 @dvb_unregister_frontend(ptr noundef %90) #7
  br label %fail_frontend0.i

fail_frontend0.i:                                 ; preds = %fail_tuner.i, %do.end56.i, %do.body50.i.fail_frontend0.i_crit_edge
  %91 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fe.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %92) #7
  %93 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %fe.i, align 8
  %i2c_client_tuner.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 7
  %94 = ptrtoint ptr %i2c_client_tuner.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_client_tuner.i, align 8
  tail call void @dvb_module_release(ptr noundef %95) #7
  %i2c_client_demod.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 6
  %arrayidx211.i = getelementptr %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 6, i32 1
  %96 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx211.i, align 4
  tail call void @dvb_module_release(ptr noundef %97) #7
  %98 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c_client_demod.i, align 8
  tail call void @dvb_module_release(ptr noundef %99) #7
  br label %fail2

pvr2_dvb_frontend_init.exit:                      ; preds = %done.i, %do.end18.i, %do.body12.i.pvr2_dvb_frontend_init.exit_crit_edge
  %retval.0.i39 = phi i32 [ %ret.0.i38, %done.i ], [ %call9.i, %do.end18.i ], [ %call9.i, %do.body12.i.pvr2_dvb_frontend_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i39)
  %cmp12 = icmp slt i32 %retval.0.i39, 0
  br i1 %cmp12, label %pvr2_dvb_frontend_init.exit.fail2_crit_edge, label %pvr2_dvb_frontend_init.exit.cleanup_crit_edge

pvr2_dvb_frontend_init.exit.cleanup_crit_edge:    ; preds = %pvr2_dvb_frontend_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pvr2_dvb_frontend_init.exit.fail2_crit_edge:      ; preds = %pvr2_dvb_frontend_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

fail2:                                            ; preds = %pvr2_dvb_frontend_init.exit.fail2_crit_edge, %fail_frontend0.i, %do.end98.i, %do.body92.i.fail2_crit_edge, %do.end.i35, %do.body.i33.fail2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %100 = load i32, ptr @pvrusb2_debug, align 4
  %and.i40 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i41, label %fail2.pvr2_dvb_adapter_exit.exit_crit_edge, label %do.end.i43

fail2.pvr2_dvb_adapter_exit.exit_crit_edge:       ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_adapter_exit.exit

do.end.i43:                                       ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #9
  %call.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #11
  br label %pvr2_dvb_adapter_exit.exit

pvr2_dvb_adapter_exit.exit:                       ; preds = %do.end.i43, %fail2.pvr2_dvb_adapter_exit.exit_crit_edge
  tail call void @dvb_net_release(ptr noundef %dvb_net.i) #7
  %close.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4
  %101 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %close.i, align 8
  %call5.i = tail call i32 %102(ptr noundef %demux.i) #7
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #7
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #7
  %call7.i = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap.i) #7
  br label %fail1

fail1:                                            ; preds = %pvr2_dvb_adapter_exit.exit, %err_dmx.i, %do.end.i, %do.body.i.fail1_crit_edge
  tail call void @pvr2_channel_done(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %pvr2_dvb_frontend_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail1 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %pvr2_dvb_frontend_init.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_channel_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_dvb_internal_check(ptr noundef %chp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chp, align 8
  %disconnect_flag = getelementptr inbounds %struct.pvr2_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %disconnect_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disconnect_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @pvr2_dvb_stream_end(ptr noundef %chp) #7
  %fe.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 5
  %arrayidx.i.i = getelementptr %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.if.end.i.i_crit_edge, label %if.then.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %5) #7
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @dvb_frontend_detach(ptr noundef %7) #7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.if.end.i.i_crit_edge
  %9 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe.i.i, align 8
  %tobool9.not.i.i = icmp eq ptr %10, null
  br i1 %tobool9.not.i.i, label %if.end.i.i.pvr2_dvb_frontend_exit.exit.i_crit_edge, label %if.then10.i.i

if.end.i.i.pvr2_dvb_frontend_exit.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_frontend_exit.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %10) #7
  %11 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe.i.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %12) #7
  %13 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fe.i.i, align 8
  br label %pvr2_dvb_frontend_exit.exit.i

pvr2_dvb_frontend_exit.exit.i:                    ; preds = %if.then10.i.i, %if.end.i.i.pvr2_dvb_frontend_exit.exit.i_crit_edge
  %i2c_client_tuner.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 7
  %14 = ptrtoint ptr %i2c_client_tuner.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client_tuner.i.i, align 8
  tail call void @dvb_module_release(ptr noundef %15) #7
  %16 = ptrtoint ptr %i2c_client_tuner.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %i2c_client_tuner.i.i, align 8
  %i2c_client_demod.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 6
  %arrayidx20.i.i = getelementptr %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx20.i.i, align 4
  tail call void @dvb_module_release(ptr noundef %18) #7
  %19 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx20.i.i, align 4
  %20 = ptrtoint ptr %i2c_client_demod.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client_demod.i.i, align 8
  tail call void @dvb_module_release(ptr noundef %21) #7
  %22 = ptrtoint ptr %i2c_client_demod.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %i2c_client_demod.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %23 = load i32, ptr @pvrusb2_debug, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i6.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i6.i, label %pvr2_dvb_frontend_exit.exit.i.pvr2_dvb_destroy.exit_crit_edge, label %do.end.i.i

pvr2_dvb_frontend_exit.exit.i.pvr2_dvb_destroy.exit_crit_edge: ; preds = %pvr2_dvb_frontend_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_destroy.exit

do.end.i.i:                                       ; preds = %pvr2_dvb_frontend_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #11
  br label %pvr2_dvb_destroy.exit

pvr2_dvb_destroy.exit:                            ; preds = %do.end.i.i, %pvr2_dvb_frontend_exit.exit.i.pvr2_dvb_destroy.exit_crit_edge
  %dvb_net.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 4
  tail call void @dvb_net_release(ptr noundef %dvb_net.i.i) #7
  %demux.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 3
  %close.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 3, i32 0, i32 4
  %24 = ptrtoint ptr %close.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %close.i.i, align 8
  %call5.i.i = tail call i32 %25(ptr noundef %demux.i.i) #7
  %dmxdev.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 2
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.i) #7
  tail call void @dvb_dmx_release(ptr noundef %demux.i.i) #7
  %dvb_adap.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %chp, i32 0, i32 1
  %call7.i.i = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap.i.i) #7
  tail call void @pvr2_channel_done(ptr noundef %chp) #7
  tail call void @kfree(ptr noundef %chp) #7
  br label %cleanup

cleanup:                                          ; preds = %pvr2_dvb_destroy.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_channel_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_dvb_stream_end(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 10
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %thread, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stream3 = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 3
  %3 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stream3, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end.if.end17_crit_edge, label %if.end9

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end9:                                          ; preds = %if.end
  %stream8 = getelementptr inbounds %struct.pvr2_context_stream, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stream8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream8, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end9.if.end17_crit_edge, label %if.then11

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %7 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdw, align 8
  %call13 = tail call i32 @pvr2_hdw_set_streaming(ptr noundef %8, i32 noundef 0) #7
  tail call void @pvr2_stream_set_callback(ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #7
  tail call void @pvr2_stream_kill(ptr noundef nonnull %6) #7
  %call14 = tail call i32 @pvr2_stream_set_buffer_count(ptr noundef nonnull %6, i32 noundef 0) #7
  %call16 = tail call i32 @pvr2_channel_claim_stream(ptr noundef %adap, ptr noundef null) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end9.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %stream_run = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 12
  %9 = ptrtoint ptr %stream_run to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %stream_run, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool18.not, label %if.end17.if.end29_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17.for.body_crit_edge
  %idx.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end17.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 14, i32 %idx.052
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %if.end22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %11) #7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.052, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %stream_run to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load28 = load i8, ptr %stream_run, align 4
  %bf.clear = and i8 %bf.load28, 127
  store i8 %bf.clear, ptr %stream_run, align 4
  br label %if.end29

if.end29:                                         ; preds = %for.end, %if.end17.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_set_streaming(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_stream_set_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_stream_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_stream_set_buffer_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_channel_claim_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_dvb_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %1 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pid, align 4
  %conv = zext i16 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %3 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demux.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge, label %if.end.i

do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge:        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_ctrl_feed.exit

if.end.i:                                         ; preds = %do.end2
  %lock.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %feedcount17.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %feedcount17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feedcount17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %do.body4.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

do.body4.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %9 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body4.i.do.end10.i_crit_edge, label %do.end.i

do.body4.i.do.end10.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

do.end.i:                                         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %do.body4.i.do.end10.i_crit_edge
  %stream_run.i.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 12
  %10 = ptrtoint ptr %stream_run.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i.i = load i8, ptr %stream_run.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end10.i.if.then.i.i_crit_edge

do.end10.i.if.then.i.i_crit_edge:                 ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %do.end10.i
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 8
  %video_stream.i.i.i = getelementptr inbounds %struct.pvr2_context, ptr %12, i32 0, i32 7
  %call.i.i.i = tail call i32 @pvr2_channel_claim_stream(ptr noundef nonnull %6, ptr noundef %video_stream.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %stream5.i.i.i = getelementptr inbounds %struct.pvr2_channel, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %stream5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream5.i.i.i, align 4
  %stream6.i.i.i = getelementptr inbounds %struct.pvr2_context_stream, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stream6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream6.i.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %idx.098.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end3.i.i.i
  %idx.098.i.i.i = phi i32 [ 0, %if.end3.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #12
  %arrayidx.i.i.i = getelementptr %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 14, i32 %idx.098.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %for.body.i.i.i.if.then.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.if.then.i.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  %stream15.i.i.i = getelementptr inbounds %struct.pvr2_context, ptr %12, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %stream15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream15.i.i.i, align 4
  tail call void @pvr2_stream_set_callback(ptr noundef %19, ptr noundef nonnull @pvr2_dvb_notify, ptr noundef nonnull %6) #7
  %call16.i.i.i = tail call i32 @pvr2_stream_set_buffer_count(ptr noundef %16, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i)
  %cmp17.i.i.i = icmp slt i32 %call16.i.i.i, 0
  br i1 %cmp17.i.i.i, label %for.end.i.i.i.if.then.i.i_crit_edge, label %for.end.i.i.i.for.body22.i.i.i_crit_edge

for.end.i.i.i.for.body22.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %for.body22.i.i.i

for.end.i.i.i.if.then.i.i_crit_edge:              ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.body22.i.i.i:                                 ; preds = %for.body22.i.i.i.for.body22.i.i.i_crit_edge, %for.end.i.i.i.for.body22.i.i.i_crit_edge
  %idx.199.i.i.i = phi i32 [ %inc28.i.i.i, %for.body22.i.i.i.for.body22.i.i.i_crit_edge ], [ 0, %for.end.i.i.i.for.body22.i.i.i_crit_edge ]
  %call23.i.i.i = tail call ptr @pvr2_stream_get_buffer(ptr noundef %16, i32 noundef %idx.199.i.i.i) #7
  %arrayidx25.i.i.i = getelementptr %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 14, i32 %idx.199.i.i.i
  %20 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx25.i.i.i, align 4
  %call26.i.i.i = tail call i32 @pvr2_buffer_set_buffer(ptr noundef %call23.i.i.i, ptr noundef %21, i32 noundef 16384) #7
  %inc28.i.i.i = add nuw nsw i32 %idx.199.i.i.i, 1
  %exitcond101.not.i.i.i = icmp eq i32 %inc28.i.i.i, 32
  br i1 %exitcond101.not.i.i.i, label %for.end29.i.i.i, label %for.body22.i.i.i.for.body22.i.i.i_crit_edge

for.body22.i.i.i.for.body22.i.i.i_crit_edge:      ; preds = %for.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22.i.i.i

for.end29.i.i.i:                                  ; preds = %for.body22.i.i.i
  %hdw.i.i.i = getelementptr inbounds %struct.pvr2_channel, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %hdw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdw.i.i.i, align 8
  %call31.i.i.i = tail call i32 @pvr2_hdw_set_streaming(ptr noundef %23, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i.i)
  %cmp32.i.i.i = icmp slt i32 %call31.i.i.i, 0
  br i1 %cmp32.i.i.i, label %for.end29.i.i.i.if.then.i.i_crit_edge, label %for.end29.i.i.i.while.cond.i.i.i_crit_edge

for.end29.i.i.i.while.cond.i.i.i_crit_edge:       ; preds = %for.end29.i.i.i
  br label %while.cond.i.i.i

for.end29.i.i.i.if.then.i.i_crit_edge:            ; preds = %for.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %for.end29.i.i.i.while.cond.i.i.i_crit_edge
  %call35.i.i.i = tail call ptr @pvr2_stream_get_idle_buffer(ptr noundef %16) #7
  %cmp36.not.i.i.i = icmp eq ptr %call35.i.i.i, null
  br i1 %cmp36.not.i.i.i, label %while.end.i.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %call37.i.i.i = tail call i32 @pvr2_buffer_queue(ptr noundef nonnull %call35.i.i.i) #7
  %cmp38.i.i.i = icmp slt i32 %call37.i.i.i, 0
  br i1 %cmp38.i.i.i, label %while.body.i.i.i.if.then.i.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

while.body.i.i.i.if.then.i.i_crit_edge:           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %call41.i.i.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @pvr2_dvb_feed_thread, ptr noundef nonnull %6, i32 noundef -1, ptr noundef nonnull @.str.3) #7
  %cmp.i.i.i.i = icmp ugt ptr %call41.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %pvr2_dvb_stream_do_start.exit.i.i, label %pvr2_dvb_stream_start.exit.thread.i

pvr2_dvb_stream_start.exit.thread.i:              ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i.i.i = tail call i32 @wake_up_process(ptr noundef %call41.i.i.i) #7
  %thread.i.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 10
  %24 = ptrtoint ptr %thread.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call41.i.i.i, ptr %thread.i.i.i, align 4
  %25 = ptrtoint ptr %stream_run.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load54.i.i.i = load i8, ptr %stream_run.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load54.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %stream_run.i.i.i, align 4
  br label %if.end15.i

pvr2_dvb_stream_do_start.exit.i.i:                ; preds = %while.end.i.i.i
  %thread95.i.i.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 10
  %26 = ptrtoint ptr %call41.i.i.i to i32
  %27 = ptrtoint ptr %thread95.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %thread95.i.i.i, align 4
  %cmp.i.i = icmp slt ptr %call41.i.i.i, null
  br i1 %cmp.i.i, label %pvr2_dvb_stream_do_start.exit.i.i.if.then.i.i_crit_edge, label %pvr2_dvb_stream_do_start.exit.i.i.pvr2_dvb_stream_start.exit.i_crit_edge

pvr2_dvb_stream_do_start.exit.i.i.pvr2_dvb_stream_start.exit.i_crit_edge: ; preds = %pvr2_dvb_stream_do_start.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_stream_start.exit.i

pvr2_dvb_stream_do_start.exit.i.i.if.then.i.i_crit_edge: ; preds = %pvr2_dvb_stream_do_start.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %pvr2_dvb_stream_do_start.exit.i.i.if.then.i.i_crit_edge, %while.body.i.i.i.if.then.i.i_crit_edge, %for.end29.i.i.i.if.then.i.i_crit_edge, %for.end.i.i.i.if.then.i.i_crit_edge, %for.body.i.i.i.if.then.i.i_crit_edge, %if.end.i.i.i.if.then.i.i_crit_edge, %do.end10.i.if.then.i.i_crit_edge
  %retval.0.i6.i.i = phi i32 [ %26, %pvr2_dvb_stream_do_start.exit.i.i.if.then.i.i_crit_edge ], [ %call31.i.i.i, %for.end29.i.i.i.if.then.i.i_crit_edge ], [ %call16.i.i.i, %for.end.i.i.i.if.then.i.i_crit_edge ], [ %call.i.i.i, %if.end.i.i.i.if.then.i.i_crit_edge ], [ -5, %do.end10.i.if.then.i.i_crit_edge ], [ %call37.i.i.i, %while.body.i.i.i.if.then.i.i_crit_edge ], [ -12, %for.body.i.i.i.if.then.i.i_crit_edge ]
  tail call fastcc void @pvr2_dvb_stream_end(ptr noundef nonnull %6) #7
  br label %pvr2_dvb_stream_start.exit.i

pvr2_dvb_stream_start.exit.i:                     ; preds = %if.then.i.i, %pvr2_dvb_stream_do_start.exit.i.i.pvr2_dvb_stream_start.exit.i_crit_edge
  %retval.0.i5.i.i = phi i32 [ %retval.0.i6.i.i, %if.then.i.i ], [ %26, %pvr2_dvb_stream_do_start.exit.i.i.pvr2_dvb_stream_start.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i5.i.i)
  %cmp12.i = icmp slt i32 %retval.0.i5.i.i, 0
  br i1 %cmp12.i, label %pvr2_dvb_stream_start.exit.i.do.end40.i_crit_edge, label %pvr2_dvb_stream_start.exit.i.if.end15.i_crit_edge

pvr2_dvb_stream_start.exit.i.if.end15.i_crit_edge: ; preds = %pvr2_dvb_stream_start.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

pvr2_dvb_stream_start.exit.i.do.end40.i_crit_edge: ; preds = %pvr2_dvb_stream_start.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

if.end15.i:                                       ; preds = %pvr2_dvb_stream_start.exit.i.if.end15.i_crit_edge, %pvr2_dvb_stream_start.exit.thread.i, %if.end.i.if.end15.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i.if.end15.i_crit_edge ], [ %retval.0.i5.i.i, %pvr2_dvb_stream_start.exit.i.if.end15.i_crit_edge ], [ 0, %pvr2_dvb_stream_start.exit.thread.i ]
  %28 = ptrtoint ptr %feedcount17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %feedcount17.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %feedcount17.i, align 4
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.end15.i, %pvr2_dvb_stream_start.exit.i.do.end40.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end15.i ], [ %retval.0.i5.i.i, %pvr2_dvb_stream_start.exit.i.do.end40.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %pvr2_dvb_ctrl_feed.exit

pvr2_dvb_ctrl_feed.exit:                          ; preds = %do.end40.i, %do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %do.end40.i ], [ -19, %do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_dvb_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %1 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pid, align 4
  %conv = zext i16 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %3 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demux.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge, label %if.end.i

do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge:        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_ctrl_feed.exit

if.end.i:                                         ; preds = %do.end2
  %lock.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %feedcount17.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %feedcount17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feedcount17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp18.i = icmp sgt i32 %8, 0
  br i1 %cmp18.i, label %if.then19.i, label %if.end.i.do.end40.i_crit_edge

if.end.i.do.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

if.then19.i:                                      ; preds = %if.end.i
  %dec.i = add nsw i32 %8, -1
  %9 = ptrtoint ptr %feedcount17.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec.i, ptr %feedcount17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool22.not.i, label %do.body24.i, label %if.then19.i.do.end40.i_crit_edge

if.then19.i.do.end40.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

do.body24.i:                                      ; preds = %if.then19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %10 = load i32, ptr @pvrusb2_debug, align 4
  %and25.i = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body24.i.do.end35.i_crit_edge, label %do.end30.i

do.body24.i.do.end35.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i

do.end30.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end30.i, %do.body24.i.do.end35.i_crit_edge
  tail call fastcc void @pvr2_dvb_stream_end(ptr noundef nonnull %6) #7
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end35.i, %if.then19.i.do.end40.i_crit_edge, %if.end.i.do.end40.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %pvr2_dvb_ctrl_feed.exit

pvr2_dvb_ctrl_feed.exit:                          ; preds = %do.end40.i, %do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end40.i ], [ -19, %do.end2.pvr2_dvb_ctrl_feed.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_dvb_notify(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_wait_data = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %buffer_wait_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_stream_get_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_set_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_stream_get_idle_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_dvb_feed_thread(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %call4.i = tail call zeroext i1 @set_freezable() #7
  %stream5.i = getelementptr inbounds %struct.pvr2_channel, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %stream5.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream5.i, align 4
  %stream6.i = getelementptr inbounds %struct.pvr2_context_stream, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %stream6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stream6.i, align 4
  %call715.i = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %call715.i, label %do.end3.i.do.body57.i_crit_edge, label %if.end9.lr.ph.i

do.end3.i.do.body57.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i

if.end9.lr.ph.i:                                  ; preds = %do.end3.i
  %demux.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %data, i32 0, i32 3
  %buffer_wait_data.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %data, i32 0, i32 13
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.cond.backedge.i.if.end9.i_crit_edge, %if.end9.lr.ph.i
  %5 = call i32 @llvm.read_register.i32(metadata !101) #7
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end9.i.if.end.i.i_crit_edge

if.end9.i.if.end.i.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @debug_check_no_locks_held() #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end9.i.if.end.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 57) #7
  %11 = call i32 @llvm.read_register.i32(metadata !101) #7
  %and.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i, align 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %15 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.try_to_freeze.exit.i_crit_edge, label %freezing.exit.i.i.i, !prof !111

if.end.i.i.try_to_freeze.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit.i

freezing.exit.i.i.i:                              ; preds = %if.end.i.i
  %call4.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %14) #7
  br i1 %call4.i.i.i.i, label %if.end.i.i.i, label %freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge, !prof !112

freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge: ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit.i

if.end.i.i.i:                                     ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br label %try_to_freeze.exit.i

try_to_freeze.exit.i:                             ; preds = %if.end.i.i.i, %freezing.exit.i.i.i.try_to_freeze.exit.i_crit_edge, %if.end.i.i.try_to_freeze.exit.i_crit_edge
  %call11.i = call ptr @pvr2_stream_get_ready_buffer(ptr noundef %4) #7
  %cmp.not.i = icmp eq ptr %call11.i, null
  br i1 %cmp.not.i, label %if.end26.i, label %if.then12.i

if.then12.i:                                      ; preds = %try_to_freeze.exit.i
  %call13.i = call i32 @pvr2_buffer_get_count(ptr noundef nonnull %call11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = call i32 @pvr2_buffer_get_id(ptr noundef nonnull %call11.i) #7
  %arrayidx.i = getelementptr %struct.pvr2_dvb_adapter, ptr %data, i32 0, i32 14, i32 %call16.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  call void @dvb_dmx_swfilter(ptr noundef %demux.i, ptr noundef %17, i32 noundef %call13.i) #7
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then12.i
  %call17.i = call i32 @pvr2_buffer_get_status(ptr noundef nonnull %call11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.else.i.do.body57.i_crit_edge, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.else.i.do.body57.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i

if.end21.i:                                       ; preds = %if.else.i.if.end21.i_crit_edge, %if.then15.i
  %call22.i = call i32 @pvr2_buffer_queue(ptr noundef nonnull %call11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end21.i.do.body57.i_crit_edge, label %if.end21.i.for.cond.backedge.i_crit_edge

if.end21.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.end21.i.do.body57.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i

for.cond.backedge.i:                              ; preds = %if.end51.i.for.cond.backedge.i_crit_edge, %if.end51.thread19.i, %lor.lhs.false.i.for.cond.backedge.i_crit_edge, %if.end26.i.for.cond.backedge.i_crit_edge, %if.end21.i.for.cond.backedge.i_crit_edge
  %call7.i = call zeroext i1 @kthread_should_stop() #7
  br i1 %call7.i, label %for.cond.backedge.i.do.body57.i_crit_edge, label %for.cond.backedge.i.if.end9.i_crit_edge

for.cond.backedge.i.if.end9.i_crit_edge:          ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.backedge.i.do.body57.i_crit_edge:        ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i

if.end26.i:                                       ; preds = %try_to_freeze.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 68) #7
  %call33.i = call i32 @pvr2_stream_get_ready_count(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp sgt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end26.i.for.cond.backedge.i_crit_edge, label %lor.lhs.false.i

if.end26.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

lor.lhs.false.i:                                  ; preds = %if.end26.i
  %call35.i = call zeroext i1 @kthread_should_stop() #7
  br i1 %call35.i, label %lor.lhs.false.i.for.cond.backedge.i_crit_edge, label %if.then36.i

lor.lhs.false.i.for.cond.backedge.i_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.then36.i:                                      ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %18 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call3910.i = call i32 @prepare_to_wait_event(ptr noundef %buffer_wait_data.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %call4011.i = call i32 @pvr2_stream_get_ready_count(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4011.i)
  %cmp4112.i = icmp sgt i32 %call4011.i, 0
  br i1 %cmp4112.i, label %if.then36.i.if.end51.thread19.i_crit_edge, label %if.then36.i.lor.lhs.false42.i_crit_edge

if.then36.i.lor.lhs.false42.i_crit_edge:          ; preds = %if.then36.i
  br label %lor.lhs.false42.i

if.then36.i.if.end51.thread19.i_crit_edge:        ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.thread19.i

lor.lhs.false42.i:                                ; preds = %cleanup.i.lor.lhs.false42.i_crit_edge, %if.then36.i.lor.lhs.false42.i_crit_edge
  %call3913.i = phi i32 [ %call39.i, %cleanup.i.lor.lhs.false42.i_crit_edge ], [ %call3910.i, %if.then36.i.lor.lhs.false42.i_crit_edge ]
  %call43.i = call zeroext i1 @kthread_should_stop() #7
  br i1 %call43.i, label %lor.lhs.false42.i.if.end51.thread19.i_crit_edge, label %if.end45.i

lor.lhs.false42.i.if.end51.thread19.i_crit_edge:  ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.thread19.i

if.end45.i:                                       ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3913.i)
  %tobool46.not.i = icmp eq i32 %call3913.i, 0
  br i1 %tobool46.not.i, label %cleanup.i, label %if.end51.i

cleanup.i:                                        ; preds = %if.end45.i
  call void @schedule() #7
  %call39.i = call i32 @prepare_to_wait_event(ptr noundef %buffer_wait_data.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %call40.i = call i32 @pvr2_stream_get_ready_count(ptr noundef %4) #7
  %cmp41.i = icmp sgt i32 %call40.i, 0
  br i1 %cmp41.i, label %cleanup.i.if.end51.thread19.i_crit_edge, label %cleanup.i.lor.lhs.false42.i_crit_edge

cleanup.i.lor.lhs.false42.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false42.i

cleanup.i.if.end51.thread19.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.thread19.i

if.end51.thread19.i:                              ; preds = %cleanup.i.if.end51.thread19.i_crit_edge, %lor.lhs.false42.i.if.end51.thread19.i_crit_edge, %if.then36.i.if.end51.thread19.i_crit_edge
  call void @finish_wait(ptr noundef %buffer_wait_data.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %for.cond.backedge.i

if.end51.i:                                       ; preds = %if.end45.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3913.i)
  %cmp53.i = icmp slt i32 %call3913.i, 0
  br i1 %cmp53.i, label %if.end51.i.do.body57.i_crit_edge, label %if.end51.i.for.cond.backedge.i_crit_edge

if.end51.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.end51.i.do.body57.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i

do.body57.i:                                      ; preds = %if.end51.i.do.body57.i_crit_edge, %for.cond.backedge.i.do.body57.i_crit_edge, %if.end21.i.do.body57.i_crit_edge, %if.else.i.do.body57.i_crit_edge, %do.end3.i.do.body57.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %19 = load i32, ptr @pvrusb2_debug, align 4
  %and58.i = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %do.body57.i.pvr2_dvb_feed_func.exit_crit_edge, label %do.end63.i

do.body57.i.pvr2_dvb_feed_func.exit_crit_edge:    ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvr2_dvb_feed_func.exit

do.end63.i:                                       ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %pvr2_dvb_feed_func.exit

pvr2_dvb_feed_func.exit:                          ; preds = %do.end63.i, %do.body57.i.pvr2_dvb_feed_func.exit_crit_edge
  %call167 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call167, label %pvr2_dvb_feed_func.exit.while.end_crit_edge, label %pvr2_dvb_feed_func.exit.__here_crit_edge

pvr2_dvb_feed_func.exit.__here_crit_edge:         ; preds = %pvr2_dvb_feed_func.exit
  br label %__here

pvr2_dvb_feed_func.exit.while.end_crit_edge:      ; preds = %pvr2_dvb_feed_func.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

__here:                                           ; preds = %__here.__here_crit_edge, %pvr2_dvb_feed_func.exit.__here_crit_edge
  %20 = call i32 @llvm.read_register.i32(metadata !101) #7
  %and.i65 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i65 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@pvr2_dvb_feed_thread, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !113
  call void @schedule() #7
  %call1 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call1, label %__here.while.end_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %__here.while.end_crit_edge, %pvr2_dvb_feed_func.exit.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_stream_get_ready_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_get_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_stream_get_ready_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_channel_limit_inputs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_dvb_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool.not = icmp eq i32 %acquire, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %call = tail call i32 @pvr2_channel_limit_inputs(ptr noundef %3, i32 noundef %cond) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !1, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr389, !1, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!4 = !{ptr @pvr2_dvb_create.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 458, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @pvr2_dvb_create.__key.1, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 459, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!11 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!12 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 247, i32 46}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 252, i32 3}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pvr2_dvb_adapter_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @pvr2_dvb_adapter_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 270, i32 3}
!23 = !{ptr @pvr2_dvb_adapter_init._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pvr2_dvb_adapter_init._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 281, i32 3}
!27 = !{ptr @pvr2_dvb_adapter_init._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pvr2_dvb_adapter_init._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 225, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pvr2_dvb_start_feed._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @pvr2_dvb_start_feed._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 203, i32 5}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pvr2_dvb_ctrl_feed._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pvr2_dvb_ctrl_feed._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 212, i32 5}
!41 = !{ptr @pvr2_dvb_ctrl_feed._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pvr2_dvb_ctrl_feed._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 85, i32 3}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 28, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pvr2_dvb_feed_func._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @pvr2_dvb_feed_func._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 75, i32 2}
!52 = !{ptr @pvr2_dvb_feed_func._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pvr2_dvb_feed_func._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 231, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pvr2_dvb_stop_feed._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pvr2_dvb_stop_feed._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 316, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pvr2_dvb_frontend_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @pvr2_dvb_frontend_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 324, i32 3}
!68 = !{ptr @pvr2_dvb_frontend_init._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 331, i32 3}
!72 = !{ptr @pvr2_dvb_frontend_init._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 339, i32 4}
!76 = !{ptr @pvr2_dvb_frontend_init._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 347, i32 3}
!80 = !{ptr @pvr2_dvb_frontend_init._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 351, i32 3}
!84 = !{ptr @pvr2_dvb_frontend_init._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 358, i32 3}
!88 = !{ptr @pvr2_dvb_frontend_init._entry.45, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @pvr2_dvb_frontend_init._entry.48, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 371, i32 4}
!92 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @pvr2_dvb_frontend_init._entry.50, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 382, i32 3}
!95 = !{ptr @pvr2_dvb_frontend_init._entry_ptr.51, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-dvb.c", i32 300, i32 2}
!98 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pvr2_dvb_adapter_exit._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @pvr2_dvb_adapter_exit._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2158446041}
