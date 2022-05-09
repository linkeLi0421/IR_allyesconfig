; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/cx25840/cx25840-ir.c_pt.bc'
source_filename = "../drivers/media/i2c/cx25840/cx25840-ir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.cx25840_ir_fifo_rec = type { %struct.ir_raw_event }
%struct.ir_raw_event = type { %union.anon.100, i8, i8 }
%union.anon.100 = type { i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx25840_ir_state = type { ptr, %struct.v4l2_subdev_ir_parameters, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.kfifo, %struct.spinlock, %struct.v4l2_subdev_ir_parameters, %struct.mutex, %struct.atomic_t }
%struct.kfifo = type { %union.anon.99, [0 x i8] }
%union.anon.99 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__param_str_ir_debug = internal constant [17 x i8] c"cx25840.ir_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype292 = internal constant [30 x i8] c"cx25840.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_debug293 = internal constant [58 x i8] c"cx25840.parm=ir_debug:enable integrated IR debug messages\00", section ".modinfo", align 1
@cx25840_ir_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: IR IRQ Status:  %s %s %s %s %s %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx25840_ir_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/i2c/cx25840/cx25840-ir.c\00", [57 x i8] zeroinitializer }, align 32
@cx25840_ir_irq_handler._entry_ptr = internal global ptr @cx25840_ir_irq_handler._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsr\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsr\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rto\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ror\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tby\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rby\00", [28 x i8] zeroinitializer }, align 32
@cx25840_ir_irq_handler._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: IR IRQ Enables: %s %s %s %s\0A\00", [61 x i8] zeroinitializer }, align 32
@cx25840_ir_irq_handler._entry_ptr.12 = internal global ptr @cx25840_ir_irq_handler._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tse\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rse\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rte\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"roe\00", [28 x i8] zeroinitializer }, align 32
@cx25840_ir_irq_handler._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: IR receiver software FIFO overrun\0A\00", [55 x i8] zeroinitializer }, align 32
@cx25840_ir_irq_handler._entry_ptr.19 = internal global ptr @cx25840_ir_irq_handler._entry.17, section ".printk_index", align 4
@cx25840_ir_irq_handler._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: IR receiver hardware FIFO overrun\0A\00", [55 x i8] zeroinitializer }, align 32
@cx25840_ir_irq_handler._entry_ptr.22 = internal global ptr @cx25840_ir_irq_handler._entry.20, section ".printk_index", align 4
@cx25840_ir_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: IR Receiver:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx25840_ir_log_status\00", [42 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr = internal global ptr @cx25840_ir_log_status._entry, section ".printk_index", align 4
@cx25840_ir_log_status._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Enabled:                           %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.27 = internal global ptr @cx25840_ir_log_status._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Demodulation from a carrier:       %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.32 = internal global ptr @cx25840_ir_log_status._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.2, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO:                              %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.37 = internal global ptr @cx25840_ir_log_status._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"falling edge\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rising edge\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rising & falling edges\00", [41 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.24, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Pulse timers' start/stop trigger:  %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.44 = internal global ptr @cx25840_ir_log_status._entry.42, section ".printk_index", align 4
@cx25840_ir_log_status._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.24, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO data on pulse timer overflow: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.47 = internal global ptr @cx25840_ir_log_status._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not loaded\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"overflow marker\00", [16 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.24, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO interrupt watermark:          %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.52 = internal global ptr @cx25840_ir_log_status._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not empty\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"half full or greater\00", [43 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.24, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Loopback mode:                     %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.57 = internal global ptr @cx25840_ir_log_status._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"loopback active\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"normal receive\00", [17 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.24, ptr @.str.2, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: \09Expected carrier (16 clocks):      %u Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.62 = internal global ptr @cx25840_ir_log_status._entry.60, section ".printk_index", align 4
@cx25840_ir_log_status._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.24, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016%s: \09Next carrier edge window:\09    16 clocks -%1d/+%1d, %u to %u Hz\0A\00", [57 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.65 = internal global ptr @cx25840_ir_log_status._entry.63, section ".printk_index", align 4
@cx25840_ir_log_status._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.24, ptr @.str.2, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: \09Max measurable pulse width:        %u us, %llu ns\0A\00", [38 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.68 = internal global ptr @cx25840_ir_log_status._entry.66, section ".printk_index", align 4
@cx25840_ir_log_status._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.24, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Low pass filter:                   %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.71 = internal global ptr @cx25840_ir_log_status._entry.69, section ".printk_index", align 4
@cx25840_ir_log_status._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.24, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: \09Min acceptable pulse width (LPF):  %u us, %u ns\0A\00", [40 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.74 = internal global ptr @cx25840_ir_log_status._entry.72, section ".printk_index", align 4
@cx25840_ir_log_status._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.24, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Pulse width timer timed-out:       %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.77 = internal global ptr @cx25840_ir_log_status._entry.75, section ".printk_index", align 4
@cx25840_ir_log_status._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.24, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Pulse width timer time-out intr:   %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.80 = internal global ptr @cx25840_ir_log_status._entry.78, section ".printk_index", align 4
@cx25840_ir_log_status._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.24, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO overrun:                      %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.83 = internal global ptr @cx25840_ir_log_status._entry.81, section ".printk_index", align 4
@cx25840_ir_log_status._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.24, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO overrun interrupt:            %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.86 = internal global ptr @cx25840_ir_log_status._entry.84, section ".printk_index", align 4
@cx25840_ir_log_status._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.24, ptr @.str.2, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Busy:                              %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.89 = internal global ptr @cx25840_ir_log_status._entry.87, section ".printk_index", align 4
@cx25840_ir_log_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.24, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO service requested:            %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.92 = internal global ptr @cx25840_ir_log_status._entry.90, section ".printk_index", align 4
@cx25840_ir_log_status._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.24, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09FIFO service request interrupt:    %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.95 = internal global ptr @cx25840_ir_log_status._entry.93, section ".printk_index", align 4
@cx25840_ir_log_status._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.24, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: IR Transmitter:\0A\00", [41 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.98 = internal global ptr @cx25840_ir_log_status._entry.96, section ".printk_index", align 4
@cx25840_ir_log_status._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.100 = internal global ptr @cx25840_ir_log_status._entry.99, section ".printk_index", align 4
@cx25840_ir_log_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.24, ptr @.str.2, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Modulation onto a carrier:         %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.103 = internal global ptr @cx25840_ir_log_status._entry.101, section ".printk_index", align 4
@cx25840_ir_log_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.105 = internal global ptr @cx25840_ir_log_status._entry.104, section ".printk_index", align 4
@cx25840_ir_log_status._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.24, ptr @.str.2, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.107 = internal global ptr @cx25840_ir_log_status._entry.106, section ".printk_index", align 4
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"half full or less\00", [46 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.24, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: \09Carrier polarity:                  %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.111 = internal global ptr @cx25840_ir_log_status._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"space:burst mark:noburst\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"space:noburst mark:burst\00", [39 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.24, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: \09Carrier (16 clocks):               %u Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.116 = internal global ptr @cx25840_ir_log_status._entry.114, section ".printk_index", align 4
@cx25840_ir_log_status._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.24, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: \09Carrier duty cycle:                %2u/16\0A\00", [46 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.119 = internal global ptr @cx25840_ir_log_status._entry.117, section ".printk_index", align 4
@cx25840_ir_log_status._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.24, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: \09Max pulse width:                   %u us, %llu ns\0A\00", [38 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.122 = internal global ptr @cx25840_ir_log_status._entry.120, section ".printk_index", align 4
@cx25840_ir_log_status._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.24, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.124 = internal global ptr @cx25840_ir_log_status._entry.123, section ".printk_index", align 4
@cx25840_ir_log_status._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.24, ptr @.str.2, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.126 = internal global ptr @cx25840_ir_log_status._entry.125, section ".printk_index", align 4
@cx25840_ir_log_status._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.24, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx25840_ir_log_status._entry_ptr.128 = internal global ptr @cx25840_ir_log_status._entry.127, section ".printk_index", align 4
@cx25840_ir_ops = dso_local constant { %struct.v4l2_subdev_ir_ops, [40 x i8] } { %struct.v4l2_subdev_ir_ops { ptr @cx25840_ir_rx_read, ptr @cx25840_ir_rx_g_parameters, ptr @cx25840_ir_rx_s_parameters, ptr @cx25840_ir_tx_write, ptr @cx25840_ir_tx_g_parameters, ptr @cx25840_ir_tx_s_parameters }, [40 x i8] zeroinitializer }, align 32
@cx25840_ir_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ir_state->rx_kfifo_lock\00", [39 x i8] zeroinitializer }, align 32
@cx25840_ir_probe.__key.130 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ir_state->rx_params_lock\00", [38 x i8] zeroinitializer }, align 32
@default_rx_params = internal constant { %struct.v4l2_subdev_ir_parameters, [52 x i8] } { %struct.v4l2_subdev_ir_parameters { i32 8, i32 0, i8 0, i8 0, i8 1, i8 1, i32 0, i32 36000, i32 0, i8 0, i8 0, i32 333333, i32 35000, i32 37000, i32 0 }, [52 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cx25840_ir_probe.__key.132 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ir_state->tx_params_lock\00", [38 x i8] zeroinitializer }, align 32
@default_tx_params = internal constant { %struct.v4l2_subdev_ir_parameters, [52 x i8] } { %struct.v4l2_subdev_ir_parameters { i32 8, i32 0, i8 0, i8 0, i8 1, i8 1, i32 0, i32 36000, i32 25, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@cx25840_ir_rx_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: rx read: %10u ns  %s  %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx25840_ir_rx_read\00", [45 x i8] zeroinitializer }, align 32
@cx25840_ir_rx_read._entry_ptr = internal global ptr @cx25840_ir_rx_read._entry, section ".printk_index", align 4
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mark\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(timed out)\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cx25840_ir_rx_read._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.135, ptr @.str.2, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: rx read: end of rx\0A\00", [38 x i8] zeroinitializer }, align 32
@cx25840_ir_rx_read._entry_ptr.142 = internal global ptr @cx25840_ir_rx_read._entry.140, section ".printk_index", align 4
@switch.table.cx25840_ir_log_status = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@switch.table.cx25840_ir_log_status.143 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 3, i32 4, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.cx25840_ir_log_status.144 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 4, i32 3, i32 4], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 18, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 527, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 533, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 592, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 601, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1024, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1025, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1027, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1029, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1036, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1039, i32 7 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1042, i32 7 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1048, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1049, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1051, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1053, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1056, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1080, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1085, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1088, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1091, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1094, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1096, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1098, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1100, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1102, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1104, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1106, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1109, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1110, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1112, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1114, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1116, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1118, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1122, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1124, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1127, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1130, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1132, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1134, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [15 x i8] c"cx25840_ir_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1141, i32 33 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1200, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1214, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [18 x i8] c"default_rx_params\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1152, i32 47 }
@___asan_gen_.454 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1218, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [18 x i8] c"default_tx_params\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1171, i32 47 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 678, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.488 = private constant [42 x i8] c"../drivers/media/i2c/cx25840/cx25840-ir.c\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 681, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant [35 x i8] c"switch.table.cx25840_ir_log_status\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [39 x i8] c"switch.table.cx25840_ir_log_status.143\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [39 x i8] c"switch.table.cx25840_ir_log_status.144\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_ir_debug293, ptr @__UNIQUE_ID_ir_debugtype292, ptr @__param_ir_debug, ptr @cx25840_ir_irq_handler._entry, ptr @cx25840_ir_irq_handler._entry.10, ptr @cx25840_ir_irq_handler._entry.17, ptr @cx25840_ir_irq_handler._entry.20, ptr @cx25840_ir_irq_handler._entry_ptr, ptr @cx25840_ir_irq_handler._entry_ptr.12, ptr @cx25840_ir_irq_handler._entry_ptr.19, ptr @cx25840_ir_irq_handler._entry_ptr.22, ptr @cx25840_ir_log_status._entry, ptr @cx25840_ir_log_status._entry.101, ptr @cx25840_ir_log_status._entry.104, ptr @cx25840_ir_log_status._entry.106, ptr @cx25840_ir_log_status._entry.109, ptr @cx25840_ir_log_status._entry.114, ptr @cx25840_ir_log_status._entry.117, ptr @cx25840_ir_log_status._entry.120, ptr @cx25840_ir_log_status._entry.123, ptr @cx25840_ir_log_status._entry.125, ptr @cx25840_ir_log_status._entry.127, ptr @cx25840_ir_log_status._entry.25, ptr @cx25840_ir_log_status._entry.30, ptr @cx25840_ir_log_status._entry.35, ptr @cx25840_ir_log_status._entry.42, ptr @cx25840_ir_log_status._entry.45, ptr @cx25840_ir_log_status._entry.50, ptr @cx25840_ir_log_status._entry.55, ptr @cx25840_ir_log_status._entry.60, ptr @cx25840_ir_log_status._entry.63, ptr @cx25840_ir_log_status._entry.66, ptr @cx25840_ir_log_status._entry.69, ptr @cx25840_ir_log_status._entry.72, ptr @cx25840_ir_log_status._entry.75, ptr @cx25840_ir_log_status._entry.78, ptr @cx25840_ir_log_status._entry.81, ptr @cx25840_ir_log_status._entry.84, ptr @cx25840_ir_log_status._entry.87, ptr @cx25840_ir_log_status._entry.90, ptr @cx25840_ir_log_status._entry.93, ptr @cx25840_ir_log_status._entry.96, ptr @cx25840_ir_log_status._entry.99, ptr @cx25840_ir_log_status._entry_ptr, ptr @cx25840_ir_log_status._entry_ptr.100, ptr @cx25840_ir_log_status._entry_ptr.103, ptr @cx25840_ir_log_status._entry_ptr.105, ptr @cx25840_ir_log_status._entry_ptr.107, ptr @cx25840_ir_log_status._entry_ptr.111, ptr @cx25840_ir_log_status._entry_ptr.116, ptr @cx25840_ir_log_status._entry_ptr.119, ptr @cx25840_ir_log_status._entry_ptr.122, ptr @cx25840_ir_log_status._entry_ptr.124, ptr @cx25840_ir_log_status._entry_ptr.126, ptr @cx25840_ir_log_status._entry_ptr.128, ptr @cx25840_ir_log_status._entry_ptr.27, ptr @cx25840_ir_log_status._entry_ptr.32, ptr @cx25840_ir_log_status._entry_ptr.37, ptr @cx25840_ir_log_status._entry_ptr.44, ptr @cx25840_ir_log_status._entry_ptr.47, ptr @cx25840_ir_log_status._entry_ptr.52, ptr @cx25840_ir_log_status._entry_ptr.57, ptr @cx25840_ir_log_status._entry_ptr.62, ptr @cx25840_ir_log_status._entry_ptr.65, ptr @cx25840_ir_log_status._entry_ptr.68, ptr @cx25840_ir_log_status._entry_ptr.71, ptr @cx25840_ir_log_status._entry_ptr.74, ptr @cx25840_ir_log_status._entry_ptr.77, ptr @cx25840_ir_log_status._entry_ptr.80, ptr @cx25840_ir_log_status._entry_ptr.83, ptr @cx25840_ir_log_status._entry_ptr.86, ptr @cx25840_ir_log_status._entry_ptr.89, ptr @cx25840_ir_log_status._entry_ptr.92, ptr @cx25840_ir_log_status._entry_ptr.95, ptr @cx25840_ir_log_status._entry_ptr.98, ptr @cx25840_ir_rx_read._entry, ptr @cx25840_ir_rx_read._entry.140, ptr @cx25840_ir_rx_read._entry_ptr, ptr @cx25840_ir_rx_read._entry_ptr.142, ptr @ir_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.102, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @cx25840_ir_ops, ptr @cx25840_ir_probe.__key, ptr @.str.129, ptr @cx25840_ir_probe.__key.130, ptr @.str.131, ptr @default_rx_params, ptr @cx25840_ir_probe.__key.132, ptr @.str.133, ptr @default_tx_params, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @switch.table.cx25840_ir_log_status, ptr @switch.table.cx25840_ir_log_status.143, ptr @switch.table.cx25840_ir_log_status.144], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_irq_handler._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_irq_handler._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_irq_handler._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_log_status._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_probe.__key.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_rx_params to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_probe.__key.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_tx_params to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_rx_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_ir_rx_read._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx25840_ir_log_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx25840_ir_log_status.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx25840_ir_log_status.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_ir_irq_handler(ptr noundef %sd, i32 noundef %status, ptr nocapture noundef writeonly %handled) local_unnamed_addr #0 align 64 {
entry:
  %rx_data = alloca [8 x %union.cx25840_ir_fifo_rec], align 4
  %events = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %to_ir_state.exit.thread, label %to_ir_state.exit

to_ir_state.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rx_data) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events) #5
  %0 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %handled, align 1
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %1 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ir_state.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rx_data) #5
  %3 = call ptr @memset(ptr %rx_data, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events) #5
  %4 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %events, align 4, !annotation !218
  %5 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %handled, align 1
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %id.i = getelementptr i8, ptr %sd, i32 436
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch = icmp ult i32 %9, 2
  br i1 %switch, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 512) #5
  %call8 = tail call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 532) #5
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch289 = icmp ult i32 %11, 2
  %xor = xor i32 %call8, 51
  %spec.select290 = select i1 %switch289, i32 %xor, i32 %call8
  %call14 = tail call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 528) #5
  %and = and i32 %call14, 32
  %and15 = and i32 %call14, 16
  %and16 = and i32 %call14, 1
  %and17 = and i32 %call14, 2
  %and18 = and i32 %spec.select290, 32
  %and19 = and i32 %spec.select290, 16
  %and20 = and i32 %spec.select290, 1
  %and21 = and i32 %spec.select290, 2
  %12 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp22 = icmp ugt i32 %12, 1
  br i1 %cmp22, label %do.body41, label %if.end6.do.end61_crit_edge

