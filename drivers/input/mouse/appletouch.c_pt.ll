; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/appletouch.c_pt.bc'
source_filename = "../drivers/input/mouse/appletouch.c"
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
%struct.atp_info = type { i32, i32, i32, i32, i32, i32, ptr, i32 }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.atp = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, [42 x i8], [42 x i8], [42 x i32], [34 x i32], [34 x i32], i32, %struct.work_struct }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [32 x i8] c"appletouch.author=Johannes Berg\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [30 x i8] c"appletouch.author=Stelian Pop\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [31 x i8] c"appletouch.author=Frank Arnold\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [37 x i8] c"appletouch.author=Michael Hanselmann\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [30 x i8] c"appletouch.author=Sven Anders\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [71 x i8] c"appletouch.description=Apple PowerBook and MacBook USB touchpad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [47 x i8] c"appletouch.file=drivers/input/mouse/appletouch\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [23 x i8] c"appletouch.license=GPL\00", section ".modinfo", align 1
@__param_str_threshold = internal constant [21 x i8] c"appletouch.threshold\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@threshold = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_threshold = internal constant %struct.kernel_param { ptr @__param_str_threshold, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @threshold } }, section "__param", align 4
@__UNIQUE_ID_thresholdtype240 = internal constant [34 x i8] c"appletouch.parmtype=threshold:int\00", section ".modinfo", align 1
@__UNIQUE_ID_threshold241 = internal constant [130 x i8] c"appletouch.parm=threshold:Discard any change in data from a sensor (the trackpad has many of these sensors) less than this value.\00", section ".modinfo", align 1
@__param_str_debug = internal constant [17 x i8] c"appletouch.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype242 = internal constant [30 x i8] c"appletouch.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug243 = internal constant [48 x i8] c"appletouch.parm=debug:Activate debugging output\00", section ".modinfo", align 1
@__initcall__kmod_appletouch__254_1007_atp_driver_init6 = internal global ptr @atp_driver_init, section ".initcall6.init", align 4
@atp_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @atp_probe, ptr @atp_disconnect, ptr null, ptr @atp_suspend, ptr @atp_resume, ptr @atp_reset_resume, ptr null, ptr null, ptr @atp_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_atp_driver_exit = internal global ptr @atp_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"appletouch\00", [21 x i8] zeroinitializer }, align 32
@atp_table = internal constant { [17 x %struct.usb_device_id], [104 x i8] } { [17 x %struct.usb_device_id] [%struct.usb_device_id { i16 643, i16 1452, i16 526, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @fountain_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 527, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @fountain_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 778, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @fountain_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 779, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser1_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 532, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser2_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser2_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 534, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser2_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 535, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser3_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser3_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser3_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser4_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 539, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser4_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 540, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser4_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser4_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser4_info to i32) }, %struct.usb_device_id { i16 643, i16 1452, i16 555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i32 ptrtoint (ptr @geyser4_info to i32) }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@atp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not find int-in endpoint\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atp_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/mouse/appletouch.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atp_probe._entry_ptr = internal global ptr @atp_probe._entry, section ".printk_index", align 4
@atp_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 861, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@atp_probe._entry_ptr.8 = internal global ptr @atp_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@atp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&dev->work)\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fountain_info = internal constant { %struct.atp_info, [32 x i8] } { %struct.atp_info { i32 16, i32 26, i32 16, i32 64, i32 43, i32 81, ptr @atp_complete_geyser_1_2, i32 16 }, [32 x i8] zeroinitializer }, align 32
@atp_handle_geyser._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 823, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Geyser mode initialized.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atp_handle_geyser\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atp_handle_geyser._entry_ptr = internal global ptr @atp_handle_geyser._entry, section ".printk_index", align 4
@geyser2_info = internal constant { %struct.atp_info, [32 x i8] } { %struct.atp_info { i32 15, i32 20, i32 9, i32 64, i32 43, i32 64, ptr @atp_complete_geyser_1_2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017appletouch: %s\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atp_complete_geyser_1_2\00", [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr = internal global ptr @atp_complete_geyser_1_2._entry, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sample\00", [25 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr.19 = internal global ptr @atp_complete_geyser_1_2._entry.17, section ".printk_index", align 4
@atp_complete_geyser_1_2._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.3, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr.22 = internal global ptr @atp_complete_geyser_1_2._entry.20, section ".printk_index", align 4
@atp_complete_geyser_1_2._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr.24 = internal global ptr @atp_complete_geyser_1_2._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"accumulator\00", [20 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr.27 = internal global ptr @atp_complete_geyser_1_2._entry.26, section ".printk_index", align 4
@atp_complete_geyser_1_2._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr.29 = internal global ptr @atp_complete_geyser_1_2._entry.28, section ".printk_index", align 4
@atp_complete_geyser_1_2._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.15, ptr @.str.3, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017appletouch: X: %3d Y: %3d Xz: %3d Yz: %3d\0A\00", [51 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr.32 = internal global ptr @atp_complete_geyser_1_2._entry.30, section ".printk_index", align 4
@atp_complete_geyser_1_2._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.15, ptr @.str.3, i32 650, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"atp_complete: usb_submit_urb failed with result %d\0A\00", [44 x i8] zeroinitializer }, align 32
@atp_complete_geyser_1_2._entry_ptr.35 = internal global ptr @atp_complete_geyser_1_2._entry.33, section ".printk_index", align 4
@atp_status_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 458, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"appletouch: OVERFLOW with data length %d, actual length is %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atp_status_check\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atp_status_check._entry_ptr = internal global ptr @atp_status_check._entry, section ".printk_index", align 4
@atp_status_check.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.39, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"atp_complete: urb shutting down with status: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@atp_status_check.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.40, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"atp_complete: nonzero urb status received: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@atp_status_check._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017appletouch: incomplete data package (first byte: %d, length: %d).\0A\00", [59 x i8] zeroinitializer }, align 32
@atp_status_check._entry_ptr.43 = internal global ptr @atp_status_check._entry.41, section ".printk_index", align 4
@atp_detect_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 498, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"appletouch: 17\22 model detected.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atp_detect_size\00", [16 x i8] zeroinitializer }, align 32
@atp_detect_size._entry_ptr = internal global ptr @atp_detect_size._entry, section ".printk_index", align 4
@atp_geyser_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.46, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atp_geyser_init\00", [16 x i8] zeroinitializer }, align 32
@atp_geyser_init._entry_ptr = internal global ptr @atp_geyser_init._entry, section ".printk_index", align 4
@atp_geyser_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017atp_geyser_init: read error\0A\00", [33 x i8] zeroinitializer }, align 32
@atp_geyser_init._entry_ptr.49 = internal global ptr @atp_geyser_init._entry.47, section ".printk_index", align 4
@atp_geyser_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017appletouch[%d]: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@atp_geyser_init._entry_ptr.52 = internal global ptr @atp_geyser_init._entry.50, section ".printk_index", align 4
@atp_geyser_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read mode from device.\0A\00", [62 x i8] zeroinitializer }, align 32
@atp_geyser_init._entry_ptr.55 = internal global ptr @atp_geyser_init._entry.53, section ".printk_index", align 4
@atp_geyser_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017atp_geyser_init: write error\0A\00", [32 x i8] zeroinitializer }, align 32
@atp_geyser_init._entry_ptr.58 = internal global ptr @atp_geyser_init._entry.56, section ".printk_index", align 4
@atp_geyser_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_geyser_init._entry_ptr.60 = internal global ptr @atp_geyser_init._entry.59, section ".printk_index", align 4
@atp_geyser_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.46, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request geyser raw mode\0A\00", [61 x i8] zeroinitializer }, align 32
@atp_geyser_init._entry_ptr.63 = internal global ptr @atp_geyser_init._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@atp_reinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017appletouch: putting appletouch to sleep (reinit)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atp_reinit\00", [21 x i8] zeroinitializer }, align 32
@atp_reinit._entry_ptr = internal global ptr @atp_reinit._entry, section ".printk_index", align 4
@atp_reinit._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"atp_reinit: usb_submit_urb failed with error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@atp_reinit._entry_ptr.69 = internal global ptr @atp_reinit._entry.67, section ".printk_index", align 4
@atp_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 955, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"input: appletouch disconnected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atp_disconnect\00", [17 x i8] zeroinitializer }, align 32
@atp_disconnect._entry_ptr = internal global ptr @atp_disconnect._entry, section ".printk_index", align 4
@geyser1_info = internal constant { %struct.atp_info, [32 x i8] } { %struct.atp_info { i32 16, i32 26, i32 16, i32 64, i32 43, i32 81, ptr @atp_complete_geyser_1_2, i32 16 }, [32 x i8] zeroinitializer }, align 32
@geyser3_info = internal constant { %struct.atp_info, [32 x i8] } { %struct.atp_info { i32 20, i32 0, i32 10, i32 64, i32 64, i32 64, ptr @atp_complete_geyser_3_4, i32 0 }, [32 x i8] zeroinitializer }, align 32
@geyser4_info = internal constant { %struct.atp_info, [32 x i8] } { %struct.atp_info { i32 20, i32 0, i32 10, i32 64, i32 64, i32 64, ptr @atp_complete_geyser_3_4, i32 0 }, [32 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.72, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atp_complete_geyser_3_4\00", [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr = internal global ptr @atp_complete_geyser_3_4._entry, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.72, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.74 = internal global ptr @atp_complete_geyser_3_4._entry.73, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.72, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.76 = internal global ptr @atp_complete_geyser_3_4._entry.75, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.72, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017appletouch: updated base values\0A\00", [61 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.79 = internal global ptr @atp_complete_geyser_3_4._entry.77, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.72, ptr @.str.3, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.81 = internal global ptr @atp_complete_geyser_3_4._entry.80, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.72, ptr @.str.3, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.83 = internal global ptr @atp_complete_geyser_3_4._entry.82, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.72, ptr @.str.3, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.85 = internal global ptr @atp_complete_geyser_3_4._entry.84, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.72, ptr @.str.3, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.87 = internal global ptr @atp_complete_geyser_3_4._entry.86, section ".printk_index", align 4
@atp_complete_geyser_3_4._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.72, ptr @.str.3, i32 793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atp_complete_geyser_3_4._entry_ptr.89 = internal global ptr @atp_complete_geyser_3_4._entry.88, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967221, i64 4294967294]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 245, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 251, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"atp_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 997, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1007, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [10 x i8] c"atp_table\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 114, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 853, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 861, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 890, i32 21 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 919, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"fountain_info\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 43, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 823, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"geyser2_info\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 65, i32 30 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 564, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 594, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 612, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 648, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 456, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 466, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 472, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 480, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 497, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 270, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 281, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 283, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 285, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 300, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 302, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 304, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 912, i32 31 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 323, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 328, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 955, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [13 x i8] c"geyser1_info\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 54, i32 30 }
@___asan_gen_.308 = private unnamed_addr constant [13 x i8] c"geyser3_info\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 76, i32 30 }
@___asan_gen_.311 = private unnamed_addr constant [13 x i8] c"geyser4_info\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 86, i32 30 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 686, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 691, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 713, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 732, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private constant [36 x i8] c"../drivers/input/mouse/appletouch.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 791, i32 3 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_debug243, ptr @__UNIQUE_ID_debugtype242, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_threshold241, ptr @__UNIQUE_ID_thresholdtype240, ptr @__exitcall_atp_driver_exit, ptr @__initcall__kmod_appletouch__254_1007_atp_driver_init6, ptr @__param_debug, ptr @__param_threshold, ptr @atp_complete_geyser_1_2._entry, ptr @atp_complete_geyser_1_2._entry.17, ptr @atp_complete_geyser_1_2._entry.20, ptr @atp_complete_geyser_1_2._entry.23, ptr @atp_complete_geyser_1_2._entry.26, ptr @atp_complete_geyser_1_2._entry.28, ptr @atp_complete_geyser_1_2._entry.30, ptr @atp_complete_geyser_1_2._entry.33, ptr @atp_complete_geyser_1_2._entry_ptr, ptr @atp_complete_geyser_1_2._entry_ptr.19, ptr @atp_complete_geyser_1_2._entry_ptr.22, ptr @atp_complete_geyser_1_2._entry_ptr.24, ptr @atp_complete_geyser_1_2._entry_ptr.27, ptr @atp_complete_geyser_1_2._entry_ptr.29, ptr @atp_complete_geyser_1_2._entry_ptr.32, ptr @atp_complete_geyser_1_2._entry_ptr.35, ptr @atp_complete_geyser_3_4._entry, ptr @atp_complete_geyser_3_4._entry.73, ptr @atp_complete_geyser_3_4._entry.75, ptr @atp_complete_geyser_3_4._entry.77, ptr @atp_complete_geyser_3_4._entry.80, ptr @atp_complete_geyser_3_4._entry.82, ptr @atp_complete_geyser_3_4._entry.84, ptr @atp_complete_geyser_3_4._entry.86, ptr @atp_complete_geyser_3_4._entry.88, ptr @atp_complete_geyser_3_4._entry_ptr, ptr @atp_complete_geyser_3_4._entry_ptr.74, ptr @atp_complete_geyser_3_4._entry_ptr.76, ptr @atp_complete_geyser_3_4._entry_ptr.79, ptr @atp_complete_geyser_3_4._entry_ptr.81, ptr @atp_complete_geyser_3_4._entry_ptr.83, ptr @atp_complete_geyser_3_4._entry_ptr.85, ptr @atp_complete_geyser_3_4._entry_ptr.87, ptr @atp_complete_geyser_3_4._entry_ptr.89, ptr @atp_detect_size._entry, ptr @atp_detect_size._entry_ptr, ptr @atp_disconnect._entry, ptr @atp_disconnect._entry_ptr, ptr @atp_driver_exit, ptr @atp_geyser_init._entry, ptr @atp_geyser_init._entry.47, ptr @atp_geyser_init._entry.50, ptr @atp_geyser_init._entry.53, ptr @atp_geyser_init._entry.56, ptr @atp_geyser_init._entry.59, ptr @atp_geyser_init._entry.61, ptr @atp_geyser_init._entry_ptr, ptr @atp_geyser_init._entry_ptr.49, ptr @atp_geyser_init._entry_ptr.52, ptr @atp_geyser_init._entry_ptr.55, ptr @atp_geyser_init._entry_ptr.58, ptr @atp_geyser_init._entry_ptr.60, ptr @atp_geyser_init._entry_ptr.63, ptr @atp_handle_geyser._entry, ptr @atp_handle_geyser._entry_ptr, ptr @atp_probe._entry, ptr @atp_probe._entry.6, ptr @atp_probe._entry_ptr, ptr @atp_probe._entry_ptr.8, ptr @atp_reinit._entry, ptr @atp_reinit._entry.67, ptr @atp_reinit._entry_ptr, ptr @atp_reinit._entry_ptr.69, ptr @atp_status_check._entry, ptr @atp_status_check._entry.41, ptr @atp_status_check._entry_ptr, ptr @atp_status_check._entry_ptr.43, ptr @threshold, ptr @debug, ptr @atp_driver, ptr @.str, ptr @atp_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @atp_probe.__key, ptr @.str.10, ptr @fountain_info, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @geyser2_info, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.25, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @geyser1_info, ptr @geyser3_info, ptr @geyser4_info, ptr @.str.72, ptr @.str.78], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fountain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_handle_geyser._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geyser2_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_1_2._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_status_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_status_check._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_detect_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_geyser_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_geyser_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_geyser_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_geyser_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_geyser_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_geyser_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_geyser_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_reinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_reinit._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geyser1_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geyser3_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geyser4_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_complete_geyser_3_4._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @atp_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @atp_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp_probe(ptr noundef %iface, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %4 = inttoptr i32 %3 to ptr
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp197.not = icmp eq i8 %8, 0
  br i1 %cmp197.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint2, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %10, i32 %i.0198
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

usb_endpoint_is_int_in.exit:                      ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool5.not = icmp sgt i8 %15, -1
  br i1 %tobool5.not, label %usb_endpoint_is_int_in.exit.for.inc_crit_edge, label %for.end

usb_endpoint_is_int_in.exit.for.inc_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %usb_endpoint_is_int_in.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0198, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.end:                                          ; preds = %usb_endpoint_is_int_in.exit
  %bEndpointAddress.i.i.le = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i.i.le to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i.le, align 1
  %conv6 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %for.end.do.end_crit_edge, label %if.end10

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end10:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 676) #15
  %call12 = tail call ptr @input_allocate_device() #11
  %tobool13.not = icmp eq ptr %call7.i.i, null
  %tobool14.not = icmp eq ptr %call12, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.7) #14
  br label %err_free_devs

if.end20:                                         ; preds = %if.end10
  %udev21 = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %udev21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %udev21, align 8
  %intf = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %iface, ptr %intf, align 4
  %input = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call12, ptr %input, align 8
  %info22 = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %info22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %4, ptr %info22, align 4
  %overflow_warned = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %overflow_warned to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %overflow_warned, align 1
  %call23 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %urb = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call23, ptr %urb, align 8
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.end20.err_free_devs_crit_edge, label %if.end27

if.end20.err_free_devs_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_devs

if.end27:                                         ; preds = %if.end20
  %25 = ptrtoint ptr %udev21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev21, align 8
  %27 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info22, align 4
  %datalen = getelementptr inbounds %struct.atp_info, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %datalen, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call23, i32 0, i32 15
  %call31 = tail call ptr @usb_alloc_coherent(ptr noundef %26, i32 noundef %30, i32 noundef 3264, ptr noundef %transfer_dma) #11
  %data = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31, ptr %data, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end27.err_free_urb_crit_edge, label %if.end35

if.end27.err_free_urb_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_urb

if.end35:                                         ; preds = %if.end27
  %32 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb, align 8
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %35, 8
  %shl1.i = shl nuw nsw i32 %conv6, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or38 = or i32 %or.i, 1073741952
  %36 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info22, align 4
  %datalen41 = getelementptr inbounds %struct.atp_info, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %datalen41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %datalen41, align 4
  %callback = getelementptr inbounds %struct.atp_info, ptr %37, i32 0, i32 6
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %callback, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 8
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 10
  %43 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or38, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call31, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 19
  %45 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %39, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 28
  %46 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %41, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 27
  %47 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 25
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %48, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 23
  %50 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %start_frame.i, align 4
  %51 = load ptr, ptr %info22, align 4
  %cmp.not.i = icmp eq ptr %51, @fountain_info
  br i1 %cmp.not.i, label %if.end35.if.end46_crit_edge, label %if.then.i

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then.i:                                        ; preds = %if.end35
  %call.i = tail call fastcc i32 @atp_geyser_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i.err_free_buffer_crit_edge

if.then.i.err_free_buffer_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buffer

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %intf, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.11) #14
  br label %if.end46

