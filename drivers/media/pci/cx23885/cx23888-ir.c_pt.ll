; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23888-ir.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23888-ir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx23888_ir_state = type { %struct.v4l2_subdev, ptr, %struct.v4l2_subdev_ir_parameters, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.kfifo, %struct.spinlock, %struct.v4l2_subdev_ir_parameters, %struct.mutex, %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kfifo = type { %union.anon.153, [0 x i8] }
%union.anon.153 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.142], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.142 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.143 }>
%union.anon.143 = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152 }
%struct.anon.145 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr }
%struct.anon.150 = type { ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.129 }
%union.anon.129 = type { i32, [28 x i8] }
%union.cx23888_ir_fifo_rec = type { %struct.ir_raw_event }
%struct.ir_raw_event = type { %union.anon.154, i8, i8 }
%union.anon.154 = type { i32 }

@__param_str_ir_888_debug = internal constant [21 x i8] c"cx23885.ir_888_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ir_888_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_888_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_888_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ir_888_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_888_debugtype385 = internal constant [34 x i8] c"cx23885.parmtype=ir_888_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_888_debug386 = internal constant [72 x i8] c"cx23885.parm=ir_888_debug:enable debug messages [CX23888 IR controller]\00", section ".modinfo", align 1
@cx23888_ir_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&state->rx_kfifo_lock\00", [42 x i8] zeroinitializer }, align 32
@cx23888_ir_controller_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @cx23888_ir_core_ops, ptr null, ptr null, ptr null, ptr null, ptr @cx23888_ir_ir_ops, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/888-ir\00", [22 x i8] zeroinitializer }, align 32
@cx23888_ir_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&state->rx_params_lock\00", [41 x i8] zeroinitializer }, align 32
@default_rx_params = internal constant { %struct.v4l2_subdev_ir_parameters, [52 x i8] } { %struct.v4l2_subdev_ir_parameters { i32 8, i32 0, i8 0, i8 0, i8 1, i8 1, i32 0, i32 36000, i32 0, i8 0, i8 0, i32 333333, i32 35000, i32 37000, i32 0 }, [52 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cx23888_ir_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&state->tx_params_lock\00", [41 x i8] zeroinitializer }, align 32
@default_tx_params = internal constant { %struct.v4l2_subdev_ir_parameters, [52 x i8] } { %struct.v4l2_subdev_ir_parameters { i32 8, i32 0, i8 0, i8 0, i8 1, i8 1, i32 0, i32 36000, i32 25, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx23888_ir_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @cx23888_ir_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx23888_ir_g_register, ptr @cx23888_ir_s_register, ptr null, ptr @cx23888_ir_irq_handler, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_ir_ops = internal constant { %struct.v4l2_subdev_ir_ops, [40 x i8] } { %struct.v4l2_subdev_ir_ops { ptr @cx23888_ir_rx_read, ptr @cx23888_ir_rx_g_parameters, ptr @cx23888_ir_rx_s_parameters, ptr @cx23888_ir_tx_write, ptr @cx23888_ir_tx_g_parameters, ptr @cx23888_ir_tx_s_parameters }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: IR Receiver:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx23888_ir_log_status\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/cx23885/cx23888-ir.c\00", [57 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr = internal global ptr @cx23888_ir_log_status._entry, section ".printk_index", align 4
@cx23888_ir_log_status._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Enabled:                           %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.11 = internal global ptr @cx23888_ir_log_status._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Demodulation from a carrier:       %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.16 = internal global ptr @cx23888_ir_log_status._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.8, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO:                              %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.21 = internal global ptr @cx23888_ir_log_status._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"falling edge\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rising edge\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rising & falling edges\00", [41 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.8, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Pulse timers' start/stop trigger:  %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.28 = internal global ptr @cx23888_ir_log_status._entry.26, section ".printk_index", align 4
@cx23888_ir_log_status._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.8, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO data on pulse timer overflow: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.31 = internal global ptr @cx23888_ir_log_status._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not loaded\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"overflow marker\00", [16 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.7, ptr @.str.8, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO interrupt watermark:          %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.36 = internal global ptr @cx23888_ir_log_status._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not empty\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"half full or greater\00", [43 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.7, ptr @.str.8, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Loopback mode:                     %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.41 = internal global ptr @cx23888_ir_log_status._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"loopback active\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"normal receive\00", [17 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.7, ptr @.str.8, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: \09Expected carrier (16 clocks):      %u Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.46 = internal global ptr @cx23888_ir_log_status._entry.44, section ".printk_index", align 4
@cx23888_ir_log_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.7, ptr @.str.8, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016%s: \09Next carrier edge window:\09    16 clocks -%1d/+%1d, %u to %u Hz\0A\00", [57 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.49 = internal global ptr @cx23888_ir_log_status._entry.47, section ".printk_index", align 4
@cx23888_ir_log_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.7, ptr @.str.8, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: \09Max measurable pulse width:        %u us, %llu ns\0A\00", [38 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.52 = internal global ptr @cx23888_ir_log_status._entry.50, section ".printk_index", align 4
@cx23888_ir_log_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.7, ptr @.str.8, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Low pass filter:                   %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.55 = internal global ptr @cx23888_ir_log_status._entry.53, section ".printk_index", align 4
@cx23888_ir_log_status._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.7, ptr @.str.8, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: \09Min acceptable pulse width (LPF):  %u us, %u ns\0A\00", [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.58 = internal global ptr @cx23888_ir_log_status._entry.56, section ".printk_index", align 4
@cx23888_ir_log_status._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.7, ptr @.str.8, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Pulse width timer timed-out:       %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.61 = internal global ptr @cx23888_ir_log_status._entry.59, section ".printk_index", align 4
@cx23888_ir_log_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.7, ptr @.str.8, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Pulse width timer time-out intr:   %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.64 = internal global ptr @cx23888_ir_log_status._entry.62, section ".printk_index", align 4
@cx23888_ir_log_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.7, ptr @.str.8, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO overrun:                      %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.67 = internal global ptr @cx23888_ir_log_status._entry.65, section ".printk_index", align 4
@cx23888_ir_log_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.7, ptr @.str.8, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO overrun interrupt:            %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.70 = internal global ptr @cx23888_ir_log_status._entry.68, section ".printk_index", align 4
@cx23888_ir_log_status._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.7, ptr @.str.8, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Busy:                              %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.73 = internal global ptr @cx23888_ir_log_status._entry.71, section ".printk_index", align 4
@cx23888_ir_log_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.7, ptr @.str.8, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO service requested:            %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.76 = internal global ptr @cx23888_ir_log_status._entry.74, section ".printk_index", align 4
@cx23888_ir_log_status._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.7, ptr @.str.8, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO service request interrupt:    %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.79 = internal global ptr @cx23888_ir_log_status._entry.77, section ".printk_index", align 4
@cx23888_ir_log_status._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.7, ptr @.str.8, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: IR Transmitter:\0A\00", [41 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.82 = internal global ptr @cx23888_ir_log_status._entry.80, section ".printk_index", align 4
@cx23888_ir_log_status._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.84 = internal global ptr @cx23888_ir_log_status._entry.83, section ".printk_index", align 4
@cx23888_ir_log_status._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.7, ptr @.str.8, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Modulation onto a carrier:         %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.87 = internal global ptr @cx23888_ir_log_status._entry.85, section ".printk_index", align 4
@cx23888_ir_log_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.8, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.89 = internal global ptr @cx23888_ir_log_status._entry.88, section ".printk_index", align 4
@cx23888_ir_log_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.7, ptr @.str.8, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.91 = internal global ptr @cx23888_ir_log_status._entry.90, section ".printk_index", align 4
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"half full or less\00", [46 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.7, ptr @.str.8, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Output pin level inversion         %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.95 = internal global ptr @cx23888_ir_log_status._entry.93, section ".printk_index", align 4
@cx23888_ir_log_status._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.7, ptr @.str.8, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Carrier polarity:                  %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.98 = internal global ptr @cx23888_ir_log_status._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"space:burst mark:noburst\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"space:noburst mark:burst\00", [39 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.7, ptr @.str.8, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: \09Carrier (16 clocks):               %u Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.103 = internal global ptr @cx23888_ir_log_status._entry.101, section ".printk_index", align 4
@cx23888_ir_log_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.7, ptr @.str.8, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: \09Carrier duty cycle:                %2u/16\0A\00", [46 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.106 = internal global ptr @cx23888_ir_log_status._entry.104, section ".printk_index", align 4
@cx23888_ir_log_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.7, ptr @.str.8, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: \09Max pulse width:                   %u us, %llu ns\0A\00", [38 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.109 = internal global ptr @cx23888_ir_log_status._entry.107, section ".printk_index", align 4
@cx23888_ir_log_status._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.7, ptr @.str.8, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.111 = internal global ptr @cx23888_ir_log_status._entry.110, section ".printk_index", align 4
@cx23888_ir_log_status._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.7, ptr @.str.8, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.113 = internal global ptr @cx23888_ir_log_status._entry.112, section ".printk_index", align 4
@cx23888_ir_log_status._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.7, ptr @.str.8, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23888_ir_log_status._entry_ptr.115 = internal global ptr @cx23888_ir_log_status._entry.114, section ".printk_index", align 4
@cx23888_ir_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.8, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: IRQ Status:  %s %s %s %s %s %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23888_ir_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@cx23888_ir_irq_handler._entry_ptr = internal global ptr @cx23888_ir_irq_handler._entry, section ".printk_index", align 4
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsr\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsr\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rto\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ror\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tby\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rby\00", [28 x i8] zeroinitializer }, align 32
@cx23888_ir_irq_handler._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.117, ptr @.str.8, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: IRQ Enables: %s %s %s %s\0A\00", [32 x i8] zeroinitializer }, align 32
@cx23888_ir_irq_handler._entry_ptr.127 = internal global ptr @cx23888_ir_irq_handler._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tse\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rse\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rte\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"roe\00", [28 x i8] zeroinitializer }, align 32
@cx23888_ir_irq_handler._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.117, ptr @.str.8, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: IR receiver software FIFO overrun\0A\00", [55 x i8] zeroinitializer }, align 32
@cx23888_ir_irq_handler._entry_ptr.134 = internal global ptr @cx23888_ir_irq_handler._entry.132, section ".printk_index", align 4
@cx23888_ir_irq_handler._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.117, ptr @.str.8, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: IR receiver hardware FIFO overrun\0A\00", [55 x i8] zeroinitializer }, align 32
@cx23888_ir_irq_handler._entry_ptr.137 = internal global ptr @cx23888_ir_irq_handler._entry.135, section ".printk_index", align 4
@cx23888_ir_rx_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.8, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: rx read: %10u ns  %s  %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx23888_ir_rx_read\00", [45 x i8] zeroinitializer }, align 32
@cx23888_ir_rx_read._entry_ptr = internal global ptr @cx23888_ir_rx_read._entry, section ".printk_index", align 4
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mark\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(timed out)\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cx23888_ir_rx_read._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.139, ptr @.str.8, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: rx read: end of rx\0A\00", [38 x i8] zeroinitializer }, align 32
@cx23888_ir_rx_read._entry_ptr.146 = internal global ptr @cx23888_ir_rx_read._entry.144, section ".printk_index", align 4
@switch.table.cx23888_ir_log_status = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.18, ptr @.str.22, ptr @.str.23, ptr @.str.24], [16 x i8] zeroinitializer }, align 32
@switch.table.cx23888_ir_log_status.147 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 3, i32 4, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.cx23888_ir_log_status.148 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 4, i32 3, i32 4], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"ir_888_debug\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 19, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1149, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"cx23888_ir_controller_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1099, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1162, i32 39 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1174, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"default_rx_params\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1104, i32 47 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1178, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"default_tx_params\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1123, i32 47 }
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"cx23888_ir_core_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1080, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"cx23888_ir_ir_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1089, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 931, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 932, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 934, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 936, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 943, i32 7 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 946, i32 7 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 949, i32 7 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 955, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 956, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 958, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 960, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 963, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 987, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 992, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 995, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 998, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1001, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1003, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1005, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1007, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1009, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1011, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1013, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1016, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1017, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1019, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1021, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1023, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1025, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1027, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1031, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1033, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1036, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1039, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1041, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1043, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 527, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 533, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 592, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 601, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 673, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.507 = private constant [42 x i8] c"../drivers/media/pci/cx23885/cx23888-ir.c\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 676, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant [35 x i8] c"switch.table.cx23888_ir_log_status\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [39 x i8] c"switch.table.cx23888_ir_log_status.147\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [39 x i8] c"switch.table.cx23888_ir_log_status.148\00", align 1
@llvm.compiler.used = appending global [165 x ptr] [ptr @__UNIQUE_ID_ir_888_debug386, ptr @__UNIQUE_ID_ir_888_debugtype385, ptr @__param_ir_888_debug, ptr @cx23888_ir_irq_handler._entry, ptr @cx23888_ir_irq_handler._entry.125, ptr @cx23888_ir_irq_handler._entry.132, ptr @cx23888_ir_irq_handler._entry.135, ptr @cx23888_ir_irq_handler._entry_ptr, ptr @cx23888_ir_irq_handler._entry_ptr.127, ptr @cx23888_ir_irq_handler._entry_ptr.134, ptr @cx23888_ir_irq_handler._entry_ptr.137, ptr @cx23888_ir_log_status._entry, ptr @cx23888_ir_log_status._entry.101, ptr @cx23888_ir_log_status._entry.104, ptr @cx23888_ir_log_status._entry.107, ptr @cx23888_ir_log_status._entry.110, ptr @cx23888_ir_log_status._entry.112, ptr @cx23888_ir_log_status._entry.114, ptr @cx23888_ir_log_status._entry.14, ptr @cx23888_ir_log_status._entry.19, ptr @cx23888_ir_log_status._entry.26, ptr @cx23888_ir_log_status._entry.29, ptr @cx23888_ir_log_status._entry.34, ptr @cx23888_ir_log_status._entry.39, ptr @cx23888_ir_log_status._entry.44, ptr @cx23888_ir_log_status._entry.47, ptr @cx23888_ir_log_status._entry.50, ptr @cx23888_ir_log_status._entry.53, ptr @cx23888_ir_log_status._entry.56, ptr @cx23888_ir_log_status._entry.59, ptr @cx23888_ir_log_status._entry.62, ptr @cx23888_ir_log_status._entry.65, ptr @cx23888_ir_log_status._entry.68, ptr @cx23888_ir_log_status._entry.71, ptr @cx23888_ir_log_status._entry.74, ptr @cx23888_ir_log_status._entry.77, ptr @cx23888_ir_log_status._entry.80, ptr @cx23888_ir_log_status._entry.83, ptr @cx23888_ir_log_status._entry.85, ptr @cx23888_ir_log_status._entry.88, ptr @cx23888_ir_log_status._entry.9, ptr @cx23888_ir_log_status._entry.90, ptr @cx23888_ir_log_status._entry.93, ptr @cx23888_ir_log_status._entry.96, ptr @cx23888_ir_log_status._entry_ptr, ptr @cx23888_ir_log_status._entry_ptr.103, ptr @cx23888_ir_log_status._entry_ptr.106, ptr @cx23888_ir_log_status._entry_ptr.109, ptr @cx23888_ir_log_status._entry_ptr.11, ptr @cx23888_ir_log_status._entry_ptr.111, ptr @cx23888_ir_log_status._entry_ptr.113, ptr @cx23888_ir_log_status._entry_ptr.115, ptr @cx23888_ir_log_status._entry_ptr.16, ptr @cx23888_ir_log_status._entry_ptr.21, ptr @cx23888_ir_log_status._entry_ptr.28, ptr @cx23888_ir_log_status._entry_ptr.31, ptr @cx23888_ir_log_status._entry_ptr.36, ptr @cx23888_ir_log_status._entry_ptr.41, ptr @cx23888_ir_log_status._entry_ptr.46, ptr @cx23888_ir_log_status._entry_ptr.49, ptr @cx23888_ir_log_status._entry_ptr.52, ptr @cx23888_ir_log_status._entry_ptr.55, ptr @cx23888_ir_log_status._entry_ptr.58, ptr @cx23888_ir_log_status._entry_ptr.61, ptr @cx23888_ir_log_status._entry_ptr.64, ptr @cx23888_ir_log_status._entry_ptr.67, ptr @cx23888_ir_log_status._entry_ptr.70, ptr @cx23888_ir_log_status._entry_ptr.73, ptr @cx23888_ir_log_status._entry_ptr.76, ptr @cx23888_ir_log_status._entry_ptr.79, ptr @cx23888_ir_log_status._entry_ptr.82, ptr @cx23888_ir_log_status._entry_ptr.84, ptr @cx23888_ir_log_status._entry_ptr.87, ptr @cx23888_ir_log_status._entry_ptr.89, ptr @cx23888_ir_log_status._entry_ptr.91, ptr @cx23888_ir_log_status._entry_ptr.95, ptr @cx23888_ir_log_status._entry_ptr.98, ptr @cx23888_ir_rx_read._entry, ptr @cx23888_ir_rx_read._entry.144, ptr @cx23888_ir_rx_read._entry_ptr, ptr @cx23888_ir_rx_read._entry_ptr.146, ptr @ir_888_debug, ptr @cx23888_ir_probe.__key, ptr @.str, ptr @cx23888_ir_controller_ops, ptr @.str.1, ptr @cx23888_ir_probe.__key.2, ptr @.str.3, ptr @default_rx_params, ptr @cx23888_ir_probe.__key.4, ptr @.str.5, ptr @default_tx_params, ptr @cx23888_ir_core_ops, ptr @cx23888_ir_ir_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.86, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @switch.table.cx23888_ir_log_status, ptr @switch.table.cx23888_ir_log_status.147, ptr @switch.table.cx23888_ir_log_status.148], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_888_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_controller_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_rx_params to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_tx_params to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_ir_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_log_status._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_irq_handler._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_irq_handler._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_irq_handler._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_rx_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23888_ir_rx_read._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx23888_ir_log_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx23888_ir_log_status.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx23888_ir_log_status.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23888_ir_probe(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %default_params = alloca %struct.v4l2_subdev_ir_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %default_params) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 548) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %rx_kfifo_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %rx_kfifo_lock, ptr noundef nonnull @.str, ptr noundef nonnull @cx23888_ir_probe.__key, i16 noundef signext 3) #7
  %rx_kfifo = getelementptr inbounds %struct.cx23888_ir_state, ptr %call7.i.i, i32 0, i32 6
  %call2 = tail call i32 @__kfifo_alloc(ptr noundef %rx_kfifo, i32 noundef 2048, i32 noundef 1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %dev6 = getelementptr inbounds %struct.cx23888_ir_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev6, align 4
  tail call void @v4l2_subdev_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cx23888_ir_controller_ops) #7
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %dev_priv.i, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 9
  %name8 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %name8)
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %grp_id, align 4
  %v4l2_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1
  %call11 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else75

if.then13:                                        ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %5, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !229
  %rx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %rx_params_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cx23888_ir_probe.__key.2) #7
  %6 = call ptr @memcpy(ptr %default_params, ptr @default_rx_params, i32 44)
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %ir = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ir, align 4
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %if.then13.if.end40_crit_edge, label %land.lhs.true