if.end6.do.end61_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

do.body41:                                        ; preds = %if.end6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool25.not = icmp eq i32 %and15, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.4, ptr @.str.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool27.not = icmp eq i32 %and16, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.4, ptr @.str.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool29.not = icmp eq i32 %and17, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.4, ptr @.str.7
  %and31 = and i32 %call14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.4, ptr @.str.8
  %and34 = and i32 %call14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.4, ptr @.str.9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef nonnull %cond26, ptr noundef nonnull %cond28, ptr noundef nonnull %cond30, ptr noundef nonnull %cond33, ptr noundef nonnull %cond36) #8
  %.pr = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp42 = icmp ugt i32 %.pr, 1
  br i1 %cmp42, label %do.end46, label %do.body41.do.end61_crit_edge

do.body41.do.end61_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool50.not = icmp eq i32 %and18, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.4, ptr @.str.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool52.not = icmp eq i32 %and19, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.4, ptr @.str.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool54.not = icmp eq i32 %and20, 0
  %cond55 = select i1 %tobool54.not, ptr @.str.4, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool56.not = icmp eq i32 %and21, 0
  %cond57 = select i1 %tobool56.not, ptr @.str.4, ptr @.str.16
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef nonnull %cond51, ptr noundef nonnull %cond53, ptr noundef nonnull %cond55, ptr noundef nonnull %cond57) #8
  br label %do.end61

do.end61:                                         ; preds = %do.end46, %do.body41.do.end61_crit_edge, %if.end6.do.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool62.not = icmp eq i32 %and18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool62.not, i1 true, i1 %tobool63.not
  br i1 %or.cond, label %do.end61.if.end65_crit_edge, label %if.then64

do.end61.if.end65_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then64:                                        ; preds = %do.end61
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.i = icmp ult i32 %14, 2
  %and.i = select i1 %switch.i, i32 32, i32 0
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %call3.i = tail call i32 @cx25840_and_or4(ptr noundef %16, i16 noundef zeroext 532, i32 noundef -33, i32 noundef %and.i) #5
  %17 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %events, align 4
  %tobool.not.i270 = icmp eq ptr %sd, null
  br i1 %tobool.not.i270, label %if.then64.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true.i

if.then64.v4l2_subdev_notify.exit_crit_edge:      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

land.lhs.true.i:                                  ; preds = %if.then64
  %v4l2_dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %18 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %notify.i = getelementptr inbounds %struct.v4l2_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, label %if.then.i

land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_notify.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %21(ptr noundef nonnull %sd, i32 noundef 1074034177, ptr noundef nonnull %events) #5
  br label %v4l2_subdev_notify.exit

v4l2_subdev_notify.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.v4l2_subdev_notify.exit_crit_edge, %land.lhs.true.i.v4l2_subdev_notify.exit_crit_edge, %if.then64.v4l2_subdev_notify.exit_crit_edge
  %22 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %handled, align 1
  br label %if.end65

if.end65:                                         ; preds = %v4l2_subdev_notify.exit, %do.end61.if.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool66.not = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool68.not = icmp eq i32 %and15, 0
  %or.cond257 = select i1 %tobool66.not, i1 true, i1 %tobool68.not
  br i1 %or.cond257, label %lor.lhs.false69, label %if.end65.if.then73_crit_edge

if.end65.if.then73_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

lor.lhs.false69:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool70.not = icmp eq i32 %and20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool72.not = icmp eq i32 %and16, 0
  %or.cond258 = select i1 %tobool70.not, i1 true, i1 %tobool72.not
  br i1 %or.cond258, label %if.end112.thread, label %lor.lhs.false69.if.then73_crit_edge

lor.lhs.false69.if.then73_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

if.end112.thread:                                 ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %events, align 4
  br label %if.end122

if.then73:                                        ; preds = %lor.lhs.false69.if.then73_crit_edge, %if.end65.if.then73_crit_edge
  %rx_kfifo_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %2, i32 0, i32 6
  %rx_kfifo = getelementptr inbounds %struct.cx25840_ir_state, ptr %2, i32 0, i32 5
  %arrayidx.1 = getelementptr inbounds [8 x %union.cx25840_ir_fifo_rec], ptr %rx_data, i32 0, i32 1
  %arrayidx.2 = getelementptr inbounds [8 x %union.cx25840_ir_fifo_rec], ptr %rx_data, i32 0, i32 2
  %arrayidx.3 = getelementptr inbounds [8 x %union.cx25840_ir_fifo_rec], ptr %rx_data, i32 0, i32 3
  %arrayidx.4 = getelementptr inbounds [8 x %union.cx25840_ir_fifo_rec], ptr %rx_data, i32 0, i32 4
  %arrayidx.5 = getelementptr inbounds [8 x %union.cx25840_ir_fifo_rec], ptr %rx_data, i32 0, i32 5
  %arrayidx.6 = getelementptr inbounds [8 x %union.cx25840_ir_fifo_rec], ptr %rx_data, i32 0, i32 6
  %arrayidx.7 = getelementptr inbounds [8 x %union.cx25840_ir_fifo_rec], ptr %rx_data, i32 0, i32 7
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %if.end89.for.cond77.preheader_crit_edge, %if.then73
  %v.0298 = phi i32 [ 131072, %if.then73 ], [ %call84.lcssa, %if.end89.for.cond77.preheader_crit_edge ]
  %and78291 = and i32 %v.0298, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78291)
  %tobool79.not292.not = icmp eq i32 %and78291, 0
  br i1 %tobool79.not292.not, label %if.end112.thread302, label %for.body83

if.end112.thread302:                              ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %handled, align 1
  %25 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %events, align 4
  br label %if.end122

for.body83:                                       ; preds = %for.cond77.preheader
  %call84 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85 = and i32 %call84, -131073
  %26 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and85, ptr %rx_data, align 4
  %and78 = and i32 %call84, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not.not, label %for.body83.if.end89_crit_edge, label %for.body83.1

for.body83.if.end89_crit_edge:                    ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

for.body83.1:                                     ; preds = %for.body83
  %call84.1 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85.1 = and i32 %call84.1, -131073
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and85.1, ptr %arrayidx.1, align 4
  %and78.1 = and i32 %call84.1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.1)
  %tobool79.not.1.not = icmp eq i32 %and78.1, 0
  br i1 %tobool79.not.1.not, label %for.body83.1.if.end89_crit_edge, label %for.body83.2

for.body83.1.if.end89_crit_edge:                  ; preds = %for.body83.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

for.body83.2:                                     ; preds = %for.body83.1
  %call84.2 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85.2 = and i32 %call84.2, -131073
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and85.2, ptr %arrayidx.2, align 4
  %and78.2 = and i32 %call84.2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.2)
  %tobool79.not.2.not = icmp eq i32 %and78.2, 0
  br i1 %tobool79.not.2.not, label %for.body83.2.if.end89_crit_edge, label %for.body83.3