if.end46:                                         ; preds = %do.end.i, %if.end35.if.end46_crit_edge
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %54 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i189 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef %57, ptr noundef %devpath.i) #11
  %call50 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, i32 noundef 64) #11
  %58 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str, ptr %call12, align 8
  %phys53 = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 1
  %59 = ptrtoint ptr %phys53 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %phys53, align 4
  %60 = ptrtoint ptr %udev21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %udev21, align 8
  %id55 = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3
  %62 = ptrtoint ptr %id55 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 3, ptr %id55, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 16, i32 7
  %63 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %idVendor.i, align 8
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #11
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 16, i32 8
  %67 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %idProduct.i, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #11
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 16, i32 9
  %71 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bcdDevice.i, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #11
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %version.i, align 2
  %dev56 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 40, i32 1
  %75 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev56, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 40, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 31
  %77 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @atp_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 32
  %78 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @atp_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit) #11
  %79 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %info22, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %sub = add i32 %82, -1
  %xfact = getelementptr inbounds %struct.atp_info, ptr %80, i32 0, i32 3
  %83 = ptrtoint ptr %xfact to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xfact, align 4
  %mul = mul i32 %sub, %84
  %sub61 = add i32 %mul, -1
  %fuzz = getelementptr inbounds %struct.atp_info, ptr %80, i32 0, i32 7
  %85 = ptrtoint ptr %fuzz to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fuzz, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call12, i32 noundef 0, i32 noundef 0, i32 noundef %sub61, i32 noundef %86, i32 noundef 0) #11
  %87 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %info22, align 4
  %ysensors = getelementptr inbounds %struct.atp_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %ysensors to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ysensors, align 4
  %sub64 = add i32 %90, -1
  %yfact = getelementptr inbounds %struct.atp_info, ptr %88, i32 0, i32 4
  %91 = ptrtoint ptr %yfact to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %yfact, align 4
  %mul66 = mul i32 %sub64, %92
  %sub67 = add i32 %mul66, -1
  %fuzz69 = getelementptr inbounds %struct.atp_info, ptr %88, i32 0, i32 7
  %93 = ptrtoint ptr %fuzz69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fuzz69, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call12, i32 noundef 1, i32 noundef 0, i32 noundef %sub67, i32 noundef %94, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call12, i32 noundef 24, i32 noundef 0, i32 noundef 300, i32 noundef 0, i32 noundef 0) #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #11
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 330, ptr noundef %keybit) #11
  tail call void @_set_bit(i32 noundef 325, ptr noundef %keybit) #11
  tail call void @_set_bit(i32 noundef 333, ptr noundef %keybit) #11
  tail call void @_set_bit(i32 noundef 334, ptr noundef %keybit) #11
  tail call void @_set_bit(i32 noundef 272, ptr noundef %keybit) #11
  %work = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %95 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @atp_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry86 = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 20, i32 1
  %96 = ptrtoint ptr %entry86 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %entry86, ptr %entry86, align 4
  %prev.i = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 20, i32 1, i32 1
  %97 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %entry86, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.atp, ptr %call7.i.i, i32 0, i32 20, i32 2
  %98 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @atp_reinit, ptr %func, align 4
  %99 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %input, align 8
  %call91 = tail call i32 @input_register_device(ptr noundef %100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end46.err_free_buffer_crit_edge

if.end46.err_free_buffer_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buffer

if.end94:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i190 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %101 = ptrtoint ptr %driver_data.i.i190 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i, ptr %driver_data.i.i190, align 4
  br label %cleanup

err_free_buffer:                                  ; preds = %if.end46.err_free_buffer_crit_edge, %if.then.i.err_free_buffer_crit_edge
  %error.0 = phi i32 [ %call91, %if.end46.err_free_buffer_crit_edge ], [ -5, %if.then.i.err_free_buffer_crit_edge ]
  %102 = ptrtoint ptr %udev21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %udev21, align 8
  %104 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %info22, align 4
  %datalen97 = getelementptr inbounds %struct.atp_info, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %datalen97 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %datalen97, align 4
  %108 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data, align 4
  %110 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %urb, align 8
  %transfer_dma100 = getelementptr inbounds %struct.urb, ptr %111, i32 0, i32 15
  %112 = ptrtoint ptr %transfer_dma100 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %transfer_dma100, align 4
  tail call void @usb_free_coherent(ptr noundef %103, i32 noundef %107, ptr noundef %109, i32 noundef %113) #11
  br label %err_free_urb

err_free_urb:                                     ; preds = %err_free_buffer, %if.end27.err_free_urb_crit_edge
  %error.1 = phi i32 [ %error.0, %err_free_buffer ], [ -12, %if.end27.err_free_urb_crit_edge ]
  %114 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %urb, align 8
  tail call void @usb_free_urb(ptr noundef %115) #11
  br label %err_free_devs

err_free_devs:                                    ; preds = %err_free_urb, %if.end20.err_free_devs_crit_edge, %do.end18
  %error.2 = phi i32 [ %error.1, %err_free_urb ], [ -12, %if.end20.err_free_devs_crit_edge ], [ -12, %do.end18 ]
  %driver_data.i.i191 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %116 = ptrtoint ptr %driver_data.i.i191 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %driver_data.i.i191, align 4
  tail call void @kfree(ptr noundef %call7.i.i) #11
  tail call void @input_free_device(ptr noundef %call12) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_devs, %if.end94, %do.end
  %retval.0 = phi i32 [ %error.2, %err_free_devs ], [ 0, %if.end94 ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp_disconnect(ptr noundef %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %urb = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #11
  %input = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #11
  %udev = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %info = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %datalen = getelementptr inbounds %struct.atp_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datalen, align 4
  %data = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %11, ptr noundef %13, i32 noundef %17) #11
  %18 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %19) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.70) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp_suspend(ptr nocapture noundef readonly %iface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp_resume(ptr nocapture noundef readonly %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %open, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %urb = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp_reset_resume(ptr nocapture noundef readonly %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %3, @fountain_info
  br i1 %cmp.not.i.i, label %entry.if.end.i_crit_edge, label %if.then.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call fastcc i32 @atp_geyser_init(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i.atp_recover.exit_crit_edge

if.then.i.i.atp_recover.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atp_recover.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i.i = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf.i.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.11) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i.i, %entry.if.end.i_crit_edge
  %open.i = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %open.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %open.i, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %urb.i = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.atp_recover.exit_crit_edge

land.lhs.true.i.atp_recover.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atp_recover.exit

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  br label %atp_recover.exit

atp_recover.exit:                                 ; preds = %if.end5.i, %land.lhs.true.i.atp_recover.exit_crit_edge, %if.then.i.i.atp_recover.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -5, %land.lhs.true.i.atp_recover.exit_crit_edge ], [ -5, %if.then.i.i.atp_recover.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %open = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %open, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #11
  %work = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 20
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  %open = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %open, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp_reinit(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -632
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @atp_geyser_init(ptr noundef %add.ptr)
  %urb = getelementptr i8, ptr %work, i32 -560
  %1 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb, align 4
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %2, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end4.if.end13_crit_edge, label %do.end11

do.end4.if.end13_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr i8, ptr %work, i32 -564
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.68, i32 noundef %call6) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %do.end4.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atp_geyser_init(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %udev1 = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i = shl i32 %6, 8
  %or4 = or i32 %shl.i, -2147483520
  %call5 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or4, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 8
  br i1 %cmp.not, label %if.end34, label %do.body7

do.body7:                                         ; preds = %if.end
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %do.body7.out_free.sink.split_crit_edge, label %do.end16

do.body7.out_free.sink.split_crit_edge:           ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

do.end16:                                         ; preds = %do.body7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #14
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool19.not = icmp eq i32 %.pr, 0
  br i1 %tobool19.not, label %do.end16.out_free.sink.split_crit_edge, label %for.inc

do.end16.out_free.sink.split_crit_edge:           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc:                                          ; preds = %do.end16
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %9 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %conv) #14
  %.pr109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr109)
  %tobool19.not.1 = icmp eq i32 %.pr109, 0
  br i1 %tobool19.not.1, label %for.inc.out_free.sink.split_crit_edge, label %for.inc.1

for.inc.out_free.sink.split_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr i8, ptr %call7.i, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %11 to i32
  %call25.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef %conv.1) #14
  %.pr111.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr111.pr)
  %tobool19.not.2 = icmp eq i32 %.pr111.pr, 0
  br i1 %tobool19.not.2, label %for.inc.1.out_free.sink.split_crit_edge, label %for.inc.2

for.inc.1.out_free.sink.split_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.2 = getelementptr i8, ptr %call7.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 2
  %conv.2 = zext i8 %13 to i32
  %call25.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef %conv.2) #14
  %.pr113 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr113)
  %tobool19.not.3 = icmp eq i32 %.pr113, 0
  br i1 %tobool19.not.3, label %for.inc.2.out_free.sink.split_crit_edge, label %for.inc.3

for.inc.2.out_free.sink.split_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.3 = getelementptr i8, ptr %call7.i, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %15 to i32
  %call25.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 3, i32 noundef %conv.3) #14
  %.pr115.pr.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr115.pr.pr)
  %tobool19.not.4 = icmp eq i32 %.pr115.pr.pr, 0
  br i1 %tobool19.not.4, label %for.inc.3.out_free.sink.split_crit_edge, label %for.inc.4

