; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/bcm5974.c_pt.bc'
source_filename = "../drivers/input/mouse/bcm5974.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bcm5974_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bcm5974_param, %struct.bcm5974_param, %struct.bcm5974_param, %struct.bcm5974_param, %struct.bcm5974_param }
%struct.bcm5974_param = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bcm5974 = type { [64 x i8], ptr, ptr, ptr, %struct.bcm5974_config, %struct.mutex, i32, ptr, ptr, ptr, ptr, [16 x ptr], [16 x %struct.input_mt_pos], [16 x i32] }
%struct.input_mt_pos = type { i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.bt_data = type { i8, i8, i8, i8 }
%struct.tp_finger = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], i16, i16 }

@__UNIQUE_ID_author232 = internal constant [30 x i8] c"bcm5974.author=Henrik Rydberg\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [56 x i8] c"bcm5974.description=Apple USB BCM5974 multitouch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [41 x i8] c"bcm5974.file=drivers/input/mouse/bcm5974\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [20 x i8] c"bcm5974.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"bcm5974.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype236 = internal constant [27 x i8] c"bcm5974.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug237 = internal constant [45 x i8] c"bcm5974.parm=debug:Activate debugging output\00", section ".modinfo", align 1
@__initcall__kmod_bcm5974__250_1028_bcm5974_driver_init6 = internal global ptr @bcm5974_driver_init, section ".initcall6.init", align 4
@bcm5974_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @bcm5974_probe, ptr @bcm5974_disconnect, ptr null, ptr @bcm5974_suspend, ptr @bcm5974_resume, ptr null, ptr null, ptr null, ptr @bcm5974_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_bcm5974_driver_exit = internal global ptr @bcm5974_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bcm5974\00", [24 x i8] zeroinitializer }, align 32
@bcm5974_table = internal constant { [40 x %struct.usb_device_id], [224 x i8] } { [40 x %struct.usb_device_id] [%struct.usb_device_id { i16 643, i16 1452, i16 547, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 548, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 561, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 562, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 566, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 580, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 581, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 583, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 585, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 586, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 590, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 594, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 595, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 610, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 611, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 612, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 603, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 658, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 626, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 627, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 628, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [224 x i8] zeroinitializer }, align 32
@bcm5974_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 910, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm5974_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/mouse/bcm5974.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm5974_probe._entry_ptr = internal global ptr @bcm5974_probe._entry, section ".printk_index", align 4
@bcm5974_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->pm_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@bcm5974_config_table = internal constant { [14 x %struct.bcm5974_config], [464 x i8] } { [14 x %struct.bcm5974_config] [%struct.bcm5974_config { i32 547, i32 548, i32 549, i32 0, i32 132, i32 4, i32 129, i32 0, i32 26, i32 474, i32 0, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 256 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4824, i32 5342 }, %struct.bcm5974_param { i32 250, i32 -172, i32 5820 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 560, i32 561, i32 562, i32 0, i32 132, i32 4, i32 129, i32 0, i32 26, i32 474, i32 0, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 256 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4824, i32 4824 }, %struct.bcm5974_param { i32 250, i32 -172, i32 4290 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 566, i32 567, i32 568, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4460, i32 5166 }, %struct.bcm5974_param { i32 250, i32 -75, i32 6700 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 575, i32 576, i32 577, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 578, i32 579, i32 580, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4616, i32 5112 }, %struct.bcm5974_param { i32 250, i32 -142, i32 5234 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 581, i32 582, i32 583, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4415, i32 5050 }, %struct.bcm5974_param { i32 250, i32 -55, i32 6680 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 588, i32 589, i32 590, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 594, i32 595, i32 596, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4750, i32 5280 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6730 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 585, i32 586, i32 587, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 610, i32 611, i32 612, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4750, i32 5280 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6730 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 601, i32 602, i32 603, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4750, i32 5280 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6730 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 656, i32 657, i32 658, i32 1, i32 0, i32 4, i32 131, i32 2, i32 38, i32 486, i32 23, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 626, i32 627, i32 628, i32 1, i32 0, i32 4, i32 131, i32 3, i32 46, i32 526, i32 31, i32 30, i32 2, i32 2, i32 770, i32 2, i32 1, i32 1, i32 0, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4828, i32 5345 }, %struct.bcm5974_param { i32 250, i32 -203, i32 6803 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config zeroinitializer], [464 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcm5974_irq_button.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm5974_irq_button\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"button urb shutting down: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm5974_irq_button.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.10, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"button urb status: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm5974_irq_button._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017bcm5974: bad button package, length: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm5974_irq_button._entry_ptr = internal global ptr @bcm5974_irq_button._entry, section ".printk_index", align 4
@bcm5974_irq_button._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"button urb failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm5974_irq_button._entry_ptr.14 = internal global ptr @bcm5974_irq_button._entry.12, section ".printk_index", align 4
@report_bt_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017bcm5974: button data: %x %x %x %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"report_bt_state\00", [16 x i8] zeroinitializer }, align 32
@report_bt_state._entry_ptr = internal global ptr @report_bt_state._entry, section ".printk_index", align 4
@bcm5974_irq_trackpad.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm5974_irq_trackpad\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"trackpad urb shutting down: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm5974_irq_trackpad.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trackpad urb status: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm5974_irq_trackpad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017bcm5974: bad trackpad package, length: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@bcm5974_irq_trackpad._entry_ptr = internal global ptr @bcm5974_irq_trackpad._entry, section ".printk_index", align 4
@bcm5974_irq_trackpad._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 762, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trackpad urb failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm5974_irq_trackpad._entry_ptr.23 = internal global ptr @bcm5974_irq_trackpad._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@bcm5974_start_traffic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017bcm5974: mode switch failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm5974_start_traffic\00", [42 x i8] zeroinitializer }, align 32
@bcm5974_start_traffic._entry_ptr = internal global ptr @bcm5974_start_traffic._entry, section ".printk_index", align 4
@bcm5974_wellspring_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.27, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm5974_wellspring_mode\00", [40 x i8] zeroinitializer }, align 32
@bcm5974_wellspring_mode._entry_ptr = internal global ptr @bcm5974_wellspring_mode._entry, section ".printk_index", align 4
@bcm5974_wellspring_mode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read from device\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm5974_wellspring_mode._entry_ptr.30 = internal global ptr @bcm5974_wellspring_mode._entry.28, section ".printk_index", align 4
@bcm5974_wellspring_mode._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 686, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not write to device\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm5974_wellspring_mode._entry_ptr.33 = internal global ptr @bcm5974_wellspring_mode._entry.31, section ".printk_index", align 4
@bcm5974_wellspring_mode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.3, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017bcm5974: switched to %s mode.\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm5974_wellspring_mode._entry_ptr.36 = internal global ptr @bcm5974_wellspring_mode._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wellspring\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [38 x i64] [i64 36, i64 16, i64 12290, i64 12546, i64 12802, i64 13826, i64 14082, i64 14338, i64 16130, i64 16386, i64 16642, i64 16898, i64 17154, i64 17410, i64 17666, i64 17922, i64 18178, i64 18690, i64 18946, i64 19202, i64 19458, i64 19714, i64 19970, i64 20994, i64 21250, i64 21506, i64 22786, i64 23042, i64 23298, i64 25090, i64 25346, i64 25602, i64 29186, i64 29442, i64 29698, i64 36866, i64 37122, i64 37378]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967221, i64 4294967294]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967221, i64 4294967294]
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 162, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"bcm5974_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1018, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1028, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"bcm5974_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 97, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 910, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 918, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 958, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"bcm5974_config_table\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 316, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 712, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 716, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 721, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 727, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 553, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 743, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 747, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 756, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 762, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 912, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 789, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 659, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 671, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 686, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [33 x i8] c"../drivers/input/mouse/bcm5974.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 691, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_debug237, ptr @__UNIQUE_ID_debugtype236, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_bcm5974_driver_exit, ptr @__initcall__kmod_bcm5974__250_1028_bcm5974_driver_init6, ptr @__param_debug, ptr @bcm5974_driver_exit, ptr @bcm5974_irq_button._entry, ptr @bcm5974_irq_button._entry.12, ptr @bcm5974_irq_button._entry_ptr, ptr @bcm5974_irq_button._entry_ptr.14, ptr @bcm5974_irq_trackpad._entry, ptr @bcm5974_irq_trackpad._entry.21, ptr @bcm5974_irq_trackpad._entry_ptr, ptr @bcm5974_irq_trackpad._entry_ptr.23, ptr @bcm5974_probe._entry, ptr @bcm5974_probe._entry_ptr, ptr @bcm5974_start_traffic._entry, ptr @bcm5974_start_traffic._entry_ptr, ptr @bcm5974_wellspring_mode._entry, ptr @bcm5974_wellspring_mode._entry.28, ptr @bcm5974_wellspring_mode._entry.31, ptr @bcm5974_wellspring_mode._entry.34, ptr @bcm5974_wellspring_mode._entry_ptr, ptr @bcm5974_wellspring_mode._entry_ptr.30, ptr @bcm5974_wellspring_mode._entry_ptr.33, ptr @bcm5974_wellspring_mode._entry_ptr.36, ptr @report_bt_state._entry, ptr @report_bt_state._entry_ptr, ptr @debug, ptr @bcm5974_driver, ptr @.str, ptr @bcm5974_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcm5974_probe.__key, ptr @.str.6, ptr @.str.7, ptr @bcm5974_config_table, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_table to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_config_table to i32), i32 1904, i32 2368, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_irq_button._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_irq_button._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_bt_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_irq_trackpad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_irq_trackpad._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_start_traffic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_wellspring_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_wellspring_mode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_wellspring_mode._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5974_wellspring_mode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5974_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @bcm5974_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm5974_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @bcm5974_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5974_probe(ptr noundef %iface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %2 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.bcm5974_get_config.exit_crit_edge [
    i16 29698, label %cleanup.fold.split53.i
    i16 29442, label %cleanup.fold.split52.i
    i16 29186, label %cleanup.fold.split51.i
    i16 12290, label %cleanup.fold.split.i
    i16 12546, label %cleanup.fold.split19.i
    i16 12802, label %cleanup.fold.split20.i
    i16 13826, label %cleanup.fold.split21.i
    i16 14082, label %cleanup.fold.split22.i
    i16 14338, label %cleanup.fold.split23.i
    i16 16130, label %cleanup.fold.split24.i
    i16 16386, label %cleanup.fold.split25.i
    i16 16642, label %cleanup.fold.split26.i
    i16 16898, label %cleanup.fold.split27.i
    i16 17154, label %cleanup.fold.split28.i
    i16 17410, label %cleanup.fold.split29.i
    i16 17666, label %cleanup.fold.split30.i
    i16 17922, label %cleanup.fold.split31.i
    i16 18178, label %cleanup.fold.split32.i
    i16 19458, label %cleanup.fold.split33.i
    i16 19714, label %cleanup.fold.split34.i
    i16 19970, label %cleanup.fold.split35.i
    i16 20994, label %cleanup.fold.split36.i
    i16 21250, label %cleanup.fold.split37.i
    i16 21506, label %cleanup.fold.split38.i
    i16 18690, label %cleanup.fold.split39.i
    i16 18946, label %cleanup.fold.split40.i
    i16 19202, label %cleanup.fold.split41.i
    i16 25090, label %cleanup.fold.split42.i
    i16 25346, label %cleanup.fold.split43.i
    i16 25602, label %cleanup.fold.split44.i
    i16 22786, label %cleanup.fold.split45.i
    i16 23042, label %cleanup.fold.split46.i
    i16 23298, label %cleanup.fold.split47.i
    i16 -28670, label %cleanup.fold.split48.i
    i16 -28414, label %cleanup.fold.split49.i
    i16 -28158, label %cleanup.fold.split50.i
  ]

entry.bcm5974_get_config.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split19.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split20.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split21.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split22.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split23.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split24.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split25.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split26.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split27.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split28.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split29.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split30.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split31.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split32.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split33.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split34.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split35.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split36.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split37.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split38.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split39.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split40.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split41.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split42.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split43.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split44.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split45.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split46.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split47.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split48.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split49.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split50.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split51.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split52.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

cleanup.fold.split53.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm5974_get_config.exit

bcm5974_get_config.exit:                          ; preds = %cleanup.fold.split53.i, %cleanup.fold.split52.i, %cleanup.fold.split51.i, %cleanup.fold.split50.i, %cleanup.fold.split49.i, %cleanup.fold.split48.i, %cleanup.fold.split47.i, %cleanup.fold.split46.i, %cleanup.fold.split45.i, %cleanup.fold.split44.i, %cleanup.fold.split43.i, %cleanup.fold.split42.i, %cleanup.fold.split41.i, %cleanup.fold.split40.i, %cleanup.fold.split39.i, %cleanup.fold.split38.i, %cleanup.fold.split37.i, %cleanup.fold.split36.i, %cleanup.fold.split35.i, %cleanup.fold.split34.i, %cleanup.fold.split33.i, %cleanup.fold.split32.i, %cleanup.fold.split31.i, %cleanup.fold.split30.i, %cleanup.fold.split29.i, %cleanup.fold.split28.i, %cleanup.fold.split27.i, %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split24.i, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split21.i, %cleanup.fold.split20.i, %cleanup.fold.split19.i, %cleanup.fold.split.i, %entry.bcm5974_get_config.exit_crit_edge
  %retval.0.i = phi ptr [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 1), %cleanup.fold.split19.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 1), %cleanup.fold.split20.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 2), %cleanup.fold.split21.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 2), %cleanup.fold.split22.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 2), %cleanup.fold.split23.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 3), %cleanup.fold.split24.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 3), %cleanup.fold.split25.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 3), %cleanup.fold.split26.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 4), %cleanup.fold.split27.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 4), %cleanup.fold.split28.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 4), %cleanup.fold.split29.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 5), %cleanup.fold.split30.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 5), %cleanup.fold.split31.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 5), %cleanup.fold.split32.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 6), %cleanup.fold.split33.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 6), %cleanup.fold.split34.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 6), %cleanup.fold.split35.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 7), %cleanup.fold.split36.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 7), %cleanup.fold.split37.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 7), %cleanup.fold.split38.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 8), %cleanup.fold.split39.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 8), %cleanup.fold.split40.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 8), %cleanup.fold.split41.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 9), %cleanup.fold.split42.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 9), %cleanup.fold.split43.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 9), %cleanup.fold.split44.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 10), %cleanup.fold.split45.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 10), %cleanup.fold.split46.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 10), %cleanup.fold.split47.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 11), %cleanup.fold.split48.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 11), %cleanup.fold.split49.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 11), %cleanup.fold.split50.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 12), %cleanup.fold.split51.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 12), %cleanup.fold.split52.i ], [ getelementptr inbounds ([14 x %struct.bcm5974_config], ptr @bcm5974_config_table, i32 0, i32 12), %cleanup.fold.split53.i ], [ @bcm5974_config_table, %entry.bcm5974_get_config.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 516) #12
  %call3 = tail call ptr @input_allocate_device() #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %bcm5974_get_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.1) #13
  br label %err_free_devs