for.body83.2.if.end89_crit_edge:                  ; preds = %for.body83.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

for.body83.3:                                     ; preds = %for.body83.2
  %call84.3 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85.3 = and i32 %call84.3, -131073
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and85.3, ptr %arrayidx.3, align 4
  %and78.3 = and i32 %call84.3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.3)
  %tobool79.not.3.not = icmp eq i32 %and78.3, 0
  br i1 %tobool79.not.3.not, label %for.body83.3.if.end89_crit_edge, label %for.body83.4

for.body83.3.if.end89_crit_edge:                  ; preds = %for.body83.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

for.body83.4:                                     ; preds = %for.body83.3
  %call84.4 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85.4 = and i32 %call84.4, -131073
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and85.4, ptr %arrayidx.4, align 4
  %and78.4 = and i32 %call84.4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.4)
  %tobool79.not.4.not = icmp eq i32 %and78.4, 0
  br i1 %tobool79.not.4.not, label %for.body83.4.if.end89_crit_edge, label %for.body83.5

for.body83.4.if.end89_crit_edge:                  ; preds = %for.body83.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

for.body83.5:                                     ; preds = %for.body83.4
  %call84.5 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85.5 = and i32 %call84.5, -131073
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and85.5, ptr %arrayidx.5, align 4
  %and78.5 = and i32 %call84.5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.5)
  %tobool79.not.5.not = icmp eq i32 %and78.5, 0
  br i1 %tobool79.not.5.not, label %for.body83.5.if.end89_crit_edge, label %for.body83.6

for.body83.5.if.end89_crit_edge:                  ; preds = %for.body83.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

for.body83.6:                                     ; preds = %for.body83.5
  %call84.6 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85.6 = and i32 %call84.6, -131073
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and85.6, ptr %arrayidx.6, align 4
  %and78.6 = and i32 %call84.6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.6)
  %tobool79.not.6.not = icmp eq i32 %and78.6, 0
  br i1 %tobool79.not.6.not, label %for.body83.6.if.end89_crit_edge, label %for.body83.7

for.body83.6.if.end89_crit_edge:                  ; preds = %for.body83.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

for.body83.7:                                     ; preds = %for.body83.6
  call void @__sanitizer_cov_trace_pc() #7
  %call84.7 = call i32 @cx25840_read4(ptr noundef %7, i16 noundef zeroext 572) #5
  %and85.7 = and i32 %call84.7, -131073
  %33 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and85.7, ptr %arrayidx.7, align 4
  br label %if.end89

if.end89:                                         ; preds = %for.body83.7, %for.body83.6.if.end89_crit_edge, %for.body83.5.if.end89_crit_edge, %for.body83.4.if.end89_crit_edge, %for.body83.3.if.end89_crit_edge, %for.body83.2.if.end89_crit_edge, %for.body83.1.if.end89_crit_edge, %for.body83.if.end89_crit_edge
  %call84.lcssa = phi i32 [ %call84, %for.body83.if.end89_crit_edge ], [ %call84.1, %for.body83.1.if.end89_crit_edge ], [ %call84.2, %for.body83.2.if.end89_crit_edge ], [ %call84.3, %for.body83.3.if.end89_crit_edge ], [ %call84.4, %for.body83.4.if.end89_crit_edge ], [ %call84.5, %for.body83.5.if.end89_crit_edge ], [ %call84.6, %for.body83.6.if.end89_crit_edge ], [ %call84.7, %for.body83.7 ]
  %inc.lcssa = phi i32 [ 8, %for.body83.if.end89_crit_edge ], [ 16, %for.body83.1.if.end89_crit_edge ], [ 24, %for.body83.2.if.end89_crit_edge ], [ 32, %for.body83.3.if.end89_crit_edge ], [ 40, %for.body83.4.if.end89_crit_edge ], [ 48, %for.body83.5.if.end89_crit_edge ], [ 56, %for.body83.6.if.end89_crit_edge ], [ 64, %for.body83.7 ]
  %call95 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock) #5
  %call102 = call i32 @__kfifo_in(ptr noundef %rx_kfifo, ptr noundef nonnull %rx_data, i32 noundef %inc.lcssa) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock, i32 noundef %call95) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call102, i32 %inc.lcssa)
  %cmp105.not.not = icmp eq i32 %call102, %inc.lcssa
  %and74 = and i32 %call84.lcssa, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp ne i32 %and74, 0
  %or.cond259 = select i1 %tobool75.not, i1 %cmp105.not.not, i1 false
  br i1 %or.cond259, label %if.end89.for.cond77.preheader_crit_edge, label %if.end112

if.end89.for.cond77.preheader_crit_edge:          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond77.preheader

if.end112:                                        ; preds = %if.end89
  %34 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %handled, align 1
  %35 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %events, align 4
  br i1 %cmp105.not.not, label %if.end112.if.end122_crit_edge, label %if.then114

if.end112.if.end122_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %events, align 4
  %name119 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name119) #8
  br label %if.end122

if.end122:                                        ; preds = %if.then114, %if.end112.if.end122_crit_edge, %if.end112.thread302, %if.end112.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool123.not = icmp eq i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool125.not = icmp eq i32 %and17, 0
  %or.cond261 = select i1 %tobool123.not, i1 true, i1 %tobool125.not
  br i1 %or.cond261, label %if.end136, label %if.end136.thread

if.end136:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool137.not = icmp eq i32 %and20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool139.not = icmp eq i32 %and16, 0
  %or.cond262 = select i1 %tobool137.not, i1 true, i1 %tobool139.not
  br i1 %or.cond262, label %if.end136.do.body151_crit_edge, label %if.end136.if.end143.thread_crit_edge

if.end136.if.end143.thread_crit_edge:             ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143.thread

if.end136.do.body151_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body151

if.end136.thread:                                 ; preds = %if.end122
  %37 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %events, align 4
  %or128 = or i32 %38, 4
  store i32 %or128, ptr %events, align 4
  %name133 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool137.not306 = icmp eq i32 %and20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool139.not307 = icmp eq i32 %and16, 0
  %or.cond262308 = select i1 %tobool137.not306, i1 true, i1 %tobool139.not307
  br i1 %or.cond262308, label %if.end136.thread.if.then145_crit_edge, label %if.end136.thread.if.end143.thread_crit_edge

if.end136.thread.if.end143.thread_crit_edge:      ; preds = %if.end136.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143.thread

if.end136.thread.if.then145_crit_edge:            ; preds = %if.end136.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then145

if.end143.thread:                                 ; preds = %if.end136.thread.if.end143.thread_crit_edge, %if.end136.if.end143.thread_crit_edge
  %v.2309 = phi i32 [ 320, %if.end136.thread.if.end143.thread_crit_edge ], [ 256, %if.end136.if.end143.thread_crit_edge ]
  %39 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %events, align 4
  %or142 = or i32 %40, 2
  store i32 %or142, ptr %events, align 4
  br label %if.then145

if.then145:                                       ; preds = %if.end143.thread, %if.end136.thread.if.then145_crit_edge
  %v.3287 = phi i32 [ %v.2309, %if.end143.thread ], [ 64, %if.end136.thread.if.then145_crit_edge ]
  %neg = xor i32 %v.3287, -1
  %and146 = and i32 %call7, %neg
  %call147 = call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef %and146) #5
  %call148 = call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef %call7) #5
  %41 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %handled, align 1
  br label %do.body151

do.body151:                                       ; preds = %if.then145, %if.end136.do.body151_crit_edge
  %rx_kfifo_lock157 = getelementptr inbounds %struct.cx25840_ir_state, ptr %2, i32 0, i32 6
  %call159 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock157) #5
  %rx_kfifo164 = getelementptr inbounds %struct.cx25840_ir_state, ptr %2, i32 0, i32 5
  %42 = ptrtoint ptr %rx_kfifo164 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_kfifo164, align 4
  %out = getelementptr inbounds %struct.cx25840_ir_state, ptr %2, i32 0, i32 5, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %out, align 4
  %sub = sub i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub)
  %cmp166 = icmp ugt i32 %sub, 1023
  br i1 %cmp166, label %if.then168, label %do.body151.if.end170_crit_edge

do.body151.if.end170_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170

if.then168:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %events, align 4
  %or169 = or i32 %47, 1
  store i32 %or169, ptr %events, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %do.body151.if.end170_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock157, i32 noundef %call159) #5
  %48 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool172.not = icmp eq i32 %49, 0
  %tobool.not.i271 = icmp eq ptr %sd, null
  %or.cond288 = or i1 %tobool.not.i271, %tobool172.not
  br i1 %or.cond288, label %if.end170.cleanup_crit_edge, label %land.lhs.true.i274

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i274:                               ; preds = %if.end170
  %v4l2_dev.i272 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %50 = ptrtoint ptr %v4l2_dev.i272 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %v4l2_dev.i272, align 4
  %tobool1.not.i273 = icmp eq ptr %51, null
  br i1 %tobool1.not.i273, label %land.lhs.true.i274.cleanup_crit_edge, label %land.lhs.true2.i277

land.lhs.true.i274.cleanup_crit_edge:             ; preds = %land.lhs.true.i274
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true2.i277:                              ; preds = %land.lhs.true.i274
  %notify.i275 = getelementptr inbounds %struct.v4l2_device, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %notify.i275 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %notify.i275, align 4
  %tobool4.not.i276 = icmp eq ptr %53, null
  br i1 %tobool4.not.i276, label %land.lhs.true2.i277.cleanup_crit_edge, label %if.then.i278

land.lhs.true2.i277.cleanup_crit_edge:            ; preds = %land.lhs.true2.i277
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i278:                                     ; preds = %land.lhs.true2.i277
  call void @__sanitizer_cov_trace_pc() #7
  call void %53(ptr noundef nonnull %sd, i32 noundef 1074034176, ptr noundef nonnull %events) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i278, %land.lhs.true2.i277.cleanup_crit_edge, %land.lhs.true.i274.cleanup_crit_edge, %if.end170.cleanup_crit_edge, %if.end.cleanup_crit_edge, %to_ir_state.exit.cleanup_crit_edge, %to_ir_state.exit.thread
  %retval.0 = phi i32 [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ 0, %if.end170.cleanup_crit_edge ], [ -19, %to_ir_state.exit.thread ], [ 0, %land.lhs.true.i274.cleanup_crit_edge ], [ 0, %land.lhs.true2.i277.cleanup_crit_edge ], [ 0, %if.then.i278 ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rx_data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_read4(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_write4(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_ir_log_status(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr i8, ptr %sd, i32 436
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 @cx25840_read4(ptr noundef %3, i16 noundef zeroext 512) #5
  %call4 = tail call i32 @cx25840_read4(ptr noundef %3, i16 noundef zeroext 516) #5
  %call5 = tail call i32 @cx25840_read4(ptr noundef %3, i16 noundef zeroext 520) #5
  %and6 = and i32 %call5, 65535
  %call7 = tail call i32 @cx25840_read4(ptr noundef %3, i16 noundef zeroext 524) #5
  %and8 = and i32 %call7, 15
  %call9 = tail call i32 @cx25840_read4(ptr noundef %3, i16 noundef zeroext 528) #5
  %call10 = tail call i32 @cx25840_read4(ptr noundef %3, i16 noundef zeroext 532) #5
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  %xor = xor i32 %call10, 51
  %spec.select = select i1 %switch, i32 %xor, i32 %call10
  %call15 = tail call i32 @cx25840_read4(ptr noundef %3, i16 noundef zeroext 536) #5
  %and16 = and i32 %call15, 65535
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name) #8
  %and24 = and i32 %call3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  %cond = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull %cond) #8
  %and32 = and i32 %call3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.34, ptr @.str.33
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull %cond34) #8
  %and42 = and i32 %call3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.34, ptr @.str.33
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name, ptr noundef nonnull %cond44) #8
  %and46 = lshr i32 %call3, 2
  %6 = and i32 %and46, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cx25840_ir_log_status, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, ptr noundef nonnull %switch.load) #8
  %and63 = and i32 %call3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.49, ptr @.str.48
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, ptr noundef nonnull %cond65) #8
  %and73 = and i32 %call3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %cond75 = select i1 %tobool74.not, ptr @.str.54, ptr @.str.53
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, ptr noundef nonnull %cond75) #8
  %and83 = and i32 %call3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %cond85 = select i1 %tobool84.not, ptr @.str.59, ptr @.str.58
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name, ptr noundef nonnull %cond85) #8
  br i1 %tobool33.not, label %do.end52.do.end117_crit_edge, label %do.end92