for.inc.3.out_free.sink.split_crit_edge:          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.4 = getelementptr i8, ptr %call7.i, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 4
  %conv.4 = zext i8 %17 to i32
  %call25.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 4, i32 noundef %conv.4) #14
  %.pr117 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr117)
  %tobool19.not.5 = icmp eq i32 %.pr117, 0
  br i1 %tobool19.not.5, label %for.inc.4.out_free.sink.split_crit_edge, label %for.inc.5

for.inc.4.out_free.sink.split_crit_edge:          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.5 = getelementptr i8, ptr %call7.i, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %19 to i32
  %call25.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 5, i32 noundef %conv.5) #14
  %.pr119.pr.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr119.pr.pr)
  %tobool19.not.6 = icmp eq i32 %.pr119.pr.pr, 0
  br i1 %tobool19.not.6, label %for.inc.5.out_free.sink.split_crit_edge, label %for.inc.6

for.inc.5.out_free.sink.split_crit_edge:          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.6 = getelementptr i8, ptr %call7.i, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 2
  %conv.6 = zext i8 %21 to i32
  %call25.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 6, i32 noundef %conv.6) #14
  %.pr121 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr121)
  %tobool19.not.7 = icmp eq i32 %.pr121, 0
  br i1 %tobool19.not.7, label %for.inc.6.out_free.sink.split_crit_edge, label %for.inc.6.out_free.sink.split.sink.split_crit_edge

for.inc.6.out_free.sink.split.sink.split_crit_edge: ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split.sink.split

for.inc.6.out_free.sink.split_crit_edge:          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

if.end34:                                         ; preds = %if.end
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %call7.i, align 8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 8
  %shl.i103 = shl i32 %24, 8
  %or37 = or i32 %shl.i103, -2147483648
  %call38 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or37, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 8
  br i1 %cmp39.not, label %if.end34.out_free_crit_edge, label %do.body42

if.end34.out_free_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

do.body42:                                        ; preds = %if.end34
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool43.not = icmp eq i32 %25, 0
  br i1 %tobool43.not, label %do.body42.out_free.sink.split_crit_edge, label %do.end52

do.body42.out_free.sink.split_crit_edge:          ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

do.end52:                                         ; preds = %do.body42
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #14
  %.pr123 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr123)
  %tobool58.not = icmp eq i32 %.pr123, 0
  br i1 %tobool58.not, label %do.end52.out_free.sink.split_crit_edge, label %for.inc70

do.end52.out_free.sink.split_crit_edge:           ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc70:                                        ; preds = %do.end52
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %call7.i, align 8
  %conv65 = zext i8 %27 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %conv65) #14
  %.pr125 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr125)
  %tobool58.not.1 = icmp eq i32 %.pr125, 0
  br i1 %tobool58.not.1, label %for.inc70.out_free.sink.split_crit_edge, label %for.inc70.1

for.inc70.out_free.sink.split_crit_edge:          ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc70.1:                                      ; preds = %for.inc70
  %arrayidx64.1 = getelementptr i8, ptr %call7.i, i32 1
  %28 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx64.1, align 1
  %conv65.1 = zext i8 %29 to i32
  %call66.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef %conv65.1) #14
  %.pr127.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr127.pr)
  %tobool58.not.2 = icmp eq i32 %.pr127.pr, 0
  br i1 %tobool58.not.2, label %for.inc70.1.out_free.sink.split_crit_edge, label %for.inc70.2

for.inc70.1.out_free.sink.split_crit_edge:        ; preds = %for.inc70.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc70.2:                                      ; preds = %for.inc70.1
  %arrayidx64.2 = getelementptr i8, ptr %call7.i, i32 2
  %30 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx64.2, align 2
  %conv65.2 = zext i8 %31 to i32
  %call66.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef %conv65.2) #14
  %.pr129 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr129)
  %tobool58.not.3 = icmp eq i32 %.pr129, 0
  br i1 %tobool58.not.3, label %for.inc70.2.out_free.sink.split_crit_edge, label %for.inc70.3

for.inc70.2.out_free.sink.split_crit_edge:        ; preds = %for.inc70.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc70.3:                                      ; preds = %for.inc70.2
  %arrayidx64.3 = getelementptr i8, ptr %call7.i, i32 3
  %32 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx64.3, align 1
  %conv65.3 = zext i8 %33 to i32
  %call66.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 3, i32 noundef %conv65.3) #14
  %.pr131.pr.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr131.pr.pr)
  %tobool58.not.4 = icmp eq i32 %.pr131.pr.pr, 0
  br i1 %tobool58.not.4, label %for.inc70.3.out_free.sink.split_crit_edge, label %for.inc70.4

for.inc70.3.out_free.sink.split_crit_edge:        ; preds = %for.inc70.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc70.4:                                      ; preds = %for.inc70.3
  %arrayidx64.4 = getelementptr i8, ptr %call7.i, i32 4
  %34 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx64.4, align 4
  %conv65.4 = zext i8 %35 to i32
  %call66.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 4, i32 noundef %conv65.4) #14
  %.pr133 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr133)
  %tobool58.not.5 = icmp eq i32 %.pr133, 0
  br i1 %tobool58.not.5, label %for.inc70.4.out_free.sink.split_crit_edge, label %for.inc70.5

for.inc70.4.out_free.sink.split_crit_edge:        ; preds = %for.inc70.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc70.5:                                      ; preds = %for.inc70.4
  %arrayidx64.5 = getelementptr i8, ptr %call7.i, i32 5
  %36 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx64.5, align 1
  %conv65.5 = zext i8 %37 to i32
  %call66.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 5, i32 noundef %conv65.5) #14
  %.pr135.pr.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr135.pr.pr)
  %tobool58.not.6 = icmp eq i32 %.pr135.pr.pr, 0
  br i1 %tobool58.not.6, label %for.inc70.5.out_free.sink.split_crit_edge, label %for.inc70.6

for.inc70.5.out_free.sink.split_crit_edge:        ; preds = %for.inc70.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

for.inc70.6:                                      ; preds = %for.inc70.5
  %arrayidx64.6 = getelementptr i8, ptr %call7.i, i32 6
  %38 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx64.6, align 2
  %conv65.6 = zext i8 %39 to i32
  %call66.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 6, i32 noundef %conv65.6) #14
  %.pr137 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr137)
  %tobool58.not.7 = icmp eq i32 %.pr137, 0
  br i1 %tobool58.not.7, label %for.inc70.6.out_free.sink.split_crit_edge, label %for.inc70.6.out_free.sink.split.sink.split_crit_edge

for.inc70.6.out_free.sink.split.sink.split_crit_edge: ; preds = %for.inc70.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split.sink.split

for.inc70.6.out_free.sink.split_crit_edge:        ; preds = %for.inc70.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.sink.split

out_free.sink.split.sink.split:                   ; preds = %for.inc70.6.out_free.sink.split.sink.split_crit_edge, %for.inc.6.out_free.sink.split.sink.split_crit_edge
  %.str.62.sink.ph = phi ptr [ @.str.54, %for.inc.6.out_free.sink.split.sink.split_crit_edge ], [ @.str.62, %for.inc70.6.out_free.sink.split.sink.split_crit_edge ]
  %arrayidx64.7 = getelementptr i8, ptr %call7.i, i32 7
  %40 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx64.7, align 1
  %conv65.7 = zext i8 %41 to i32
  %call66.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 7, i32 noundef %conv65.7) #14
  br label %out_free.sink.split

out_free.sink.split:                              ; preds = %out_free.sink.split.sink.split, %for.inc70.6.out_free.sink.split_crit_edge, %for.inc70.5.out_free.sink.split_crit_edge, %for.inc70.4.out_free.sink.split_crit_edge, %for.inc70.3.out_free.sink.split_crit_edge, %for.inc70.2.out_free.sink.split_crit_edge, %for.inc70.1.out_free.sink.split_crit_edge, %for.inc70.out_free.sink.split_crit_edge, %do.end52.out_free.sink.split_crit_edge, %do.body42.out_free.sink.split_crit_edge, %for.inc.6.out_free.sink.split_crit_edge, %for.inc.5.out_free.sink.split_crit_edge, %for.inc.4.out_free.sink.split_crit_edge, %for.inc.3.out_free.sink.split_crit_edge, %for.inc.2.out_free.sink.split_crit_edge, %for.inc.1.out_free.sink.split_crit_edge, %for.inc.out_free.sink.split_crit_edge, %do.end16.out_free.sink.split_crit_edge, %do.body7.out_free.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.54, %for.inc.out_free.sink.split_crit_edge ], [ @.str.54, %for.inc.1.out_free.sink.split_crit_edge ], [ @.str.54, %do.body7.out_free.sink.split_crit_edge ], [ @.str.54, %do.end16.out_free.sink.split_crit_edge ], [ @.str.54, %for.inc.3.out_free.sink.split_crit_edge ], [ @.str.54, %for.inc.2.out_free.sink.split_crit_edge ], [ @.str.54, %for.inc.4.out_free.sink.split_crit_edge ], [ @.str.54, %for.inc.5.out_free.sink.split_crit_edge ], [ @.str.54, %for.inc.6.out_free.sink.split_crit_edge ], [ @.str.62, %for.inc70.out_free.sink.split_crit_edge ], [ @.str.62, %for.inc70.1.out_free.sink.split_crit_edge ], [ @.str.62, %do.body42.out_free.sink.split_crit_edge ], [ @.str.62, %do.end52.out_free.sink.split_crit_edge ], [ @.str.62, %for.inc70.3.out_free.sink.split_crit_edge ], [ @.str.62, %for.inc70.2.out_free.sink.split_crit_edge ], [ @.str.62, %for.inc70.4.out_free.sink.split_crit_edge ], [ @.str.62, %for.inc70.5.out_free.sink.split_crit_edge ], [ @.str.62, %for.inc70.6.out_free.sink.split_crit_edge ], [ %.str.62.sink.ph, %out_free.sink.split.sink.split ]
  %intf76 = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 2
  %42 = ptrtoint ptr %intf76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intf76, align 4
  %dev77 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull %.str.62.sink) #14
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %if.end34.out_free_crit_edge
  %ret.0 = phi i32 [ 0, %if.end34.out_free_crit_edge ], [ -5, %out_free.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp_complete_geyser_1_2(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  %x_z = alloca i32, align 4
  %y_z = alloca i32, align 4
  %x_f = alloca i32, align 4
  %y_f = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_z) #11
  %0 = ptrtoint ptr %x_z to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x_z, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_z) #11
  %1 = ptrtoint ptr %y_z to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %y_z, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_f) #11
  %2 = ptrtoint ptr %x_f to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %x_f, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_f) #11
  %3 = ptrtoint ptr %y_f to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %y_f, align 4, !annotation !199
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %call = tail call fastcc i32 @atp_status_check(ptr noundef %urb)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end3 [
    i32 2, label %entry.cleanup_crit_edge
    i32 1, label %entry.exit_crit_edge
  ]

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %info = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %cmp4 = icmp eq ptr %8, @geyser2_info
  br i1 %cmp4, label %if.then5, label %if.end68.7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %xy_cur = getelementptr %struct.atp, ptr %5, i32 0, i32 14
  %9 = call ptr @memset(ptr %xy_cur, i32 0, i32 42)
  %data = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 19
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = ptrtoint ptr %xy_cur to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %xy_cur, align 1
  %arrayidx10 = getelementptr i8, ptr %11, i32 20
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 1
  %arrayidx13 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx13, align 1
  %arrayidx.1 = getelementptr i8, ptr %11, i32 22
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1, align 1
  %arrayidx8.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 2
  %20 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx8.1, align 1
  %arrayidx10.1 = getelementptr i8, ptr %11, i32 23
  %21 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10.1, align 1
  %arrayidx13.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 3
  %23 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx13.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %11, i32 25
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2, align 1
  %arrayidx8.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 4
  %26 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx8.2, align 1
  %arrayidx10.2 = getelementptr i8, ptr %11, i32 26
  %27 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx10.2, align 1
  %arrayidx13.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 5
  %29 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx13.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %11, i32 28
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 1
  %arrayidx8.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 6
  %32 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx8.3, align 1
  %arrayidx10.3 = getelementptr i8, ptr %11, i32 29
  %33 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx10.3, align 1
  %arrayidx13.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 7
  %35 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx13.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %11, i32 31
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.4, align 1
  %arrayidx8.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 8
  %38 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx8.4, align 1
  %arrayidx10.4 = getelementptr i8, ptr %11, i32 32
  %39 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx10.4, align 1
  %arrayidx13.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 9
  %41 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx13.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %11, i32 34
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.5, align 1
  %arrayidx8.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 10
  %44 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx8.5, align 1
  %arrayidx10.5 = getelementptr i8, ptr %11, i32 35
  %45 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx10.5, align 1
  %arrayidx13.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 11
  %47 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx13.5, align 1
  %arrayidx.6 = getelementptr i8, ptr %11, i32 37
  %48 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.6, align 1
  %arrayidx8.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 12
  %50 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx8.6, align 1
  %arrayidx10.6 = getelementptr i8, ptr %11, i32 38
  %51 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx10.6, align 1
  %arrayidx13.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 13
  %53 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx13.6, align 1
  %arrayidx.7 = getelementptr i8, ptr %11, i32 40
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.7, align 1
  %arrayidx8.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 14
  %56 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx8.7, align 1
  %arrayidx10.7 = getelementptr i8, ptr %11, i32 41
  %57 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx10.7, align 1
  %arrayidx13.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 15
  %59 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx13.7, align 1
  %arrayidx.8 = getelementptr i8, ptr %11, i32 43
  %60 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.8, align 1
  %arrayidx8.8 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 16
  %62 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx8.8, align 1
  %arrayidx10.8 = getelementptr i8, ptr %11, i32 44
  %63 = ptrtoint ptr %arrayidx10.8 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx10.8, align 1
  %arrayidx13.8 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 17
  %65 = ptrtoint ptr %arrayidx13.8 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx13.8, align 1
  %arrayidx.9 = getelementptr i8, ptr %11, i32 46
  %66 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.9, align 1
  %arrayidx8.9 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 18
  %68 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx8.9, align 1
  %arrayidx10.9 = getelementptr i8, ptr %11, i32 47
  %69 = ptrtoint ptr %arrayidx10.9 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx10.9, align 1
  %arrayidx13.9 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 19
  %71 = ptrtoint ptr %arrayidx13.9 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx13.9, align 1
  %arrayidx20 = getelementptr i8, ptr %11, i32 1
  %72 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx20, align 1
  %arrayidx23 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 26
  %74 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx23, align 1
  %arrayidx26 = getelementptr i8, ptr %11, i32 2
  %75 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx26, align 1
  %arrayidx30 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 27
  %77 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx30, align 1
  %arrayidx20.1 = getelementptr i8, ptr %11, i32 4
  %78 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx20.1, align 1
  %arrayidx23.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 28
  %80 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx23.1, align 1
  %arrayidx26.1 = getelementptr i8, ptr %11, i32 5
  %81 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx26.1, align 1
  %arrayidx30.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 29
  %83 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx30.1, align 1
  %arrayidx20.2 = getelementptr i8, ptr %11, i32 7
  %84 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx20.2, align 1
  %arrayidx23.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 30
  %86 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx23.2, align 1
  %arrayidx26.2 = getelementptr i8, ptr %11, i32 8
  %87 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx26.2, align 1
  %arrayidx30.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 31
  %89 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx30.2, align 1
  %90 = load ptr, ptr %data, align 4
  %arrayidx20.3 = getelementptr i8, ptr %90, i32 10
  %91 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx20.3, align 1
  %arrayidx23.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 32
  %93 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx23.3, align 1
  %arrayidx26.3 = getelementptr i8, ptr %90, i32 11
  %94 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx26.3, align 1
  %arrayidx30.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 33
  %96 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx30.3, align 1
  %arrayidx20.4 = getelementptr i8, ptr %90, i32 13
  %97 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx20.4, align 1
  %arrayidx23.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 34
  %99 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx23.4, align 1
  %arrayidx26.4 = getelementptr i8, ptr %90, i32 14
  %100 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx26.4, align 1
  %arrayidx30.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 35
  %102 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx30.4, align 1
  br label %if.end86