if.end:                                           ; preds = %bcm5974_get_config.exit
  %udev6 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %udev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %udev6, align 8
  %intf = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %iface, ptr %intf, align 4
  %input = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %input, align 8
  %cfg7 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %cfg7, ptr %retval.0.i, i32 136)
  %pm_mutex = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %pm_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @bcm5974_probe.__key) #9
  %tp_type = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 7
  %10 = ptrtoint ptr %tp_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then11:                                        ; preds = %if.end
  %call12 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %bt_urb = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %bt_urb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %bt_urb, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then11.err_free_devs_crit_edge, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then11.err_free_devs_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_devs

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call18 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tp_urb = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %tp_urb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %tp_urb, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end17.err_free_bt_urb_crit_edge, label %if.end22

if.end17.err_free_bt_urb_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_bt_urb

if.end22:                                         ; preds = %if.end17
  %bt_urb23 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %bt_urb23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt_urb23, align 4
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %if.end22.if.end34_crit_edge, label %if.then25

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then25:                                        ; preds = %if.end22
  %16 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev6, align 8
  %bt_datalen = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 4, i32 5
  %18 = ptrtoint ptr %bt_datalen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bt_datalen, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 15
  %call29 = tail call ptr @usb_alloc_coherent(ptr noundef %17, i32 noundef %19, i32 noundef 3264, ptr noundef %transfer_dma) #9
  %bt_data = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %bt_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call29, ptr %bt_data, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.then25.err_free_urb_crit_edge, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then25.err_free_urb_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_urb