do.end52.do.end117_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = add nuw nsw i32 %and6, 1
  br label %do.end117

do.end92:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = shl nuw nsw i32 %and6, 4
  %mul.i = add nuw nsw i32 %add.i, 16
  %div4.i = lshr exact i32 %mul.i, 1
  %add1.i = add nuw nsw i32 %div4.i, 54000000
  %div2.i = udiv i32 %add1.i, %mul.i
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %div2.i) #8
  %and98 = and i32 %call3, 3
  %switch.gep473 = getelementptr inbounds [4 x i32], ptr @switch.table.cx25840_ir_log_status.143, i32 0, i32 %and98
  %8 = ptrtoint ptr %switch.gep473 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load474 = load i32, ptr %switch.gep473, align 4
  %switch.gep475 = getelementptr inbounds [4 x i32], ptr @switch.table.cx25840_ir_log_status.144, i32 0, i32 %and98
  %9 = ptrtoint ptr %switch.gep475 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load476 = load i32, ptr %switch.gep475, align 4
  %add = or i32 %switch.load474, 16
  %add.i424 = add nuw nsw i32 %and6, 1
  %mul.i425 = mul nuw nsw i32 %add, %add.i424
  %div4.i426 = lshr i32 %mul.i425, 1
  %add1.i427 = add nuw nsw i32 %div4.i426, 54000000
  %div2.i428 = udiv i32 %add1.i427, %mul.i425
  %sub = sub nuw nsw i32 16, %switch.load476
  %mul.i430 = mul nuw nsw i32 %sub, %add.i424
  %div4.i431 = lshr i32 %mul.i430, 1
  %add1.i432 = add nuw nsw i32 %div4.i431, 54000000
  %div2.i433 = udiv i32 %add1.i432, %mul.i430
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name, i32 noundef %switch.load476, i32 noundef %switch.load474, i32 noundef %div2.i428, i32 noundef %div2.i433) #8
  br label %do.end117

do.end117:                                        ; preds = %do.end92, %do.end52.do.end117_crit_edge
  %add.i434.pre-phi = phi i32 [ %.pre, %do.end52.do.end117_crit_edge ], [ %add.i424, %do.end92 ]
  %10 = zext i32 %add.i434.pre-phi to i64
  %mul.i435 = mul nuw nsw i64 %10, 262143
  %conv18.i = trunc i64 %mul.i435 to i32
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul.i435) #9, !srcloc !219
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul.i435, i64 %11, i32 0) #9, !srcloc !220
  %asmresult10.i.i = extractvalue { i64, i32 } %12, 0
  %div1671.i = lshr i64 %asmresult10.i.i, 5
  %conv168.i = trunc i64 %div1671.i to i32
  %mul169.neg.i = mul i32 %conv168.i, -54
  %sub170.i = add i32 %mul169.neg.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub170.i)
  %cmp189.i = icmp ugt i32 %sub170.i, 26
  %extract.t.i = zext i1 %cmp189.i to i32
  %spec.select.i = add i32 %extract.t.i, %conv168.i
  %mul3.i = mul nuw nsw i64 %10, 262143000
  %conv19.i = trunc i64 %mul3.i to i32
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #9, !srcloc !219
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %13, i32 0) #9, !srcloc !220
  %asmresult10.i.i438 = extractvalue { i64, i32 } %14, 0
  %div168273.i = lshr i64 %asmresult10.i.i438, 5
  %conv169.i = trunc i64 %div168273.i to i32
  %mul170.neg.i = mul i32 %conv169.i, -54
  %sub171.i = add i32 %mul170.neg.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i)
  %cmp190.i = icmp ugt i32 %sub171.i, 26
  %inc.i = zext i1 %cmp190.i to i64
  %spec.select.i439 = add nuw nsw i64 %div168273.i, %inc.i
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %spec.select.i, i64 noundef %spec.select.i439) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool131.not = icmp eq i32 %and16, 0
  %cond132 = select i1 %tobool131.not, ptr @.str.34, ptr @.str.33
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name, ptr noundef nonnull %cond132) #8
  br i1 %tobool131.not, label %do.end117.do.end148_crit_edge, label %do.end138

do.end117.do.end148_crit_edge:                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end148

do.end138:                                        ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #7
  %add.i440 = add nuw nsw i32 %and16, 27
  %div1.i = udiv i32 %add.i440, 54
  %mul.i441 = mul nuw nsw i32 %and16, 1000
  %add.i442 = add nuw nsw i32 %mul.i441, 27
  %div1.i443 = udiv i32 %add.i442, 54
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name, i32 noundef %div1.i, i32 noundef %div1.i443) #8
  br label %do.end148

do.end148:                                        ; preds = %do.end138, %do.end117.do.end148_crit_edge
  %and152 = and i32 %call9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  %cond154 = select i1 %tobool153.not, ptr @.str.29, ptr @.str.28
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name, ptr noundef nonnull %cond154) #8
  %and162 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  %cond164 = select i1 %tobool163.not, ptr @.str.34, ptr @.str.33
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name, ptr noundef nonnull %cond164) #8
  %and172 = and i32 %call9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  %cond174 = select i1 %tobool173.not, ptr @.str.29, ptr @.str.28
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name, ptr noundef nonnull %cond174) #8
  %and182 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  %cond184 = select i1 %tobool183.not, ptr @.str.34, ptr @.str.33
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name, ptr noundef nonnull %cond184) #8
  %and192 = and i32 %call9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  %cond194 = select i1 %tobool193.not, ptr @.str.29, ptr @.str.28
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name, ptr noundef nonnull %cond194) #8
  %and202 = and i32 %call9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  %cond204 = select i1 %tobool203.not, ptr @.str.29, ptr @.str.28
  %call205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name, ptr noundef nonnull %cond204) #8
  %and212 = and i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  %cond214 = select i1 %tobool213.not, ptr @.str.34, ptr @.str.33
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name, ptr noundef nonnull %cond214) #8
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name) #8
  %and229 = and i32 %call3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  %cond231 = select i1 %tobool230.not, ptr @.str.29, ptr @.str.28
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull %cond231) #8
  %and239 = and i32 %call3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  %cond241 = select i1 %tobool240.not, ptr @.str.34, ptr @.str.33
  %call242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name, ptr noundef nonnull %cond241) #8
  %and249 = and i32 %call3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  %cond251 = select i1 %tobool250.not, ptr @.str.34, ptr @.str.33
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name, ptr noundef nonnull %cond251) #8
  %and259 = and i32 %call3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  %cond261 = select i1 %tobool260.not, ptr @.str.108, ptr @.str.53
  %call262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, ptr noundef nonnull %cond261) #8
  %and269 = and i32 %call3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  %cond271 = select i1 %tobool270.not, ptr @.str.113, ptr @.str.112
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name, ptr noundef nonnull %cond271) #8
  br i1 %tobool240.not, label %do.end148.do.end295_crit_edge, label %do.end278

do.end148.do.end295_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end295

do.end278:                                        ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #7
  %and = shl i32 %call4, 4
  %add.i444 = and i32 %and, 1048560
  %mul.i445 = add nuw nsw i32 %add.i444, 16
  %div4.i446 = lshr exact i32 %mul.i445, 1
  %add1.i447 = add nuw nsw i32 %div4.i446, 54000000
  %div2.i448 = udiv i32 %add1.i447, %mul.i445
  %call283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name, i32 noundef %div2.i448) #8
  %add290 = add nuw nsw i32 %and8, 1
  %call291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name, i32 noundef %add290) #8
  br label %do.end295

do.end295:                                        ; preds = %do.end278, %do.end148.do.end295_crit_edge
  %conv1.i449 = and i32 %call4, 65535
  %add.i450 = add nuw nsw i32 %conv1.i449, 1
  %15 = zext i32 %add.i450 to i64
  %mul.i451 = mul nuw nsw i64 %15, 262143
  %conv18.i452 = trunc i64 %mul.i451 to i32
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul.i451) #9, !srcloc !219
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul.i451, i64 %16, i32 0) #9, !srcloc !220
  %asmresult10.i.i453 = extractvalue { i64, i32 } %17, 0
  %div1671.i454 = lshr i64 %asmresult10.i.i453, 5
  %conv168.i455 = trunc i64 %div1671.i454 to i32
  %mul169.neg.i456 = mul i32 %conv168.i455, -54
  %sub170.i457 = add i32 %mul169.neg.i456, %conv18.i452
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub170.i457)
  %cmp189.i458 = icmp ugt i32 %sub170.i457, 26
  %extract.t.i459 = zext i1 %cmp189.i458 to i32
  %spec.select.i460 = add i32 %extract.t.i459, %conv168.i455
  %mul3.i463 = mul nuw nsw i64 %15, 262143000
  %conv19.i464 = trunc i64 %mul3.i463 to i32
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i463) #9, !srcloc !219
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i463, i64 %18, i32 0) #9, !srcloc !220
  %asmresult10.i.i465 = extractvalue { i64, i32 } %19, 0
  %div168273.i466 = lshr i64 %asmresult10.i.i465, 5
  %conv169.i467 = trunc i64 %div168273.i466 to i32
  %mul170.neg.i468 = mul i32 %conv169.i467, -54
  %sub171.i469 = add i32 %mul170.neg.i468, %conv19.i464
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i469)
  %cmp190.i470 = icmp ugt i32 %sub171.i469, 26
  %inc.i471 = zext i1 %cmp190.i470 to i64
  %spec.select.i472 = add nuw nsw i64 %div168273.i466, %inc.i471
  %call303 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name, i32 noundef %spec.select.i460, i64 noundef %spec.select.i472) #8
  %and310 = and i32 %call9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and310)
  %tobool311.not = icmp eq i32 %and310, 0
  %cond312 = select i1 %tobool311.not, ptr @.str.29, ptr @.str.28
  %call313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name, ptr noundef nonnull %cond312) #8
  %and320 = and i32 %call9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %tobool321.not = icmp eq i32 %and320, 0
  %cond322 = select i1 %tobool321.not, ptr @.str.29, ptr @.str.28
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name, ptr noundef nonnull %cond322) #8
  %and330 = and i32 %spec.select, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  %cond332 = select i1 %tobool331.not, ptr @.str.34, ptr @.str.33
  %call333 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name, ptr noundef nonnull %cond332) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end295, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25840_ir_rx_read(ptr noundef %sd, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef writeonly %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  %rx_invert = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_invert, i32 noundef 4) #5
  %2 = ptrtoint ptr %rx_invert to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rx_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %rxclk_divider = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 3
  %call.i.i123 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxclk_divider, i32 noundef 4) #5
  %4 = ptrtoint ptr %rxclk_divider to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rxclk_divider, align 4
  %div120 = and i32 %count, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div120)
  %cmp3 = icmp eq i32 %div120, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rx_kfifo_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 6
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock) #5
  %rx_kfifo = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 5
  %call15 = tail call i32 @__kfifo_out(ptr noundef %rx_kfifo, ptr noundef %buf, i32 noundef %div120) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock, i32 noundef %call11) #5
  %mul21 = and i32 %call15, -8
  %7 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul21, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call15)
  %cmp22126.not = icmp ult i32 %call15, 8
  br i1 %cmp22126.not, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %div20121 = lshr i32 %call15, 3
  %8 = zext i1 %tobool.not to i32
  %conv1.i = and i32 %5, 65535
  %add.i = add nuw nsw i32 %conv1.i, 1
  %9 = zext i32 %add.i to i64
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.compoundliteral.sroa.3.0129 = phi i8 [ undef, %for.body.lr.ph ], [ %bf.set51, %for.inc.for.body_crit_edge ]
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %p.0127 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %p.0127 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p.0127, align 4
  %and = and i32 %11, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %and)
  %cmp24 = icmp eq i32 %and, 131071
  %and27 = lshr i32 %11, 16
  %and27.lobit122 = and i32 %and27, 1
  %u.0 = xor i32 %and27.lobit122, %8
  %w.0 = select i1 %cmp24, i8 32, i8 0
  %u.1 = select i1 %cmp24, i32 0, i32 %u.0
  %conv36.mask = shl i32 %11, 2
  %12 = and i32 %conv36.mask, 262140
  %13 = or i32 %12, 3
  %narrow = mul nuw nsw i32 %13, 1000
  %mul.i = zext i32 %narrow to i64
  %mul3.i = mul nuw nsw i64 %mul.i, %9
  %conv19.i = trunc i64 %mul3.i to i32
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #9, !srcloc !219
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %14, i32 0) #9, !srcloc !220
  %asmresult10.i.i = extractvalue { i64, i32 } %15, 0
  %div168273.i = lshr i64 %asmresult10.i.i, 5
  %conv169.i = trunc i64 %div168273.i to i32
  %mul170.neg.i = mul i32 %conv169.i, -54
  %sub171.i = add i32 %mul170.neg.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i)
  %cmp190.i = icmp ugt i32 %sub171.i, 26
  %inc.i = zext i1 %cmp190.i to i64
  %spec.select.i = add nuw nsw i64 %div168273.i, %inc.i
  %conv38 = trunc i64 %spec.select.i to i32
  %div39 = udiv i32 %conv38, 1000
  %16 = tail call i32 @llvm.umin.i32(i32 %div39, i32 500000)
  %17 = trunc i32 %u.1 to i8
  %bf.shl = shl nuw i8 %17, 7
  %bf.clear = and i8 %.compoundliteral.sroa.3.0129, 15
  %bf.set = or i8 %bf.shl, %bf.clear
  %bf.set51 = or i8 %bf.set, %w.0
  %18 = ptrtoint ptr %p.0127 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %p.0127, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %p.0127, i32 4
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %p.0127, i32 5
  %20 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.set51, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 1
  %21 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp56 = icmp ugt i32 %21, 1
  br i1 %cmp56, label %do.end61, label %for.body.do.end70_crit_edge