if.then13.if.end40_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then13
  %rx_s_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %rx_s_parameters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_s_parameters, align 4
  %tobool23.not = icmp eq ptr %12, null
  br i1 %tobool23.not, label %land.lhs.true.if.end40_crit_edge, label %if.else25

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.else25:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool26.not = icmp eq ptr %13, null
  br i1 %tobool26.not, label %if.else25.if.else33_crit_edge, label %land.lhs.true27

if.else25.if.else33_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else33

land.lhs.true27:                                  ; preds = %if.else25
  %rx_s_parameters28 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rx_s_parameters28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_s_parameters28, align 4
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %land.lhs.true27.if.else33_crit_edge, label %land.lhs.true27.if.end40.sink.split_crit_edge

land.lhs.true27.if.end40.sink.split_crit_edge:    ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.sink.split

land.lhs.true27.if.else33_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else33

if.else33:                                        ; preds = %land.lhs.true27.if.else33_crit_edge, %if.else25.if.else33_crit_edge
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.else33, %land.lhs.true27.if.end40.sink.split_crit_edge
  %.sink = phi ptr [ %12, %if.else33 ], [ %15, %land.lhs.true27.if.end40.sink.split_crit_edge ]
  %call37 = call i32 %.sink(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %default_params) #7
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %land.lhs.true.if.end40_crit_edge, %if.then13.if.end40_crit_edge
  %tx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %call7.i.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %tx_params_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @cx23888_ir_probe.__key.4) #7
  %16 = call ptr @memcpy(ptr %default_params, ptr @default_tx_params, i32 44)
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 8
  %ir51 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %ir51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ir51, align 4
  %tobool52.not = icmp eq ptr %20, null
  br i1 %tobool52.not, label %if.end40.cleanup_crit_edge, label %land.lhs.true53

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end40
  %tx_s_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %tx_s_parameters to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_s_parameters, align 4
  %tobool56.not = icmp eq ptr %22, null
  br i1 %tobool56.not, label %land.lhs.true53.cleanup_crit_edge, label %if.else58

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else58:                                        ; preds = %land.lhs.true53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool59.not = icmp eq ptr %23, null
  br i1 %tobool59.not, label %if.else58.if.else66_crit_edge, label %land.lhs.true60

if.else58.if.else66_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else66

land.lhs.true60:                                  ; preds = %if.else58
  %tx_s_parameters61 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %tx_s_parameters61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_s_parameters61, align 4
  %tobool62.not = icmp eq ptr %25, null
  br i1 %tobool62.not, label %land.lhs.true60.if.else66_crit_edge, label %if.then63

land.lhs.true60.if.else66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else66

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call i32 %25(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %default_params) #7
  br label %cleanup

if.else66:                                        ; preds = %land.lhs.true60.if.else66_crit_edge, %if.else58.if.else66_crit_edge
  %call70 = call i32 %22(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %default_params) #7
  br label %cleanup

if.else75:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__kfifo_free(ptr noundef %rx_kfifo) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else75, %if.else66, %if.then63, %land.lhs.true53.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %if.else66 ], [ 0, %land.lhs.true53.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ %call11, %if.else75 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %default_params) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23888_ir_remove(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cx23885_find_hw(ptr noundef %dev, i32 noundef 1) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cx23888_ir_rx_shutdown(ptr noundef nonnull %call)
  tail call fastcc void @cx23888_ir_tx_shutdown(ptr noundef nonnull %call)
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %call) #7
  %rx_kfifo = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 6
  tail call void @__kfifo_free(ptr noundef %rx_kfifo) #7
  tail call void @kfree(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx23885_find_hw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23888_ir_rx_shutdown(ptr nocapture noundef readonly %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %rx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %rx_params_lock, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 376837
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %7 = and i32 %6, -318767105
  %8 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %9, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %7) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i2 = getelementptr i32, ptr %11, i32 376832
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %13 = and i32 %12, -1073807361
  %14 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i3 = getelementptr i32, ptr %15, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i3, i32 %13) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i5 = getelementptr i32, ptr %17, i32 376832
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %19 = and i32 %18, -268435457
  %20 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i6 = getelementptr i32, ptr %21, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i6, i32 %19) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i8 = getelementptr i32, ptr %23, i32 376832
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %25 = and i32 %24, -201326593
  %26 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i9 = getelementptr i32, ptr %27, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i9, i32 %25) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i11 = getelementptr i32, ptr %29, i32 376838
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 0) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %31, i32 376834
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -65536) #7, !srcloc !229
  %shutdown = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %shutdown, align 2
  tail call void @mutex_unlock(ptr noundef %rx_params_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23888_ir_tx_shutdown(ptr nocapture noundef readonly %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %tx_params_lock, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 376837
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %7 = and i32 %6, -536870913
  %8 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %9, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %7) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i2 = getelementptr i32, ptr %11, i32 376832
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %13 = and i32 %12, 2147352575
  %14 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i3 = getelementptr i32, ptr %15, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i3, i32 %13) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i5 = getelementptr i32, ptr %17, i32 376832
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %19 = and i32 %18, -536870913
  %20 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i6 = getelementptr i32, ptr %21, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i6, i32 %19) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %23, i32 376833
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -65536) #7, !srcloc !229
  %shutdown = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %shutdown, align 2
  tail call void @mutex_unlock(ptr noundef %tx_params_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_log_status(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %5, i32 376832
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !231
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %8 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i411 = getelementptr i32, ptr %9, i32 376833
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i411) #7, !srcloc !231
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %12 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i413 = getelementptr i32, ptr %13, i32 376834
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i413) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %15 = and i32 %14, -65536
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i415 = getelementptr i32, ptr %18, i32 376835
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i415) #7, !srcloc !231
  %20 = lshr i32 %19, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and7 = and i32 %20, 15
  %21 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i417 = getelementptr i32, ptr %22, i32 376836
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i417) #7, !srcloc !231
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %25 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i419 = getelementptr i32, ptr %26, i32 376837
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i419) #7, !srcloc !231
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %29 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i421 = getelementptr i32, ptr %30, i32 376838
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i421) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %32 = and i32 %31, -65536
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name) #11
  %and19 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  %cond = select i1 %tobool.not, ptr @.str.13, ptr @.str.12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull %cond) #11
  %and27 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %cond29 = select i1 %tobool28.not, ptr @.str.18, ptr @.str.17
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, ptr noundef nonnull %cond29) #11
  %and37 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.18, ptr @.str.17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, ptr noundef nonnull %cond39) #11
  %and41 = lshr i32 %7, 2
  %34 = and i32 %and41, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cx23888_ir_log_status, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef nonnull %switch.load) #11
  %and58 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %cond60 = select i1 %tobool59.not, ptr @.str.33, ptr @.str.32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull %cond60) #11
  %and68 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70 = select i1 %tobool69.not, ptr @.str.38, ptr @.str.37
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull %cond70) #11
  %and78 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond80 = select i1 %tobool79.not, ptr @.str.43, ptr @.str.42
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, ptr noundef nonnull %cond80) #11
  br i1 %tobool28.not, label %do.end47.do.end110_crit_edge, label %do.end86