if.end68.7:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %data39 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 4
  %103 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data39, align 4
  %arrayidx41 = getelementptr i8, ptr %104, i32 2
  %105 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx41, align 1
  %arrayidx44 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 0
  %107 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx44, align 1
  %arrayidx48 = getelementptr i8, ptr %104, i32 4
  %108 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx48, align 1
  %arrayidx51 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 8
  %110 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx51, align 1
  %arrayidx55 = getelementptr i8, ptr %104, i32 42
  %111 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx55, align 1
  %arrayidx58 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 16
  %113 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx58, align 1
  %114 = load ptr, ptr %data39, align 4
  %arrayidx64 = getelementptr i8, ptr %114, i32 44
  %115 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx64, align 1
  %arrayidx67 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 24
  %117 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx67, align 1
  %arrayidx72 = getelementptr i8, ptr %114, i32 1
  %118 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx72, align 1
  %arrayidx75 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 26
  %120 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx75, align 1
  %arrayidx79 = getelementptr i8, ptr %114, i32 3
  %121 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx79, align 1
  %arrayidx83 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 34
  %123 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx83, align 1
  %arrayidx41.1 = getelementptr i8, ptr %114, i32 7
  %124 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx41.1, align 1
  %arrayidx44.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 1
  %126 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx44.1, align 1
  %arrayidx48.1 = getelementptr i8, ptr %114, i32 9
  %127 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx48.1, align 1
  %arrayidx51.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 9
  %129 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx51.1, align 1
  %arrayidx55.1 = getelementptr i8, ptr %114, i32 47
  %130 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx55.1, align 1
  %arrayidx58.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 17
  %132 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx58.1, align 1
  %133 = load ptr, ptr %data39, align 4
  %arrayidx64.1 = getelementptr i8, ptr %133, i32 49
  %134 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx64.1, align 1
  %arrayidx67.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 25
  %136 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx67.1, align 1
  %arrayidx72.1 = getelementptr i8, ptr %133, i32 6
  %137 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx72.1, align 1
  %arrayidx75.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 27
  %139 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx75.1, align 1
  %arrayidx79.1 = getelementptr i8, ptr %133, i32 8
  %140 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx79.1, align 1
  %arrayidx83.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 35
  %142 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx83.1, align 1
  %arrayidx41.2 = getelementptr i8, ptr %133, i32 12
  %143 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx41.2, align 1
  %arrayidx44.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 2
  %145 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx44.2, align 1
  %arrayidx48.2 = getelementptr i8, ptr %133, i32 14
  %146 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx48.2, align 1
  %arrayidx51.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 10
  %148 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx51.2, align 1
  %arrayidx55.2 = getelementptr i8, ptr %133, i32 52
  %149 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx55.2, align 1
  %arrayidx58.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 18
  %151 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx58.2, align 1
  %152 = load ptr, ptr %data39, align 4
  %arrayidx72.2 = getelementptr i8, ptr %152, i32 11
  %153 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx72.2, align 1
  %arrayidx75.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 28
  %155 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx75.2, align 1
  %arrayidx79.2 = getelementptr i8, ptr %152, i32 13
  %156 = ptrtoint ptr %arrayidx79.2 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx79.2, align 1
  %arrayidx83.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 36
  %158 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx83.2, align 1
  %arrayidx41.3 = getelementptr i8, ptr %152, i32 17
  %159 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx41.3, align 1
  %arrayidx44.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 3
  %161 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx44.3, align 1
  %arrayidx48.3 = getelementptr i8, ptr %152, i32 19
  %162 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx48.3, align 1
  %arrayidx51.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 11
  %164 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx51.3, align 1
  %arrayidx55.3 = getelementptr i8, ptr %152, i32 57
  %165 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx55.3, align 1
  %arrayidx58.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 19
  %167 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx58.3, align 1
  %168 = load ptr, ptr %data39, align 4
  %arrayidx72.3 = getelementptr i8, ptr %168, i32 16
  %169 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx72.3, align 1
  %arrayidx75.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 29
  %171 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx75.3, align 1
  %arrayidx79.3 = getelementptr i8, ptr %168, i32 18
  %172 = ptrtoint ptr %arrayidx79.3 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx79.3, align 1
  %arrayidx83.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 37
  %174 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx83.3, align 1
  %arrayidx41.4 = getelementptr i8, ptr %168, i32 22
  %175 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx41.4, align 1
  %arrayidx44.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 4
  %177 = ptrtoint ptr %arrayidx44.4 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx44.4, align 1
  %arrayidx48.4 = getelementptr i8, ptr %168, i32 24
  %178 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx48.4, align 1
  %arrayidx51.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 12
  %180 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx51.4, align 1
  %arrayidx55.4 = getelementptr i8, ptr %168, i32 62
  %181 = ptrtoint ptr %arrayidx55.4 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx55.4, align 1
  %arrayidx58.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 20
  %183 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx58.4, align 1
  %184 = load ptr, ptr %data39, align 4
  %arrayidx72.4 = getelementptr i8, ptr %184, i32 21
  %185 = ptrtoint ptr %arrayidx72.4 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx72.4, align 1
  %arrayidx75.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 30
  %187 = ptrtoint ptr %arrayidx75.4 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %arrayidx75.4, align 1
  %arrayidx79.4 = getelementptr i8, ptr %184, i32 23
  %188 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx79.4, align 1
  %arrayidx83.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 38
  %190 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %arrayidx83.4, align 1
  %arrayidx41.5 = getelementptr i8, ptr %184, i32 27
  %191 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx41.5, align 1
  %arrayidx44.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 5
  %193 = ptrtoint ptr %arrayidx44.5 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %arrayidx44.5, align 1
  %arrayidx48.5 = getelementptr i8, ptr %184, i32 29
  %194 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx48.5, align 1
  %arrayidx51.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 13
  %196 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %arrayidx51.5, align 1
  %arrayidx55.5 = getelementptr i8, ptr %184, i32 67
  %197 = ptrtoint ptr %arrayidx55.5 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx55.5, align 1
  %arrayidx58.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 21
  %199 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %arrayidx58.5, align 1
  %200 = load ptr, ptr %data39, align 4
  %arrayidx72.5 = getelementptr i8, ptr %200, i32 26
  %201 = ptrtoint ptr %arrayidx72.5 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx72.5, align 1
  %arrayidx75.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 31
  %203 = ptrtoint ptr %arrayidx75.5 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %arrayidx75.5, align 1
  %arrayidx79.5 = getelementptr i8, ptr %200, i32 28
  %204 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx79.5, align 1
  %arrayidx83.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 39
  %206 = ptrtoint ptr %arrayidx83.5 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx83.5, align 1
  %arrayidx41.6 = getelementptr i8, ptr %200, i32 32
  %207 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx41.6, align 1
  %arrayidx44.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 6
  %209 = ptrtoint ptr %arrayidx44.6 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx44.6, align 1
  %arrayidx48.6 = getelementptr i8, ptr %200, i32 34
  %210 = ptrtoint ptr %arrayidx48.6 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx48.6, align 1
  %arrayidx51.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 14
  %212 = ptrtoint ptr %arrayidx51.6 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx51.6, align 1
  %arrayidx55.6 = getelementptr i8, ptr %200, i32 72
  %213 = ptrtoint ptr %arrayidx55.6 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx55.6, align 1
  %arrayidx58.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 22
  %215 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %arrayidx58.6, align 1
  %216 = load ptr, ptr %data39, align 4
  %arrayidx72.6 = getelementptr i8, ptr %216, i32 31
  %217 = ptrtoint ptr %arrayidx72.6 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx72.6, align 1
  %arrayidx75.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 32
  %219 = ptrtoint ptr %arrayidx75.6 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %arrayidx75.6, align 1
  %arrayidx79.6 = getelementptr i8, ptr %216, i32 33
  %220 = ptrtoint ptr %arrayidx79.6 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx79.6, align 1
  %arrayidx83.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 40
  %222 = ptrtoint ptr %arrayidx83.6 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %arrayidx83.6, align 1
  %arrayidx41.7 = getelementptr i8, ptr %216, i32 37
  %223 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx41.7, align 1
  %arrayidx44.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 7
  %225 = ptrtoint ptr %arrayidx44.7 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %arrayidx44.7, align 1
  %arrayidx48.7 = getelementptr i8, ptr %216, i32 39
  %226 = ptrtoint ptr %arrayidx48.7 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx48.7, align 1
  %arrayidx51.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 15
  %228 = ptrtoint ptr %arrayidx51.7 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %arrayidx51.7, align 1
  %arrayidx55.7 = getelementptr i8, ptr %216, i32 77
  %229 = ptrtoint ptr %arrayidx55.7 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx55.7, align 1
  %arrayidx58.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 23
  %231 = ptrtoint ptr %arrayidx58.7 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %arrayidx58.7, align 1
  %232 = load ptr, ptr %data39, align 4
  %arrayidx72.7 = getelementptr i8, ptr %232, i32 36
  %233 = ptrtoint ptr %arrayidx72.7 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx72.7, align 1
  %arrayidx75.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 33
  %235 = ptrtoint ptr %arrayidx75.7 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %arrayidx75.7, align 1
  %arrayidx79.7 = getelementptr i8, ptr %232, i32 38
  %236 = ptrtoint ptr %arrayidx79.7 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx79.7, align 1
  %arrayidx83.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 41
  %238 = ptrtoint ptr %arrayidx83.7 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %arrayidx83.7, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.end68.7, %if.then5
  %239 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %cmp87 = icmp sgt i32 %239, 1
  br i1 %cmp87, label %if.then88, label %if.end86.if.end108_crit_edge

if.end86.if.end108_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then88:                                        ; preds = %if.end86
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #14
  br label %do.end95

do.end95:                                         ; preds = %do.end95.do.end95_crit_edge, %if.then88
  %__i.0423 = phi i32 [ 0, %if.then88 ], [ %inc101, %do.end95.do.end95_crit_edge ]
  %arrayidx98 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 %__i.0423
  %240 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx98, align 1
  %conv = sext i8 %241 to i32
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv) #14
  %inc101 = add nuw nsw i32 %__i.0423, 1
  %exitcond.not = icmp eq i32 %inc101, 42
  br i1 %exitcond.not, label %do.end105, label %do.end95.do.end95_crit_edge

do.end95.do.end95_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

do.end105:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %if.end108

if.end108:                                        ; preds = %do.end105, %if.end86.if.end108_crit_edge
  %valid = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 8
  %242 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %valid, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool.not = icmp eq i8 %243, 0
  br i1 %tobool.not, label %if.then109, label %if.end108.for.body125.preheader_crit_edge

if.end108.for.body125.preheader_crit_edge:        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body125.preheader

for.body125.preheader:                            ; preds = %if.then109.for.body125.preheader_crit_edge, %if.end108.for.body125.preheader_crit_edge
  br label %for.body125

if.then109:                                       ; preds = %if.end108
  %244 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %valid, align 1
  %y_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %245 = ptrtoint ptr %y_old to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %y_old, align 4
  %x_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %246 = ptrtoint ptr %x_old to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 -1, ptr %x_old, align 4
  %xy_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 15
  %xy_cur112 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 14
  %247 = call ptr @memcpy(ptr %xy_old, ptr %xy_cur112, i32 42)
  %size_detect_done = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 9
  %248 = ptrtoint ptr %size_detect_done to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %size_detect_done, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool114.not = icmp eq i8 %249, 0
  br i1 %tobool114.not, label %if.then118, label %if.then109.for.body125.preheader_crit_edge, !prof !200

if.then109.for.body125.preheader_crit_edge:       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body125.preheader