if.end34:                                         ; preds = %if.then25.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  %21 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev6, align 8
  %tp_datalen = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 4, i32 9
  %23 = ptrtoint ptr %tp_datalen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tp_datalen, align 8
  %25 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp_urb, align 4
  %transfer_dma38 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 15
  %call39 = tail call ptr @usb_alloc_coherent(ptr noundef %22, i32 noundef %24, i32 noundef 3264, ptr noundef %transfer_dma38) #9
  %tp_data = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %tp_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call39, ptr %tp_data, align 8
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.end34.err_free_bt_buffer_crit_edge, label %if.end43

if.end34.err_free_bt_buffer_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_bt_buffer

if.end43:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %bt_urb23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bt_urb23, align 4
  %tobool45.not = icmp eq ptr %29, null
  br i1 %tobool45.not, label %if.end43.if.end53_crit_edge, label %if.then46

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %bt_ep = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 4
  %30 = ptrtoint ptr %bt_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bt_ep, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %33, 8
  %shl1.i = shl i32 %31, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or49 = or i32 %or.i, 1073741952
  %bt_data50 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %bt_data50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bt_data50, align 8
  %bt_datalen52 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 4, i32 5
  %36 = ptrtoint ptr %bt_datalen52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bt_datalen52, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or49, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %35, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @bcm5974_irq_button, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %44 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 25
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %44, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 23
  %46 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %if.end43.if.end53_crit_edge
  %47 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tp_urb, align 4
  %tp_ep = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 6
  %49 = ptrtoint ptr %tp_ep to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tp_ep, align 4
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 8
  %shl.i178 = shl i32 %52, 8
  %shl1.i179 = shl i32 %50, 15
  %or.i180 = or i32 %shl1.i179, %shl.i178
  %or57 = or i32 %or.i180, 1073741952
  %53 = ptrtoint ptr %tp_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tp_data, align 8
  %55 = ptrtoint ptr %tp_datalen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tp_datalen, align 8
  %dev1.i181 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 8
  %57 = ptrtoint ptr %dev1.i181 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.i, ptr %dev1.i181, align 4
  %pipe2.i182 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 10
  %58 = ptrtoint ptr %pipe2.i182 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or57, ptr %pipe2.i182, align 4
  %transfer_buffer3.i183 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  %59 = ptrtoint ptr %transfer_buffer3.i183 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %54, ptr %transfer_buffer3.i183, align 4
  %transfer_buffer_length.i184 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 19
  %60 = ptrtoint ptr %transfer_buffer_length.i184 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %56, ptr %transfer_buffer_length.i184, align 4
  %complete.i185 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 28
  %61 = ptrtoint ptr %complete.i185 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @bcm5974_irq_trackpad, ptr %complete.i185, align 4
  %context4.i186 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 27
  %62 = ptrtoint ptr %context4.i186 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %context4.i186, align 4
  %63 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 25
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %63, align 4
  %start_frame.i187 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 23
  %65 = ptrtoint ptr %start_frame.i187 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %start_frame.i187, align 4
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %66 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull @.str.24, ptr noundef %69, ptr noundef %devpath.i) #9
  %call64 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.7, i32 noundef 64) #9
  %70 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str, ptr %call3, align 8
  %phys67 = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 1
  %71 = ptrtoint ptr %phys67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i, ptr %phys67, align 4
  %72 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %udev6, align 8
  %id69 = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3
  %74 = ptrtoint ptr %id69 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 3, ptr %id69, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 16, i32 7
  %75 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %idVendor.i, align 8
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #9
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %vendor.i, align 2
  %idProduct.i188 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 16, i32 8
  %79 = ptrtoint ptr %idProduct.i188 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %idProduct.i188, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #9
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 2
  %82 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 16, i32 9
  %83 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %bcdDevice.i, align 4
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #9
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 3
  %86 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %version.i, align 2
  %caps = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 3
  %87 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %caps, align 4
  %conv = trunc i32 %88 to i16
  store i16 %conv, ptr %version.i, align 2
  %dev71 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 1
  %89 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %dev71, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 31
  %91 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @bcm5974_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 32
  %92 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @bcm5974_close, ptr %close, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 5
  %93 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %94, 8
  store i32 %or.i.i, ptr %evbit.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 24, i32 noundef 0, i32 noundef 256, i32 noundef 5, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 28, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0) #9
  %w.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 20
  %95 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i.i, label %if.end53.set_abs.exit.i_crit_edge, label %cond.true.i.i

if.end53.set_abs.exit.i_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit.i

cond.true.i.i:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %max.i.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 20, i32 2
  %97 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max.i.i, align 4
  %min.i.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 20, i32 1
  %99 = ptrtoint ptr %min.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %min.i.i, align 4
  %sub.i.i = sub i32 %98, %100
  %div.i.i = sdiv i32 %sub.i.i, %96
  br label %set_abs.exit.i

set_abs.exit.i:                                   ; preds = %cond.true.i.i, %if.end53.set_abs.exit.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.true.i.i ], [ 0, %if.end53.set_abs.exit.i_crit_edge ]
  %min2.i.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 20, i32 1
  %101 = ptrtoint ptr %min2.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %min2.i.i, align 4
  %max3.i.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 20, i32 2
  %103 = ptrtoint ptr %max3.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max3.i.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 48, i32 noundef %102, i32 noundef %104, i32 noundef %cond.i.i, i32 noundef 0) #9
  %105 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i31.i = icmp eq i32 %106, 0
  br i1 %tobool.not.i31.i, label %set_abs.exit.i.set_abs.exit40.i_crit_edge, label %cond.true.i36.i

set_abs.exit.i.set_abs.exit40.i_crit_edge:        ; preds = %set_abs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit40.i

cond.true.i36.i:                                  ; preds = %set_abs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %max3.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max3.i.i, align 4
  %109 = ptrtoint ptr %min2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %min2.i.i, align 4
  %sub.i34.i = sub i32 %108, %110
  %div.i35.i = sdiv i32 %sub.i34.i, %106
  br label %set_abs.exit40.i

set_abs.exit40.i:                                 ; preds = %cond.true.i36.i, %set_abs.exit.i.set_abs.exit40.i_crit_edge
  %cond.i37.i = phi i32 [ %div.i35.i, %cond.true.i36.i ], [ 0, %set_abs.exit.i.set_abs.exit40.i_crit_edge ]
  %111 = ptrtoint ptr %min2.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %min2.i.i, align 4
  %113 = ptrtoint ptr %max3.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max3.i.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 49, i32 noundef %112, i32 noundef %114, i32 noundef %cond.i37.i, i32 noundef 0) #9
  %115 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i41.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i41.i, label %set_abs.exit40.i.set_abs.exit50.i_crit_edge, label %cond.true.i46.i