do.end47.do.end110_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nuw nsw i32 %16, 1
  br label %do.end110

do.end86:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl nuw nsw i32 %16, 4
  %mul.i = add nuw nsw i32 %add.i, 16
  %div4.i = lshr exact i32 %mul.i, 1
  %add1.i = add nuw nsw i32 %div4.i, 54000000
  %div2.i = udiv i32 %add1.i, %mul.i
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %div2.i) #11
  %and92 = and i32 %7, 3
  %switch.gep471 = getelementptr inbounds [4 x i32], ptr @switch.table.cx23888_ir_log_status.147, i32 0, i32 %and92
  %36 = ptrtoint ptr %switch.gep471 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load472 = load i32, ptr %switch.gep471, align 4
  %switch.gep473 = getelementptr inbounds [4 x i32], ptr @switch.table.cx23888_ir_log_status.148, i32 0, i32 %and92
  %37 = ptrtoint ptr %switch.gep473 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load474 = load i32, ptr %switch.gep473, align 4
  %add = or i32 %switch.load472, 16
  %add.i422 = add nuw nsw i32 %16, 1
  %mul.i423 = mul nuw nsw i32 %add, %add.i422
  %div4.i424 = lshr i32 %mul.i423, 1
  %add1.i425 = add nuw nsw i32 %div4.i424, 54000000
  %div2.i426 = udiv i32 %add1.i425, %mul.i423
  %sub = sub nuw nsw i32 16, %switch.load474
  %mul.i428 = mul nuw nsw i32 %sub, %add.i422
  %div4.i429 = lshr i32 %mul.i428, 1
  %add1.i430 = add nuw nsw i32 %div4.i429, 54000000
  %div2.i431 = udiv i32 %add1.i430, %mul.i428
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %switch.load474, i32 noundef %switch.load472, i32 noundef %div2.i426, i32 noundef %div2.i431) #11
  br label %do.end110

do.end110:                                        ; preds = %do.end86, %do.end47.do.end110_crit_edge
  %add.i432.pre-phi = phi i32 [ %.pre, %do.end47.do.end110_crit_edge ], [ %add.i422, %do.end86 ]
  %38 = zext i32 %add.i432.pre-phi to i64
  %mul.i433 = mul nuw nsw i64 %38, 262143
  %conv18.i = trunc i64 %mul.i433 to i32
  %39 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul.i433) #12, !srcloc !234
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul.i433, i64 %39, i32 0) #12, !srcloc !235
  %asmresult10.i.i = extractvalue { i64, i32 } %40, 0
  %div1671.i = lshr i64 %asmresult10.i.i, 5
  %conv168.i = trunc i64 %div1671.i to i32
  %mul169.neg.i = mul i32 %conv168.i, -54
  %sub170.i = add i32 %mul169.neg.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub170.i)
  %cmp189.i = icmp ugt i32 %sub170.i, 26
  %extract.t.i = zext i1 %cmp189.i to i32
  %spec.select.i = add i32 %extract.t.i, %conv168.i
  %mul3.i = mul nuw nsw i64 %38, 262143000
  %conv19.i = trunc i64 %mul3.i to i32
  %41 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #12, !srcloc !234
  %42 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %41, i32 0) #12, !srcloc !235
  %asmresult10.i.i436 = extractvalue { i64, i32 } %42, 0
  %div168273.i = lshr i64 %asmresult10.i.i436, 5
  %conv169.i = trunc i64 %div168273.i to i32
  %mul170.neg.i = mul i32 %conv169.i, -54
  %sub171.i = add i32 %mul170.neg.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i)
  %cmp190.i = icmp ugt i32 %sub171.i, 26
  %inc.i = zext i1 %cmp190.i to i64
  %spec.select.i437 = add nuw nsw i64 %div168273.i, %inc.i
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, i32 noundef %spec.select.i, i64 noundef %spec.select.i437) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool124.not = icmp eq i32 %32, 0
  %cond125 = select i1 %tobool124.not, ptr @.str.18, ptr @.str.17
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name, ptr noundef nonnull %cond125) #11
  br i1 %tobool124.not, label %do.end110.do.end141_crit_edge, label %do.end131

do.end110.do.end141_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end141

do.end131:                                        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #9
  %add.i438 = add nuw nsw i32 %33, 27
  %div1.i = udiv i32 %add.i438, 54
  %mul.i439 = mul nuw nsw i32 %33, 1000
  %add.i440 = add nuw nsw i32 %mul.i439, 27
  %div1.i441 = udiv i32 %add.i440, 54
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %div1.i, i32 noundef %div1.i441) #11
  br label %do.end141

do.end141:                                        ; preds = %do.end131, %do.end110.do.end141_crit_edge
  %and145 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  %cond147 = select i1 %tobool146.not, ptr @.str.13, ptr @.str.12
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name, ptr noundef nonnull %cond147) #11
  %and155 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  %cond157 = select i1 %tobool156.not, ptr @.str.18, ptr @.str.17
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name, ptr noundef nonnull %cond157) #11
  %and165 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  %cond167 = select i1 %tobool166.not, ptr @.str.13, ptr @.str.12
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, ptr noundef nonnull %cond167) #11
  %and175 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  %cond177 = select i1 %tobool176.not, ptr @.str.18, ptr @.str.17
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, ptr noundef nonnull %cond177) #11
  %and185 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  %cond187 = select i1 %tobool186.not, ptr @.str.13, ptr @.str.12
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, ptr noundef nonnull %cond187) #11
  %and195 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  %cond197 = select i1 %tobool196.not, ptr @.str.13, ptr @.str.12
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name, ptr noundef nonnull %cond197) #11
  %and205 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  %cond207 = select i1 %tobool206.not, ptr @.str.18, ptr @.str.17
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name, ptr noundef nonnull %cond207) #11
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name) #11
  %and222 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  %cond224 = select i1 %tobool223.not, ptr @.str.13, ptr @.str.12
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull %cond224) #11
  %and232 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  %cond234 = select i1 %tobool233.not, ptr @.str.18, ptr @.str.17
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name, ptr noundef nonnull %cond234) #11
  %and242 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  %cond244 = select i1 %tobool243.not, ptr @.str.18, ptr @.str.17
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, ptr noundef nonnull %cond244) #11
  %and252 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  %cond254 = select i1 %tobool253.not, ptr @.str.92, ptr @.str.37
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull %cond254) #11
  %and262 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  %cond264 = select i1 %tobool263.not, ptr @.str.13, ptr @.str.12
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name, ptr noundef nonnull %cond264) #11
  %and272 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  %cond274 = select i1 %tobool273.not, ptr @.str.100, ptr @.str.99
  %call275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name, ptr noundef nonnull %cond274) #11
  br i1 %tobool233.not, label %do.end141.do.end298_crit_edge, label %do.end281

do.end141.do.end298_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end298

do.end281:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #9
  %and = shl i32 %11, 4
  %add.i442 = and i32 %and, 1048560
  %mul.i443 = add nuw nsw i32 %add.i442, 16
  %div4.i444 = lshr exact i32 %mul.i443, 1
  %add1.i445 = add nuw nsw i32 %div4.i444, 54000000
  %div2.i446 = udiv i32 %add1.i445, %mul.i443
  %call286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name, i32 noundef %div2.i446) #11
  %add293 = add nuw nsw i32 %and7, 1
  %call294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name, i32 noundef %add293) #11
  br label %do.end298

do.end298:                                        ; preds = %do.end281, %do.end141.do.end298_crit_edge
  %conv1.i447 = and i32 %11, 65535
  %add.i448 = add nuw nsw i32 %conv1.i447, 1
  %43 = zext i32 %add.i448 to i64
  %mul.i449 = mul nuw nsw i64 %43, 262143
  %conv18.i450 = trunc i64 %mul.i449 to i32
  %44 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul.i449) #12, !srcloc !234
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul.i449, i64 %44, i32 0) #12, !srcloc !235
  %asmresult10.i.i451 = extractvalue { i64, i32 } %45, 0
  %div1671.i452 = lshr i64 %asmresult10.i.i451, 5
  %conv168.i453 = trunc i64 %div1671.i452 to i32
  %mul169.neg.i454 = mul i32 %conv168.i453, -54
  %sub170.i455 = add i32 %mul169.neg.i454, %conv18.i450
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub170.i455)
  %cmp189.i456 = icmp ugt i32 %sub170.i455, 26
  %extract.t.i457 = zext i1 %cmp189.i456 to i32
  %spec.select.i458 = add i32 %extract.t.i457, %conv168.i453
  %mul3.i461 = mul nuw nsw i64 %43, 262143000
  %conv19.i462 = trunc i64 %mul3.i461 to i32
  %46 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i461) #12, !srcloc !234
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i461, i64 %46, i32 0) #12, !srcloc !235
  %asmresult10.i.i463 = extractvalue { i64, i32 } %47, 0
  %div168273.i464 = lshr i64 %asmresult10.i.i463, 5
  %conv169.i465 = trunc i64 %div168273.i464 to i32
  %mul170.neg.i466 = mul i32 %conv169.i465, -54
  %sub171.i467 = add i32 %mul170.neg.i466, %conv19.i462
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i467)
  %cmp190.i468 = icmp ugt i32 %sub171.i467, 26
  %inc.i469 = zext i1 %cmp190.i468 to i64
  %spec.select.i470 = add nuw nsw i64 %div168273.i464, %inc.i469
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name, i32 noundef %spec.select.i458, i64 noundef %spec.select.i470) #11
  %and313 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  %cond315 = select i1 %tobool314.not, ptr @.str.13, ptr @.str.12
  %call316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, ptr noundef nonnull %cond315) #11
  %and323 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323)
  %tobool324.not = icmp eq i32 %and323, 0
  %cond325 = select i1 %tobool324.not, ptr @.str.13, ptr @.str.12
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name, ptr noundef nonnull %cond325) #11
  %and333 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  %cond335 = select i1 %tobool334.not, ptr @.str.18, ptr @.str.17
  %call336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name, ptr noundef nonnull %cond335) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %conv)
  %2 = icmp ugt i32 %conv, 68
  %or.cond = or i1 %2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %conv, 1507328
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 4, ptr %size, align 1
  %dev = getelementptr inbounds %struct.cx23888_ir_state, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i, align 4
  %shr.i = lshr i32 %add, 2
  %add.ptr.i = getelementptr i32, ptr %9, i32 %shr.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !231
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %conv10 = zext i32 %11 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %conv10, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %conv)
  %2 = icmp ugt i32 %conv, 68
  %or.cond = or i1 %2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %conv, 1507328
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %dev = getelementptr inbounds %struct.cx23888_ir_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %val, align 1
  %conv9 = trunc i64 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv9) #7
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %6, i32 0, i32 8
  %10 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio.i, align 4
  %shr.i = lshr i32 %add, 2
  %add.ptr.i = getelementptr i32, ptr %11, i32 %shr.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !229
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_irq_handler(ptr noundef %sd, i32 noundef %status, ptr nocapture noundef writeonly %handled) #0 align 64 {
entry:
  %rx_data = alloca [8 x %union.cx23888_ir_fifo_rec], align 4
  %events = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %5, i32 376832
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !231
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %8 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i223 = getelementptr i32, ptr %9, i32 376837
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #7, !srcloc !231
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %12 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i225 = getelementptr i32, ptr %13, i32 376836
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #7, !srcloc !231
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rx_data) #7
  %16 = call ptr @memset(ptr %rx_data, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events) #7
  %17 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %events, align 4, !annotation !236
  %and = and i32 %15, 32
  %and5 = and i32 %15, 16
  %and6 = and i32 %15, 1
  %and7 = and i32 %15, 2
  %and8 = and i32 %11, 32
  %and9 = and i32 %11, 16
  %and10 = and i32 %11, 1
  %and11 = and i32 %11, 2
  %18 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %handled, align 1
  %19 = load i32, ptr @ir_888_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp ugt i32 %19, 1
  br i1 %cmp, label %do.body28, label %entry.do.end48_crit_edge