for.body.do.end70_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

do.end61:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u.1)
  %tobool63.not = icmp eq i32 %u.1, 0
  %cond64 = select i1 %tobool63.not, ptr @.str.137, ptr @.str.136
  %cond66 = select i1 %cmp24, ptr @.str.138, ptr @.str.139
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name, i32 noundef %16, ptr noundef nonnull %cond64, ptr noundef nonnull %cond66) #8
  br label %do.end70

do.end70:                                         ; preds = %do.end61, %for.body.do.end70_crit_edge
  br i1 %cmp24, label %do.body73, label %do.end70.for.inc_crit_edge

do.end70.for.inc_crit_edge:                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body73:                                        ; preds = %do.end70
  %22 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp74 = icmp ugt i32 %22, 1
  br i1 %cmp74, label %do.end79, label %do.body73.for.inc_crit_edge

do.body73.for.inc_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %name) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end79, %do.body73.for.inc_crit_edge, %do.end70.for.inc_crit_edge
  %incdec.ptr = getelementptr %union.cx25840_ir_fifo_rec, ptr %p.0127, i32 1
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, %div20121
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25840_ir_rx_g_parameters(ptr noundef readonly %sd, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rx_params_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %rx_params_lock, i32 noundef 0) #5
  %rx_params = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %p, ptr %rx_params, i32 44)
  tail call void @mutex_unlock(ptr noundef %rx_params_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25840_ir_rx_s_parameters(ptr noundef %sd, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  %shutdown = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shutdown, align 2, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @cx25840_ir_rx_shutdown(ptr noundef %sd)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %rx_params = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1
  %rx_params_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %rx_params_lock, i32 noundef 0) #5
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shutdown, align 2, !range !221
  %shutdown10 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %shutdown10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %shutdown10, align 2
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mode, align 4
  %mode13 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %mode13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode13, align 4
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %p, align 4
  %14 = ptrtoint ptr %rx_params to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %rx_params, align 4
  %id.i.i = getelementptr i8, ptr %sd, i32 436
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i = icmp ult i32 %16, 2
  %and.i = select i1 %switch.i, i32 19, i32 0
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  %call3.i = tail call i32 @cx25840_and_or4(ptr noundef %18, i16 noundef zeroext 532, i32 noundef -20, i32 noundef %and.i) #5
  %call.i = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -321, i32 noundef 0) #5
  %modulation = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 5
  %19 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %modulation, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  %cond.i157 = select i1 %tobool16.not, i32 0, i32 16
  %call.i158 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -17, i32 noundef %cond.i157) #5
  %21 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %modulation, align 1, !range !221
  %modulation19 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %modulation19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %modulation19, align 1
  %24 = load i8, ptr %modulation, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not = icmp eq i8 %24, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end6
  %carrier_freq = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 7
  %25 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %carrier_freq, align 4
  %mul.i.i = shl i32 %26, 4
  %div3.i.i = lshr exact i32 %mul.i.i, 1
  %add.i.i = add nuw i32 %div3.i.i, 54000000
  %div1.i.i = udiv i32 %add.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div1.i.i)
  %cmp.i.i.i = icmp ugt i32 %div1.i.i, 65536
  br i1 %cmp.i.i.i, label %if.then23.rxclk_rx_s_carrier.exit_crit_edge, label %if.else.i.i.i

if.then23.rxclk_rx_s_carrier.exit_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rxclk_rx_s_carrier.exit

if.else.i.i.i:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div1.i.i)
  %cmp1.i.i.i = icmp ult i32 %div1.i.i, 2
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge:  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rxclk_rx_s_carrier.exit

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast.i.i.i = add nuw nsw i32 %div1.i.i, 65535
  %phi.cast = and i32 %phi.cast.i.i.i, 65535
  br label %rxclk_rx_s_carrier.exit

rxclk_rx_s_carrier.exit:                          ; preds = %if.else3.i.i.i, %if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge, %if.then23.rxclk_rx_s_carrier.exit_crit_edge
  %d.addr.0.i.i.i = phi i32 [ %phi.cast, %if.else3.i.i.i ], [ 65535, %if.then23.rxclk_rx_s_carrier.exit_crit_edge ], [ 1, %if.else.i.i.i.rxclk_rx_s_carrier.exit_crit_edge ]
  %call1.i = tail call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 520, i32 noundef %d.addr.0.i.i.i) #5
  %add.i6.i = shl nuw nsw i32 %d.addr.0.i.i.i, 4
  %mul.i7.i = add nuw nsw i32 %add.i6.i, 16
  %div4.i.i = lshr exact i32 %mul.i7.i, 1
  %add1.i.i = add nuw nsw i32 %div4.i.i, 54000000
  %div2.i.i = udiv i32 %add1.i.i, %mul.i7.i
  %27 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div2.i.i, ptr %carrier_freq, align 4
  %carrier_freq27 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %carrier_freq27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div2.i.i, ptr %carrier_freq27, align 4
  %duty_cycle = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 8
  %29 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 50, ptr %duty_cycle, align 4
  %duty_cycle29 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %duty_cycle29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 50, ptr %duty_cycle29, align 4
  %31 = load i32, ptr %carrier_freq, align 4
  %carrier_range_lower = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 12
  %carrier_range_upper = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 13
  %mul.i = shl i32 %31, 4
  %32 = ptrtoint ptr %carrier_range_lower to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %carrier_range_lower, align 4
  %add.i = or i32 %mul.i, 9
  %div1.i = udiv i32 %add.i, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %div1.i)
  %cmp.i = icmp ult i32 %33, %div1.i
  %add6.i = or i32 %mul.i, 8
  %div7.i = udiv i32 %add6.i, 20
  %storemerge.i = select i1 %cmp.i, i32 %div7.i, i32 %div1.i
  %v.0.i = select i1 %cmp.i, i32 2, i32 0
  %34 = ptrtoint ptr %carrier_range_lower to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge.i, ptr %carrier_range_lower, align 4
  %35 = ptrtoint ptr %carrier_range_upper to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %carrier_range_upper, align 4
  %add18.i = or i32 %mul.i, 6
  %div19.i = udiv i32 %add18.i, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %div19.i)
  %cmp20.i = icmp ugt i32 %36, %div19.i
  %div27.i = udiv i32 %add18.i, 12
  %storemerge54.i = select i1 %cmp20.i, i32 %div27.i, i32 %div19.i
  %or.i = zext i1 %cmp20.i to i32
  %v.1.i = or i32 %v.0.i, %or.i
  %37 = ptrtoint ptr %carrier_range_upper to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge54.i, ptr %carrier_range_upper, align 4
  %call.i159 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -4, i32 noundef %v.1.i) #5
  %38 = ptrtoint ptr %carrier_range_lower to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %carrier_range_lower, align 4
  %carrier_range_lower32 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 12
  %40 = ptrtoint ptr %carrier_range_lower32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %carrier_range_lower32, align 4
  %41 = ptrtoint ptr %carrier_range_upper to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %carrier_range_upper, align 4
  %carrier_range_upper34 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 13
  %43 = ptrtoint ptr %carrier_range_upper34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %carrier_range_upper34, align 4
  %add.i160 = add nuw nsw i32 %d.addr.0.i.i.i, 1
  %44 = zext i32 %add.i160 to i64
  %mul3.i = mul nuw nsw i64 %44, 262143000
  %conv19.i = trunc i64 %mul3.i to i32
  %45 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #9, !srcloc !219
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %45, i32 0) #9, !srcloc !220
  %asmresult10.i.i = extractvalue { i64, i32 } %46, 0
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
  %47 = ptrtoint ptr %max_pulse_width to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv, ptr %max_pulse_width, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end6
  %max_pulse_width36 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %48 = ptrtoint ptr %max_pulse_width36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_pulse_width36, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 500000) #5
  %narrow.i = mul nuw nsw i32 %50, 54
  %mul.i.i161 = zext i32 %narrow.i to i64
  %51 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i161, i32 0) #9, !srcloc !222
  %asmresult.i.i.i = extractvalue { i64, i32 } %51, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %51, 1
  %52 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i161, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !220
  %asmresult10.i.i.i = extractvalue { i64, i32 } %52, 0
  %div162267.i.i = lshr i64 %asmresult10.i.i.i, 9
  %conv163.i.i = trunc i64 %div162267.i.i to i32
  %mul164.neg.i.i = mul i32 %conv163.i.i, -1000
  %sub165.i.i = add i32 %mul164.neg.i.i, %narrow.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %sub165.i.i)
  %cmp184.i.i = icmp ugt i32 %sub165.i.i, 499
  %inc.i.i = zext i1 %cmp184.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %div162267.i.i, %inc.i.i
  %53 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i32 0) #9, !srcloc !222
  %asmresult.i.i8.i = extractvalue { i64, i32 } %53, 0
  %asmresult4.i.i9.i = extractvalue { i64, i32 } %53, 1
  %54 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i64 %asmresult.i.i8.i, i32 %asmresult4.i.i9.i) #9, !srcloc !220
  %asmresult10.i.i10.i = extractvalue { i64, i32 } %54, 0
  %count.addr.0.i.i = lshr i64 %asmresult10.i.i10.i, 17
  call void @__sanitizer_cov_trace_const_cmp8(i64 8590065663, i64 %asmresult10.i.i10.i)
  %cmp180.i.i = icmp ugt i64 %asmresult10.i.i10.i, 8590065663
  br i1 %cmp180.i.i, label %if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge, label %if.else183.i.i

if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %rxclk_rx_s_max_pulse_width.exit

if.else183.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %asmresult10.i.i10.i)
  %cmp184.i11.i = icmp ult i64 %asmresult10.i.i10.i, 262144
  br i1 %cmp184.i11.i, label %if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge, label %if.else187.i.i

if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rxclk_rx_s_max_pulse_width.exit

if.else187.i.i:                                   ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = trunc i64 %count.addr.0.i.i to i32
  %extract.t.i.i = add i32 %55, 65535
  %phi.cast190 = and i32 %extract.t.i.i, 65535
  br label %rxclk_rx_s_max_pulse_width.exit