set_abs.exit40.i.set_abs.exit50.i_crit_edge:      ; preds = %set_abs.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit50.i

cond.true.i46.i:                                  ; preds = %set_abs.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %max3.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max3.i.i, align 4
  %119 = ptrtoint ptr %min2.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %min2.i.i, align 4
  %sub.i44.i = sub i32 %118, %120
  %div.i45.i = sdiv i32 %sub.i44.i, %116
  br label %set_abs.exit50.i

set_abs.exit50.i:                                 ; preds = %cond.true.i46.i, %set_abs.exit40.i.set_abs.exit50.i_crit_edge
  %cond.i47.i = phi i32 [ %div.i45.i, %cond.true.i46.i ], [ 0, %set_abs.exit40.i.set_abs.exit50.i_crit_edge ]
  %121 = ptrtoint ptr %min2.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %min2.i.i, align 4
  %123 = ptrtoint ptr %max3.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max3.i.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 50, i32 noundef %122, i32 noundef %124, i32 noundef %cond.i47.i, i32 noundef 0) #9
  %125 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i51.i = icmp eq i32 %126, 0
  br i1 %tobool.not.i51.i, label %set_abs.exit50.i.set_abs.exit60.i_crit_edge, label %cond.true.i56.i

set_abs.exit50.i.set_abs.exit60.i_crit_edge:      ; preds = %set_abs.exit50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit60.i

cond.true.i56.i:                                  ; preds = %set_abs.exit50.i
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %max3.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max3.i.i, align 4
  %129 = ptrtoint ptr %min2.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %min2.i.i, align 4
  %sub.i54.i = sub i32 %128, %130
  %div.i55.i = sdiv i32 %sub.i54.i, %126
  br label %set_abs.exit60.i

set_abs.exit60.i:                                 ; preds = %cond.true.i56.i, %set_abs.exit50.i.set_abs.exit60.i_crit_edge
  %cond.i57.i = phi i32 [ %div.i55.i, %cond.true.i56.i ], [ 0, %set_abs.exit50.i.set_abs.exit60.i_crit_edge ]
  %131 = ptrtoint ptr %min2.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %min2.i.i, align 4
  %133 = ptrtoint ptr %max3.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max3.i.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 51, i32 noundef %132, i32 noundef %134, i32 noundef %cond.i57.i, i32 noundef 0) #9
  %o.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 23
  %135 = ptrtoint ptr %o.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %o.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i61.i = icmp eq i32 %136, 0
  br i1 %tobool.not.i61.i, label %set_abs.exit60.i.set_abs.exit70.i_crit_edge, label %cond.true.i66.i

set_abs.exit60.i.set_abs.exit70.i_crit_edge:      ; preds = %set_abs.exit60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit70.i

cond.true.i66.i:                                  ; preds = %set_abs.exit60.i
  call void @__sanitizer_cov_trace_pc() #11
  %max.i62.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 23, i32 2
  %137 = ptrtoint ptr %max.i62.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max.i62.i, align 4
  %min.i63.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 23, i32 1
  %139 = ptrtoint ptr %min.i63.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %min.i63.i, align 4
  %sub.i64.i = sub i32 %138, %140
  %div.i65.i = sdiv i32 %sub.i64.i, %136
  br label %set_abs.exit70.i

set_abs.exit70.i:                                 ; preds = %cond.true.i66.i, %set_abs.exit60.i.set_abs.exit70.i_crit_edge
  %cond.i67.i = phi i32 [ %div.i65.i, %cond.true.i66.i ], [ 0, %set_abs.exit60.i.set_abs.exit70.i_crit_edge ]
  %min2.i68.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 23, i32 1
  %141 = ptrtoint ptr %min2.i68.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %min2.i68.i, align 4
  %max3.i69.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 23, i32 2
  %143 = ptrtoint ptr %max3.i69.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max3.i69.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 52, i32 noundef %142, i32 noundef %144, i32 noundef %cond.i67.i, i32 noundef 0) #9
  %x.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 21
  %145 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i71.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i71.i, label %set_abs.exit70.i.set_abs.exit80.i_crit_edge, label %cond.true.i76.i

set_abs.exit70.i.set_abs.exit80.i_crit_edge:      ; preds = %set_abs.exit70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit80.i

cond.true.i76.i:                                  ; preds = %set_abs.exit70.i
  call void @__sanitizer_cov_trace_pc() #11
  %max.i72.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 21, i32 2
  %147 = ptrtoint ptr %max.i72.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %max.i72.i, align 4
  %min.i73.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 21, i32 1
  %149 = ptrtoint ptr %min.i73.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %min.i73.i, align 4
  %sub.i74.i = sub i32 %148, %150
  %div.i75.i = sdiv i32 %sub.i74.i, %146
  br label %set_abs.exit80.i

set_abs.exit80.i:                                 ; preds = %cond.true.i76.i, %set_abs.exit70.i.set_abs.exit80.i_crit_edge
  %cond.i77.i = phi i32 [ %div.i75.i, %cond.true.i76.i ], [ 0, %set_abs.exit70.i.set_abs.exit80.i_crit_edge ]
  %min2.i78.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 21, i32 1
  %151 = ptrtoint ptr %min2.i78.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %min2.i78.i, align 4
  %max3.i79.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 21, i32 2
  %153 = ptrtoint ptr %max3.i79.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %max3.i79.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 53, i32 noundef %152, i32 noundef %154, i32 noundef %cond.i77.i, i32 noundef 0) #9
  %y.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 22
  %155 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i81.i = icmp eq i32 %156, 0
  br i1 %tobool.not.i81.i, label %set_abs.exit80.i.set_abs.exit90.i_crit_edge, label %cond.true.i86.i

set_abs.exit80.i.set_abs.exit90.i_crit_edge:      ; preds = %set_abs.exit80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit90.i

cond.true.i86.i:                                  ; preds = %set_abs.exit80.i
  call void @__sanitizer_cov_trace_pc() #11
  %max.i82.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 22, i32 2
  %157 = ptrtoint ptr %max.i82.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %max.i82.i, align 4
  %min.i83.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 22, i32 1
  %159 = ptrtoint ptr %min.i83.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %min.i83.i, align 4
  %sub.i84.i = sub i32 %158, %160
  %div.i85.i = sdiv i32 %sub.i84.i, %156
  br label %set_abs.exit90.i

set_abs.exit90.i:                                 ; preds = %cond.true.i86.i, %set_abs.exit80.i.set_abs.exit90.i_crit_edge
  %cond.i87.i = phi i32 [ %div.i85.i, %cond.true.i86.i ], [ 0, %set_abs.exit80.i.set_abs.exit90.i_crit_edge ]
  %min2.i88.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 22, i32 1
  %161 = ptrtoint ptr %min2.i88.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %min2.i88.i, align 4
  %max3.i89.i = getelementptr inbounds %struct.bcm5974_config, ptr %retval.0.i, i32 0, i32 22, i32 2
  %163 = ptrtoint ptr %max3.i89.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %max3.i89.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 54, i32 noundef %162, i32 noundef %164, i32 noundef %cond.i87.i, i32 noundef 0) #9
  %165 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %evbit.i, align 4
  %or.i28.i = or i32 %166, 2
  store i32 %or.i28.i, ptr %evbit.i, align 4
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %call3, i32 0, i32 6, i32 8
  %167 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr.i.i, align 4
  %or.i29.i = or i32 %168, 65536
  store i32 %or.i29.i, ptr %add.ptr.i.i, align 4
  %169 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %caps, align 4
  %and.i = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %set_abs.exit90.i.setup_events_to_report.exit_crit_edge, label %if.then.i

set_abs.exit90.i.setup_events_to_report.exit_crit_edge: ; preds = %set_abs.exit90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_events_to_report.exit