entry.do.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.body28:                                        ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.119, ptr @.str.118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool13.not = icmp eq i32 %and5, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.119, ptr @.str.120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool15.not = icmp eq i32 %and6, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.119, ptr @.str.121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool17.not = icmp eq i32 %and7, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.119, ptr @.str.122
  %and19 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.119, ptr @.str.123
  %and22 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.119, ptr @.str.124
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef nonnull %cond14, ptr noundef nonnull %cond16, ptr noundef nonnull %cond18, ptr noundef nonnull %cond21, ptr noundef nonnull %cond24) #11
  %.pr = load i32, ptr @ir_888_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp29 = icmp ugt i32 %.pr, 1
  br i1 %cmp29, label %do.end33, label %do.body28.do.end48_crit_edge

do.body28.do.end48_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool37.not = icmp eq i32 %and8, 0
  %cond38 = select i1 %tobool37.not, ptr @.str.119, ptr @.str.128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool39.not = icmp eq i32 %and9, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.119, ptr @.str.129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool41.not = icmp eq i32 %and10, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.119, ptr @.str.130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool43.not = icmp eq i32 %and11, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.119, ptr @.str.131
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name, ptr noundef nonnull %cond38, ptr noundef nonnull %cond40, ptr noundef nonnull %cond42, ptr noundef nonnull %cond44) #11
  br label %do.end48

do.end48:                                         ; preds = %do.end33, %do.body28.do.end48_crit_edge, %entry.do.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool49.not = icmp eq i32 %and8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool49.not, i1 true, i1 %tobool50.not
  br i1 %or.cond, label %do.end48.if.end52_crit_edge, label %if.then51

do.end48.if.end52_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then51:                                        ; preds = %do.end48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %21, i32 376837
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %23 = and i32 %22, -536870913
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %25, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %23) #7, !srcloc !229
  %26 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %events, align 4
  %tobool.not.i = icmp eq ptr %sd, null
  br i1 %tobool.not.i, label %if.then51.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

if.then51.v4l2_subdev_notify.exit_crit_edge:      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %if.then51
  %v4l2_dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %27 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %30(ptr noundef nonnull %sd, i32 noundef 1074034177, ptr noundef nonnull %events) #7
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %if.then51.v4l2_subdev_notify.exit_crit_edge
  %31 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %handled, align 1
  br label %if.end52

if.end52:                                         ; preds = %v4l2_subdev_notify.exit, %do.end48.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool53.not = icmp eq i32 %and9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool55.not = icmp eq i32 %and5, 0
  %or.cond216 = select i1 %tobool53.not, i1 true, i1 %tobool55.not
  br i1 %or.cond216, label %lor.lhs.false, label %if.end52.if.then59_crit_edge

if.end52.if.then59_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

lor.lhs.false:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool56.not = icmp eq i32 %and10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool58.not = icmp eq i32 %and6, 0
  %or.cond217 = select i1 %tobool56.not, i1 true, i1 %tobool58.not
  br i1 %or.cond217, label %if.end98.thread, label %lor.lhs.false.if.then59_crit_edge

lor.lhs.false.if.then59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

if.end98.thread:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %events, align 4
  br label %if.end108

if.then59:                                        ; preds = %lor.lhs.false.if.then59_crit_edge, %if.end52.if.then59_crit_edge
  %rx_kfifo_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 7
  %rx_kfifo = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 6
  %arrayidx.1 = getelementptr inbounds [8 x %union.cx23888_ir_fifo_rec], ptr %rx_data, i32 0, i32 1
  %arrayidx.2 = getelementptr inbounds [8 x %union.cx23888_ir_fifo_rec], ptr %rx_data, i32 0, i32 2
  %arrayidx.3 = getelementptr inbounds [8 x %union.cx23888_ir_fifo_rec], ptr %rx_data, i32 0, i32 3
  %arrayidx.4 = getelementptr inbounds [8 x %union.cx23888_ir_fifo_rec], ptr %rx_data, i32 0, i32 4
  %arrayidx.5 = getelementptr inbounds [8 x %union.cx23888_ir_fifo_rec], ptr %rx_data, i32 0, i32 5
  %arrayidx.6 = getelementptr inbounds [8 x %union.cx23888_ir_fifo_rec], ptr %rx_data, i32 0, i32 6
  %arrayidx.7 = getelementptr inbounds [8 x %union.cx23888_ir_fifo_rec], ptr %rx_data, i32 0, i32 7
  br label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %if.end75.for.cond63.preheader_crit_edge, %if.then59
  %v.0255 = phi i32 [ 131072, %if.then59 ], [ %.lcssa, %if.end75.for.cond63.preheader_crit_edge ]
  %and64248 = and i32 %v.0255, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64248)
  %tobool65.not249.not = icmp eq i32 %and64248, 0
  br i1 %tobool65.not249.not, label %if.end98.thread259, label %for.body69

if.end98.thread259:                               ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %handled, align 1
  %34 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %events, align 4
  br label %if.end108

for.body69:                                       ; preds = %for.cond63.preheader
  %35 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227 = getelementptr i32, ptr %36, i32 376848
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #7, !srcloc !231
  %38 = call i32 @llvm.bswap.i32(i32 %37) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71 = and i32 %38, -131073
  %39 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and71, ptr %rx_data, align 4
  %and64 = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not.not, label %for.body69.if.end75_crit_edge, label %for.body69.1

for.body69.if.end75_crit_edge:                    ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body69.1:                                     ; preds = %for.body69
  %40 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227.1 = getelementptr i32, ptr %41, i32 376848
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.1) #7, !srcloc !231
  %43 = call i32 @llvm.bswap.i32(i32 %42) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71.1 = and i32 %43, -131073
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and71.1, ptr %arrayidx.1, align 4
  %and64.1 = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.1)
  %tobool65.not.1.not = icmp eq i32 %and64.1, 0
  br i1 %tobool65.not.1.not, label %for.body69.1.if.end75_crit_edge, label %for.body69.2

for.body69.1.if.end75_crit_edge:                  ; preds = %for.body69.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body69.2:                                     ; preds = %for.body69.1
  %45 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227.2 = getelementptr i32, ptr %46, i32 376848
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.2) #7, !srcloc !231
  %48 = call i32 @llvm.bswap.i32(i32 %47) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71.2 = and i32 %48, -131073
  %49 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and71.2, ptr %arrayidx.2, align 4
  %and64.2 = and i32 %48, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.2)
  %tobool65.not.2.not = icmp eq i32 %and64.2, 0
  br i1 %tobool65.not.2.not, label %for.body69.2.if.end75_crit_edge, label %for.body69.3

for.body69.2.if.end75_crit_edge:                  ; preds = %for.body69.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body69.3:                                     ; preds = %for.body69.2
  %50 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227.3 = getelementptr i32, ptr %51, i32 376848
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.3) #7, !srcloc !231
  %53 = call i32 @llvm.bswap.i32(i32 %52) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71.3 = and i32 %53, -131073
  %54 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and71.3, ptr %arrayidx.3, align 4
  %and64.3 = and i32 %53, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.3)
  %tobool65.not.3.not = icmp eq i32 %and64.3, 0
  br i1 %tobool65.not.3.not, label %for.body69.3.if.end75_crit_edge, label %for.body69.4

for.body69.3.if.end75_crit_edge:                  ; preds = %for.body69.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body69.4:                                     ; preds = %for.body69.3
  %55 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227.4 = getelementptr i32, ptr %56, i32 376848
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.4) #7, !srcloc !231
  %58 = call i32 @llvm.bswap.i32(i32 %57) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71.4 = and i32 %58, -131073
  %59 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and71.4, ptr %arrayidx.4, align 4
  %and64.4 = and i32 %58, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.4)
  %tobool65.not.4.not = icmp eq i32 %and64.4, 0
  br i1 %tobool65.not.4.not, label %for.body69.4.if.end75_crit_edge, label %for.body69.5

for.body69.4.if.end75_crit_edge:                  ; preds = %for.body69.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body69.5:                                     ; preds = %for.body69.4
  %60 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227.5 = getelementptr i32, ptr %61, i32 376848
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.5) #7, !srcloc !231
  %63 = call i32 @llvm.bswap.i32(i32 %62) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71.5 = and i32 %63, -131073
  %64 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and71.5, ptr %arrayidx.5, align 4
  %and64.5 = and i32 %63, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.5)
  %tobool65.not.5.not = icmp eq i32 %and64.5, 0
  br i1 %tobool65.not.5.not, label %for.body69.5.if.end75_crit_edge, label %for.body69.6

for.body69.5.if.end75_crit_edge:                  ; preds = %for.body69.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body69.6:                                     ; preds = %for.body69.5
  %65 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227.6 = getelementptr i32, ptr %66, i32 376848
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.6) #7, !srcloc !231
  %68 = call i32 @llvm.bswap.i32(i32 %67) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71.6 = and i32 %68, -131073
  %69 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and71.6, ptr %arrayidx.6, align 4
  %and64.6 = and i32 %68, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.6)
  %tobool65.not.6.not = icmp eq i32 %and64.6, 0
  br i1 %tobool65.not.6.not, label %for.body69.6.if.end75_crit_edge, label %for.body69.7

for.body69.6.if.end75_crit_edge:                  ; preds = %for.body69.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body69.7:                                     ; preds = %for.body69.6
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i227.7 = getelementptr i32, ptr %71, i32 376848
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.7) #7, !srcloc !231
  %73 = call i32 @llvm.bswap.i32(i32 %72) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %and71.7 = and i32 %73, -131073
  %74 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and71.7, ptr %arrayidx.7, align 4
  br label %if.end75

if.end75:                                         ; preds = %for.body69.7, %for.body69.6.if.end75_crit_edge, %for.body69.5.if.end75_crit_edge, %for.body69.4.if.end75_crit_edge, %for.body69.3.if.end75_crit_edge, %for.body69.2.if.end75_crit_edge, %for.body69.1.if.end75_crit_edge, %for.body69.if.end75_crit_edge
  %.lcssa = phi i32 [ %38, %for.body69.if.end75_crit_edge ], [ %43, %for.body69.1.if.end75_crit_edge ], [ %48, %for.body69.2.if.end75_crit_edge ], [ %53, %for.body69.3.if.end75_crit_edge ], [ %58, %for.body69.4.if.end75_crit_edge ], [ %63, %for.body69.5.if.end75_crit_edge ], [ %68, %for.body69.6.if.end75_crit_edge ], [ %73, %for.body69.7 ]
  %inc.lcssa = phi i32 [ 8, %for.body69.if.end75_crit_edge ], [ 16, %for.body69.1.if.end75_crit_edge ], [ 24, %for.body69.2.if.end75_crit_edge ], [ 32, %for.body69.3.if.end75_crit_edge ], [ 40, %for.body69.4.if.end75_crit_edge ], [ 48, %for.body69.5.if.end75_crit_edge ], [ 56, %for.body69.6.if.end75_crit_edge ], [ 64, %for.body69.7 ]
  %call81 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock) #7
  %call88 = call i32 @__kfifo_in(ptr noundef %rx_kfifo, ptr noundef nonnull %rx_data, i32 noundef %inc.lcssa) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock, i32 noundef %call81) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call88, i32 %inc.lcssa)
  %cmp91.not.not = icmp eq i32 %call88, %inc.lcssa
  %and60 = and i32 %.lcssa, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp ne i32 %and60, 0
  %or.cond218 = select i1 %tobool61.not, i1 %cmp91.not.not, i1 false
  br i1 %or.cond218, label %if.end75.for.cond63.preheader_crit_edge, label %if.end98

if.end75.for.cond63.preheader_crit_edge:          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond63.preheader

if.end98:                                         ; preds = %if.end75
  %75 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %handled, align 1
  %76 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %events, align 4
  br i1 %cmp91.not.not, label %if.end98.if.end108_crit_edge, label %if.then100

if.end98.if.end108_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8, ptr %events, align 4
  %name105 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name105) #11
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.end98.if.end108_crit_edge, %if.end98.thread259, %if.end98.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool109.not = icmp eq i32 %and11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool111.not = icmp eq i32 %and7, 0
  %or.cond220 = select i1 %tobool109.not, i1 true, i1 %tobool111.not
  br i1 %or.cond220, label %if.end122, label %if.end122.thread