rxclk_rx_s_max_pulse_width.exit:                  ; preds = %if.else187.i.i, %if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge, %if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge
  %count.addr.1.off0.i.i = phi i32 [ %phi.cast190, %if.else187.i.i ], [ 65535, %if.else.rxclk_rx_s_max_pulse_width.exit_crit_edge ], [ 1, %if.else183.i.i.rxclk_rx_s_max_pulse_width.exit_crit_edge ]
  %call2.i = tail call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 520, i32 noundef %count.addr.1.off0.i.i) #5
  %add.i.i163 = add nuw nsw i32 %count.addr.1.off0.i.i, 1
  %56 = zext i32 %add.i.i163 to i64
  %mul3.i.i = mul nuw nsw i64 %56, 262143000
  %conv19.i.i = trunc i64 %mul3.i.i to i32
  %57 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i) #9, !srcloc !219
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i, i64 %57, i32 0) #9, !srcloc !220
  %asmresult10.i.i12.i = extractvalue { i64, i32 } %58, 0
  %div168273.i.i = lshr i64 %asmresult10.i.i12.i, 5
  %conv169.i.i = trunc i64 %div168273.i.i to i32
  %mul170.neg.i.i = mul i32 %conv169.i.i, -54
  %sub171.i.i = add i32 %mul170.neg.i.i, %conv19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i.i)
  %cmp190.i.i = icmp ugt i32 %sub171.i.i, 26
  %inc.i13.i = zext i1 %cmp190.i.i to i64
  %spec.select.i14.i = add nuw nsw i64 %div168273.i.i, %inc.i13.i
  %conv4.i = trunc i64 %spec.select.i14.i to i32
  %59 = ptrtoint ptr %max_pulse_width36 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv4.i, ptr %max_pulse_width36, align 4
  br label %if.end39

if.end39:                                         ; preds = %rxclk_rx_s_max_pulse_width.exit, %rxclk_rx_s_carrier.exit
  %conv43.pre-phi = phi i32 [ %count.addr.1.off0.i.i, %rxclk_rx_s_max_pulse_width.exit ], [ %d.addr.0.i.i.i, %rxclk_rx_s_carrier.exit ]
  %max_pulse_width40 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %60 = ptrtoint ptr %max_pulse_width40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_pulse_width40, align 4
  %max_pulse_width41 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 6
  %62 = ptrtoint ptr %max_pulse_width41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_pulse_width41, align 4
  %rxclk_divider42 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxclk_divider42, i32 noundef 4) #5
  %63 = ptrtoint ptr %rxclk_divider42 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %conv43.pre-phi, ptr %rxclk_divider42, align 4
  %noise_filter_min_width = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 11
  %64 = ptrtoint ptr %noise_filter_min_width to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %noise_filter_min_width, align 4
  %mul.i.i164 = mul i32 %65, 54
  %add.i.i165 = add i32 %mul.i.i164, 500
  %div1.i.i166 = udiv i32 %add.i.i165, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535999, i32 %add.i.i165)
  %cmp.i.i.i167 = icmp ugt i32 %add.i.i165, 65535999
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %add.i.i165)
  %cmp1.i.i.i168 = icmp ult i32 %add.i.i165, 4000
  %66 = and i32 %div1.i.i166, 65535
  %67 = select i1 %cmp1.i.i.i168, i32 0, i32 %66
  %conv.i169 = select i1 %cmp.i.i.i167, i32 65535, i32 %67
  %call1.i170 = tail call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 536, i32 noundef %conv.i169) #5
  %mul.i4.i = mul nuw nsw i32 %conv.i169, 1000
  %add.i5.i = add nuw nsw i32 %mul.i4.i, 27
  %div1.i6.i = udiv i32 %add.i5.i, 54
  %68 = ptrtoint ptr %noise_filter_min_width to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div1.i6.i, ptr %noise_filter_min_width, align 4
  %noise_filter_min_width47 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 11
  %69 = ptrtoint ptr %noise_filter_min_width47 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div1.i6.i, ptr %noise_filter_min_width47, align 4
  %70 = mul nuw nsw i32 %conv43.pre-phi, 4000
  %add2.i = add nuw nsw i32 %70, 4027
  %div3.i = udiv i32 %add2.i, 54
  %resolution = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 14
  %71 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div3.i, ptr %resolution, align 4
  %resolution50 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 14
  %72 = ptrtoint ptr %resolution50 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div3.i, ptr %resolution50, align 4
  %call.i172 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -1025, i32 noundef 0) #5
  %call.i173 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -13, i32 noundef 12) #5
  %invert_level = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 9
  %73 = ptrtoint ptr %invert_level to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %invert_level, align 4, !range !221
  %invert_level52 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 9
  %75 = ptrtoint ptr %invert_level52 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %invert_level52, align 4
  %rx_invert = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 4
  %76 = load i8, ptr %invert_level, align 4, !range !221
  %77 = zext i8 %76 to i32
  %call.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_invert, i32 noundef 4) #5
  %78 = ptrtoint ptr %rx_invert to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 %77, ptr %rx_invert, align 4
  %interrupt_enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 3
  %79 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %interrupt_enable, align 1, !range !221
  %interrupt_enable58 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %interrupt_enable58 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %interrupt_enable58, align 1
  %enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 2
  %82 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %enable, align 4, !range !221
  %enable61 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 2
  %84 = ptrtoint ptr %enable61 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %enable61, align 4
  %85 = load i8, ptr %enable, align 4, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool64.not = icmp eq i8 %85, 0
  br i1 %tobool64.not, label %if.end39.if.end81_crit_edge, label %if.then65

if.end39.if.end81_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then65:                                        ; preds = %if.end39
  %rx_kfifo_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 6
  %call70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_kfifo_lock) #5
  %rx_kfifo = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 5
  %out = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %out, align 4
  %87 = ptrtoint ptr %rx_kfifo to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %rx_kfifo, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_kfifo_lock, i32 noundef %call70) #5
  %88 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %interrupt_enable, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool76.not = icmp eq i8 %89, 0
  br i1 %tobool76.not, label %if.then65.if.end78_crit_edge, label %if.then77

if.then65.if.end78_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then77:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %switch.i176 = icmp ugt i32 %91, 1
  %and.i179 = select i1 %switch.i176, i32 19, i32 0
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i.i, align 8
  %call3.i180 = tail call i32 @cx25840_and_or4(ptr noundef %93, i16 noundef zeroext 532, i32 noundef -20, i32 noundef %and.i179) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then65.if.end78_crit_edge
  %94 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %enable, align 4, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool80.not = icmp eq i8 %95, 0
  %cond.i181 = select i1 %tobool80.not, i32 0, i32 320
  %call.i182 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -321, i32 noundef %cond.i181) #5
  br label %if.end81

if.end81:                                         ; preds = %if.end78, %if.end39.if.end81_crit_edge
  tail call void @mutex_unlock(ptr noundef %rx_params_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end3.cleanup_crit_edge, %if.then1, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ 0, %if.end81 ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -38, %if.end3.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25840_ir_tx_write(ptr noundef readonly %sd, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef writeonly %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %id.i.i = getelementptr i8, ptr %sd, i32 436
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.i = icmp ugt i32 %3, 1
  %and.i = select i1 %switch.i, i32 32, i32 0
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %call3.i = tail call i32 @cx25840_and_or4(ptr noundef %5, i16 noundef zeroext 532, i32 noundef -33, i32 noundef %and.i) #5
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25840_ir_tx_g_parameters(ptr noundef readonly %sd, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %tx_params_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %tx_params_lock, i32 noundef 0) #5
  %tx_params = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %p, ptr %tx_params, i32 44)
  tail call void @mutex_unlock(ptr noundef %tx_params_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25840_ir_tx_s_parameters(ptr noundef %sd, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  %shutdown = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shutdown, align 2, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @cx25840_ir_tx_shutdown(ptr noundef %sd)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tx_params = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7
  %tx_params_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %tx_params_lock, i32 noundef 0) #5
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shutdown, align 2, !range !221
  %shutdown10 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %shutdown10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %shutdown10, align 2
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mode, align 4
  %mode13 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %mode13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode13, align 4
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %p, align 4
  %14 = ptrtoint ptr %tx_params to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %tx_params, align 4
  %id.i.i = getelementptr i8, ptr %sd, i32 436
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i = icmp ult i32 %16, 2
  %and.i = select i1 %switch.i, i32 32, i32 0
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  %call3.i = tail call i32 @cx25840_and_or4(ptr noundef %18, i16 noundef zeroext 532, i32 noundef -33, i32 noundef %and.i) #5
  %call.i = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -641, i32 noundef 0) #5
  %modulation = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 5
  %19 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %modulation, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  %cond.i128 = select i1 %tobool16.not, i32 0, i32 32
  %call.i129 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -33, i32 noundef %cond.i128) #5
  %21 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %modulation, align 1, !range !221
  %modulation19 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %modulation19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %modulation19, align 1
  %24 = load i8, ptr %modulation, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not = icmp eq i8 %24, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end6
  %carrier_freq = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 7
  %25 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %carrier_freq, align 4
  %mul.i.i = shl i32 %26, 4
  %div3.i.i = lshr exact i32 %mul.i.i, 1
  %add.i.i = add nuw i32 %div3.i.i, 54000000
  %div1.i.i = udiv i32 %add.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div1.i.i)
  %cmp.i.i.i = icmp ugt i32 %div1.i.i, 65536
  br i1 %cmp.i.i.i, label %if.then23.txclk_tx_s_carrier.exit_crit_edge, label %if.else.i.i.i

if.then23.txclk_tx_s_carrier.exit_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %txclk_tx_s_carrier.exit

if.else.i.i.i:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div1.i.i)
  %cmp1.i.i.i = icmp ult i32 %div1.i.i, 2
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge:  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txclk_tx_s_carrier.exit

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast.i.i.i = add nuw nsw i32 %div1.i.i, 65535
  %phi.cast = and i32 %phi.cast.i.i.i, 65535
  br label %txclk_tx_s_carrier.exit

txclk_tx_s_carrier.exit:                          ; preds = %if.else3.i.i.i, %if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge, %if.then23.txclk_tx_s_carrier.exit_crit_edge
  %d.addr.0.i.i.i = phi i32 [ %phi.cast, %if.else3.i.i.i ], [ 65535, %if.then23.txclk_tx_s_carrier.exit_crit_edge ], [ 1, %if.else.i.i.i.txclk_tx_s_carrier.exit_crit_edge ]
  %call1.i = tail call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 516, i32 noundef %d.addr.0.i.i.i) #5
  %add.i6.i = shl nuw nsw i32 %d.addr.0.i.i.i, 4
  %mul.i7.i = add nuw nsw i32 %add.i6.i, 16
  %div4.i.i = lshr exact i32 %mul.i7.i, 1
  %add1.i.i = add nuw nsw i32 %div4.i.i, 54000000
  %div2.i.i = udiv i32 %add1.i.i, %mul.i7.i
  %27 = ptrtoint ptr %carrier_freq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div2.i.i, ptr %carrier_freq, align 4
  %carrier_freq27 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 7
  %28 = ptrtoint ptr %carrier_freq27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div2.i.i, ptr %carrier_freq27, align 4
  %duty_cycle = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 8
  %29 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %duty_cycle, align 4
  %mul.i = mul i32 %30, 100
  %add.i = add i32 %mul.i, 312
  call void @__sanitizer_cov_trace_const_cmp4(i32 625, i32 %add.i)
  %31 = icmp ult i32 %add.i, 625
  %div1.i = udiv i32 %add.i, 625
  %dec.i = add nsw i32 %div1.i, -1
  %32 = tail call i32 @llvm.umin.i32(i32 %dec.i, i32 15) #5
  %33 = select i1 %31, i32 0, i32 %32
  %call.i130 = tail call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 524, i32 noundef %33) #5
  %34 = mul nuw nsw i32 %33, 100
  %add11.i = add nuw nsw i32 %34, 108
  %div1219.i = lshr i32 %add11.i, 4
  %35 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div1219.i, ptr %duty_cycle, align 4
  %duty_cycle31 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 8
  %36 = ptrtoint ptr %duty_cycle31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div1219.i, ptr %duty_cycle31, align 4
  %add.i131 = add nuw nsw i32 %d.addr.0.i.i.i, 1
  %37 = zext i32 %add.i131 to i64
  %mul3.i = mul nuw nsw i64 %37, 262143000
  %conv19.i = trunc i64 %mul3.i to i32
  %38 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i) #9, !srcloc !219
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i, i64 %38, i32 0) #9, !srcloc !220
  %asmresult10.i.i = extractvalue { i64, i32 } %39, 0
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
  %40 = ptrtoint ptr %max_pulse_width to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv, ptr %max_pulse_width, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end6
  %max_pulse_width33 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %41 = ptrtoint ptr %max_pulse_width33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_pulse_width33, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 500000) #5
  %narrow.i = mul nuw nsw i32 %43, 54
  %mul.i.i132 = zext i32 %narrow.i to i64
  %44 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i132, i32 0) #9, !srcloc !222
  %asmresult.i.i.i = extractvalue { i64, i32 } %44, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %44, 1
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i132, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !220
  %asmresult10.i.i.i = extractvalue { i64, i32 } %45, 0
  %div162267.i.i = lshr i64 %asmresult10.i.i.i, 9
  %conv163.i.i = trunc i64 %div162267.i.i to i32
  %mul164.neg.i.i = mul i32 %conv163.i.i, -1000
  %sub165.i.i = add i32 %mul164.neg.i.i, %narrow.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %sub165.i.i)
  %cmp184.i.i = icmp ugt i32 %sub165.i.i, 499
  %inc.i.i = zext i1 %cmp184.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %div162267.i.i, %inc.i.i
  %46 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i32 0) #9, !srcloc !222
  %asmresult.i.i8.i = extractvalue { i64, i32 } %46, 0
  %asmresult4.i.i9.i = extractvalue { i64, i32 } %46, 1
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223336852348468736, i64 %spec.select.i.i, i64 %asmresult.i.i8.i, i32 %asmresult4.i.i9.i) #9, !srcloc !220
  %asmresult10.i.i10.i = extractvalue { i64, i32 } %47, 0
  %count.addr.0.i.i = lshr i64 %asmresult10.i.i10.i, 17
  call void @__sanitizer_cov_trace_const_cmp8(i64 8590065663, i64 %asmresult10.i.i10.i)
  %cmp180.i.i = icmp ugt i64 %asmresult10.i.i10.i, 8590065663
  br i1 %cmp180.i.i, label %if.else.txclk_tx_s_max_pulse_width.exit_crit_edge, label %if.else183.i.i