if.then.i:                                        ; preds = %set_abs.exit90.i
  call void @__sanitizer_cov_trace_pc() #11
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 4
  %171 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %propbit.i, align 4
  %or.i30.i = or i32 %172, 4
  store i32 %or.i30.i, ptr %propbit.i, align 4
  br label %setup_events_to_report.exit

setup_events_to_report.exit:                      ; preds = %if.then.i, %set_abs.exit90.i.setup_events_to_report.exit_crit_edge
  %call.i189 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call3, i32 noundef 16, i32 noundef 13) #9
  %173 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %input, align 8
  %call74 = tail call i32 @input_register_device(ptr noundef %174) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %err_free_buffer

if.end77:                                         ; preds = %setup_events_to_report.exit
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i190 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %175 = ptrtoint ptr %driver_data.i.i190 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call7.i.i, ptr %driver_data.i.i190, align 4
  br label %cleanup

err_free_buffer:                                  ; preds = %setup_events_to_report.exit
  call void @__sanitizer_cov_trace_pc() #11
  %176 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %udev6, align 8
  %178 = ptrtoint ptr %tp_datalen to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tp_datalen, align 8
  %180 = ptrtoint ptr %tp_data to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tp_data, align 8
  %182 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tp_urb, align 4
  %transfer_dma83 = getelementptr inbounds %struct.urb, ptr %183, i32 0, i32 15
  %184 = ptrtoint ptr %transfer_dma83 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %transfer_dma83, align 4
  tail call void @usb_free_coherent(ptr noundef %177, i32 noundef %179, ptr noundef %181, i32 noundef %185) #9
  br label %err_free_bt_buffer

err_free_bt_buffer:                               ; preds = %err_free_buffer, %if.end34.err_free_bt_buffer_crit_edge
  %error.0 = phi i32 [ %call74, %err_free_buffer ], [ -12, %if.end34.err_free_bt_buffer_crit_edge ]
  %186 = ptrtoint ptr %bt_urb23 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bt_urb23, align 4
  %tobool85.not = icmp eq ptr %187, null
  br i1 %tobool85.not, label %err_free_bt_buffer.err_free_urb_crit_edge, label %if.then86

err_free_bt_buffer.err_free_urb_crit_edge:        ; preds = %err_free_bt_buffer
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_urb

if.then86:                                        ; preds = %err_free_bt_buffer
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %udev6, align 8
  %bt_datalen89 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 4, i32 5
  %190 = ptrtoint ptr %bt_datalen89 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bt_datalen89, align 8
  %bt_data90 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 8
  %192 = ptrtoint ptr %bt_data90 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bt_data90, align 8
  %transfer_dma92 = getelementptr inbounds %struct.urb, ptr %187, i32 0, i32 15
  %194 = ptrtoint ptr %transfer_dma92 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %transfer_dma92, align 4
  tail call void @usb_free_coherent(ptr noundef %189, i32 noundef %191, ptr noundef %193, i32 noundef %195) #9
  br label %err_free_urb

err_free_urb:                                     ; preds = %if.then86, %err_free_bt_buffer.err_free_urb_crit_edge, %if.then25.err_free_urb_crit_edge
  %error.1 = phi i32 [ %error.0, %if.then86 ], [ %error.0, %err_free_bt_buffer.err_free_urb_crit_edge ], [ -12, %if.then25.err_free_urb_crit_edge ]
  %196 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %tp_urb, align 4
  tail call void @usb_free_urb(ptr noundef %197) #9
  br label %err_free_bt_urb

err_free_bt_urb:                                  ; preds = %err_free_urb, %if.end17.err_free_bt_urb_crit_edge
  %error.2 = phi i32 [ %error.1, %err_free_urb ], [ -12, %if.end17.err_free_bt_urb_crit_edge ]
  %bt_urb95 = getelementptr inbounds %struct.bcm5974, ptr %call7.i.i, i32 0, i32 7
  %198 = ptrtoint ptr %bt_urb95 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bt_urb95, align 4
  tail call void @usb_free_urb(ptr noundef %199) #9
  br label %err_free_devs

err_free_devs:                                    ; preds = %err_free_bt_urb, %if.then11.err_free_devs_crit_edge, %do.end
  %error.3 = phi i32 [ %error.2, %err_free_bt_urb ], [ -12, %if.then11.err_free_devs_crit_edge ], [ -12, %do.end ]
  %driver_data.i.i191 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %200 = ptrtoint ptr %driver_data.i.i191 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %driver_data.i.i191, align 4
  tail call void @input_free_device(ptr noundef %call3) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_devs, %if.end77
  %retval.0 = phi i32 [ %error.3, %err_free_devs ], [ 0, %if.end77 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm5974_disconnect(ptr nocapture noundef %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %3) #9
  %udev = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tp_datalen = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 9
  %6 = ptrtoint ptr %tp_datalen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tp_datalen, align 4
  %tp_data = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %tp_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp_data, align 4
  %tp_urb = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp_urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %13) #9
  %bt_urb = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %bt_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt_urb, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %bt_datalen = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 5
  %18 = ptrtoint ptr %bt_datalen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bt_datalen, align 4
  %bt_data = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %bt_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bt_data, align 4
  %transfer_dma4 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 15
  %22 = ptrtoint ptr %transfer_dma4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_dma4, align 4
  tail call void @usb_free_coherent(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tp_urb, align 4
  tail call void @usb_free_urb(ptr noundef %25) #9
  %26 = ptrtoint ptr %bt_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bt_urb, align 4
  tail call void @usb_free_urb(ptr noundef %27) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5974_suspend(ptr nocapture noundef readonly %iface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %opened = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tp_urb.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %tp_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %bt_urb.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bt_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  %call.i = tail call fastcc i32 @bcm5974_wellspring_mode(ptr noundef %1, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5974_resume(ptr nocapture noundef readonly %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %opened = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @bcm5974_start_traffic(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm5974_irq_button(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf1 = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -75, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge66
    i32 -2, label %entry.do.body_crit_edge67
    i32 -108, label %entry.do.body_crit_edge68
  ]

entry.do.body_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge66, %entry.do.body_crit_edge67, %entry.do.body_crit_edge68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm5974_irq_button.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm5974_irq_button, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !107

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm5974_irq_button.__UNIQUE_ID_ddebug246, ptr noundef %dev4, ptr noundef nonnull @.str.9, i32 noundef %8) #9
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm5974_irq_button.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm5974_irq_button, %if.then18)) #9
          to label %exit [label %if.then18], !srcloc !107

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm5974_irq_button.__UNIQUE_ID_ddebug247, ptr noundef %dev19, ptr noundef nonnull @.str.10, i32 noundef %10) #9
  br label %exit

sw.epilog:                                        ; preds = %entry
  %bt_urb = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %bt_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bt_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 4
  %15 = load i32, ptr @debug, align 4
  br i1 %cmp.not.i, label %if.end.i, label %if.then26

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp1.i = icmp sgt i32 %15, 6
  br i1 %cmp1.i, label %do.end.i, label %if.end.i.report_bt_state.exit.thread_crit_edge

if.end.i.report_bt_state.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_bt_state.exit.thread

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %bt_data.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %bt_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv.i = zext i8 %19 to i32
  %button.i = getelementptr inbounds %struct.bt_data, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %button.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %button.i, align 1
  %conv4.i = zext i8 %21 to i32
  %rel_x.i = getelementptr inbounds %struct.bt_data, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %rel_x.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rel_x.i, align 1
  %conv6.i = zext i8 %23 to i32
  %rel_y.i = getelementptr inbounds %struct.bt_data, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %rel_y.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rel_y.i, align 1
  %conv8.i = zext i8 %25 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #13
  br label %report_bt_state.exit.thread

report_bt_state.exit.thread:                      ; preds = %do.end.i, %if.end.i.report_bt_state.exit.thread_crit_edge
  %input.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input.i, align 4
  %bt_data10.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %bt_data10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bt_data10.i, align 4
  %button11.i = getelementptr inbounds %struct.bt_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %button11.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %button11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.i = icmp ne i8 %31, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i.i) #9
  %32 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %exit

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %do.end30, label %if.then26.exit_crit_edge