if.end122:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool123.not = icmp eq i32 %and10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool125.not = icmp eq i32 %and6, 0
  %or.cond221 = select i1 %tobool123.not, i1 true, i1 %tobool125.not
  br i1 %or.cond221, label %if.end122.do.body137_crit_edge, label %if.end122.if.end129.thread_crit_edge

if.end122.if.end129.thread_crit_edge:             ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.thread

if.end122.do.body137_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body137

if.end122.thread:                                 ; preds = %if.end108
  %78 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %events, align 4
  %or114 = or i32 %79, 4
  store i32 %or114, ptr %events, align 4
  %name119 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name119) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool123.not263 = icmp eq i32 %and10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool125.not264 = icmp eq i32 %and6, 0
  %or.cond221265 = select i1 %tobool123.not263, i1 true, i1 %tobool125.not264
  br i1 %or.cond221265, label %if.end122.thread.if.then131_crit_edge, label %if.end122.thread.if.end129.thread_crit_edge

if.end122.thread.if.end129.thread_crit_edge:      ; preds = %if.end122.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.thread

if.end122.thread.if.then131_crit_edge:            ; preds = %if.end122.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131

if.end129.thread:                                 ; preds = %if.end122.thread.if.end129.thread_crit_edge, %if.end122.if.end129.thread_crit_edge
  %v.2266 = phi i32 [ 320, %if.end122.thread.if.end129.thread_crit_edge ], [ 256, %if.end122.if.end129.thread_crit_edge ]
  %80 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %events, align 4
  %or128 = or i32 %81, 2
  store i32 %or128, ptr %events, align 4
  br label %if.then131

if.then131:                                       ; preds = %if.end129.thread, %if.end122.thread.if.then131_crit_edge
  %v.3246 = phi i32 [ %v.2266, %if.end129.thread ], [ 64, %if.end122.thread.if.then131_crit_edge ]
  %neg = xor i32 %v.3246, -1
  %and132 = and i32 %7, %neg
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %82 = call i32 @llvm.bswap.i32(i32 %and132) #7
  %83 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i229 = getelementptr i32, ptr %84, i32 376832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %82) #7, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i231 = getelementptr i32, ptr %86, i32 376832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231, i32 %6) #7, !srcloc !229
  %87 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %handled, align 1
  br label %do.body137

do.body137:                                       ; preds = %if.then131, %if.end122.do.body137_crit_edge
  %rx_kfifo_lock143 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 7
  %call145 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock143) #7
  %rx_kfifo150 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 6
  %88 = ptrtoint ptr %rx_kfifo150 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_kfifo150, align 4
  %out = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %90 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %out, align 4
  %sub = sub i32 %89, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub)
  %cmp152 = icmp ugt i32 %sub, 1023
  br i1 %cmp152, label %if.then154, label %do.body137.if.end156_crit_edge

do.body137.if.end156_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then154:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %events, align 4
  %or155 = or i32 %93, 1
  store i32 %or155, ptr %events, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %do.body137.if.end156_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock143, i32 noundef %call145) #7
  %94 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool158.not = icmp eq i32 %95, 0
  %tobool.not.i232 = icmp eq ptr %sd, null
  %or.cond247 = or i1 %tobool.not.i232, %tobool158.not
  br i1 %or.cond247, label %if.end156.if.end160_crit_edge, label %land.lhs.true.i235

if.end156.if.end160_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

land.lhs.true.i235:                               ; preds = %if.end156
  %v4l2_dev.i233 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %96 = ptrtoint ptr %v4l2_dev.i233 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %v4l2_dev.i233, align 4
  %tobool1.not.i234 = icmp eq ptr %97, null
  br i1 %tobool1.not.i234, label %land.lhs.true.i235.if.end160_crit_edge, label %land.lhs.true2.i238

land.lhs.true.i235.if.end160_crit_edge:           ; preds = %land.lhs.true.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

land.lhs.true2.i238:                              ; preds = %land.lhs.true.i235
  %notify.i236 = getelementptr inbounds %struct.v4l2_device, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %notify.i236 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %notify.i236, align 4
  %tobool4.not.i237 = icmp eq ptr %99, null
  br i1 %tobool4.not.i237, label %land.lhs.true2.i238.if.end160_crit_edge, label %if.then.i239

land.lhs.true2.i238.if.end160_crit_edge:          ; preds = %land.lhs.true2.i238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.then.i239:                                     ; preds = %land.lhs.true2.i238
  call void @__sanitizer_cov_trace_pc() #9
  call void %99(ptr noundef nonnull %sd, i32 noundef 1074034176, ptr noundef nonnull %events) #7
  br label %if.end160

if.end160:                                        ; preds = %if.then.i239, %land.lhs.true2.i238.if.end160_crit_edge, %land.lhs.true.i235.if.end160_crit_edge, %if.end156.if.end160_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rx_data) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_rx_read(ptr noundef %sd, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef writeonly %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %rx_invert = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_invert, i32 noundef 4) #7
  %2 = ptrtoint ptr %rx_invert to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rx_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %rxclk_divider = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 4
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxclk_divider, i32 noundef 4) #7
  %4 = ptrtoint ptr %rxclk_divider to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rxclk_divider, align 4
  %div116 = and i32 %count, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div116)
  %cmp = icmp eq i32 %div116, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_kfifo_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 7
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock) #7
  %rx_kfifo = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 6
  %call12 = tail call i32 @__kfifo_out(ptr noundef %rx_kfifo, ptr noundef %buf, i32 noundef %div116) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock, i32 noundef %call8) #7
  %mul18 = and i32 %call12, -8
  %7 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul18, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call12)
  %cmp19120.not = icmp ult i32 %call12, 8
  br i1 %cmp19120.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %div17117 = lshr i32 %call12, 3
  %8 = zext i1 %tobool.not to i32
  %conv1.i = and i32 %5, 65535
  %add.i = add nuw nsw i32 %conv1.i, 1
  %9 = zext i32 %add.i to i64
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.compoundliteral.sroa.3.0123 = phi i8 [ undef, %for.body.lr.ph ], [ %bf.set48, %for.inc.for.body_crit_edge ]
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %p.0121 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %p.0121 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p.0121, align 4
  %and = and i32 %11, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %and)
  %cmp21 = icmp eq i32 %and, 131071
  %and24 = lshr i32 %11, 16
  %and24.lobit118 = and i32 %and24, 1
  %u.0 = xor i32 %and24.lobit118, %8
  %w.0 = select i1 %cmp21, i8 32, i8 0
  %u.1 = select i1 %cmp21, i32 0, i32 %u.0
  %conv33.mask = shl i32 %11, 2
  %12 = and i32 %conv33.mask, 262140
  %13 = or i32 %12, 3
  %narrow = mul nuw nsw i32 %13, 1000
  %mul.i = zext i32 %narrow to i64
  %mul3.i = mul nuw nsw i64 %mul.i, %9
  %conv19.i = trunc i64 %mul3.i to i32
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #12, !srcloc !234
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %14, i32 0) #12, !srcloc !235
  %asmresult10.i.i = extractvalue { i64, i32 } %15, 0
  %div168273.i = lshr i64 %asmresult10.i.i, 5
  %conv169.i = trunc i64 %div168273.i to i32
  %mul170.neg.i = mul i32 %conv169.i, -54
  %sub171.i = add i32 %mul170.neg.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i)
  %cmp190.i = icmp ugt i32 %sub171.i, 26
  %inc.i = zext i1 %cmp190.i to i64
  %spec.select.i = add nuw nsw i64 %div168273.i, %inc.i
  %conv35 = trunc i64 %spec.select.i to i32
  %div36 = udiv i32 %conv35, 1000
  %16 = tail call i32 @llvm.umin.i32(i32 %div36, i32 500000)
  %17 = trunc i32 %u.1 to i8
  %bf.shl = shl nuw i8 %17, 7
  %bf.clear = and i8 %.compoundliteral.sroa.3.0123, 15
  %bf.set = or i8 %bf.shl, %bf.clear
  %bf.set48 = or i8 %bf.set, %w.0
  %18 = ptrtoint ptr %p.0121 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %p.0121, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %p.0121, i32 4
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %p.0121, i32 5
  %20 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.set48, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 1
  %21 = load i32, ptr @ir_888_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp53 = icmp ugt i32 %21, 1
  br i1 %cmp53, label %do.end58, label %for.body.do.end67_crit_edge

for.body.do.end67_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end58:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u.1)
  %tobool60.not = icmp eq i32 %u.1, 0
  %cond61 = select i1 %tobool60.not, ptr @.str.141, ptr @.str.140
  %cond63 = select i1 %cmp21, ptr @.str.142, ptr @.str.143
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %name, i32 noundef %16, ptr noundef nonnull %cond61, ptr noundef nonnull %cond63) #11
  br label %do.end67

do.end67:                                         ; preds = %do.end58, %for.body.do.end67_crit_edge
  br i1 %cmp21, label %do.body70, label %do.end67.for.inc_crit_edge

do.end67.for.inc_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body70:                                        ; preds = %do.end67
  %22 = load i32, ptr @ir_888_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp71 = icmp ugt i32 %22, 1
  br i1 %cmp71, label %do.end76, label %do.body70.for.inc_crit_edge

do.body70.for.inc_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end76, %do.body70.for.inc_crit_edge, %do.end67.for.inc_crit_edge
  %incdec.ptr = getelementptr %union.cx23888_ir_fifo_rec, ptr %p.0121, i32 1
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %div17117
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_rx_g_parameters(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %rx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %rx_params_lock, i32 noundef 0) #7
  %rx_params = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %p, ptr %rx_params, i32 44)
  tail call void @mutex_unlock(ptr noundef %rx_params_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_rx_s_parameters(ptr nocapture noundef readonly %sd, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %rx_params = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2
  %shutdown = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shutdown, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cx23888_ir_rx_shutdown(ptr noundef %sd)
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %rx_params_lock, i32 noundef 0) #7
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shutdown, align 2, !range !237
  %shutdown7 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %shutdown7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %shutdown7, align 2
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mode, align 4
  %mode9 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode9, align 4
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %p, align 4
  %14 = ptrtoint ptr %rx_params to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %rx_params, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %16, i32 376837
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %18 = and i32 %17, -318767105
  %19 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %20, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %18) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i147 = getelementptr i32, ptr %22, i32 376832
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i147) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %24 = and i32 %23, -1073807361
  %25 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i148 = getelementptr i32, ptr %26, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i148, i32 %24) #7, !srcloc !229
  %modulation = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 5
  %27 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %modulation, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool11.not = icmp eq i8 %28, 0
  %cond.i = select i1 %tobool11.not, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i150 = getelementptr i32, ptr %30, i32 376832
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i150) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %32 = and i32 %31, -268435457
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %or.i.i = or i32 %33, %cond.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %35 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i151 = getelementptr i32, ptr %36, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i151, i32 %34) #7, !srcloc !229
  %37 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %modulation, align 1, !range !237
  %modulation14 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 5
  %39 = ptrtoint ptr %modulation14 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %modulation14, align 1
  %40 = load i8, ptr %modulation, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool17.not = icmp eq i8 %40, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end4
  %carrier_freq = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 7
  %41 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %carrier_freq, align 4
  %mul.i.i = shl i32 %42, 4
  %div3.i.i = lshr exact i32 %mul.i.i, 1
  %add.i.i = add nuw i32 %div3.i.i, 54000000
  %div1.i.i = udiv i32 %add.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div1.i.i)
  %cmp.i.i.i = icmp ugt i32 %div1.i.i, 65536
  br i1 %cmp.i.i.i, label %if.then18.rxclk_rx_s_carrier.exit_crit_edge, label %if.else.i.i.i

if.then18.rxclk_rx_s_carrier.exit_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxclk_rx_s_carrier.exit

if.else.i.i.i:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div1.i.i)
  %cmp1.i.i.i = icmp ult i32 %div1.i.i, 2
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge:  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxclk_rx_s_carrier.exit

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i.i.i = add nuw nsw i32 %div1.i.i, 65535
  %phi.cast = and i32 %phi.cast.i.i.i, 65535
  br label %rxclk_rx_s_carrier.exit