if.then118:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @atp_detect_size(ptr noundef %5)
  %250 = ptrtoint ptr %size_detect_done to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %size_detect_done, align 2
  br label %exit

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %for.body125.preheader
  %i.3424 = phi i32 [ %inc145, %for.body125.for.body125_crit_edge ], [ 0, %for.body125.preheader ]
  %arrayidx127 = getelementptr %struct.atp, ptr %5, i32 0, i32 15, i32 %i.3424
  %251 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx127, align 1
  %arrayidx130 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 %i.3424
  %253 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx130, align 1
  %sub = sub i8 %252, %254
  %conv133 = sext i8 %sub to i32
  %arrayidx134 = getelementptr %struct.atp, ptr %5, i32 0, i32 16, i32 %i.3424
  %255 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx134, align 4
  %sub135 = sub i32 %256, %conv133
  %257 = tail call i32 @llvm.smax.i32(i32 %sub135, i32 0)
  %258 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %arrayidx134, align 4
  %inc145 = add nuw nsw i32 %i.3424, 1
  %exitcond427.not = icmp eq i32 %inc145, 42
  br i1 %exitcond427.not, label %for.end146, label %for.body125.for.body125_crit_edge

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body125

for.end146:                                       ; preds = %for.body125
  %xy_old147 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 15
  %xy_cur149 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 14
  %259 = call ptr @memcpy(ptr %xy_old147, ptr %xy_cur149, i32 42)
  %260 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %260)
  %cmp151 = icmp sgt i32 %260, 1
  br i1 %cmp151, label %if.then153, label %for.end146.if.end179_crit_edge

for.end146.if.end179_crit_edge:                   ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

if.then153:                                       ; preds = %for.end146
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.25) #14
  br label %do.end166

do.end166:                                        ; preds = %do.end166.do.end166_crit_edge, %if.then153
  %__i154.0425 = phi i32 [ 0, %if.then153 ], [ %inc172, %do.end166.do.end166_crit_edge ]
  %arrayidx169 = getelementptr %struct.atp, ptr %5, i32 0, i32 16, i32 %__i154.0425
  %261 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx169, align 4
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %262) #14
  %inc172 = add nuw nsw i32 %__i154.0425, 1
  %exitcond428.not = icmp eq i32 %inc172, 42
  br i1 %exitcond428.not, label %do.end176, label %do.end166.do.end166_crit_edge

do.end166.do.end166_crit_edge:                    ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end166

do.end176:                                        ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #13
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %if.end179

if.end179:                                        ; preds = %do.end176, %for.end146.if.end179_crit_edge
  %263 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %info, align 4
  %xfact = getelementptr inbounds %struct.atp_info, ptr %264, i32 0, i32 3
  %265 = ptrtoint ptr %xfact to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %xfact, align 4
  %call181 = call fastcc i32 @atp_calculate_abs(ptr noundef %5, i32 noundef 0, i32 noundef 26, i32 noundef %266, ptr noundef nonnull %x_z, ptr noundef nonnull %x_f)
  %267 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %info, align 4
  %yfact = getelementptr inbounds %struct.atp_info, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %yfact to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %yfact, align 4
  %call183 = call fastcc i32 @atp_calculate_abs(ptr noundef %5, i32 noundef 26, i32 noundef 16, i32 noundef %270, ptr noundef nonnull %y_z, ptr noundef nonnull %y_f)
  %data184 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 4
  %271 = ptrtoint ptr %data184 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %data184, align 4
  %273 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %info, align 4
  %datalen = getelementptr inbounds %struct.atp_info, ptr %274, i32 0, i32 5
  %275 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %datalen, align 4
  %sub186 = add i32 %276, -1
  %arrayidx187 = getelementptr i8, ptr %272, i32 %sub186
  %277 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx187, align 1
  %279 = and i8 %278, 1
  %280 = ptrtoint ptr %x_f to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %x_f, align 4
  %282 = ptrtoint ptr %y_f to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %y_f, align 4
  %284 = tail call i32 @llvm.smax.i32(i32 %281, i32 %283)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool192.not = icmp eq i32 %call181, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool193.not = icmp eq i32 %call183, 0
  %or.cond = select i1 %tobool192.not, i1 true, i1 %tobool193.not
  br i1 %or.cond, label %if.end179.if.else235_crit_edge, label %land.lhs.true194

if.end179.if.else235_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else235

land.lhs.true194:                                 ; preds = %if.end179
  %fingers_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 11
  %285 = ptrtoint ptr %fingers_old to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %fingers_old, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %286)
  %cmp195 = icmp eq i32 %284, %286
  br i1 %cmp195, label %if.then197, label %land.lhs.true194.if.else235_crit_edge

land.lhs.true194.if.else235_crit_edge:            ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else235

if.then197:                                       ; preds = %land.lhs.true194
  %x_old198 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %287 = ptrtoint ptr %x_old198 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %x_old198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %288)
  %cmp199.not = icmp eq i32 %288, -1
  br i1 %cmp199.not, label %if.then197.if.end232_crit_edge, label %if.then201

if.then197.if.end232_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end232

if.then201:                                       ; preds = %if.then197
  %mul203 = mul i32 %288, 7
  %add204 = add i32 %mul203, %call181
  %shr = ashr i32 %add204, 3
  %y_old205 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %289 = ptrtoint ptr %y_old205 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %y_old205, align 4
  %mul206 = mul i32 %290, 7
  %add207 = add i32 %mul206, %call183
  %shr208 = ashr i32 %add207, 3
  %291 = ptrtoint ptr %x_old198 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %shr, ptr %x_old198, align 4
  store i32 %shr208, ptr %y_old205, align 4
  %292 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %292)
  %cmp211 = icmp sgt i32 %292, 1
  br i1 %cmp211, label %do.end216, label %if.then201.if.end219_crit_edge

if.then201.if.end219_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

do.end216:                                        ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  %293 = ptrtoint ptr %x_z to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %x_z, align 4
  %295 = ptrtoint ptr %y_z to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %y_z, align 4
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %shr, i32 noundef %shr208, i32 noundef %294, i32 noundef %296) #14
  br label %if.end219

if.end219:                                        ; preds = %do.end216, %if.then201.if.end219_crit_edge
  %input = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 5
  %297 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %298, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  %299 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %300, i32 noundef 3, i32 noundef 0, i32 noundef %shr) #11
  %301 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %302, i32 noundef 3, i32 noundef 1, i32 noundef %shr208) #11
  %303 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %input, align 4
  %305 = ptrtoint ptr %x_z to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %x_z, align 4
  %307 = ptrtoint ptr %y_z to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %y_z, align 4
  %add223 = add i32 %308, %306
  %309 = tail call i32 @llvm.smin.i32(i32 %add223, i32 300)
  tail call void @input_event(ptr noundef %304, i32 noundef 3, i32 noundef 24, i32 noundef %309) #11
  %310 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %284)
  %cmp.i = icmp eq i32 %284, 1
  %lnot.ext.i.i = zext i1 %cmp.i to i32
  tail call void @input_event(ptr noundef %311, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %284)
  %cmp1.i = icmp eq i32 %284, 2
  %lnot.ext.i9.i = zext i1 %cmp1.i to i32
  tail call void @input_event(ptr noundef %311, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %284)
  %cmp3.i = icmp sgt i32 %284, 2
  %lnot.ext.i10.i = zext i1 %cmp3.i to i32
  tail call void @input_event(ptr noundef %311, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i10.i) #11
  br label %if.end232

if.end232:                                        ; preds = %if.end219, %if.then197.if.end232_crit_edge
  %y.0 = phi i32 [ %shr208, %if.end219 ], [ %call183, %if.then197.if.end232_crit_edge ]
  %x.0 = phi i32 [ %shr, %if.end219 ], [ %call181, %if.then197.if.end232_crit_edge ]
  %312 = ptrtoint ptr %x_old198 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %x.0, ptr %x_old198, align 4
  %y_old234 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %313 = ptrtoint ptr %y_old234 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %y.0, ptr %y_old234, align 4
  br label %if.end249

if.else235:                                       ; preds = %land.lhs.true194.if.else235_crit_edge, %if.end179.if.else235_crit_edge
  %or.cond416 = select i1 %tobool192.not, i1 %tobool193.not, i1 false
  br i1 %or.cond416, label %if.then239, label %if.else235.if.end249_crit_edge

if.else235.if.end249_crit_edge:                   ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end249

if.then239:                                       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #13
  %y_old240 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %314 = ptrtoint ptr %y_old240 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 -1, ptr %y_old240, align 4
  %x_old241 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %315 = ptrtoint ptr %x_old241 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 -1, ptr %x_old241, align 4
  %fingers_old242 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 11
  %316 = ptrtoint ptr %fingers_old242 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %fingers_old242, align 4
  %input243 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 5
  %317 = ptrtoint ptr %input243 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %input243, align 4
  tail call void @input_event(ptr noundef %318, i32 noundef 1, i32 noundef 330, i32 noundef 0) #11
  %319 = ptrtoint ptr %input243 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %input243, align 4
  tail call void @input_event(ptr noundef %320, i32 noundef 3, i32 noundef 24, i32 noundef 0) #11
  %321 = ptrtoint ptr %input243 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %input243, align 4
  tail call void @input_event(ptr noundef %322, i32 noundef 1, i32 noundef 325, i32 noundef 0) #11
  tail call void @input_event(ptr noundef %322, i32 noundef 1, i32 noundef 333, i32 noundef 0) #11
  tail call void @input_event(ptr noundef %322, i32 noundef 1, i32 noundef 334, i32 noundef 0) #11
  %xy_acc246 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 16
  %323 = call ptr @memset(ptr %xy_acc246, i32 0, i32 168)
  br label %if.end249

if.end249:                                        ; preds = %if.then239, %if.else235.if.end249_crit_edge, %if.end232
  %fingers_old250 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 11
  %324 = ptrtoint ptr %fingers_old250 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %fingers_old250, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %325)
  %cmp251.not = icmp eq i32 %284, %325
  br i1 %cmp251.not, label %if.end249.if.end256_crit_edge, label %if.then253

if.end249.if.end256_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end256

if.then253:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  %y_old254 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %326 = ptrtoint ptr %y_old254 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 -1, ptr %y_old254, align 4
  %x_old255 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %327 = ptrtoint ptr %x_old255 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 -1, ptr %x_old255, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.then253, %if.end249.if.end256_crit_edge
  %328 = ptrtoint ptr %fingers_old250 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %284, ptr %fingers_old250, align 4
  %input258 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 5
  %329 = ptrtoint ptr %input258 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %input258, align 4
  %331 = zext i8 %279 to i32
  tail call void @input_event(ptr noundef %330, i32 noundef 1, i32 noundef 272, i32 noundef %331) #11
  %332 = ptrtoint ptr %input258 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %input258, align 4
  tail call void @input_event(ptr noundef %333, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %exit

exit:                                             ; preds = %if.end256, %if.then118, %entry.exit_crit_edge
  %urb260 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 3
  %334 = ptrtoint ptr %urb260 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %urb260, align 4
  %call261 = tail call i32 @usb_submit_urb(ptr noundef %335, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %exit.cleanup_crit_edge, label %do.end266

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end266:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 2
  %336 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %intf, align 4
  %dev267 = getelementptr inbounds %struct.usb_interface, ptr %337, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev267, ptr noundef nonnull @.str.34, i32 noundef %call261) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end266, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_f) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_f) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_z) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_z) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atp_status_check(ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf1 = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %5, label %do.body16 [
    i32 0, label %sw.epilog
    i32 -75, label %sw.bb
    i32 -104, label %entry.do.body6_crit_edge
    i32 -2, label %entry.do.body6_crit_edge72
    i32 -108, label %entry.do.body6_crit_edge73
  ]

entry.do.body6_crit_edge73:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

entry.do.body6_crit_edge72:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

sw.bb:                                            ; preds = %entry
  %overflow_warned = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %overflow_warned to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %overflow_warned, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end, label %sw.bb.do.body6_crit_edge

sw.bb.do.body6_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %info = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %datalen = getelementptr inbounds %struct.atp_info, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datalen, align 4
  %urb3 = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %urb3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb3, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.36, i32 noundef %12, i32 noundef %16) #14
  %17 = ptrtoint ptr %overflow_warned to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %overflow_warned, align 1
  br label %do.body6

do.body6:                                         ; preds = %do.end, %sw.bb.do.body6_crit_edge, %entry.do.body6_crit_edge, %entry.do.body6_crit_edge72, %entry.do.body6_crit_edge73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atp_status_check.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atp_status_check, %if.then10)) #11
          to label %cleanup [label %if.then10], !srcloc !201

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atp_status_check.__UNIQUE_ID_ddebug244, ptr noundef %dev11, ptr noundef nonnull @.str.39, i32 noundef %19) #11
  br label %cleanup

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atp_status_check.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atp_status_check, %if.then28)) #11
          to label %cleanup [label %if.then28], !srcloc !201

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atp_status_check.__UNIQUE_ID_ddebug245, ptr noundef %dev29, ptr noundef nonnull @.str.40, i32 noundef %21) #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %urb34 = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %urb34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb34, align 4
  %actual_length35 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %actual_length35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_length35, align 4
  %info36 = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %info36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info36, align 4
  %datalen37 = getelementptr inbounds %struct.atp_info, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %datalen37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %datalen37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp.not = icmp eq i32 %25, %29
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %do.body39

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body39:                                        ; preds = %sw.epilog
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool40.not = icmp eq i32 %30, 0
  br i1 %tobool40.not, label %do.body39.cleanup_crit_edge, label %do.end44

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end44:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.atp, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv = zext i8 %34 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %25) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %do.body39.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then28, %do.body16, %if.then10, %do.body6
  %retval.0 = phi i32 [ 2, %if.then10 ], [ 1, %if.then28 ], [ 1, %do.end44 ], [ 1, %do.body39.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 2, %do.body6 ], [ 1, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp_detect_size(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %3)
  %cmp14 = icmp slt i32 %3, 26
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atp, ptr %dev, i32 0, i32 14, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.44) #14
  %input = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %xsensors_17 = getelementptr inbounds %struct.atp_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %xsensors_17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xsensors_17, align 4
  %sub = add i32 %13, -1
  %xfact = getelementptr inbounds %struct.atp_info, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %xfact to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xfact, align 4
  %mul = mul i32 %sub, %15
  %sub4 = add i32 %mul, -1
  %fuzz = getelementptr inbounds %struct.atp_info, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %fuzz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fuzz, align 4
  tail call void @input_set_abs_params(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef %sub4, i32 noundef %17, i32 noundef 0) #11
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atp_calculate_abs(ptr nocapture noundef %dev, i32 noundef %offset, i32 noundef %nb_sensors, i32 noundef %fact, ptr nocapture noundef writeonly %z, ptr nocapture noundef %fingers) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xy_acc = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 16
  %add.ptr = getelementptr i32, ptr %xy_acc, i32 %offset
  %0 = ptrtoint ptr %fingers to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fingers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_sensors)
  %cmp176 = icmp sgt i32 %nb_sensors, 0
  br i1 %cmp176, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  %3 = load i32, ptr @threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp1.peel = icmp slt i32 %2, %3
  br i1 %cmp1.peel, label %for.body.preheader.for.inc.peel_crit_edge, label %if.then8.peel