if.then26.exit_crit_edge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %bt_urb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bt_urb, align 4
  %actual_length33 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 20
  %36 = ptrtoint ptr %actual_length33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual_length33, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %37) #13
  br label %exit

exit:                                             ; preds = %do.end30, %if.then26.exit_crit_edge, %report_bt_state.exit.thread, %if.then18, %do.body6
  %bt_urb37 = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %bt_urb37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bt_urb37, align 4
  %call38 = tail call i32 @usb_submit_urb(ptr noundef %39, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %exit.cleanup_crit_edge, label %do.end43

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end43:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.13, i32 noundef %call38) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm5974_irq_trackpad(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf1 = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %5, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -75, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge72
    i32 -2, label %entry.do.body_crit_edge73
    i32 -108, label %entry.do.body_crit_edge74
  ]

entry.do.body_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge72, %entry.do.body_crit_edge73, %entry.do.body_crit_edge74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm5974_irq_trackpad.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm5974_irq_trackpad, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !107

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm5974_irq_trackpad.__UNIQUE_ID_ddebug248, ptr noundef %dev4, ptr noundef nonnull @.str.18, i32 noundef %8) #9
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm5974_irq_trackpad.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm5974_irq_trackpad, %if.then18)) #9
          to label %exit [label %if.then18], !srcloc !107

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm5974_irq_trackpad.__UNIQUE_ID_ddebug249, ptr noundef %dev19, ptr noundef nonnull @.str.19, i32 noundef %10) #9
  br label %exit

sw.epilog:                                        ; preds = %entry
  %tp_urb = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %sw.epilog.exit_crit_edge, label %if.end25

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end25:                                         ; preds = %sw.epilog
  %input1.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input1.i, align 4
  %tp_header.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %tp_header.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tp_header.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp.i = icmp slt i32 %14, %18
  br i1 %cmp.i, label %if.end25.if.then30_crit_edge, label %lor.lhs.false.i

if.end25.if.then30_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false.i:                                  ; preds = %if.end25
  %sub.i = sub i32 %14, %18
  %tp_fsize.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 11
  %19 = ptrtoint ptr %tp_fsize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tp_fsize.i, align 4
  %sub.i.frozen = freeze i32 %sub.i
  %.frozen = freeze i32 %20
  %div.i = sdiv i32 %sub.i.frozen, %.frozen
  %21 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %sub.i.frozen, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp3.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.if.then30_crit_edge

lor.lhs.false.i.if.then30_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp7107.i = icmp sgt i32 %div.i, 0
  br i1 %cmp7107.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tp_data.i.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 10
  %tp_delta.i.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 12
  %min.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 22, i32 1
  %max.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 22, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.0109.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %n.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0108.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc21.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %tp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp_data.i.i, align 4
  %24 = ptrtoint ptr %tp_header.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tp_header.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %25
  %26 = ptrtoint ptr %tp_delta.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tp_delta.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %27
  %28 = ptrtoint ptr %tp_fsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tp_fsize.i, align 4
  %mul.i.i = mul i32 %29, %i.0108.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %mul.i.i
  %touch_major.i = getelementptr inbounds %struct.tp_finger, ptr %add.ptr2.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %touch_major.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %touch_major.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp9.i = icmp eq i16 %31, 0
  br i1 %cmp9.i, label %for.body.i.for.inc.i_crit_edge, label %if.end11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %abs_x.i = getelementptr inbounds %struct.tp_finger, ptr %add.ptr2.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %abs_x.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %abs_x.i, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #9
  %arrayidx.i = getelementptr %struct.bcm5974, ptr %1, i32 0, i32 12, i32 %n.0109.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min.i, align 4
  %38 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max.i, align 4
  %add.i = add i32 %39, %37
  %abs_y.i = getelementptr inbounds %struct.tp_finger, ptr %add.ptr2.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %abs_y.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %abs_y.i, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #9
  %43 = trunc i32 %add.i to i16
  %conv16.i = sub i16 %43, %42
  %y19.i = getelementptr %struct.bcm5974, ptr %1, i32 0, i32 12, i32 %n.0109.i, i32 1
  %44 = ptrtoint ptr %y19.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv16.i, ptr %y19.i, align 2
  %inc.i = add i32 %n.0109.i, 1
  %arrayidx20.i = getelementptr %struct.bcm5974, ptr %1, i32 0, i32 11, i32 %n.0109.i
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr2.i.i, ptr %arrayidx20.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ %n.0109.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end11.i ]
  %inc21.i = add nuw nsw i32 %i.0108.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, %div.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %n.1.i, %for.inc.i.for.end.i_crit_edge ]
  %slots.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 13
  %pos22.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 12
  %call24.i = tail call i32 @input_mt_assign_slots(ptr noundef %16, ptr noundef %slots.i, ptr noundef %pos22.i, i32 noundef %n.0.lcssa.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa.i)
  %cmp26110.i = icmp sgt i32 %n.0.lcssa.i, 0
  br i1 %cmp26110.i, label %for.end.i.for.body28.i_crit_edge, label %for.end.i.for.end37.i_crit_edge

for.end.i.for.end37.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i

for.end.i.for.body28.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.end.i.for.body28.i_crit_edge
  %i.1111.i = phi i32 [ %inc36.i, %for.body28.i.for.body28.i_crit_edge ], [ 0, %for.end.i.for.body28.i_crit_edge ]
  %arrayidx30.i = getelementptr %struct.bcm5974, ptr %1, i32 0, i32 13, i32 %i.1111.i
  %46 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx30.i, align 4
  %arrayidx32.i = getelementptr %struct.bcm5974, ptr %1, i32 0, i32 12, i32 %i.1111.i
  %arrayidx34.i = getelementptr %struct.bcm5974, ptr %1, i32 0, i32 11, i32 %i.1111.i
  %48 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx34.i, align 4
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 47, i32 noundef %47) #9
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %16, i32 noundef 0, i1 noundef zeroext true) #9
  %touch_major.i.i = getelementptr inbounds %struct.tp_finger, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %touch_major.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %touch_major.i.i, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #9
  %conv.i.i.i = sext i16 %52 to i32
  %shl.i.i = shl nsw i32 %conv.i.i.i, 1
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 48, i32 noundef %shl.i.i) #9
  %touch_minor.i.i = getelementptr inbounds %struct.tp_finger, ptr %49, i32 0, i32 9
  %53 = ptrtoint ptr %touch_minor.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %touch_minor.i.i, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #9
  %conv.i23.i.i = sext i16 %55 to i32
  %shl3.i.i = shl nsw i32 %conv.i23.i.i, 1
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 49, i32 noundef %shl3.i.i) #9
  %tool_major.i.i = getelementptr inbounds %struct.tp_finger, ptr %49, i32 0, i32 5
  %56 = ptrtoint ptr %tool_major.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tool_major.i.i, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #9
  %conv.i24.i.i = sext i16 %58 to i32
  %shl5.i.i = shl nsw i32 %conv.i24.i.i, 1
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 50, i32 noundef %shl5.i.i) #9
  %tool_minor.i.i = getelementptr inbounds %struct.tp_finger, ptr %49, i32 0, i32 6
  %59 = ptrtoint ptr %tool_minor.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tool_minor.i.i, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #9
  %conv.i25.i.i = sext i16 %61 to i32
  %shl7.i.i = shl nsw i32 %conv.i25.i.i, 1
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 51, i32 noundef %shl7.i.i) #9
  %orientation.i.i = getelementptr inbounds %struct.tp_finger, ptr %49, i32 0, i32 7
  %62 = ptrtoint ptr %orientation.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %orientation.i.i, align 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #9
  %conv.i26.i.i = sext i16 %64 to i32
  %sub.i.i = sub nsw i32 16384, %conv.i26.i.i
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 52, i32 noundef %sub.i.i) #9
  %65 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx32.i, align 2
  %conv.i94.i = sext i16 %66 to i32
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 53, i32 noundef %conv.i94.i) #9
  %y.i.i = getelementptr %struct.bcm5974, ptr %1, i32 0, i32 12, i32 %i.1111.i, i32 1
  %67 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %y.i.i, align 2
  %conv9.i.i = sext i16 %68 to i32
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 54, i32 noundef %conv9.i.i) #9
  %inc36.i = add nuw nsw i32 %i.1111.i, 1
  %exitcond112.not.i = icmp eq i32 %inc36.i, %n.0.lcssa.i
  br i1 %exitcond112.not.i, label %for.body28.i.for.end37.i_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i