rxclk_rx_s_carrier.exit:                          ; preds = %if.else3.i.i.i, %if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge, %if.then18.rxclk_rx_s_carrier.exit_crit_edge
  %d.addr.0.i.i.i = phi i32 [ %phi.cast, %if.else3.i.i.i ], [ 65535, %if.then18.rxclk_rx_s_carrier.exit_crit_edge ], [ 1, %if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %d.addr.0.i.i.i) #7
  %44 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i153 = getelementptr i32, ptr %45, i32 376834
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i153, i32 %43) #7, !srcloc !229
  %add.i6.i = shl nuw nsw i32 %d.addr.0.i.i.i, 4
  %mul.i7.i = add nuw nsw i32 %add.i6.i, 16
  %div4.i.i = lshr exact i32 %mul.i7.i, 1
  %add1.i.i = add nuw nsw i32 %div4.i.i, 54000000
  %div2.i.i = udiv i32 %add1.i.i, %mul.i7.i
  %46 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div2.i.i, ptr %carrier_freq, align 4
  %carrier_freq22 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 7
  %47 = ptrtoint ptr %carrier_freq22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div2.i.i, ptr %carrier_freq22, align 4
  %duty_cycle = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 8
  %48 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 50, ptr %duty_cycle, align 4
  %duty_cycle23 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 8
  %49 = ptrtoint ptr %duty_cycle23 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 50, ptr %duty_cycle23, align 4
  %50 = load i32, ptr %carrier_freq, align 4
  %carrier_range_lower = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 12
  %carrier_range_upper = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 13
  %mul.i = shl i32 %50, 4
  %51 = ptrtoint ptr %carrier_range_lower to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %carrier_range_lower, align 4
  %add.i = or i32 %mul.i, 9
  %div1.i = udiv i32 %add.i, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %div1.i)
  %cmp.i = icmp ult i32 %52, %div1.i
  %add6.i = or i32 %mul.i, 8
  %div7.i = udiv i32 %add6.i, 20
  %storemerge.i = select i1 %cmp.i, i32 %div7.i, i32 %div1.i
  %v.0.i = select i1 %cmp.i, i32 2, i32 0
  %53 = ptrtoint ptr %carrier_range_lower to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge.i, ptr %carrier_range_lower, align 4
  %54 = ptrtoint ptr %carrier_range_upper to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %carrier_range_upper, align 4
  %add18.i = or i32 %mul.i, 6
  %div19.i = udiv i32 %add18.i, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %div19.i)
  %cmp20.i = icmp ugt i32 %55, %div19.i
  %div27.i = udiv i32 %add18.i, 12
  %storemerge54.i = select i1 %cmp20.i, i32 %div27.i, i32 %div19.i
  %or.i = zext i1 %cmp20.i to i32
  %v.1.i = or i32 %v.0.i, %or.i
  %56 = ptrtoint ptr %carrier_range_upper to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %storemerge54.i, ptr %carrier_range_upper, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i155 = getelementptr i32, ptr %58, i32 376832
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i155) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %60 = and i32 %59, -50331649
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  %or.i.i156 = or i32 %v.1.i, %61
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i.i156) #7
  %63 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i157 = getelementptr i32, ptr %64, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i157, i32 %62) #7, !srcloc !229
  %65 = ptrtoint ptr %carrier_range_lower to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %carrier_range_lower, align 4
  %carrier_range_lower26 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 12
  %67 = ptrtoint ptr %carrier_range_lower26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %carrier_range_lower26, align 4
  %68 = ptrtoint ptr %carrier_range_upper to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %carrier_range_upper, align 4
  %carrier_range_upper28 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 13
  %70 = ptrtoint ptr %carrier_range_upper28 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %carrier_range_upper28, align 4
  %add.i158 = add nuw nsw i32 %d.addr.0.i.i.i, 1
  %71 = zext i32 %add.i158 to i64
  %mul3.i = mul nuw nsw i64 %71, 262143000
  %conv19.i = trunc i64 %mul3.i to i32
  %72 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #12, !srcloc !234
  %73 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %72, i32 0) #12, !srcloc !235
  %asmresult10.i.i = extractvalue { i64, i32 } %73, 0
  %div168273.i = lshr i64 %asmresult10.i.i, 5
  %conv169.i = trunc i64 %div168273.i to i32
  %mul170.neg.i = mul i32 %conv169.i, -54
  %sub171.i = add i32 %mul170.neg.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i)
  %cmp190.i = icmp ugt i32 %sub171.i, 26
  %inc.i = zext i1 %cmp190.i to i64
  %spec.select.i = add nuw nsw i64 %div168273.i, %inc.i
  %conv = trunc i64 %spec.select.i to i32
  %max_pulse_width = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %74 = ptrtoint ptr %max_pulse_width to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv, ptr %max_pulse_width, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end4
  %max_pulse_width30 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %75 = ptrtoint ptr %max_pulse_width30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_pulse_width30, align 4
  %77 = tail call i32 @llvm.umin.i32(i32 %76, i32 500000) #7
  %narrow.i = mul nuw nsw i32 %77, 54
  %mul.i.i159 = zext i32 %narrow.i to i64
  %78 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i159, i32 0) #12, !srcloc !238
  %asmresult.i.i.i = extractvalue { i64, i32 } %78, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %78, 1
  %79 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i159, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !235
  %asmresult10.i.i.i = extractvalue { i64, i32 } %79, 0
  %div162267.i.i = lshr i64 %asmresult10.i.i.i, 9
  %conv163.i.i = trunc i64 %div162267.i.i to i32
  %mul164.neg.i.i = mul i32 %conv163.i.i, -1000
  %sub165.i.i = add i32 %mul164.neg.i.i, %narrow.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %sub165.i.i)
  %cmp184.i.i = icmp ugt i32 %sub165.i.i, 499
  %inc.i.i = zext i1 %cmp184.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %div162267.i.i, %inc.i.i
  %80 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i32 0) #12, !srcloc !238
  %asmresult.i.i8.i = extractvalue { i64, i32 } %80, 0
  %asmresult4.i.i9.i = extractvalue { i64, i32 } %80, 1
  %81 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i64 %asmresult.i.i8.i, i32 %asmresult4.i.i9.i) #12, !srcloc !235
  %asmresult10.i.i10.i = extractvalue { i64, i32 } %81, 0
  %count.addr.0.i.i = lshr i64 %asmresult10.i.i10.i, 17
  call void @__sanitizer_cov_trace_const_cmp8(i64 8590065663, i64 %asmresult10.i.i10.i)
  %cmp180.i.i = icmp ugt i64 %asmresult10.i.i10.i, 8590065663
  br i1 %cmp180.i.i, label %if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge, label %if.else183.i.i

if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxclk_rx_s_max_pulse_width.exit

if.else183.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %asmresult10.i.i10.i)
  %cmp184.i11.i = icmp ult i64 %asmresult10.i.i10.i, 262144
  br i1 %cmp184.i11.i, label %if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge, label %if.else187.i.i

if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxclk_rx_s_max_pulse_width.exit

if.else187.i.i:                                   ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = trunc i64 %count.addr.0.i.i to i32
  %extract.t.i.i = add i32 %82, 65535
  %phi.cast193 = and i32 %extract.t.i.i, 65535
  br label %rxclk_rx_s_max_pulse_width.exit

rxclk_rx_s_max_pulse_width.exit:                  ; preds = %if.else187.i.i, %if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge, %if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge
  %count.addr.1.off0.i.i = phi i32 [ %phi.cast193, %if.else187.i.i ], [ 65535, %if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge ], [ 1, %if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %83 = tail call i32 @llvm.bswap.i32(i32 %count.addr.1.off0.i.i) #7
  %84 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i162 = getelementptr i32, ptr %85, i32 376834
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i162, i32 %83) #7, !srcloc !229
  %add.i.i163 = add nuw nsw i32 %count.addr.1.off0.i.i, 1
  %86 = zext i32 %add.i.i163 to i64
  %mul3.i.i = mul nuw nsw i64 %86, 262143000
  %conv19.i.i = trunc i64 %mul3.i.i to i32
  %87 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i) #12, !srcloc !234
  %88 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i, i64 %87, i32 0) #12, !srcloc !235
  %asmresult10.i.i12.i = extractvalue { i64, i32 } %88, 0
  %div168273.i.i = lshr i64 %asmresult10.i.i12.i, 5
  %conv169.i.i = trunc i64 %div168273.i.i to i32
  %mul170.neg.i.i = mul i32 %conv169.i.i, -54
  %sub171.i.i = add i32 %mul170.neg.i.i, %conv19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i.i)
  %cmp190.i.i = icmp ugt i32 %sub171.i.i, 26
  %inc.i13.i = zext i1 %cmp190.i.i to i64
  %spec.select.i14.i = add nuw nsw i64 %div168273.i.i, %inc.i13.i
  %conv4.i = trunc i64 %spec.select.i14.i to i32
  %89 = ptrtoint ptr %max_pulse_width30 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv4.i, ptr %max_pulse_width30, align 4
  br label %if.end33

if.end33:                                         ; preds = %rxclk_rx_s_max_pulse_width.exit, %rxclk_rx_s_carrier.exit
  %conv37.pre-phi = phi i32 [ %count.addr.1.off0.i.i, %rxclk_rx_s_max_pulse_width.exit ], [ %d.addr.0.i.i.i, %rxclk_rx_s_carrier.exit ]
  %max_pulse_width34 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %90 = ptrtoint ptr %max_pulse_width34 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_pulse_width34, align 4
  %max_pulse_width35 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 6
  %92 = ptrtoint ptr %max_pulse_width35 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %max_pulse_width35, align 4
  %rxclk_divider36 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxclk_divider36, i32 noundef 4) #7
  %93 = ptrtoint ptr %rxclk_divider36 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 %conv37.pre-phi, ptr %rxclk_divider36, align 4
  %noise_filter_min_width = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 11
  %94 = ptrtoint ptr %noise_filter_min_width to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %noise_filter_min_width, align 4
  %mul.i.i164 = mul i32 %95, 54
  %add.i.i165 = add i32 %mul.i.i164, 500
  %div1.i.i166 = udiv i32 %add.i.i165, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535999, i32 %add.i.i165)
  %cmp.i.i.i167 = icmp ugt i32 %add.i.i165, 65535999
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %add.i.i165)
  %cmp1.i.i.i168 = icmp ult i32 %add.i.i165, 4000
  %96 = and i32 %div1.i.i166, 65535
  %97 = select i1 %cmp1.i.i.i168, i32 0, i32 %96
  %conv.i169 = select i1 %cmp.i.i.i167, i32 65535, i32 %97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %98 = tail call i32 @llvm.bswap.i32(i32 %conv.i169) #7
  %99 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i171 = getelementptr i32, ptr %100, i32 376838
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i171, i32 %98) #7, !srcloc !229
  %mul.i4.i = mul nuw nsw i32 %conv.i169, 1000
  %add.i5.i = add nuw nsw i32 %mul.i4.i, 27
  %div1.i6.i = udiv i32 %add.i5.i, 54
  %101 = ptrtoint ptr %noise_filter_min_width to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div1.i6.i, ptr %noise_filter_min_width, align 4
  %noise_filter_min_width41 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 11
  %102 = ptrtoint ptr %noise_filter_min_width41 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %div1.i6.i, ptr %noise_filter_min_width41, align 4
  %103 = mul nuw nsw i32 %conv37.pre-phi, 4000
  %add2.i = add nuw nsw i32 %103, 4027
  %div3.i = udiv i32 %add2.i, 54
  %resolution = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 14
  %104 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %div3.i, ptr %resolution, align 4
  %resolution44 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 14
  %105 = ptrtoint ptr %resolution44 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div3.i, ptr %resolution44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i174 = getelementptr i32, ptr %107, i32 376832
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i174) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %109 = and i32 %108, -262145
  %110 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i175 = getelementptr i32, ptr %111, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i175, i32 %109) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %112 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i177 = getelementptr i32, ptr %113, i32 376832
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i177) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %115 = or i32 %114, 201326592
  %116 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i179 = getelementptr i32, ptr %117, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i179, i32 %115) #7, !srcloc !229
  %invert_level = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 9
  %118 = ptrtoint ptr %invert_level to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %invert_level, align 4, !range !237
  %invert_level46 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 9
  %120 = ptrtoint ptr %invert_level46 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %invert_level46, align 4
  %rx_invert = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 5
  %121 = load i8, ptr %invert_level, align 4, !range !237
  %122 = zext i8 %121 to i32
  %call.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_invert, i32 noundef 4) #7
  %123 = ptrtoint ptr %rx_invert to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 %122, ptr %rx_invert, align 4
  %interrupt_enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 3
  %124 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %interrupt_enable, align 1, !range !237
  %interrupt_enable52 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 3
  %126 = ptrtoint ptr %interrupt_enable52 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %interrupt_enable52, align 1
  %enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 2
  %127 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %enable, align 4, !range !237
  %enable55 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 2, i32 2
  %129 = ptrtoint ptr %enable55 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %enable55, align 4
  %130 = load i8, ptr %enable, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool58.not = icmp eq i8 %130, 0
  br i1 %tobool58.not, label %if.end33.if.end75_crit_edge, label %if.then59