for.body.preheader.for.inc.peel_crit_edge:        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.peel

if.then8.peel:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %fingers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fingers, align 4
  %inc.peel = add i32 %5, 1
  store i32 %inc.peel, ptr %fingers, align 4
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then8.peel, %for.body.preheader.for.inc.peel_crit_edge
  %is_increasing.1.peel = phi i32 [ 1, %if.then8.peel ], [ 0, %for.body.preheader.for.inc.peel_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nb_sensors)
  %exitcond.peel.not = icmp eq i32 %nb_sensors, 1
  br i1 %exitcond.peel.not, label %for.end.thread199, label %for.inc.peel.for.body_crit_edge

for.inc.peel.for.body_crit_edge:                  ; preds = %for.inc.peel
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel.for.body_crit_edge
  %is_increasing.0180 = phi i32 [ %is_increasing.1, %for.inc.for.body_crit_edge ], [ %is_increasing.1.peel, %for.inc.peel.for.body_crit_edge ]
  %i.0177 = phi i32 [ %inc21, %for.inc.for.body_crit_edge ], [ 1, %for.inc.peel.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %i.0177
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load i32, ptr @threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_increasing.0180)
  %tobool4.not = icmp eq i32 %is_increasing.0180, 0
  %sub = add nsw i32 %i.0177, -1
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.land.lhs.true11_crit_edge

lor.lhs.false.land.lhs.true11_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr i32, ptr %add.ptr, i32 %sub
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp7 = icmp slt i32 %10, %7
  br i1 %cmp7, label %if.then8, label %land.lhs.true.land.lhs.true11_crit_edge

land.lhs.true.land.lhs.true11_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %fingers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fingers, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %fingers, align 4
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true.land.lhs.true11_crit_edge, %lor.lhs.false.land.lhs.true11_crit_edge
  %arrayidx13 = getelementptr i32, ptr %add.ptr, i32 %sub
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx13, align 4
  %sub15 = sub i32 %14, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15, i32 %8)
  %cmp16 = icmp sgt i32 %sub15, %8
  %spec.select = select i1 %cmp16, i32 0, i32 %is_increasing.0180
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true11, %if.then8, %for.body.for.inc_crit_edge
  %is_increasing.1 = phi i32 [ 1, %if.then8 ], [ 0, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true11 ]
  %inc21 = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc21, %nb_sensors
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge, !llvm.loop !202

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %15 = ptrtoint ptr %fingers to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %fingers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp22 = icmp slt i32 %.pr, 1
  br i1 %cmp22, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.thread199:                                ; preds = %for.inc.peel
  %16 = ptrtoint ptr %fingers to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr200 = load i32, ptr %fingers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr200)
  %cmp22201 = icmp slt i32 %.pr200, 1
  br i1 %cmp22201, label %for.end.thread199.cleanup_crit_edge, label %if.end24.thread

for.end.thread199.cleanup_crit_edge:              ; preds = %for.end.thread199
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24.thread:                                  ; preds = %for.end.thread199
  call void @__sanitizer_cov_trace_pc() #13
  %smooth202 = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 17
  %17 = call ptr @memset(ptr %smooth202, i32 0, i32 16)
  br label %for.body28.preheader

if.end24:                                         ; preds = %for.end
  %smooth = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 17
  %18 = call ptr @memset(ptr %smooth, i32 0, i32 16)
  br i1 %cmp176, label %if.end24.for.body28.preheader_crit_edge, label %if.end24.for.end34_crit_edge

if.end24.for.end34_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

if.end24.for.body28.preheader_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28.preheader

for.body28.preheader:                             ; preds = %if.end24.for.body28.preheader_crit_edge, %if.end24.thread
  %smooth204 = phi ptr [ %smooth202, %if.end24.thread ], [ %smooth, %if.end24.for.body28.preheader_crit_edge ]
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.body28.preheader
  %i.1182 = phi i32 [ %inc33, %for.body28.for.body28_crit_edge ], [ 0, %for.body28.preheader ]
  %arrayidx29 = getelementptr i32, ptr %add.ptr, i32 %i.1182
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx29, align 4
  %shl = shl i32 %20, 12
  %add = add nuw i32 %i.1182, 4
  %arrayidx31 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %add
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %arrayidx31, align 4
  %inc33 = add nuw nsw i32 %i.1182, 1
  %exitcond193.not = icmp eq i32 %inc33, %nb_sensors
  br i1 %exitcond193.not, label %for.body28.for.end34_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

for.body28.for.end34_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

for.end34:                                        ; preds = %for.body28.for.end34_crit_edge, %if.end24.for.end34_crit_edge
  %smooth203 = phi ptr [ %smooth, %if.end24.for.end34_crit_edge ], [ %smooth204, %for.body28.for.end34_crit_edge ]
  %add36 = add i32 %nb_sensors, 4
  %arrayidx37 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %add36
  %22 = call ptr @memset(ptr %arrayidx37, i32 0, i32 16)
  %arrayidx44 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 1
  %smooth_tmp = getelementptr inbounds %struct.atp, ptr %dev, i32 0, i32 18
  %add48 = add i32 %nb_sensors, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add48)
  %cmp49183 = icmp sgt i32 %add48, 1
  br label %for.body40

for.cond83.preheader:                             ; preds = %for.end66
  %add84 = add i32 %nb_sensors, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add84)
  %cmp85186 = icmp sgt i32 %add84, 0
  br i1 %cmp85186, label %for.cond83.preheader.for.body86_crit_edge, label %for.cond83.preheader.cleanup_crit_edge

for.cond83.preheader.cleanup_crit_edge:           ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond83.preheader.for.body86_crit_edge:        ; preds = %for.cond83.preheader
  br label %for.body86

for.body40:                                       ; preds = %for.end66.for.body40_crit_edge, %for.end34
  %pass.0185 = phi i32 [ 0, %for.end34 ], [ %inc81, %for.end66.for.body40_crit_edge ]
  %23 = ptrtoint ptr %smooth203 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %smooth203, align 4
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %26, %24
  %div = sdiv i32 %add45, 2
  %27 = ptrtoint ptr %smooth_tmp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div, ptr %smooth_tmp, align 4
  br i1 %cmp49183, label %for.body40.for.body50_crit_edge, label %for.body40.for.end66_crit_edge

for.body40.for.end66_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end66

for.body40.for.body50_crit_edge:                  ; preds = %for.body40
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body40.for.body50_crit_edge
  %i.2184 = phi i32 [ %add58, %for.body50.for.body50_crit_edge ], [ 1, %for.body40.for.body50_crit_edge ]
  %sub52 = add nsw i32 %i.2184, -1
  %arrayidx53 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %sub52
  %28 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %i.2184
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx55, align 4
  %mul = shl i32 %31, 1
  %add56 = add i32 %mul, %29
  %add58 = add nuw nsw i32 %i.2184, 1
  %arrayidx59 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %add58
  %32 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx59, align 4
  %add60 = add i32 %add56, %33
  %div61 = sdiv i32 %add60, 4
  %arrayidx63 = getelementptr %struct.atp, ptr %dev, i32 0, i32 18, i32 %i.2184
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div61, ptr %arrayidx63, align 4
  %exitcond194.not = icmp eq i32 %add58, %add48
  br i1 %exitcond194.not, label %for.body50.for.end66_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body50

for.body50.for.end66_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end66

for.end66:                                        ; preds = %for.body50.for.end66_crit_edge, %for.body40.for.end66_crit_edge
  %i.2.lcssa = phi i32 [ 1, %for.body40.for.end66_crit_edge ], [ %add48, %for.body50.for.end66_crit_edge ]
  %sub68 = add nsw i32 %i.2.lcssa, -1
  %arrayidx69 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %sub68
  %35 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx69, align 4
  %arrayidx71 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %i.2.lcssa
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx71, align 4
  %add72 = add i32 %38, %36
  %div73 = sdiv i32 %add72, 2
  %arrayidx75 = getelementptr %struct.atp, ptr %dev, i32 0, i32 18, i32 %i.2.lcssa
  %39 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div73, ptr %arrayidx75, align 4
  %40 = call ptr @memcpy(ptr %smooth203, ptr %smooth_tmp, i32 136)
  %inc81 = add nuw nsw i32 %pass.0185, 1
  %exitcond195.not = icmp eq i32 %inc81, 4
  br i1 %exitcond195.not, label %for.cond83.preheader, label %for.end66.for.body40_crit_edge

for.end66.for.body40_crit_edge:                   ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.cond83.preheader.for.body86_crit_edge
  %psum.0189 = phi i32 [ %psum.1, %for.body86.for.body86_crit_edge ], [ 0, %for.cond83.preheader.for.body86_crit_edge ]
  %pcum.0188 = phi i32 [ %pcum.1, %for.body86.for.body86_crit_edge ], [ 0, %for.cond83.preheader.for.body86_crit_edge ]
  %i.3187 = phi i32 [ %inc100, %for.body86.for.body86_crit_edge ], [ 0, %for.cond83.preheader.for.body86_crit_edge ]
  %arrayidx88 = getelementptr %struct.atp, ptr %dev, i32 0, i32 17, i32 %i.3187
  %41 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %42)
  %cmp89 = icmp sgt i32 %42, 4095
  %mul93 = mul i32 %42, %i.3187
  %add94 = select i1 %cmp89, i32 %mul93, i32 0
  %pcum.1 = add i32 %add94, %pcum.0188
  %add97 = select i1 %cmp89, i32 %42, i32 0
  %psum.1 = add i32 %add97, %psum.0189
  %inc100 = add nuw nsw i32 %i.3187, 1
  %exitcond196.not = icmp eq i32 %inc100, %add84
  br i1 %exitcond196.not, label %for.end101, label %for.body86.for.body86_crit_edge

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body86

for.end101:                                       ; preds = %for.body86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psum.1)
  %cmp102 = icmp sgt i32 %psum.1, 0
  br i1 %cmp102, label %if.then103, label %for.end101.cleanup_crit_edge