if.else.txclk_tx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %txclk_tx_s_max_pulse_width.exit

if.else183.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %asmresult10.i.i10.i)
  %cmp184.i11.i = icmp ult i64 %asmresult10.i.i10.i, 262144
  br i1 %cmp184.i11.i, label %if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge, label %if.else187.i.i

if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge: ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txclk_tx_s_max_pulse_width.exit

if.else187.i.i:                                   ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = trunc i64 %count.addr.0.i.i to i32
  %extract.t.i.i = add i32 %48, 65535
  %phi.cast155 = and i32 %extract.t.i.i, 65535
  br label %txclk_tx_s_max_pulse_width.exit

txclk_tx_s_max_pulse_width.exit:                  ; preds = %if.else187.i.i, %if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge, %if.else.txclk_tx_s_max_pulse_width.exit_crit_edge
  %count.addr.1.off0.i.i = phi i32 [ %phi.cast155, %if.else187.i.i ], [ 65535, %if.else.txclk_tx_s_max_pulse_width.exit_crit_edge ], [ 1, %if.else183.i.i.txclk_tx_s_max_pulse_width.exit_crit_edge ]
  %call2.i = tail call i32 @cx25840_write4(ptr noundef %7, i16 noundef zeroext 516, i32 noundef %count.addr.1.off0.i.i) #5
  %add.i.i134 = add nuw nsw i32 %count.addr.1.off0.i.i, 1
  %49 = zext i32 %add.i.i134 to i64
  %mul3.i.i = mul nuw nsw i64 %49, 262143000
  %conv19.i.i = trunc i64 %mul3.i.i to i32
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i) #9, !srcloc !219
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7515340178177965473, i64 %mul3.i.i, i64 %50, i32 0) #9, !srcloc !220
  %asmresult10.i.i12.i = extractvalue { i64, i32 } %51, 0
  %div168273.i.i = lshr i64 %asmresult10.i.i12.i, 5
  %conv169.i.i = trunc i64 %div168273.i.i to i32
  %mul170.neg.i.i = mul i32 %conv169.i.i, -54
  %sub171.i.i = add i32 %mul170.neg.i.i, %conv19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub171.i.i)
  %cmp190.i.i = icmp ugt i32 %sub171.i.i, 26
  %inc.i13.i = zext i1 %cmp190.i.i to i64
  %spec.select.i14.i = add nuw nsw i64 %div168273.i.i, %inc.i13.i
  %conv4.i = trunc i64 %spec.select.i14.i to i32
  %52 = ptrtoint ptr %max_pulse_width33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv4.i, ptr %max_pulse_width33, align 4
  br label %if.end36

if.end36:                                         ; preds = %txclk_tx_s_max_pulse_width.exit, %txclk_tx_s_carrier.exit
  %conv40.pre-phi = phi i32 [ %count.addr.1.off0.i.i, %txclk_tx_s_max_pulse_width.exit ], [ %d.addr.0.i.i.i, %txclk_tx_s_carrier.exit ]
  %max_pulse_width37 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 6
  %53 = ptrtoint ptr %max_pulse_width37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_pulse_width37, align 4
  %max_pulse_width38 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 6
  %55 = ptrtoint ptr %max_pulse_width38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %max_pulse_width38, align 4
  %txclk_divider39 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txclk_divider39, i32 noundef 4) #5
  %56 = ptrtoint ptr %txclk_divider39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %conv40.pre-phi, ptr %txclk_divider39, align 4
  %57 = mul nuw nsw i32 %conv40.pre-phi, 4000
  %add2.i = add nuw nsw i32 %57, 4027
  %div3.i = udiv i32 %add2.i, 54
  %resolution = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 14
  %58 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div3.i, ptr %resolution, align 4
  %resolution43 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 14
  %59 = ptrtoint ptr %resolution43 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div3.i, ptr %resolution43, align 4
  %call.i136 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -2049, i32 noundef 0) #5
  %invert_carrier_sense = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 10
  %60 = ptrtoint ptr %invert_carrier_sense to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %invert_carrier_sense, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool44.not = icmp eq i8 %61, 0
  %cond.i137 = select i1 %tobool44.not, i32 0, i32 4096
  %call.i138 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -4097, i32 noundef %cond.i137) #5
  %62 = ptrtoint ptr %invert_carrier_sense to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %invert_carrier_sense, align 1, !range !221
  %invert_carrier_sense47 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 10
  %64 = ptrtoint ptr %invert_carrier_sense47 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %invert_carrier_sense47, align 1
  %invert_level = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 9
  %65 = ptrtoint ptr %invert_level to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %invert_level, align 4, !range !221
  %invert_level50 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 9
  %67 = ptrtoint ptr %invert_level50 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %invert_level50, align 4
  %interrupt_enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 3
  %68 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %interrupt_enable, align 1, !range !221
  %interrupt_enable53 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 3
  %70 = ptrtoint ptr %interrupt_enable53 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %interrupt_enable53, align 1
  %enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %p, i32 0, i32 2
  %71 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %enable, align 4, !range !221
  %enable56 = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 2
  %73 = ptrtoint ptr %enable56 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %enable56, align 4
  %74 = load i8, ptr %enable, align 4, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool59.not = icmp eq i8 %74, 0
  br i1 %tobool59.not, label %if.end36.if.end67_crit_edge, label %if.then60

if.end36.if.end67_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then60:                                        ; preds = %if.end36
  %75 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %interrupt_enable, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool62.not = icmp eq i8 %76, 0
  br i1 %tobool62.not, label %if.then60.if.end64_crit_edge, label %if.then63

if.then60.if.end64_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %switch.i141 = icmp ugt i32 %78, 1
  %and.i144 = select i1 %switch.i141, i32 32, i32 0
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i.i, align 8
  %call3.i145 = tail call i32 @cx25840_and_or4(ptr noundef %80, i16 noundef zeroext 532, i32 noundef -33, i32 noundef %and.i144) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.then60.if.end64_crit_edge
  %81 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %enable, align 4, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool66.not = icmp eq i8 %82, 0
  %cond.i146 = select i1 %tobool66.not, i32 0, i32 640
  %call.i147 = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 512, i32 noundef -641, i32 noundef %cond.i146) #5
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %if.end36.if.end67_crit_edge
  tail call void @mutex_unlock(ptr noundef %tx_params_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end3.cleanup_crit_edge, %if.then1, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ 0, %if.end67 ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -38, %if.end3.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_ir_probe(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  %default_params = alloca %struct.v4l2_subdev_ir_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %default_params) #5
  %id.i = getelementptr i8, ptr %sd, i32 436
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %rx_kfifo_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %rx_kfifo_lock, ptr noundef nonnull @.str.129, ptr noundef nonnull @cx25840_ir_probe.__key, i16 noundef signext 3) #5
  %rx_kfifo = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 5
  %call7 = tail call i32 @__kfifo_alloc(ptr noundef %rx_kfifo, i32 noundef 2048, i32 noundef 1, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end10, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 4
  %ir_state13 = getelementptr i8, ptr %sd, i32 548
  %7 = ptrtoint ptr %ir_state13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %ir_state13, align 8
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch130 = icmp ult i32 %9, 2
  %. = select i1 %switch130, i32 51, i32 0
  %call19 = tail call i32 @cx25840_write4(ptr noundef %5, i16 noundef zeroext 532, i32 noundef %.) #5
  %rx_params_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %rx_params_lock, ptr noundef nonnull @.str.131, ptr noundef nonnull @cx25840_ir_probe.__key.130) #5
  %10 = call ptr @memcpy(ptr %default_params, ptr @default_rx_params, i32 44)
  %tobool26.not = icmp eq ptr %sd, null
  br i1 %tobool26.not, label %if.then57.critedge, label %if.else28

if.else28:                                        ; preds = %if.end10
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %ir = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ir, align 4
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %if.else58.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else28
  %rx_s_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %rx_s_parameters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_s_parameters, align 4
  %tobool32.not = icmp eq ptr %16, null
  br i1 %tobool32.not, label %if.else58.critedge117, label %if.else34

if.else34:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %if.else34.if.else42_crit_edge, label %land.lhs.true36

if.else34.if.else42_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else42

land.lhs.true36:                                  ; preds = %if.else34
  %rx_s_parameters37 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rx_s_parameters37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_s_parameters37, align 4
  %tobool38.not = icmp eq ptr %19, null
  br i1 %tobool38.not, label %land.lhs.true36.if.else42_crit_edge, label %if.then39

land.lhs.true36.if.else42_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else42

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = call i32 %19(ptr noundef nonnull %sd, ptr noundef nonnull %default_params) #5
  %tx_params_lock.c123 = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 8
  call void @__mutex_init(ptr noundef %tx_params_lock.c123, ptr noundef nonnull @.str.133, ptr noundef nonnull @cx25840_ir_probe.__key.132) #5
  br label %if.else58

if.else42:                                        ; preds = %land.lhs.true36.if.else42_crit_edge, %if.else34.if.else42_crit_edge
  %call46 = call i32 %16(ptr noundef nonnull %sd, ptr noundef nonnull %default_params) #5
  %tx_params_lock.c121 = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 8
  call void @__mutex_init(ptr noundef %tx_params_lock.c121, ptr noundef nonnull @.str.133, ptr noundef nonnull @cx25840_ir_probe.__key.132) #5
  br label %if.else58

if.then57.critedge:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %tx_params_lock.c119 = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %tx_params_lock.c119, ptr noundef nonnull @.str.133, ptr noundef nonnull @cx25840_ir_probe.__key.132) #5
  br label %cleanup

if.else58.critedge:                               ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  %tx_params_lock.c = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %tx_params_lock.c, ptr noundef nonnull @.str.133, ptr noundef nonnull @cx25840_ir_probe.__key.132) #5
  br label %if.else58

if.else58.critedge117:                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %tx_params_lock.c118 = getelementptr inbounds %struct.cx25840_ir_state, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %tx_params_lock.c118, ptr noundef nonnull @.str.133, ptr noundef nonnull @cx25840_ir_probe.__key.132) #5
  br label %if.else58

if.else58:                                        ; preds = %if.else58.critedge117, %if.else58.critedge, %if.else42, %if.then39
  %20 = call ptr @memcpy(ptr %default_params, ptr @default_tx_params, i32 44)
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %ir60 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %ir60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ir60, align 4
  %tobool61.not = icmp eq ptr %24, null
  br i1 %tobool61.not, label %if.else58.cleanup_crit_edge, label %land.lhs.true62