if.end33.if.end75_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then59:                                        ; preds = %if.end33
  %rx_kfifo_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 7
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock) #7
  %rx_kfifo = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 6
  %out = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %131 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %out, align 4
  %132 = ptrtoint ptr %rx_kfifo to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %rx_kfifo, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock, i32 noundef %call64) #7
  %133 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %interrupt_enable, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool70.not = icmp eq i8 %134, 0
  br i1 %tobool70.not, label %if.then59.if.end72_crit_edge, label %if.then71

if.then59.if.end72_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then71:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %135 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i181 = getelementptr i32, ptr %136, i32 376837
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i181) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %138 = or i32 %137, 318767104
  %139 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i183 = getelementptr i32, ptr %140, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i183, i32 %138) #7, !srcloc !229
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.then59.if.end72_crit_edge
  %141 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %enable, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool74.not = icmp eq i8 %142, 0
  %cond.i184 = select i1 %tobool74.not, i32 0, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %143 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i186 = getelementptr i32, ptr %144, i32 376832
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i186) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %146 = and i32 %145, -1073807361
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #7
  %or.i.i187 = or i32 %147, %cond.i184
  %148 = tail call i32 @llvm.bswap.i32(i32 %or.i.i187) #7
  %149 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i188 = getelementptr i32, ptr %150, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i188, i32 %148) #7, !srcloc !229
  br label %if.end75

if.end75:                                         ; preds = %if.end72, %if.end33.if.end75_crit_edge
  tail call void @mutex_unlock(ptr noundef %rx_params_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end75 ], [ -38, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_tx_write(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef writeonly %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 376837
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %7 = or i32 %6, 536870912
  %8 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %9, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %7) #7, !srcloc !229
  %10 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %count, ptr %num, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_tx_g_parameters(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %tx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %tx_params_lock, i32 noundef 0) #7
  %tx_params = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8
  %2 = call ptr @memcpy(ptr %p, ptr %tx_params, i32 44)
  tail call void @mutex_unlock(ptr noundef %tx_params_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23888_ir_tx_s_parameters(ptr nocapture noundef readonly %sd, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tx_params = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8
  %shutdown = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shutdown, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cx23888_ir_tx_shutdown(ptr noundef %sd)
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tx_params_lock = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %tx_params_lock, i32 noundef 0) #7
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shutdown, align 2, !range !237
  %shutdown7 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %shutdown7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %shutdown7, align 2
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mode, align 4
  %mode9 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode9, align 4
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %p, align 4
  %14 = ptrtoint ptr %tx_params to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %tx_params, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %16, i32 376837
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %18 = and i32 %17, -536870913
  %19 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %20, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %18) #7, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i124 = getelementptr i32, ptr %22, i32 376832
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i124) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %24 = and i32 %23, 2147352575
  %25 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i125 = getelementptr i32, ptr %26, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i125, i32 %24) #7, !srcloc !229
  %modulation = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 5
  %27 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %modulation, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool11.not = icmp eq i8 %28, 0
  %cond.i = select i1 %tobool11.not, i32 0, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i127 = getelementptr i32, ptr %30, i32 376832
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %32 = and i32 %31, -536870913
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %or.i.i = or i32 %33, %cond.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %35 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i128 = getelementptr i32, ptr %36, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i128, i32 %34) #7, !srcloc !229
  %37 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %modulation, align 1, !range !237
  %modulation14 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 5
  %39 = ptrtoint ptr %modulation14 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %modulation14, align 1
  %40 = load i8, ptr %modulation, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool17.not = icmp eq i8 %40, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end4
  %carrier_freq = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 7
  %41 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %carrier_freq, align 4
  %mul.i.i = shl i32 %42, 4
  %div3.i.i = lshr exact i32 %mul.i.i, 1
  %add.i.i = add nuw i32 %div3.i.i, 54000000
  %div1.i.i = udiv i32 %add.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div1.i.i)
  %cmp.i.i.i = icmp ugt i32 %div1.i.i, 65536
  br i1 %cmp.i.i.i, label %if.then18.txclk_tx_s_carrier.exit_crit_edge, label %if.else.i.i.i

if.then18.txclk_tx_s_carrier.exit_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %txclk_tx_s_carrier.exit

if.else.i.i.i:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div1.i.i)
  %cmp1.i.i.i = icmp ult i32 %div1.i.i, 2
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge:  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %txclk_tx_s_carrier.exit

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i.i.i = add nuw nsw i32 %div1.i.i, 65535
  %phi.cast = and i32 %phi.cast.i.i.i, 65535
  br label %txclk_tx_s_carrier.exit

txclk_tx_s_carrier.exit:                          ; preds = %if.else3.i.i.i, %if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge, %if.then18.txclk_tx_s_carrier.exit_crit_edge
  %d.addr.0.i.i.i = phi i32 [ %phi.cast, %if.else3.i.i.i ], [ 65535, %if.then18.txclk_tx_s_carrier.exit_crit_edge ], [ 1, %if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %d.addr.0.i.i.i) #7
  %44 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i130 = getelementptr i32, ptr %45, i32 376833
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i130, i32 %43) #7, !srcloc !229
  %add.i6.i = shl nuw nsw i32 %d.addr.0.i.i.i, 4
  %mul.i7.i = add nuw nsw i32 %add.i6.i, 16
  %div4.i.i = lshr exact i32 %mul.i7.i, 1
  %add1.i.i = add nuw nsw i32 %div4.i.i, 54000000
  %div2.i.i = udiv i32 %add1.i.i, %mul.i7.i
  %46 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div2.i.i, ptr %carrier_freq, align 4
  %carrier_freq22 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 7
  %47 = ptrtoint ptr %carrier_freq22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div2.i.i, ptr %carrier_freq22, align 4
  %duty_cycle = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 8
  %48 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %duty_cycle, align 4
  %mul.i = mul i32 %49, 100
  %add.i = add i32 %mul.i, 312
  call void @__sanitizer_cov_trace_const_cmp4(i32 625, i32 %add.i)
  %50 = icmp ult i32 %add.i, 625
  %div1.i = udiv i32 %add.i, 625
  %dec.i = add nsw i32 %div1.i, -1
  %51 = tail call i32 @llvm.umin.i32(i32 %dec.i, i32 15) #7
  %52 = select i1 %50, i32 0, i32 %51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %53 = shl nuw nsw i32 %52, 24
  %54 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i132 = getelementptr i32, ptr %55, i32 376835
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i132, i32 %53) #7, !srcloc !229
  %56 = mul nuw nsw i32 %52, 100
  %add11.i = add nuw nsw i32 %56, 108
  %div1219.i = lshr i32 %add11.i, 4
  %57 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div1219.i, ptr %duty_cycle, align 4
  %duty_cycle26 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 8
  %58 = ptrtoint ptr %duty_cycle26 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div1219.i, ptr %duty_cycle26, align 4
  %add.i133 = add nuw nsw i32 %d.addr.0.i.i.i, 1
  %59 = zext i32 %add.i133 to i64
  %mul3.i = mul nuw nsw i64 %59, 262143000
  %conv19.i = trunc i64 %mul3.i to i32
  %60 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #12, !srcloc !234
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %60, i32 0) #12, !srcloc !235
  %asmresult10.i.i = extractvalue { i64, i32 } %61, 0
  %div168273.i = lshr i64 %asmresult10.i.i, 5
  %conv169.i = trunc i64 %div168273.i to i32
  %mul170.neg.i = mul i32 %conv169.i, -54
  %sub171.i = add i32 %mul170.neg.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i)
  %cmp190.i = icmp ugt i32 %sub171.i, 26
  %inc.i = zext i1 %cmp190.i to i64
  %spec.select.i = add nuw nsw i64 %div168273.i, %inc.i
  %conv = trunc i64 %spec.select.i to i32
  %max_pulse_width = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %62 = ptrtoint ptr %max_pulse_width to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv, ptr %max_pulse_width, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end4
  %max_pulse_width28 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %63 = ptrtoint ptr %max_pulse_width28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_pulse_width28, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 500000) #7
  %narrow.i = mul nuw nsw i32 %65, 54
  %mul.i.i134 = zext i32 %narrow.i to i64
  %66 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i134, i32 0) #12, !srcloc !238
  %asmresult.i.i.i = extractvalue { i64, i32 } %66, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %66, 1
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i134, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !235
  %asmresult10.i.i.i = extractvalue { i64, i32 } %67, 0
  %div162267.i.i = lshr i64 %asmresult10.i.i.i, 9
  %conv163.i.i = trunc i64 %div162267.i.i to i32
  %mul164.neg.i.i = mul i32 %conv163.i.i, -1000
  %sub165.i.i = add i32 %mul164.neg.i.i, %narrow.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %sub165.i.i)
  %cmp184.i.i = icmp ugt i32 %sub165.i.i, 499
  %inc.i.i = zext i1 %cmp184.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %div162267.i.i, %inc.i.i
  %68 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i32 0) #12, !srcloc !238
  %asmresult.i.i8.i = extractvalue { i64, i32 } %68, 0
  %asmresult4.i.i9.i = extractvalue { i64, i32 } %68, 1
  %69 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i64 %asmresult.i.i8.i, i32 %asmresult4.i.i9.i) #12, !srcloc !235
  %asmresult10.i.i10.i = extractvalue { i64, i32 } %69, 0
  %count.addr.0.i.i = lshr i64 %asmresult10.i.i10.i, 17
  call void @__sanitizer_cov_trace_const_cmp8(i64 8590065663, i64 %asmresult10.i.i10.i)
  %cmp180.i.i = icmp ugt i64 %asmresult10.i.i10.i, 8590065663
  br i1 %cmp180.i.i, label %if.else.txclk_tx_s_max_pulse_width.exit_crit_edge, label %if.else183.i.i

if.else.txclk_tx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %txclk_tx_s_max_pulse_width.exit

if.else183.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %asmresult10.i.i10.i)
  %cmp184.i11.i = icmp ult i64 %asmresult10.i.i10.i, 262144
  br i1 %cmp184.i11.i, label %if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge, label %if.else187.i.i

if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %txclk_tx_s_max_pulse_width.exit

if.else187.i.i:                                   ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = trunc i64 %count.addr.0.i.i to i32
  %extract.t.i.i = add i32 %70, 65535
  %phi.cast166 = and i32 %extract.t.i.i, 65535
  br label %txclk_tx_s_max_pulse_width.exit

txclk_tx_s_max_pulse_width.exit:                  ; preds = %if.else187.i.i, %if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge, %if.else.txclk_tx_s_max_pulse_width.exit_crit_edge
  %count.addr.1.off0.i.i = phi i32 [ %phi.cast166, %if.else187.i.i ], [ 65535, %if.else.txclk_tx_s_max_pulse_width.exit_crit_edge ], [ 1, %if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %count.addr.1.off0.i.i) #7
  %72 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i137 = getelementptr i32, ptr %73, i32 376833
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137, i32 %71) #7, !srcloc !229
  %add.i.i138 = add nuw nsw i32 %count.addr.1.off0.i.i, 1
  %74 = zext i32 %add.i.i138 to i64
  %mul3.i.i = mul nuw nsw i64 %74, 262143000
  %conv19.i.i = trunc i64 %mul3.i.i to i32
  %75 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i) #12, !srcloc !234
  %76 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i, i64 %75, i32 0) #12, !srcloc !235
  %asmresult10.i.i12.i = extractvalue { i64, i32 } %76, 0
  %div168273.i.i = lshr i64 %asmresult10.i.i12.i, 5
  %conv169.i.i = trunc i64 %div168273.i.i to i32
  %mul170.neg.i.i = mul i32 %conv169.i.i, -54
  %sub171.i.i = add i32 %mul170.neg.i.i, %conv19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i.i)
  %cmp190.i.i = icmp ugt i32 %sub171.i.i, 26
  %inc.i13.i = zext i1 %cmp190.i.i to i64
  %spec.select.i14.i = add nuw nsw i64 %div168273.i.i, %inc.i13.i
  %conv4.i = trunc i64 %spec.select.i14.i to i32
  %77 = ptrtoint ptr %max_pulse_width28 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv4.i, ptr %max_pulse_width28, align 4
  br label %if.end31