for.end101.cleanup_crit_edge:                     ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then103:                                       ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #13
  %shr104175 = lshr i32 %psum.1, 12
  %43 = ptrtoint ptr %z to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr104175, ptr %z, align 4
  %mul105 = mul i32 %pcum.1, %fact
  %div106 = sdiv i32 %mul105, %psum.1
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %for.end101.cleanup_crit_edge, %for.cond83.preheader.cleanup_crit_edge, %for.end.thread199.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div106, %if.then103 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end101.cleanup_crit_edge ], [ 0, %for.end.thread199.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond83.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp_report_fingers(ptr noundef %input, i32 noundef %fingers) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fingers)
  %cmp = icmp eq i32 %fingers, 1
  %lnot.ext.i = zext i1 %cmp to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fingers)
  %cmp1 = icmp eq i32 %fingers, 2
  %lnot.ext.i9 = zext i1 %cmp1 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fingers)
  %cmp3 = icmp sgt i32 %fingers, 2
  %lnot.ext.i10 = zext i1 %cmp3 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp_complete_geyser_3_4(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  %x_z = alloca i32, align 4
  %y_z = alloca i32, align 4
  %x_f = alloca i32, align 4
  %y_f = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_z) #11
  %0 = ptrtoint ptr %x_z to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x_z, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_z) #11
  %1 = ptrtoint ptr %y_z to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %y_z, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_f) #11
  %2 = ptrtoint ptr %x_f to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %x_f, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_f) #11
  %3 = ptrtoint ptr %y_f to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %y_f, align 4, !annotation !199
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %call = tail call fastcc i32 @atp_status_check(ptr noundef %urb)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call, label %for.cond.preheader [
    i32 2, label %entry.cleanup_crit_edge
    i32 1, label %entry.exit_crit_edge
  ]

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %data = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 20
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 0
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx5, align 1
  %arrayidx8 = getelementptr i8, ptr %8, i32 21
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx11, align 1
  %arrayidx.1 = getelementptr i8, ptr %8, i32 23
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1, align 1
  %arrayidx5.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx5.1, align 1
  %arrayidx8.1 = getelementptr i8, ptr %8, i32 24
  %18 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.1, align 1
  %arrayidx11.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 3
  %20 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx11.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %8, i32 26
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2, align 1
  %arrayidx5.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 4
  %23 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx5.2, align 1
  %arrayidx8.2 = getelementptr i8, ptr %8, i32 27
  %24 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.2, align 1
  %arrayidx11.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 5
  %26 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx11.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %8, i32 29
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3, align 1
  %arrayidx5.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 6
  %29 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx5.3, align 1
  %arrayidx8.3 = getelementptr i8, ptr %8, i32 30
  %30 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.3, align 1
  %arrayidx11.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 7
  %32 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx11.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %8, i32 32
  %33 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.4, align 1
  %arrayidx5.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 8
  %35 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx5.4, align 1
  %arrayidx8.4 = getelementptr i8, ptr %8, i32 33
  %36 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx8.4, align 1
  %arrayidx11.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 9
  %38 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx11.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %8, i32 35
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.5, align 1
  %arrayidx5.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 10
  %41 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx5.5, align 1
  %arrayidx8.5 = getelementptr i8, ptr %8, i32 36
  %42 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx8.5, align 1
  %arrayidx11.5 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 11
  %44 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx11.5, align 1
  %arrayidx.6 = getelementptr i8, ptr %8, i32 38
  %45 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.6, align 1
  %arrayidx5.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 12
  %47 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx5.6, align 1
  %arrayidx8.6 = getelementptr i8, ptr %8, i32 39
  %48 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx8.6, align 1
  %arrayidx11.6 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 13
  %50 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx11.6, align 1
  %arrayidx.7 = getelementptr i8, ptr %8, i32 41
  %51 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.7, align 1
  %arrayidx5.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 14
  %53 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx5.7, align 1
  %arrayidx8.7 = getelementptr i8, ptr %8, i32 42
  %54 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.7, align 1
  %arrayidx11.7 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 15
  %56 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx11.7, align 1
  %arrayidx.8 = getelementptr i8, ptr %8, i32 44
  %57 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.8, align 1
  %arrayidx5.8 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 16
  %59 = ptrtoint ptr %arrayidx5.8 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx5.8, align 1
  %arrayidx8.8 = getelementptr i8, ptr %8, i32 45
  %60 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx8.8, align 1
  %arrayidx11.8 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 17
  %62 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx11.8, align 1
  %arrayidx.9 = getelementptr i8, ptr %8, i32 47
  %63 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.9, align 1
  %arrayidx5.9 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 18
  %65 = ptrtoint ptr %arrayidx5.9 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx5.9, align 1
  %arrayidx8.9 = getelementptr i8, ptr %8, i32 48
  %66 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.9, align 1
  %arrayidx11.9 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 19
  %68 = ptrtoint ptr %arrayidx11.9 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx11.9, align 1
  %arrayidx19 = getelementptr i8, ptr %8, i32 2
  %69 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx19, align 1
  %arrayidx22 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 26
  %71 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx22, align 1
  %arrayidx25 = getelementptr i8, ptr %8, i32 3
  %72 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx25, align 1
  %arrayidx29 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 27
  %74 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx29, align 1
  %arrayidx19.1 = getelementptr i8, ptr %8, i32 5
  %75 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx19.1, align 1
  %arrayidx22.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 28
  %77 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx22.1, align 1
  %arrayidx25.1 = getelementptr i8, ptr %8, i32 6
  %78 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx25.1, align 1
  %arrayidx29.1 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 29
  %80 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx29.1, align 1
  %arrayidx19.2 = getelementptr i8, ptr %8, i32 8
  %81 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx19.2, align 1
  %arrayidx22.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 30
  %83 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx22.2, align 1
  %84 = load ptr, ptr %data, align 4
  %arrayidx25.2 = getelementptr i8, ptr %84, i32 9
  %85 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx25.2, align 1
  %arrayidx29.2 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 31
  %87 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx29.2, align 1
  %arrayidx19.3 = getelementptr i8, ptr %84, i32 11
  %88 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx19.3, align 1
  %arrayidx22.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 32
  %90 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx22.3, align 1
  %arrayidx25.3 = getelementptr i8, ptr %84, i32 12
  %91 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx25.3, align 1
  %arrayidx29.3 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 33
  %93 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx29.3, align 1
  %arrayidx19.4 = getelementptr i8, ptr %84, i32 14
  %94 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx19.4, align 1
  %arrayidx22.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 34
  %96 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx22.4, align 1
  %arrayidx25.4 = getelementptr i8, ptr %84, i32 15
  %97 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx25.4, align 1
  %arrayidx29.4 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 35
  %99 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx29.4, align 1
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp34 = icmp sgt i32 %100, 1
  br i1 %cmp34, label %if.then35, label %for.cond.preheader.if.end54_crit_edge

for.cond.preheader.if.end54_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then35:                                        ; preds = %for.cond.preheader
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #14
  br label %do.end42

do.end42:                                         ; preds = %do.end42.do.end42_crit_edge, %if.then35
  %__i.0388 = phi i32 [ 0, %if.then35 ], [ %inc, %do.end42.do.end42_crit_edge ]
  %arrayidx45 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 %__i.0388
  %101 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx45, align 1
  %conv = sext i8 %102 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv) #14
  %inc = add nuw nsw i32 %__i.0388, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %do.end51, label %do.end42.do.end42_crit_edge

do.end42.do.end42_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end51:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %for.cond.preheader.if.end54_crit_edge
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data, align 4
  %info = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 6
  %105 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %info, align 4
  %datalen = getelementptr inbounds %struct.atp_info, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %datalen, align 4
  %sub = add i32 %108, -1
  %arrayidx56 = getelementptr i8, ptr %104, i32 %sub
  %109 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx56, align 1
  %111 = and i8 %110, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not = icmp eq i8 %111, 0
  br i1 %tobool.not, label %if.end54.for.body76_crit_edge, label %do.body59

if.end54.for.body76_crit_edge:                    ; preds = %if.end54
  br label %for.body76

do.body59:                                        ; preds = %if.end54
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool60.not = icmp eq i32 %112, 0
  br i1 %tobool60.not, label %do.body59.do.end69_crit_edge, label %do.end64

do.body59.do.end69_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

do.end64:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #14
  br label %do.end69

do.end69:                                         ; preds = %do.end64, %do.body59.do.end69_crit_edge
  %xy_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 15
  %113 = call ptr @memcpy(ptr %xy_old, ptr %arrayidx5, i32 42)
  br label %exit

for.body76:                                       ; preds = %for.body76.for.body76_crit_edge, %if.end54.for.body76_crit_edge
  %i.2389 = phi i32 [ %inc112, %for.body76.for.body76_crit_edge ], [ 0, %if.end54.for.body76_crit_edge ]
  %arrayidx78 = getelementptr %struct.atp, ptr %5, i32 0, i32 14, i32 %i.2389
  %114 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx78, align 1
  %conv79 = sext i8 %115 to i32
  %arrayidx81 = getelementptr %struct.atp, ptr %5, i32 0, i32 15, i32 %i.2389
  %116 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %117 to i32
  %sub83 = sub nsw i32 %conv79, %conv82
  %arrayidx84 = getelementptr %struct.atp, ptr %5, i32 0, i32 16, i32 %i.2389
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub83)
  %cmp87 = icmp sgt i32 %sub83, 127
  %sub92 = add nsw i32 %sub83, -256
  %spec.select = select i1 %cmp87, i32 %sub92, i32 %sub83
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %spec.select)
  %cmp96 = icmp slt i32 %spec.select, -127
  %add101 = add nsw i32 %spec.select, 256
  %storemerge380 = select i1 %cmp96, i32 %add101, i32 %spec.select
  %118 = tail call i32 @llvm.smax.i32(i32 %storemerge380, i32 0)
  %119 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx84, align 4
  %inc112 = add nuw nsw i32 %i.2389, 1
  %exitcond391.not = icmp eq i32 %inc112, 42
  br i1 %exitcond391.not, label %for.end113, label %for.body76.for.body76_crit_edge

for.body76.for.body76_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body76

for.end113:                                       ; preds = %for.body76
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp114 = icmp sgt i32 %120, 1
  br i1 %cmp114, label %if.then116, label %for.end113.if.end142_crit_edge

for.end113.if.end142_crit_edge:                   ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then116:                                       ; preds = %for.end113
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.25) #14
  br label %do.end129

do.end129:                                        ; preds = %do.end129.do.end129_crit_edge, %if.then116
  %__i117.0390 = phi i32 [ 0, %if.then116 ], [ %inc135, %do.end129.do.end129_crit_edge ]
  %arrayidx132 = getelementptr %struct.atp, ptr %5, i32 0, i32 16, i32 %__i117.0390
  %121 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx132, align 4
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %122) #14
  %inc135 = add nuw nsw i32 %__i117.0390, 1
  %exitcond392.not = icmp eq i32 %inc135, 42
  br i1 %exitcond392.not, label %do.end139, label %do.end129.do.end129_crit_edge

do.end129.do.end129_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end129

do.end139:                                        ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %if.end142

if.end142:                                        ; preds = %do.end139, %for.end113.if.end142_crit_edge
  %123 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %info, align 4
  %xfact = getelementptr inbounds %struct.atp_info, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %xfact to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %xfact, align 4
  %call144 = call fastcc i32 @atp_calculate_abs(ptr noundef %5, i32 noundef 0, i32 noundef 26, i32 noundef %126, ptr noundef nonnull %x_z, ptr noundef nonnull %x_f)
  %127 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %info, align 4
  %yfact = getelementptr inbounds %struct.atp_info, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %yfact to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %yfact, align 4
  %call146 = call fastcc i32 @atp_calculate_abs(ptr noundef %5, i32 noundef 26, i32 noundef 16, i32 noundef %130, ptr noundef nonnull %y_z, ptr noundef nonnull %y_f)
  %131 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data, align 4
  %133 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %info, align 4
  %datalen149 = getelementptr inbounds %struct.atp_info, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %datalen149 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %datalen149, align 4
  %sub150 = add i32 %136, -1
  %arrayidx151 = getelementptr i8, ptr %132, i32 %sub150
  %137 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx151, align 1
  %139 = and i8 %138, 1
  %140 = ptrtoint ptr %x_f to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %x_f, align 4
  %142 = ptrtoint ptr %y_f to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %y_f, align 4
  %144 = tail call i32 @llvm.smax.i32(i32 %141, i32 %143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool157.not = icmp eq i32 %call144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool158.not = icmp eq i32 %call146, 0
  %or.cond = select i1 %tobool157.not, i1 true, i1 %tobool158.not
  br i1 %or.cond, label %if.end142.if.else197_crit_edge, label %land.lhs.true159

if.end142.if.else197_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else197

land.lhs.true159:                                 ; preds = %if.end142
  %fingers_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 11
  %145 = ptrtoint ptr %fingers_old to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %fingers_old, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp160 = icmp eq i32 %144, %146
  br i1 %cmp160, label %if.then162, label %land.lhs.true159.if.else197_crit_edge

land.lhs.true159.if.else197_crit_edge:            ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else197

if.then162:                                       ; preds = %land.lhs.true159
  %x_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %147 = ptrtoint ptr %x_old to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %x_old, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %148)
  %cmp163.not = icmp eq i32 %148, -1
  br i1 %cmp163.not, label %if.then162.if.end194_crit_edge, label %if.then165

if.then162.if.end194_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then165:                                       ; preds = %if.then162
  %mul = mul i32 %148, 7
  %add167 = add i32 %mul, %call144
  %shr = ashr i32 %add167, 3
  %y_old = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %149 = ptrtoint ptr %y_old to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %y_old, align 4
  %mul168 = mul i32 %150, 7
  %add169 = add i32 %mul168, %call146
  %shr170 = ashr i32 %add169, 3
  %151 = ptrtoint ptr %x_old to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %shr, ptr %x_old, align 4
  store i32 %shr170, ptr %y_old, align 4
  %152 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp173 = icmp sgt i32 %152, 1
  br i1 %cmp173, label %do.end178, label %if.then165.if.end181_crit_edge

if.then165.if.end181_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

do.end178:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %x_z to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %x_z, align 4
  %155 = ptrtoint ptr %y_z to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %y_z, align 4
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %shr, i32 noundef %shr170, i32 noundef %154, i32 noundef %156) #14
  br label %if.end181

if.end181:                                        ; preds = %do.end178, %if.then165.if.end181_crit_edge
  %input = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 5
  %157 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %158, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  %159 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %160, i32 noundef 3, i32 noundef 0, i32 noundef %shr) #11
  %161 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %162, i32 noundef 3, i32 noundef 1, i32 noundef %shr170) #11
  %163 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %input, align 4
  %165 = ptrtoint ptr %x_z to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %x_z, align 4
  %167 = ptrtoint ptr %y_z to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %y_z, align 4
  %add185 = add i32 %168, %166
  %169 = tail call i32 @llvm.smin.i32(i32 %add185, i32 300)
  tail call void @input_event(ptr noundef %164, i32 noundef 3, i32 noundef 24, i32 noundef %169) #11
  %170 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp.i = icmp eq i32 %144, 1
  %lnot.ext.i.i = zext i1 %cmp.i to i32
  tail call void @input_event(ptr noundef %171, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp1.i = icmp eq i32 %144, 2
  %lnot.ext.i9.i = zext i1 %cmp1.i to i32
  tail call void @input_event(ptr noundef %171, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp3.i = icmp sgt i32 %144, 2
  %lnot.ext.i10.i = zext i1 %cmp3.i to i32
  tail call void @input_event(ptr noundef %171, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i10.i) #11
  br label %if.end194

if.end194:                                        ; preds = %if.end181, %if.then162.if.end194_crit_edge
  %y.0 = phi i32 [ %shr170, %if.end181 ], [ %call146, %if.then162.if.end194_crit_edge ]
  %x.0 = phi i32 [ %shr, %if.end181 ], [ %call144, %if.then162.if.end194_crit_edge ]
  %172 = ptrtoint ptr %x_old to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %x.0, ptr %x_old, align 4
  %y_old196 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %173 = ptrtoint ptr %y_old196 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %y.0, ptr %y_old196, align 4
  br label %if.end211

if.else197:                                       ; preds = %land.lhs.true159.if.else197_crit_edge, %if.end142.if.else197_crit_edge
  %174 = select i1 %tobool157.not, i1 %tobool158.not, i1 false
  br i1 %174, label %if.then201, label %if.else197.if.end211_crit_edge

if.else197.if.end211_crit_edge:                   ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

if.then201:                                       ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #13
  %y_old202 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %175 = ptrtoint ptr %y_old202 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1, ptr %y_old202, align 4
  %x_old203 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %176 = ptrtoint ptr %x_old203 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %x_old203, align 4
  %fingers_old204 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 11
  %177 = ptrtoint ptr %fingers_old204 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %fingers_old204, align 4
  %input205 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 5
  %178 = ptrtoint ptr %input205 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %input205, align 4
  tail call void @input_event(ptr noundef %179, i32 noundef 1, i32 noundef 330, i32 noundef 0) #11
  %180 = ptrtoint ptr %input205 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %input205, align 4
  tail call void @input_event(ptr noundef %181, i32 noundef 3, i32 noundef 24, i32 noundef 0) #11
  %182 = ptrtoint ptr %input205 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %input205, align 4
  tail call fastcc void @atp_report_fingers(ptr noundef %183, i32 noundef 0)
  %xy_acc208 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 16
  %184 = call ptr @memset(ptr %xy_acc208, i32 0, i32 168)
  br label %if.end211

if.end211:                                        ; preds = %if.then201, %if.else197.if.end211_crit_edge, %if.end194
  %y.1 = phi i32 [ %y.0, %if.end194 ], [ %call146, %if.else197.if.end211_crit_edge ], [ 0, %if.then201 ]
  %x.1 = phi i32 [ %x.0, %if.end194 ], [ %call144, %if.else197.if.end211_crit_edge ], [ 0, %if.then201 ]
  %fingers_old212 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 11
  %185 = ptrtoint ptr %fingers_old212 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %fingers_old212, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %186)
  %cmp213.not = icmp eq i32 %144, %186
  br i1 %cmp213.not, label %if.end211.if.end218_crit_edge, label %if.then215

if.end211.if.end218_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end218

if.then215:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  %y_old216 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %187 = ptrtoint ptr %y_old216 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 -1, ptr %y_old216, align 4
  %x_old217 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %188 = ptrtoint ptr %x_old217 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %x_old217, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %if.end211.if.end218_crit_edge
  %189 = ptrtoint ptr %fingers_old212 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %144, ptr %fingers_old212, align 4
  %input220 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 5
  %190 = ptrtoint ptr %input220 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %input220, align 4
  %192 = zext i8 %139 to i32
  tail call void @input_event(ptr noundef %191, i32 noundef 1, i32 noundef 272, i32 noundef %192) #11
  %193 = ptrtoint ptr %input220 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %input220, align 4
  tail call void @input_event(ptr noundef %194, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.1)
  %tobool222.not = icmp eq i32 %x.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y.1)
  %tobool224.not = icmp eq i32 %y.1, 0
  %or.cond382 = select i1 %tobool222.not, i1 %tobool224.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool226.not = icmp eq i8 %139, 0
  %or.cond383 = select i1 %or.cond382, i1 %tobool226.not, i1 false
  %idlecount = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 19
  br i1 %or.cond383, label %if.then227, label %if.else238