if.else58.cleanup_crit_edge:                      ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true62:                                  ; preds = %if.else58
  %tx_s_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %tx_s_parameters to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_s_parameters, align 4
  %tobool65.not = icmp eq ptr %26, null
  br i1 %tobool65.not, label %land.lhs.true62.cleanup_crit_edge, label %if.else67

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else67:                                        ; preds = %land.lhs.true62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool68.not = icmp eq ptr %27, null
  br i1 %tobool68.not, label %if.else67.if.else75_crit_edge, label %land.lhs.true69

if.else67.if.else75_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else75

land.lhs.true69:                                  ; preds = %if.else67
  %tx_s_parameters70 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %tx_s_parameters70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_s_parameters70, align 4
  %tobool71.not = icmp eq ptr %29, null
  br i1 %tobool71.not, label %land.lhs.true69.if.else75_crit_edge, label %if.then72

land.lhs.true69.if.else75_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else75

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  %call74 = call i32 %29(ptr noundef nonnull %sd, ptr noundef nonnull %default_params) #5
  br label %cleanup

if.else75:                                        ; preds = %land.lhs.true69.if.else75_crit_edge, %if.else67.if.else75_crit_edge
  %call79 = call i32 %26(ptr noundef nonnull %sd, ptr noundef nonnull %default_params) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else75, %if.then72, %land.lhs.true62.cleanup_crit_edge, %if.else58.cleanup_crit_edge, %if.then57.critedge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %if.else58.cleanup_crit_edge ], [ 0, %land.lhs.true62.cleanup_crit_edge ], [ 0, %if.else75 ], [ 0, %if.then72 ], [ 0, %if.then57.critedge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %default_params) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_ir_remove(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @cx25840_ir_rx_shutdown(ptr noundef %sd)
  %call3 = tail call fastcc i32 @cx25840_ir_tx_shutdown(ptr noundef %sd)
  %rx_kfifo = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 5
  tail call void @__kfifo_free(ptr noundef %rx_kfifo) #5
  %2 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ir_state.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx25840_ir_rx_shutdown(ptr noundef readonly %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rx_params_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %rx_params_lock, i32 noundef 0) #5
  %id.i.i = getelementptr i8, ptr %sd, i32 436
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.i = icmp ult i32 %5, 2
  %and.i = select i1 %switch.i, i32 19, i32 0
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 8
  %call3.i = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 532, i32 noundef -20, i32 noundef %and.i) #5
  %call.i = tail call i32 @cx25840_and_or4(ptr noundef %3, i16 noundef zeroext 512, i32 noundef -321, i32 noundef 0) #5
  %call.i16 = tail call i32 @cx25840_and_or4(ptr noundef %3, i16 noundef zeroext 512, i32 noundef -17, i32 noundef 0) #5
  %call.i17 = tail call i32 @cx25840_and_or4(ptr noundef %3, i16 noundef zeroext 512, i32 noundef -13, i32 noundef 0) #5
  %call1.i = tail call i32 @cx25840_write4(ptr noundef %3, i16 noundef zeroext 536, i32 noundef 0) #5
  %call3 = tail call i32 @cx25840_write4(ptr noundef %3, i16 noundef zeroext 520, i32 noundef 65535) #5
  %shutdown = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %shutdown, align 2
  tail call void @mutex_unlock(ptr noundef %rx_params_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx25840_ir_tx_shutdown(ptr noundef readonly %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %sd, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_ir_state.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

to_ir_state.exit:                                 ; preds = %entry
  %ir_state.i = getelementptr i8, ptr %sd, i32 548
  %0 = ptrtoint ptr %ir_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_state.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %to_ir_state.exit.cleanup_crit_edge, label %if.end

to_ir_state.exit.cleanup_crit_edge:               ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %to_ir_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tx_params_lock = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %tx_params_lock, i32 noundef 0) #5
  %id.i.i = getelementptr i8, ptr %sd, i32 436
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.i = icmp ult i32 %5, 2
  %and.i = select i1 %switch.i, i32 32, i32 0
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 8
  %call3.i = tail call i32 @cx25840_and_or4(ptr noundef %7, i16 noundef zeroext 532, i32 noundef -33, i32 noundef %and.i) #5
  %call.i = tail call i32 @cx25840_and_or4(ptr noundef %3, i16 noundef zeroext 512, i32 noundef -641, i32 noundef 0) #5
  %call.i13 = tail call i32 @cx25840_and_or4(ptr noundef %3, i16 noundef zeroext 512, i32 noundef -33, i32 noundef 0) #5
  %call2 = tail call i32 @cx25840_write4(ptr noundef %3, i16 noundef zeroext 516, i32 noundef 65535) #5
  %shutdown = getelementptr inbounds %struct.cx25840_ir_state, ptr %1, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %shutdown, align 2
  tail call void @mutex_unlock(ptr noundef %tx_params_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_ir_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %to_ir_state.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_and_or4(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

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

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196, !197, !198, !199, !200, !201, !203, !204, !205, !207}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @__param_ir_debug, !1, !"__param_ir_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_ir_debugtype292, !1, !"__UNIQUE_ID_ir_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ir_debug293, !4, !"__UNIQUE_ID_ir_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 20, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 527, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx25840_ir_irq_handler._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cx25840_ir_irq_handler._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !6, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !6, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !6, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 533, i32 2}
!20 = !{ptr @cx25840_ir_irq_handler._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cx25840_ir_irq_handler._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.16, !19, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 592, i32 3}
!28 = !{ptr @cx25840_ir_irq_handler._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cx25840_ir_irq_handler._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 601, i32 3}
!32 = !{ptr @cx25840_ir_irq_handler._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cx25840_ir_irq_handler._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1024, i32 2}
!36 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cx25840_ir_log_status._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @cx25840_ir_log_status._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1025, i32 2}
!41 = !{ptr @cx25840_ir_log_status._entry.25, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cx25840_ir_log_status._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1027, i32 2}
!47 = !{ptr @cx25840_ir_log_status._entry.30, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cx25840_ir_log_status._entry_ptr.32, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.33, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.34, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1029, i32 2}
!53 = !{ptr @cx25840_ir_log_status._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cx25840_ir_log_status._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1036, i32 7}
!57 = !{ptr @.str.39, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1039, i32 7}
!59 = !{ptr @.str.40, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1042, i32 7}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1045, i32 7}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1048, i32 2}
!65 = !{ptr @cx25840_ir_log_status._entry.42, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cx25840_ir_log_status._entry_ptr.44, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1049, i32 2}
!69 = !{ptr @cx25840_ir_log_status._entry.45, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cx25840_ir_log_status._entry_ptr.47, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.49, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.51, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1051, i32 2}
!75 = !{ptr @cx25840_ir_log_status._entry.50, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cx25840_ir_log_status._entry_ptr.52, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.53, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.54, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.56, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1053, i32 2}
!81 = !{ptr @cx25840_ir_log_status._entry.55, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cx25840_ir_log_status._entry_ptr.57, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.58, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.59, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.61, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1056, i32 3}
!87 = !{ptr @cx25840_ir_log_status._entry.60, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx25840_ir_log_status._entry_ptr.62, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.64, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1080, i32 3}
!91 = !{ptr @cx25840_ir_log_status._entry.63, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx25840_ir_log_status._entry_ptr.65, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.67, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1085, i32 2}
!95 = !{ptr @cx25840_ir_log_status._entry.66, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cx25840_ir_log_status._entry_ptr.68, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.70, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1088, i32 2}
!99 = !{ptr @cx25840_ir_log_status._entry.69, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cx25840_ir_log_status._entry_ptr.71, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.73, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1091, i32 3}
!103 = !{ptr @cx25840_ir_log_status._entry.72, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @cx25840_ir_log_status._entry_ptr.74, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.76, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1094, i32 2}
!107 = !{ptr @cx25840_ir_log_status._entry.75, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @cx25840_ir_log_status._entry_ptr.77, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.79, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1096, i32 2}
!111 = !{ptr @cx25840_ir_log_status._entry.78, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cx25840_ir_log_status._entry_ptr.80, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.82, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1098, i32 2}
!115 = !{ptr @cx25840_ir_log_status._entry.81, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cx25840_ir_log_status._entry_ptr.83, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.85, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1100, i32 2}
!119 = !{ptr @cx25840_ir_log_status._entry.84, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cx25840_ir_log_status._entry_ptr.86, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.88, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1102, i32 2}
!123 = !{ptr @cx25840_ir_log_status._entry.87, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @cx25840_ir_log_status._entry_ptr.89, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.91, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1104, i32 2}
!127 = !{ptr @cx25840_ir_log_status._entry.90, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cx25840_ir_log_status._entry_ptr.92, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.94, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1106, i32 2}
!131 = !{ptr @cx25840_ir_log_status._entry.93, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cx25840_ir_log_status._entry_ptr.95, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.97, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1109, i32 2}
!135 = !{ptr @cx25840_ir_log_status._entry.96, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cx25840_ir_log_status._entry_ptr.98, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @cx25840_ir_log_status._entry.99, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1110, i32 2}
!139 = !{ptr @cx25840_ir_log_status._entry_ptr.100, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.102, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1112, i32 2}
!142 = !{ptr @cx25840_ir_log_status._entry.101, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cx25840_ir_log_status._entry_ptr.103, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @cx25840_ir_log_status._entry.104, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1114, i32 2}
!146 = !{ptr @cx25840_ir_log_status._entry_ptr.105, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @cx25840_ir_log_status._entry.106, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1116, i32 2}
!149 = !{ptr @cx25840_ir_log_status._entry_ptr.107, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.108, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.110, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1118, i32 2}
!153 = !{ptr @cx25840_ir_log_status._entry.109, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cx25840_ir_log_status._entry_ptr.111, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.112, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.113, !152, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.115, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1122, i32 3}
!159 = !{ptr @cx25840_ir_log_status._entry.114, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cx25840_ir_log_status._entry_ptr.116, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.118, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1124, i32 3}
!163 = !{ptr @cx25840_ir_log_status._entry.117, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cx25840_ir_log_status._entry_ptr.119, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.121, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1127, i32 2}
!167 = !{ptr @cx25840_ir_log_status._entry.120, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cx25840_ir_log_status._entry_ptr.122, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @cx25840_ir_log_status._entry.123, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1130, i32 2}
!171 = !{ptr @cx25840_ir_log_status._entry_ptr.124, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @cx25840_ir_log_status._entry.125, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1132, i32 2}
!174 = !{ptr @cx25840_ir_log_status._entry_ptr.126, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @cx25840_ir_log_status._entry.127, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1134, i32 2}
!177 = !{ptr @cx25840_ir_log_status._entry_ptr.128, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @cx25840_ir_ops, !179, !"cx25840_ir_ops", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1141, i32 33}
!180 = !{ptr @cx25840_ir_probe.__key, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1200, i32 2}
!182 = !{ptr @.str.129, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @cx25840_ir_probe.__key.130, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1214, i32 2}
!185 = !{ptr @.str.131, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @cx25840_ir_probe.__key.132, !187, !"__key", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1218, i32 2}
!188 = !{ptr @.str.133, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ir_debug, !190, !"ir_debug", i1 false, i1 false}
!190 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 18, i32 21}
!191 = !{ptr @__param_str_ir_debug, !1, !"__param_str_ir_debug", i1 false, i1 false}
!192 = !{ptr @.str.134, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 678, i32 3}
!194 = !{ptr @.str.135, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @cx25840_ir_rx_read._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @cx25840_ir_rx_read._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.136, !193, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.137, !193, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.138, !193, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.139, !193, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.141, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 681, i32 4}
!203 = !{ptr @cx25840_ir_rx_read._entry.140, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @cx25840_ir_rx_read._entry_ptr.142, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @default_rx_params, !206, !"default_rx_params", i1 false, i1 false}
!206 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1152, i32 47}
!207 = !{ptr @default_tx_params, !208, !"default_tx_params", i1 false, i1 false}
!208 = !{!"../drivers/media/i2c/cx25840/cx25840-ir.c", i32 1171, i32 47}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{!"auto-init"}
!219 = !{i64 977400, i64 977427}
!220 = !{i64 978095, i64 978122, i64 978155, i64 978176, i64 978203, i64 978229}
!221 = !{i8 0, i8 2}
!222 = !{i64 977687, i64 977714, i64 977736, i64 977764}