for.body28.i.for.end37.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.body28.i.for.end37.i_crit_edge, %for.end.i.for.end37.i_crit_edge
  tail call void @input_mt_sync_frame(ptr noundef %16) #9
  %tp_data.i95.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %tp_data.i95.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tp_data.i95.i, align 4
  %71 = ptrtoint ptr %tp_header.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tp_header.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %70, i32 %72
  %tp_delta.i98.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 12
  %73 = ptrtoint ptr %tp_delta.i98.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tp_delta.i98.i, align 4
  %add.ptr1.i99.i = getelementptr i8, ptr %add.ptr.i97.i, i32 %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %tobool.not.i.i = icmp eq i32 %div.i, 0
  br i1 %tobool.not.i.i, label %for.end37.i.report_synaptics_data.exit.i_crit_edge, label %if.then.i.i

for.end37.i.report_synaptics_data.exit.i_crit_edge: ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_synaptics_data.exit.i

if.then.i.i:                                      ; preds = %for.end37.i
  %touch_major.i101.i = getelementptr inbounds %struct.tp_finger, ptr %add.ptr1.i99.i, i32 0, i32 8
  %75 = ptrtoint ptr %touch_major.i101.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %touch_major.i101.i, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #9
  %conv.i.i102.i = sext i16 %77 to i32
  %tool_major.i103.i = getelementptr inbounds %struct.tp_finger, ptr %add.ptr1.i99.i, i32 0, i32 5
  %78 = ptrtoint ptr %tool_major.i103.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %tool_major.i103.i, align 2
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #9
  %conv.i43.i.i = sext i16 %80 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp.i.i = icmp sgt i16 %77, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i.i.report_synaptics_data.exit.i_crit_edge

if.then.i.i.report_synaptics_data.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_synaptics_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %81 = ptrtoint ptr %add.ptr1.i99.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr1.i99.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool3.not.i.i = icmp eq i16 %82, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.report_synaptics_data.exit.i_crit_edge, label %if.then4.i.i

land.lhs.true.i.i.report_synaptics_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_synaptics_data.exit.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i104.i = shl nuw nsw i32 %conv.i.i102.i, 8
  %max.i.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 19, i32 2
  %83 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max.i.i, align 4
  %div.i.i = sdiv i32 %mul.i104.i, %84
  %85 = tail call i32 @llvm.smax.i32(i32 %div.i.i, i32 0) #9
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 255) #9
  %mul13.i.i = shl nsw i32 %conv.i43.i.i, 4
  %max15.i.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 20, i32 2
  %87 = ptrtoint ptr %max15.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max15.i.i, align 4
  %div16.i.i = sdiv i32 %mul13.i.i, %88
  %89 = tail call i32 @llvm.smax.i32(i32 %div16.i.i, i32 0) #9
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 15) #9
  br label %report_synaptics_data.exit.i

report_synaptics_data.exit.i:                     ; preds = %if.then4.i.i, %land.lhs.true.i.i.report_synaptics_data.exit.i_crit_edge, %if.then.i.i.report_synaptics_data.exit.i_crit_edge, %for.end37.i.report_synaptics_data.exit.i_crit_edge
  %abs_w.1.i.i = phi i32 [ 0, %for.end37.i.report_synaptics_data.exit.i_crit_edge ], [ %90, %if.then4.i.i ], [ 0, %land.lhs.true.i.i.report_synaptics_data.exit.i_crit_edge ], [ 0, %if.then.i.i.report_synaptics_data.exit.i_crit_edge ]
  %abs_p.1.i.i = phi i32 [ 0, %for.end37.i.report_synaptics_data.exit.i_crit_edge ], [ %86, %if.then4.i.i ], [ 0, %land.lhs.true.i.i.report_synaptics_data.exit.i_crit_edge ], [ 0, %if.then.i.i.report_synaptics_data.exit.i_crit_edge ]
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 24, i32 noundef %abs_p.1.i.i) #9
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 28, i32 noundef %abs_w.1.i.i) #9
  %caps.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 3
  %91 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %report_synaptics_data.exit.i.report_tp_state.exit_crit_edge, label %if.then39.i

report_synaptics_data.exit.i.report_tp_state.exit_crit_edge: ; preds = %report_synaptics_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_tp_state.exit

if.then39.i:                                      ; preds = %report_synaptics_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %tp_data.i95.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tp_data.i95.i, align 4
  %tp_button.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 4, i32 10
  %95 = ptrtoint ptr %tp_button.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tp_button.i, align 4
  %arrayidx40.i = getelementptr i8, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.i.i = icmp ne i8 %98, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i.i) #9
  br label %report_tp_state.exit

report_tp_state.exit:                             ; preds = %if.then39.i, %report_synaptics_data.exit.i.report_tp_state.exit_crit_edge
  tail call void @input_event(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %exit

if.then30:                                        ; preds = %lor.lhs.false.i.if.then30_crit_edge, %if.end25.if.then30_crit_edge
  %99 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp31 = icmp sgt i32 %99, 0
  br i1 %cmp31, label %do.end35, label %if.then30.exit_crit_edge

if.then30.exit_crit_edge:                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.end35:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tp_urb, align 4
  %actual_length38 = getelementptr inbounds %struct.urb, ptr %101, i32 0, i32 20
  %102 = ptrtoint ptr %actual_length38 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %actual_length38, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %103) #13
  br label %exit