if.end31:                                         ; preds = %txclk_tx_s_max_pulse_width.exit, %txclk_tx_s_carrier.exit
  %conv35.pre-phi = phi i32 [ %count.addr.1.off0.i.i, %txclk_tx_s_max_pulse_width.exit ], [ %d.addr.0.i.i.i, %txclk_tx_s_carrier.exit ]
  %max_pulse_width32 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %78 = ptrtoint ptr %max_pulse_width32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_pulse_width32, align 4
  %max_pulse_width33 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 6
  %80 = ptrtoint ptr %max_pulse_width33 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %max_pulse_width33, align 4
  %txclk_divider34 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txclk_divider34, i32 noundef 4) #7
  %81 = ptrtoint ptr %txclk_divider34 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %conv35.pre-phi, ptr %txclk_divider34, align 4
  %82 = mul nuw nsw i32 %conv35.pre-phi, 4000
  %add2.i = add nuw nsw i32 %82, 4027
  %div3.i = udiv i32 %add2.i, 54
  %resolution = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 14
  %83 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div3.i, ptr %resolution, align 4
  %resolution38 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 14
  %84 = ptrtoint ptr %resolution38 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div3.i, ptr %resolution38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i141 = getelementptr i32, ptr %86, i32 376832
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i141) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %88 = and i32 %87, -524289
  %89 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i142 = getelementptr i32, ptr %90, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i142, i32 %88) #7, !srcloc !229
  %invert_carrier_sense = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 10
  %91 = ptrtoint ptr %invert_carrier_sense to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %invert_carrier_sense, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool39.not = icmp eq i8 %92, 0
  %cond.i143 = select i1 %tobool39.not, i32 0, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %93 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i145 = getelementptr i32, ptr %94, i32 376832
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %96 = and i32 %95, -1048577
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  %or.i.i146 = or i32 %97, %cond.i143
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i.i146) #7
  %99 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i147 = getelementptr i32, ptr %100, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i147, i32 %98) #7, !srcloc !229
  %101 = ptrtoint ptr %invert_carrier_sense to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %invert_carrier_sense, align 1, !range !237
  %invert_carrier_sense42 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 10
  %103 = ptrtoint ptr %invert_carrier_sense42 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %invert_carrier_sense42, align 1
  %invert_level = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 9
  %104 = ptrtoint ptr %invert_level to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %invert_level, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool44.not = icmp eq i8 %105, 0
  %cond.i148 = select i1 %tobool44.not, i32 0, i32 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i150 = getelementptr i32, ptr %107, i32 376832
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i150) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %109 = and i32 %108, -8388609
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  %or.i.i151 = or i32 %110, %cond.i148
  %111 = tail call i32 @llvm.bswap.i32(i32 %or.i.i151) #7
  %112 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i152 = getelementptr i32, ptr %113, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i152, i32 %111) #7, !srcloc !229
  %114 = ptrtoint ptr %invert_level to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %invert_level, align 4, !range !237
  %invert_level47 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 9
  %116 = ptrtoint ptr %invert_level47 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %invert_level47, align 4
  %interrupt_enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 3
  %117 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %interrupt_enable, align 1, !range !237
  %interrupt_enable50 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 3
  %119 = ptrtoint ptr %interrupt_enable50 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %interrupt_enable50, align 1
  %enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 2
  %120 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %enable, align 4, !range !237
  %enable53 = getelementptr inbounds %struct.cx23888_ir_state, ptr %1, i32 0, i32 8, i32 2
  %122 = ptrtoint ptr %enable53 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %enable53, align 4
  %123 = load i8, ptr %enable, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool56.not = icmp eq i8 %123, 0
  br i1 %tobool56.not, label %if.end31.if.end64_crit_edge, label %if.then57

if.end31.if.end64_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then57:                                        ; preds = %if.end31
  %124 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %interrupt_enable, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool59.not = icmp eq i8 %125, 0
  br i1 %tobool59.not, label %if.then57.if.end61_crit_edge, label %if.then60

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %126 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i154 = getelementptr i32, ptr %127, i32 376837
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i154) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %129 = or i32 %128, 536870912
  %130 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i156 = getelementptr i32, ptr %131, i32 376837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i156, i32 %129) #7, !srcloc !229
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.then57.if.end61_crit_edge
  %132 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %enable, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool63.not = icmp eq i8 %133, 0
  %cond.i157 = select i1 %tobool63.not, i32 0, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %134 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i159 = getelementptr i32, ptr %135, i32 376832
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i159) #7, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %137 = and i32 %136, 2147352575
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #7
  %or.i.i160 = or i32 %138, %cond.i157
  %139 = tail call i32 @llvm.bswap.i32(i32 %or.i.i160) #7
  %140 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr7.i.i161 = getelementptr i32, ptr %141, i32 376832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i161, i32 %139) #7, !srcloc !229
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.end31.if.end64_crit_edge
  tail call void @mutex_unlock(ptr noundef %tx_params_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end64 ], [ -38, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !186, !187, !188, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !205, !206, !207, !208, !209, !210, !211, !213, !214, !215, !217}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__param_ir_888_debug, !1, !"__param_ir_888_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_ir_888_debugtype385, !1, !"__UNIQUE_ID_ir_888_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ir_888_debug386, !4, !"__UNIQUE_ID_ir_888_debug386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 21, i32 1}
!5 = !{ptr @cx23888_ir_probe.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1149, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1162, i32 39}
!10 = !{ptr @cx23888_ir_probe.__key.2, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1174, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cx23888_ir_probe.__key.4, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1178, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ir_888_debug, !17, !"ir_888_debug", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 19, i32 21}
!18 = !{ptr @__param_str_ir_888_debug, !1, !"__param_str_ir_888_debug", i1 false, i1 false}
!19 = !{ptr @cx23888_ir_controller_ops, !20, !"cx23888_ir_controller_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1099, i32 37}
!21 = !{ptr @cx23888_ir_core_ops, !22, !"cx23888_ir_core_ops", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1080, i32 42}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 931, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cx23888_ir_log_status._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cx23888_ir_log_status._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 932, i32 2}
!31 = !{ptr @cx23888_ir_log_status._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cx23888_ir_log_status._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 934, i32 2}
!37 = !{ptr @cx23888_ir_log_status._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cx23888_ir_log_status._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 936, i32 2}
!43 = !{ptr @cx23888_ir_log_status._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cx23888_ir_log_status._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 943, i32 7}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 946, i32 7}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 949, i32 7}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 952, i32 7}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 955, i32 2}
!55 = !{ptr @cx23888_ir_log_status._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cx23888_ir_log_status._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 956, i32 2}
!59 = !{ptr @cx23888_ir_log_status._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cx23888_ir_log_status._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 958, i32 2}
!65 = !{ptr @cx23888_ir_log_status._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cx23888_ir_log_status._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 960, i32 2}
!71 = !{ptr @cx23888_ir_log_status._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cx23888_ir_log_status._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 963, i32 3}
!77 = !{ptr @cx23888_ir_log_status._entry.44, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cx23888_ir_log_status._entry_ptr.46, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 987, i32 3}
!81 = !{ptr @cx23888_ir_log_status._entry.47, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cx23888_ir_log_status._entry_ptr.49, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 992, i32 2}
!85 = !{ptr @cx23888_ir_log_status._entry.50, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @cx23888_ir_log_status._entry_ptr.52, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.54, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 995, i32 2}
!89 = !{ptr @cx23888_ir_log_status._entry.53, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cx23888_ir_log_status._entry_ptr.55, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.57, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 998, i32 3}
!93 = !{ptr @cx23888_ir_log_status._entry.56, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cx23888_ir_log_status._entry_ptr.58, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.60, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1001, i32 2}
!97 = !{ptr @cx23888_ir_log_status._entry.59, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @cx23888_ir_log_status._entry_ptr.61, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.63, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1003, i32 2}
!101 = !{ptr @cx23888_ir_log_status._entry.62, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cx23888_ir_log_status._entry_ptr.64, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.66, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1005, i32 2}
!105 = !{ptr @cx23888_ir_log_status._entry.65, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cx23888_ir_log_status._entry_ptr.67, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.69, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1007, i32 2}
!109 = !{ptr @cx23888_ir_log_status._entry.68, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cx23888_ir_log_status._entry_ptr.70, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.72, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1009, i32 2}
!113 = !{ptr @cx23888_ir_log_status._entry.71, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cx23888_ir_log_status._entry_ptr.73, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.75, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1011, i32 2}
!117 = !{ptr @cx23888_ir_log_status._entry.74, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cx23888_ir_log_status._entry_ptr.76, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.78, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1013, i32 2}
!121 = !{ptr @cx23888_ir_log_status._entry.77, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cx23888_ir_log_status._entry_ptr.79, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.81, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1016, i32 2}
!125 = !{ptr @cx23888_ir_log_status._entry.80, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cx23888_ir_log_status._entry_ptr.82, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @cx23888_ir_log_status._entry.83, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1017, i32 2}
!129 = !{ptr @cx23888_ir_log_status._entry_ptr.84, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.86, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1019, i32 2}
!132 = !{ptr @cx23888_ir_log_status._entry.85, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @cx23888_ir_log_status._entry_ptr.87, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @cx23888_ir_log_status._entry.88, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1021, i32 2}
!136 = !{ptr @cx23888_ir_log_status._entry_ptr.89, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @cx23888_ir_log_status._entry.90, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1023, i32 2}
!139 = !{ptr @cx23888_ir_log_status._entry_ptr.91, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.92, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.94, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1025, i32 2}
!143 = !{ptr @cx23888_ir_log_status._entry.93, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cx23888_ir_log_status._entry_ptr.95, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.97, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1027, i32 2}
!147 = !{ptr @cx23888_ir_log_status._entry.96, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cx23888_ir_log_status._entry_ptr.98, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.99, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.100, !146, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.102, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1031, i32 3}
!153 = !{ptr @cx23888_ir_log_status._entry.101, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cx23888_ir_log_status._entry_ptr.103, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.105, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1033, i32 3}
!157 = !{ptr @cx23888_ir_log_status._entry.104, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @cx23888_ir_log_status._entry_ptr.106, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.108, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1036, i32 2}
!161 = !{ptr @cx23888_ir_log_status._entry.107, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @cx23888_ir_log_status._entry_ptr.109, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @cx23888_ir_log_status._entry.110, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1039, i32 2}
!165 = !{ptr @cx23888_ir_log_status._entry_ptr.111, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @cx23888_ir_log_status._entry.112, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1041, i32 2}
!168 = !{ptr @cx23888_ir_log_status._entry_ptr.113, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @cx23888_ir_log_status._entry.114, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1043, i32 2}
!171 = !{ptr @cx23888_ir_log_status._entry_ptr.115, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.116, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 527, i32 2}
!174 = !{ptr @.str.117, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @cx23888_ir_irq_handler._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @cx23888_ir_irq_handler._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.118, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.119, !173, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.120, !173, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.121, !173, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.122, !173, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.123, !173, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.124, !173, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.126, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 533, i32 2}
!186 = !{ptr @cx23888_ir_irq_handler._entry.125, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @cx23888_ir_irq_handler._entry_ptr.127, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.128, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.129, !185, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.130, !185, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.131, !185, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.133, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 592, i32 3}
!194 = !{ptr @cx23888_ir_irq_handler._entry.132, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @cx23888_ir_irq_handler._entry_ptr.134, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.136, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 601, i32 3}
!198 = !{ptr @cx23888_ir_irq_handler._entry.135, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cx23888_ir_irq_handler._entry_ptr.137, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @cx23888_ir_ir_ops, !201, !"cx23888_ir_ir_ops", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1089, i32 40}
!202 = !{ptr @.str.138, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 673, i32 3}
!204 = !{ptr @.str.139, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @cx23888_ir_rx_read._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @cx23888_ir_rx_read._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.140, !203, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.141, !203, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.142, !203, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.143, !203, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.145, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 676, i32 4}
!213 = !{ptr @cx23888_ir_rx_read._entry.144, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @cx23888_ir_rx_read._entry_ptr.146, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @default_rx_params, !216, !"default_rx_params", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1104, i32 47}
!217 = !{ptr @default_tx_params, !218, !"default_tx_params", i1 false, i1 false}
!218 = !{!"../drivers/media/pci/cx23885/cx23888-ir.c", i32 1123, i32 47}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{i64 2158606351}
!229 = !{i64 5033416}
!230 = !{i64 2158608626}
!231 = !{i64 5033834}
!232 = !{i64 2158609663}
!233 = !{i64 2158607280}
!234 = !{i64 1078055, i64 1078082}
!235 = !{i64 1078750, i64 1078777, i64 1078810, i64 1078831, i64 1078858, i64 1078884}
!236 = !{!"auto-init"}
!237 = !{i8 0, i8 2}
!238 = !{i64 1078342, i64 1078369, i64 1078391, i64 1078419}