if.then227:                                       ; preds = %if.end218
  %195 = ptrtoint ptr %idlecount to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %idlecount, align 4
  %inc228 = add i32 %196, 1
  store i32 %inc228, ptr %idlecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc228)
  %cmp230 = icmp eq i32 %inc228, 10
  br i1 %cmp230, label %if.then232, label %if.then227.exit_crit_edge

if.then227.exit_crit_edge:                        ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then232:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #13
  %y_old233 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 13
  %197 = ptrtoint ptr %y_old233 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %y_old233, align 4
  %x_old234 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 12
  %198 = ptrtoint ptr %x_old234 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -1, ptr %x_old234, align 4
  %199 = ptrtoint ptr %idlecount to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %idlecount, align 4
  %work = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %200 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %200, ptr noundef %work) #11
  br label %cleanup

if.else238:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  %201 = ptrtoint ptr %idlecount to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %idlecount, align 4
  br label %exit

exit:                                             ; preds = %if.else238, %if.then227.exit_crit_edge, %do.end69, %entry.exit_crit_edge
  %urb241 = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 3
  %202 = ptrtoint ptr %urb241 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %urb241, align 4
  %call242 = tail call i32 @usb_submit_urb(ptr noundef %203, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %exit.cleanup_crit_edge, label %do.end247

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end247:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.atp, ptr %5, i32 0, i32 2
  %204 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %intf, align 4
  %dev248 = getelementptr inbounds %struct.usb_interface, ptr %205, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev248, ptr noundef nonnull @.str.34, i32 noundef %call242) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end247, %exit.cleanup_crit_edge, %if.then232, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_f) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_f) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_z) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_z) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !56, !57, !58, !59, !60, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !160, !162, !164, !165, !166, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !180, !181, !183, !184, !186, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/appletouch.c", i32 234, i32 1}
!2 = !{ptr @__UNIQUE_ID_author233, !3, !"__UNIQUE_ID_author233", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/appletouch.c", i32 235, i32 1}
!4 = !{ptr @__UNIQUE_ID_author234, !5, !"__UNIQUE_ID_author234", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/appletouch.c", i32 236, i32 1}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/input/mouse/appletouch.c", i32 237, i32 1}
!8 = !{ptr @__UNIQUE_ID_author236, !9, !"__UNIQUE_ID_author236", i1 false, i1 false}
!9 = !{!"../drivers/input/mouse/appletouch.c", i32 238, i32 1}
!10 = !{ptr @__UNIQUE_ID_description237, !11, !"__UNIQUE_ID_description237", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/appletouch.c", i32 239, i32 1}
!12 = !{ptr @__UNIQUE_ID_file238, !13, !"__UNIQUE_ID_file238", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/appletouch.c", i32 240, i32 1}
!14 = !{ptr @__UNIQUE_ID_license239, !13, !"__UNIQUE_ID_license239", i1 false, i1 false}
!15 = !{ptr @__param_threshold, !16, !"__param_threshold", i1 false, i1 false}
!16 = !{!"../drivers/input/mouse/appletouch.c", i32 246, i32 1}
!17 = !{ptr @__UNIQUE_ID_thresholdtype240, !16, !"__UNIQUE_ID_thresholdtype240", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_threshold241, !19, !"__UNIQUE_ID_threshold241", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/appletouch.c", i32 247, i32 1}
!20 = !{ptr @__param_debug, !21, !"__param_debug", i1 false, i1 false}
!21 = !{!"../drivers/input/mouse/appletouch.c", i32 252, i32 1}
!22 = !{ptr @__UNIQUE_ID_debugtype242, !21, !"__UNIQUE_ID_debugtype242", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_debug243, !24, !"__UNIQUE_ID_debug243", i1 false, i1 false}
!24 = !{!"../drivers/input/mouse/appletouch.c", i32 253, i32 1}
!25 = !{ptr @__initcall__kmod_appletouch__254_1007_atp_driver_init6, !26, !"__initcall__kmod_appletouch__254_1007_atp_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/appletouch.c", i32 1007, i32 1}
!27 = !{ptr @__exitcall_atp_driver_exit, !26, !"__exitcall_atp_driver_exit", i1 false, i1 false}
!28 = !{ptr @debug, !29, !"debug", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/appletouch.c", i32 251, i32 12}
!30 = !{ptr @__param_str_threshold, !16, !"__param_str_threshold", i1 false, i1 false}
!31 = !{ptr @threshold, !32, !"threshold", i1 false, i1 false}
!32 = !{!"../drivers/input/mouse/appletouch.c", i32 245, i32 12}
!33 = !{ptr @__param_str_debug, !21, !"__param_str_debug", i1 false, i1 false}
!34 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @atp_driver, !36, !"atp_driver", i1 false, i1 false}
!36 = !{!"../drivers/input/mouse/appletouch.c", i32 997, i32 26}
!37 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/appletouch.c", i32 853, i32 3}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @atp_probe._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @atp_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/mouse/appletouch.c", i32 861, i32 3}
!47 = !{ptr @atp_probe._entry.6, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @atp_probe._entry_ptr.8, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/mouse/appletouch.c", i32 890, i32 21}
!51 = !{ptr @atp_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/input/mouse/appletouch.c", i32 919, i32 2}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/mouse/appletouch.c", i32 823, i32 3}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @atp_handle_geyser._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @atp_handle_geyser._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @fountain_info, !61, !"fountain_info", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/appletouch.c", i32 43, i32 30}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/mouse/appletouch.c", i32 564, i32 2}
!64 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @atp_complete_geyser_1_2._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @atp_complete_geyser_1_2._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @atp_complete_geyser_1_2._entry.17, !63, !"_entry", i1 false, i1 false}
!70 = !{ptr @atp_complete_geyser_1_2._entry_ptr.19, !63, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @atp_complete_geyser_1_2._entry.20, !63, !"_entry", i1 false, i1 false}
!73 = !{ptr @atp_complete_geyser_1_2._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @atp_complete_geyser_1_2._entry.23, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/input/mouse/appletouch.c", i32 594, i32 2}
!76 = !{ptr @atp_complete_geyser_1_2._entry_ptr.24, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @atp_complete_geyser_1_2._entry.26, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @atp_complete_geyser_1_2._entry_ptr.27, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @atp_complete_geyser_1_2._entry.28, !75, !"_entry", i1 false, i1 false}
!81 = !{ptr @atp_complete_geyser_1_2._entry_ptr.29, !75, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/mouse/appletouch.c", i32 612, i32 5}
!84 = !{ptr @atp_complete_geyser_1_2._entry.30, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @atp_complete_geyser_1_2._entry_ptr.32, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/mouse/appletouch.c", i32 648, i32 3}
!88 = !{ptr @atp_complete_geyser_1_2._entry.33, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @atp_complete_geyser_1_2._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/mouse/appletouch.c", i32 456, i32 4}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @atp_status_check._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @atp_status_check._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/mouse/appletouch.c", i32 466, i32 3}
!98 = !{ptr @atp_status_check.__UNIQUE_ID_ddebug244, !97, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/mouse/appletouch.c", i32 472, i32 3}
!101 = !{ptr @atp_status_check.__UNIQUE_ID_ddebug245, !100, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/mouse/appletouch.c", i32 480, i32 3}
!104 = !{ptr @atp_status_check._entry.41, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @atp_status_check._entry_ptr.43, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @geyser2_info, !107, !"geyser2_info", i1 false, i1 false}
!107 = !{!"../drivers/input/mouse/appletouch.c", i32 65, i32 30}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/mouse/appletouch.c", i32 497, i32 4}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @atp_detect_size._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @atp_detect_size._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/mouse/appletouch.c", i32 270, i32 3}
!115 = !{ptr @atp_geyser_init._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @atp_geyser_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/mouse/appletouch.c", i32 281, i32 3}
!119 = !{ptr @atp_geyser_init._entry.47, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @atp_geyser_init._entry_ptr.49, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/mouse/appletouch.c", i32 283, i32 4}
!123 = !{ptr @atp_geyser_init._entry.50, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @atp_geyser_init._entry_ptr.52, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/mouse/appletouch.c", i32 285, i32 3}
!127 = !{ptr @atp_geyser_init._entry.53, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @atp_geyser_init._entry_ptr.55, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/mouse/appletouch.c", i32 300, i32 3}
!131 = !{ptr @atp_geyser_init._entry.56, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @atp_geyser_init._entry_ptr.58, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @atp_geyser_init._entry.59, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/input/mouse/appletouch.c", i32 302, i32 4}
!135 = !{ptr @atp_geyser_init._entry_ptr.60, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/mouse/appletouch.c", i32 304, i32 3}
!138 = !{ptr @atp_geyser_init._entry.61, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @atp_geyser_init._entry_ptr.63, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/usb.h", i32 912, i32 31}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/mouse/appletouch.c", i32 323, i32 2}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @atp_reinit._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @atp_reinit._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/input/mouse/appletouch.c", i32 328, i32 3}
!149 = !{ptr @atp_reinit._entry.67, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @atp_reinit._entry_ptr.69, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/mouse/appletouch.c", i32 955, i32 2}
!153 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @atp_disconnect._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @atp_disconnect._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @atp_table, !157, !"atp_table", i1 false, i1 false}
!157 = !{!"../drivers/input/mouse/appletouch.c", i32 114, i32 35}
!158 = !{ptr @geyser1_info, !159, !"geyser1_info", i1 false, i1 false}
!159 = !{!"../drivers/input/mouse/appletouch.c", i32 54, i32 30}
!160 = !{ptr @geyser3_info, !161, !"geyser3_info", i1 false, i1 false}
!161 = !{!"../drivers/input/mouse/appletouch.c", i32 76, i32 30}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/mouse/appletouch.c", i32 686, i32 2}
!164 = !{ptr @atp_complete_geyser_3_4._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @atp_complete_geyser_3_4._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @atp_complete_geyser_3_4._entry.73, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @atp_complete_geyser_3_4._entry_ptr.74, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @atp_complete_geyser_3_4._entry.75, !163, !"_entry", i1 false, i1 false}
!169 = !{ptr @atp_complete_geyser_3_4._entry_ptr.76, !163, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/input/mouse/appletouch.c", i32 691, i32 3}
!172 = !{ptr @atp_complete_geyser_3_4._entry.77, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @atp_complete_geyser_3_4._entry_ptr.79, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @atp_complete_geyser_3_4._entry.80, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/input/mouse/appletouch.c", i32 713, i32 2}
!176 = !{ptr @atp_complete_geyser_3_4._entry_ptr.81, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @atp_complete_geyser_3_4._entry.82, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @atp_complete_geyser_3_4._entry_ptr.83, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @atp_complete_geyser_3_4._entry.84, !175, !"_entry", i1 false, i1 false}
!180 = !{ptr @atp_complete_geyser_3_4._entry_ptr.85, !175, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @atp_complete_geyser_3_4._entry.86, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/input/mouse/appletouch.c", i32 732, i32 5}
!183 = !{ptr @atp_complete_geyser_3_4._entry_ptr.87, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @atp_complete_geyser_3_4._entry.88, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/input/mouse/appletouch.c", i32 791, i32 3}
!186 = !{ptr @atp_complete_geyser_3_4._entry_ptr.89, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @geyser4_info, !188, !"geyser4_info", i1 false, i1 false}
!188 = !{!"../drivers/input/mouse/appletouch.c", i32 86, i32 30}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{i8 0, i8 2}
!199 = !{!"auto-init"}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{i64 2148716220, i64 2148716225, i64 2148716238, i64 2148716282, i64 2148716316, i64 2148716337}
!202 = distinct !{!202, !203}
!203 = !{!"llvm.loop.peeled.count", i32 1}