exit:                                             ; preds = %do.end35, %if.then30.exit_crit_edge, %report_tp_state.exit, %sw.epilog.exit_crit_edge, %if.then18, %do.body6
  %tp_urb42 = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 9
  %104 = ptrtoint ptr %tp_urb42 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tp_urb42, align 4
  %call43 = tail call i32 @usb_submit_urb(ptr noundef %105, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %exit.cleanup_crit_edge, label %do.end48

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end48:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev49 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.22, i32 noundef %call43) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5974_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_mutex = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %call2 = tail call fastcc i32 @bcm5974_start_traffic(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then8.critedge

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %opened = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %opened, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  br label %cleanup

if.then8.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8.critedge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call2, %if.then8.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm5974_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %tp_urb.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tp_urb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %bt_urb.i = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %bt_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %call.i = tail call fastcc i32 @bcm5974_wellspring_mode(ptr noundef %1, i1 noundef zeroext false) #9
  %opened = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %opened, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  %intf = getelementptr inbounds %struct.bcm5974, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm5974_start_traffic(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bcm5974_wellspring_mode(ptr noundef %dev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %bt_urb = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 7
  %1 = ptrtoint ptr %bt_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bt_urb, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %if.then5

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %call7 = tail call i32 @usb_submit_urb(ptr noundef nonnull %2, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.err_reset_mode_crit_edge

if.then5.err_reset_mode_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_reset_mode

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %tp_urb = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %tp_urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp_urb, align 4
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %4, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %err_kill_bt

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_kill_bt:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bt_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bt_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #9
  br label %err_reset_mode

err_reset_mode:                                   ; preds = %err_kill_bt, %if.then5.err_reset_mode_crit_edge
  %error.0 = phi i32 [ %call7, %if.then5.err_reset_mode_crit_edge ], [ %call12, %err_kill_bt ]
  %call17 = tail call fastcc i32 @bcm5974_wellspring_mode(ptr noundef %dev, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %err_reset_mode, %if.end11.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %error.0, %err_reset_mode ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm5974_wellspring_mode(ptr nocapture noundef readonly %dev, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tp_type = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %tp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %um_size = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 4, i32 13
  %2 = ptrtoint ptr %um_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %um_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.1) #13
  br label %out

if.end4:                                          ; preds = %if.end
  %udev = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or7 = or i32 %shl.i, -2147483520
  %um_req_val = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 4, i32 14
  %10 = ptrtoint ptr %um_req_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %um_req_val, align 4
  %conv = trunc i32 %11 to i16
  %um_req_idx = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 4, i32 15
  %12 = ptrtoint ptr %um_req_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %um_req_idx, align 4
  %conv8 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %um_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %um_size, align 4
  %conv10 = trunc i32 %15 to i16
  %call11 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or7, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %conv, i16 noundef zeroext %conv8, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv10, i32 noundef 5000) #9
  %16 = ptrtoint ptr %um_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %um_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %17)
  %cmp13.not = icmp eq i32 %call11, %17
  br i1 %cmp13.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %intf19 = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %intf19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf19, align 4
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.29) #13
  br label %out

if.end21:                                         ; preds = %if.end4
  %um_switch_on = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 4, i32 17
  %um_switch_off = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 4, i32 18
  %cond.in = select i1 %on, ptr %um_switch_on, ptr %um_switch_off
  %20 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond = load i32, ptr %cond.in, align 4
  %conv24 = trunc i32 %cond to i8
  %um_switch_idx = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 4, i32 16
  %21 = ptrtoint ptr %um_switch_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %um_switch_idx, align 4
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv24, ptr %arrayidx, align 1
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i85 = shl i32 %27, 8
  %or28 = or i32 %shl.i85, -2147483648
  %28 = ptrtoint ptr %um_req_val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %um_req_val, align 4
  %conv30 = trunc i32 %29 to i16
  %30 = ptrtoint ptr %um_req_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %um_req_idx, align 4
  %conv32 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %um_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %um_size, align 4
  %conv34 = trunc i32 %33 to i16
  %call35 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or28, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %conv30, i16 noundef zeroext %conv32, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv34, i32 noundef 5000) #9
  %34 = ptrtoint ptr %um_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %um_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %35)
  %cmp37.not = icmp eq i32 %call35, %35
  br i1 %cmp37.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %intf43 = getelementptr inbounds %struct.bcm5974, ptr %dev, i32 0, i32 2
  %36 = ptrtoint ptr %intf43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intf43, align 4
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.32) #13
  br label %out

if.end45:                                         ; preds = %if.end21
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp46 = icmp sgt i32 %38, 1
  br i1 %cmp46, label %do.end51, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %cond54 = select i1 %on, ptr @.str.37, ptr @.str.38
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull %cond54) #13
  br label %out

out:                                              ; preds = %do.end51, %if.end45.out_crit_edge, %do.end42, %do.end18, %do.end
  %retval.1.i89 = phi ptr [ %call9.i, %do.end18 ], [ %call9.i, %do.end42 ], [ %call9.i, %do.end51 ], [ %call9.i, %if.end45.out_crit_edge ], [ null, %do.end ]
  %retval1.0 = phi i32 [ -5, %do.end18 ], [ -5, %do.end42 ], [ 0, %do.end51 ], [ 0, %if.end45.out_crit_edge ], [ -12, %do.end ]
  tail call void @kfree(ptr noundef %retval.1.i89) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/bcm5974.c", i32 155, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/bcm5974.c", i32 156, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/bcm5974.c", i32 157, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/bcm5974.c", i32 163, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype236, !8, !"__UNIQUE_ID_debugtype236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug237, !11, !"__UNIQUE_ID_debug237", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/bcm5974.c", i32 164, i32 1}
!12 = !{ptr @__initcall__kmod_bcm5974__250_1028_bcm5974_driver_init6, !13, !"__initcall__kmod_bcm5974__250_1028_bcm5974_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/bcm5974.c", i32 1028, i32 1}
!14 = !{ptr @__exitcall_bcm5974_driver_exit, !13, !"__exitcall_bcm5974_driver_exit", i1 false, i1 false}
!15 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/input/mouse/bcm5974.c", i32 162, i32 12}
!18 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bcm5974_driver, !20, !"bcm5974_driver", i1 false, i1 false}
!20 = !{!"../drivers/input/mouse/bcm5974.c", i32 1018, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/mouse/bcm5974.c", i32 910, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bcm5974_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @bcm5974_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @bcm5974_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/input/mouse/bcm5974.c", i32 918, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/bcm5974.c", i32 958, i32 21}
!34 = !{ptr @bcm5974_config_table, !35, !"bcm5974_config_table", i1 false, i1 false}
!35 = !{!"../drivers/input/mouse/bcm5974.c", i32 316, i32 36}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/mouse/bcm5974.c", i32 712, i32 3}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bcm5974_irq_button.__UNIQUE_ID_ddebug246, !37, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/mouse/bcm5974.c", i32 716, i32 3}
!42 = !{ptr @bcm5974_irq_button.__UNIQUE_ID_ddebug247, !41, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/mouse/bcm5974.c", i32 721, i32 3}
!45 = !{ptr @bcm5974_irq_button._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bcm5974_irq_button._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/mouse/bcm5974.c", i32 727, i32 3}
!49 = !{ptr @bcm5974_irq_button._entry.12, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm5974_irq_button._entry_ptr.14, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/mouse/bcm5974.c", i32 553, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @report_bt_state._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @report_bt_state._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/mouse/bcm5974.c", i32 743, i32 3}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bcm5974_irq_trackpad.__UNIQUE_ID_ddebug248, !57, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/bcm5974.c", i32 747, i32 3}
!62 = !{ptr @bcm5974_irq_trackpad.__UNIQUE_ID_ddebug249, !61, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/mouse/bcm5974.c", i32 756, i32 3}
!65 = !{ptr @bcm5974_irq_trackpad._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bcm5974_irq_trackpad._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/mouse/bcm5974.c", i32 762, i32 3}
!69 = !{ptr @bcm5974_irq_trackpad._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bcm5974_irq_trackpad._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/usb.h", i32 912, i32 31}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/mouse/bcm5974.c", i32 789, i32 3}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @bcm5974_start_traffic._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @bcm5974_start_traffic._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/mouse/bcm5974.c", i32 659, i32 3}
!80 = !{ptr @bcm5974_wellspring_mode._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bcm5974_wellspring_mode._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/mouse/bcm5974.c", i32 671, i32 3}
!84 = !{ptr @bcm5974_wellspring_mode._entry.28, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @bcm5974_wellspring_mode._entry_ptr.30, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/mouse/bcm5974.c", i32 686, i32 3}
!88 = !{ptr @bcm5974_wellspring_mode._entry.31, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @bcm5974_wellspring_mode._entry_ptr.33, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/mouse/bcm5974.c", i32 691, i32 2}
!92 = !{ptr @bcm5974_wellspring_mode._entry.34, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @bcm5974_wellspring_mode._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @bcm5974_table, !97, !"bcm5974_table", i1 false, i1 false}
!97 = !{!"../drivers/input/mouse/bcm5974.c", i32 97, i32 35}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2148721104, i64 2148721109, i64 2148721122, i64 2148721166, i64 2148721200, i64 2148721221}
