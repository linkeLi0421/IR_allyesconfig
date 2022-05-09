; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir_toy.c_pt.bc'
source_filename = "../drivers/media/rc/ir_toy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.irtoy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i8, i32, ptr, i32, i32, i32, i32, i32, [64 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@__initcall__kmod_ir_toy__245_555_irtoy_driver_init6 = internal global ptr @irtoy_driver_init, section ".initcall6.init", align 4
@irtoy_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @irtoy_probe, ptr @irtoy_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irtoy_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_irtoy_driver_exit = internal global ptr @irtoy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [41 x i8] c"ir_toy.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [52 x i8] c"ir_toy.description=Infrared Toy and IR Droid driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [36 x i8] c"ir_toy.file=drivers/media/rc/ir_toy\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [19 x i8] c"ir_toy.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ir_toy\00", [25 x i8] zeroinitializer }, align 32
@irtoy_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 131, i16 1240, i16 -760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1240, i16 -2677, i16 0, i16 0, i8 0, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@irtoy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"required endpoints not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irtoy_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/media/rc/ir_toy.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@irtoy_probe._entry_ptr = internal global ptr @irtoy_probe._entry, section ".printk_index", align 4
@irtoy_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to submit in urb: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@irtoy_probe._entry_ptr.8 = internal global ptr @irtoy_probe._entry.6, section ".printk_index", align 4
@irtoy_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 470, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"version: hardware %u, firmware %u.%u, protocol %u\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@irtoy_probe._entry_ptr.12 = internal global ptr @irtoy_probe._entry.9, section ".printk_index", align 4
@irtoy_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"need firmware V%02u or higher\00", [34 x i8] zeroinitializer }, align 32
@irtoy_probe._entry_ptr.15 = internal global ptr @irtoy_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Infrared Toy\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-rc6-mce\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irtoy_in_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irtoy_in_callback\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in urb status: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@irtoy_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 234, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to resubmit urb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@irtoy_in_callback._entry_ptr = internal global ptr @irtoy_in_callback._entry, section ".printk_index", align 4
@irtoy_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"invalid version %*phN. Please make sure you are using firmware v20 or higher\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irtoy_response\00", [17 x i8] zeroinitializer }, align 32
@irtoy_response._entry_ptr = internal global ptr @irtoy_response._entry, section ".printk_index", align 4
@irtoy_response.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version %s\0A\00", [20 x i8] zeroinitializer }, align 32
@irtoy_response._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 111, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid sample mode response %*phN\00", [61 x i8] zeroinitializer }, align 32
@irtoy_response._entry_ptr.27 = internal global ptr @irtoy_response._entry.25, section ".printk_index", align 4
@irtoy_response.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.28, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"protocol %s\0A\00", [19 x i8] zeroinitializer }, align 32
@irtoy_response._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unexpected response to command: %*phN\0A\00", [57 x i8] zeroinitializer }, align 32
@irtoy_response._entry_ptr.31 = internal global ptr @irtoy_response._entry.29, section ".printk_index", align 4
@irtoy_response.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.32, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emitted:%u\0A\00", [20 x i8] zeroinitializer }, align 32
@irtoy_response.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.33, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"packet length expected: %*phN\0A\00", [33 x i8] zeroinitializer }, align 32
@irtoy_response.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.34, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"remaining:%u sending:%u\0A\00", [39 x i8] zeroinitializer }, align 32
@irtoy_response._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to submit tx buf urb: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@irtoy_response._entry_ptr.37 = internal global ptr @irtoy_response._entry.35, section ".printk_index", align 4
@irtoy_out_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 208, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"out urb status: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irtoy_out_callback\00", [45 x i8] zeroinitializer }, align 32
@irtoy_out_callback._entry_ptr = internal global ptr @irtoy_out_callback._entry, section ".printk_index", align 4
@COMMAND_RESET = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\FF\FF\00\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@irtoy_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not write reset command: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irtoy_setup\00", [20 x i8] zeroinitializer }, align 32
@irtoy_setup._entry_ptr = internal global ptr @irtoy_setup._entry, section ".printk_index", align 4
@irtoy_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not write version command: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@irtoy_setup._entry_ptr.44 = internal global ptr @irtoy_setup._entry.42, section ".printk_index", align 4
@irtoy_setup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not write sample command: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@irtoy_setup._entry_ptr.47 = internal global ptr @irtoy_setup._entry.45, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@irtoy_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exit sample mode: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irtoy_tx\00", [23 x i8] zeroinitializer }, align 32
@irtoy_tx._entry_ptr = internal global ptr @irtoy_tx._entry, section ".printk_index", align 4
@irtoy_tx._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enter sample mode: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@irtoy_tx._entry_ptr.54 = internal global ptr @irtoy_tx._entry.52, section ".printk_index", align 4
@irtoy_tx._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to send tx start command: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@irtoy_tx._entry_ptr.57 = internal global ptr @irtoy_tx._entry.55, section ".printk_index", align 4
@irtoy_tx._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"expected %u emitted, got %u\0A\00", [35 x i8] zeroinitializer }, align 32
@irtoy_tx._entry_ptr.60 = internal global ptr @irtoy_tx._entry.58, section ".printk_index", align 4
@irtoy_tx_carrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not write carrier command: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irtoy_tx_carrier\00", [47 x i8] zeroinitializer }, align 32
@irtoy_tx_carrier._entry_ptr = internal global ptr @irtoy_tx_carrier._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"irtoy_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 548, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 555, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"irtoy_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 542, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 415, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 460, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 468, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 473, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 481, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 490, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 229, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 234, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 91, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 96, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 110, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 115, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 122, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 157, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 172, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 179, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 186, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 208, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"COMMAND_RESET\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 27, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 269, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 280, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 289, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 87, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 912, i32 31 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 334, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 341, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 350, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 358, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [29 x i8] c"../drivers/media/rc/ir_toy.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 383, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_irtoy_driver_exit, ptr @__initcall__kmod_ir_toy__245_555_irtoy_driver_init6, ptr @irtoy_driver_exit, ptr @irtoy_in_callback._entry, ptr @irtoy_in_callback._entry_ptr, ptr @irtoy_out_callback._entry, ptr @irtoy_out_callback._entry_ptr, ptr @irtoy_probe._entry, ptr @irtoy_probe._entry.13, ptr @irtoy_probe._entry.6, ptr @irtoy_probe._entry.9, ptr @irtoy_probe._entry_ptr, ptr @irtoy_probe._entry_ptr.12, ptr @irtoy_probe._entry_ptr.15, ptr @irtoy_probe._entry_ptr.8, ptr @irtoy_response._entry, ptr @irtoy_response._entry.25, ptr @irtoy_response._entry.29, ptr @irtoy_response._entry.35, ptr @irtoy_response._entry_ptr, ptr @irtoy_response._entry_ptr.27, ptr @irtoy_response._entry_ptr.31, ptr @irtoy_response._entry_ptr.37, ptr @irtoy_setup._entry, ptr @irtoy_setup._entry.42, ptr @irtoy_setup._entry.45, ptr @irtoy_setup._entry_ptr, ptr @irtoy_setup._entry_ptr.44, ptr @irtoy_setup._entry_ptr.47, ptr @irtoy_tx._entry, ptr @irtoy_tx._entry.52, ptr @irtoy_tx._entry.55, ptr @irtoy_tx._entry.58, ptr @irtoy_tx._entry_ptr, ptr @irtoy_tx._entry_ptr.54, ptr @irtoy_tx._entry_ptr.57, ptr @irtoy_tx._entry_ptr.60, ptr @irtoy_tx_carrier._entry, ptr @irtoy_tx_carrier._entry_ptr, ptr @irtoy_driver, ptr @.str, ptr @irtoy_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @COMMAND_RESET, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @init_completion.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_response._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_response._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_response._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_out_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @COMMAND_RESET to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_setup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_tx._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_tx._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_tx._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irtoy_tx_carrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irtoy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @irtoy_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @irtoy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @irtoy_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irtoy_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp220.not = icmp eq i8 %5, 0
  br i1 %cmp220.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0223 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ep_out.0222 = phi ptr [ null, %for.body.lr.ph ], [ %ep_out.1, %for.inc.for.body_crit_edge ]
  %ep_in.0221 = phi ptr [ null, %for.body.lr.ph ], [ %ep_in.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %7, i32 %i.0223
  %tobool.not = icmp eq ptr %ep_in.0221, null
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool4.not = icmp sgt i8 %12, -1
  br i1 %tobool4.not, label %usb_endpoint_is_bulk_in.exit.if.end_crit_edge, label %land.lhs.true5

usb_endpoint_is_bulk_in.exit.if.end_crit_edge:    ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true5:                                   ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %13 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wMaxPacketSize.i, align 1
  %15 = and i16 %14, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp7 = icmp eq i16 %15, 16384
  %spec.select = select i1 %cmp7, ptr %arrayidx, ptr null
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5, %usb_endpoint_is_bulk_in.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %ep_in.1 = phi ptr [ %ep_in.0221, %for.body.if.end_crit_edge ], [ null, %usb_endpoint_is_bulk_in.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true5 ], [ null, %land.lhs.true.if.end_crit_edge ]
  %tobool9.not = icmp eq ptr %ep_out.0222, null
  br i1 %tobool9.not, label %land.lhs.true10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true10:                                  ; preds = %if.end
  %bmAttributes.i.i203 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i.i203 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i.i203, align 1
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i.not.i204 = icmp eq i8 %18, 2
  br i1 %cmp.i.not.i204, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true10
  %bEndpointAddress.i.i205 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i.i205 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i.i205, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not = icmp slt i8 %20, 0
  br i1 %tobool12.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %land.lhs.true13

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true13:                                  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i207 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %21 = ptrtoint ptr %wMaxPacketSize.i207 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wMaxPacketSize.i207, align 1
  %23 = and i16 %22, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp15 = icmp eq i16 %23, 16384
  %spec.select201 = select i1 %cmp15, ptr %arrayidx, ptr null
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true13, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %ep_out.1 = phi ptr [ %ep_out.0222, %if.end.for.inc_crit_edge ], [ null, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge ], [ %spec.select201, %land.lhs.true13 ], [ null, %land.lhs.true10.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0223, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool19.not = icmp eq ptr %ep_in.1, null
  %tobool20.not = icmp eq ptr %ep_out.1, null
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %for.end.do.end_crit_edge, label %if.end22

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end22:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 180) #13
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 64) #13
  %in = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %in, align 4
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end26.free_irtoy_crit_edge, label %if.end31

if.end26.free_irtoy_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_irtoy

if.end31:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i202 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 64) #13
  %out = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i202, ptr %out, align 8
  %tobool34.not = icmp eq ptr %call7.i202, null
  br i1 %tobool34.not, label %if.end31.free_irtoy_crit_edge, label %if.end36

if.end31.free_irtoy_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_irtoy

if.end36:                                         ; preds = %if.end31
  %call37 = tail call ptr @rc_allocate_device(i32 noundef 1) #9
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.free_irtoy_crit_edge, label %if.end40

if.end36.free_irtoy_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_irtoy

if.end40:                                         ; preds = %if.end36
  %call41 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.free_rcdev_crit_edge, label %if.end44

if.end40.free_rcdev_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rcdev

if.end44:                                         ; preds = %if.end40
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_in.1, i32 0, i32 2
  %29 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bEndpointAddress, align 1
  %conv45 = zext i8 %30 to i32
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %32, 8
  %shl1.i = shl nuw nsw i32 %conv45, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or47 = or i32 %or.i, -1073741696
  %33 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call41, i32 0, i32 8
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call41, i32 0, i32 10
  %36 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or47, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call41, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call41, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call41, i32 0, i32 28
  %39 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @irtoy_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call41, i32 0, i32 27
  %40 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %urb_in = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %urb_in to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call41, ptr %urb_in, align 4
  %call49 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end44.free_rcdev_crit_edge, label %if.end52

if.end44.free_rcdev_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rcdev

if.end52:                                         ; preds = %if.end44
  %bEndpointAddress53 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_out.1, i32 0, i32 2
  %42 = ptrtoint ptr %bEndpointAddress53 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bEndpointAddress53, align 1
  %conv54 = zext i8 %43 to i32
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 8
  %shl.i209 = shl i32 %45, 8
  %shl1.i210 = shl nuw nsw i32 %conv54, 15
  %or.i211 = or i32 %shl1.i210, %shl.i209
  %or56 = or i32 %or.i211, -1073741824
  %46 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %out, align 8
  %dev1.i212 = getelementptr inbounds %struct.urb, ptr %call49, i32 0, i32 8
  %48 = ptrtoint ptr %dev1.i212 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %dev1.i212, align 4
  %pipe2.i213 = getelementptr inbounds %struct.urb, ptr %call49, i32 0, i32 10
  %49 = ptrtoint ptr %pipe2.i213 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or56, ptr %pipe2.i213, align 4
  %transfer_buffer3.i214 = getelementptr inbounds %struct.urb, ptr %call49, i32 0, i32 14
  %50 = ptrtoint ptr %transfer_buffer3.i214 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %transfer_buffer3.i214, align 4
  %transfer_buffer_length.i215 = getelementptr inbounds %struct.urb, ptr %call49, i32 0, i32 19
  %51 = ptrtoint ptr %transfer_buffer_length.i215 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 64, ptr %transfer_buffer_length.i215, align 4
  %complete.i216 = getelementptr inbounds %struct.urb, ptr %call49, i32 0, i32 28
  %52 = ptrtoint ptr %complete.i216 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @irtoy_out_callback, ptr %complete.i216, align 4
  %context4.i217 = getelementptr inbounds %struct.urb, ptr %call49, i32 0, i32 27
  %53 = ptrtoint ptr %context4.i217 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %context4.i217, align 4
  %dev58 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev58, ptr %call7.i.i, align 8
  %usbdev60 = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %usbdev60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i, ptr %usbdev60, align 4
  %rc61 = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %rc61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call37, ptr %rc61, align 8
  %urb_out = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %urb_out to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call49, ptr %urb_out, align 8
  %pulse = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %pulse to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %pulse, align 4
  %59 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urb_in, align 4
  %call63 = tail call i32 @usb_submit_urb(ptr noundef %60, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.7, i32 noundef %call63) #12
  br label %cleanup

if.end71:                                         ; preds = %if.end52
  %call72 = tail call fastcc i32 @irtoy_setup(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end78, label %if.end71.free_rcdev_crit_edge

if.end71.free_rcdev_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rcdev

do.end78:                                         ; preds = %if.end71
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i, align 8
  %hw_version = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 13
  %65 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw_version, align 8
  %sw_version = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 14
  %67 = ptrtoint ptr %sw_version to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sw_version, align 4
  %.frozen = freeze i32 %68
  %div = udiv i32 %.frozen, 10
  %69 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen, %69
  %proto_version = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 15
  %70 = ptrtoint ptr %proto_version to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %proto_version, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.10, i32 noundef %66, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %71) #12
  %72 = ptrtoint ptr %sw_version to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %73)
  %cmp82 = icmp ult i32 %73, 20
  br i1 %cmp82, label %do.end87, label %if.end89

do.end87:                                         ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.14, i32 noundef 20) #12
  br label %free_rcdev

if.end89:                                         ; preds = %do.end78
  %phys = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 16
  %bus.i = getelementptr i8, ptr %3, i32 -64
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %3, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.49, ptr noundef %79, ptr noundef %devpath.i) #9
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 3
  %80 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.16, ptr %device_name, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 6
  %81 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str, ptr %driver_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 4
  %82 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 5
  %83 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr i8, ptr %3, i32 936
  %84 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %idVendor.i, align 8
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #9
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 5, i32 1
  %87 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %3, i32 938
  %88 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %idProduct.i, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #9
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 5, i32 2
  %91 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %3, i32 940
  %92 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bcdDevice.i, align 4
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #9
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 5, i32 3
  %95 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %version.i, align 2
  %parent = getelementptr inbounds %struct.device, ptr %call37, i32 0, i32 1
  %96 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %dev58, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 24
  %97 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i, ptr %priv, align 4
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 54
  %98 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @irtoy_tx, ptr %tx_ir, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 51
  %99 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @irtoy_tx_carrier, ptr %s_tx_carrier, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 16
  %100 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 130023420, ptr %allowed_protocols, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 7
  %101 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.17, ptr %map_name, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 37
  %102 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 21, ptr %rx_resolution, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 34
  %103 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 125000, ptr %timeout, align 4
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 35
  %104 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 40000, ptr %min_timeout, align 8
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %call37, i32 0, i32 36
  %105 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1376235, ptr %max_timeout, align 4
  %call95 = tail call i32 @rc_register_device(ptr noundef nonnull %call37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end89.free_rcdev_crit_edge

if.end89.free_rcdev_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rcdev

if.end98:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %106 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

free_rcdev:                                       ; preds = %if.end89.free_rcdev_crit_edge, %do.end87, %if.end71.free_rcdev_crit_edge, %if.end44.free_rcdev_crit_edge, %if.end40.free_rcdev_crit_edge
  %err.0 = phi i32 [ %call72, %if.end71.free_rcdev_crit_edge ], [ -19, %do.end87 ], [ %call95, %if.end89.free_rcdev_crit_edge ], [ -12, %if.end44.free_rcdev_crit_edge ], [ -12, %if.end40.free_rcdev_crit_edge ]
  %urb_out99 = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %urb_out99 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %urb_out99, align 8
  tail call void @usb_kill_urb(ptr noundef %108) #9
  %109 = ptrtoint ptr %urb_out99 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %urb_out99, align 8
  tail call void @usb_free_urb(ptr noundef %110) #9
  %urb_in101 = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %urb_in101 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %urb_in101, align 4
  tail call void @usb_kill_urb(ptr noundef %112) #9
  %113 = ptrtoint ptr %urb_in101 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %urb_in101, align 4
  tail call void @usb_free_urb(ptr noundef %114) #9
  tail call void @rc_free_device(ptr noundef nonnull %call37) #9
  br label %free_irtoy

free_irtoy:                                       ; preds = %free_rcdev, %if.end36.free_irtoy_crit_edge, %if.end31.free_irtoy_crit_edge, %if.end26.free_irtoy_crit_edge
  %err.1 = phi i32 [ %err.0, %free_rcdev ], [ -12, %if.end36.free_irtoy_crit_edge ], [ -12, %if.end31.free_irtoy_crit_edge ], [ -12, %if.end26.free_irtoy_crit_edge ]
  %115 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %in, align 4
  tail call void @kfree(ptr noundef %116) #9
  %out104 = getelementptr inbounds %struct.irtoy, ptr %call7.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %out104 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %out104, align 8
  tail call void @kfree(ptr noundef %118) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_irtoy, %if.end98, %do.end69, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call63, %do.end69 ], [ %err.1, %free_irtoy ], [ 0, %if.end98 ], [ -19, %do.end ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irtoy_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rc = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 4
  tail call void @rc_unregister_device(ptr noundef %3) #9
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %urb_out = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb_out, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #9
  %7 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb_out, align 4
  tail call void @usb_free_urb(ptr noundef %8) #9
  %urb_in = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb_in, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #9
  %11 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb_in, align 4
  tail call void @usb_free_urb(ptr noundef %12) #9
  %in = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in, align 4
  tail call void @kfree(ptr noundef %14) #9
  %out = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %out, align 4
  tail call void @kfree(ptr noundef %16) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irtoy_in_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 0, label %sw.bb
    i32 -104, label %entry.sw.bb1_crit_edge
    i32 -2, label %entry.sw.bb1_crit_edge25
    i32 -108, label %entry.sw.bb1_crit_edge26
    i32 -71, label %entry.sw.bb1_crit_edge27
    i32 -32, label %entry.sw.bb1_crit_edge28
  ]

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  tail call fastcc void @irtoy_response(ptr noundef %1, i32 noundef %6)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28
  %call = tail call i32 @usb_unlink_urb(ptr noundef %urb) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irtoy_in_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irtoy_in_callback, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !145

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irtoy_in_callback.__UNIQUE_ID_ddebug244, ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %10) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  %11 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call6, label %do.end11 [
    i32 0, label %sw.epilog.cleanup_crit_edge
    i32 -19, label %sw.epilog.cleanup_crit_edge29
  ]

sw.epilog.cleanup_crit_edge29:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge29, %sw.bb1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irtoy_out_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %command_done = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %command_done) #9
  br label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.38, i32 noundef %3) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then2, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irtoy_setup(ptr noundef %irtoy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %command_done.i = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 7
  %0 = ptrtoint ptr %command_done.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %command_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %state1.i = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 9
  %1 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %state1.i, align 4
  %out.i = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 6
  %2 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out.i, align 4
  %4 = call ptr @memcpy(ptr %3, ptr @COMMAND_RESET, i32 7)
  %urb_out.i = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 4
  %5 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %transfer_buffer_length.i, align 4
  %8 = load ptr, ptr %urb_out.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %8, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb_out.i, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #9
  br label %do.end

do.end:                                           ; preds = %if.then6.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -110, %if.then6.i ]
  %11 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irtoy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 50, i32 noundef 2) #9
  %13 = ptrtoint ptr %command_done.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %command_done.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %14 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state1.i, align 4
  %15 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %out.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 118, ptr %16, align 1
  %18 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i34 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %transfer_buffer_length.i34, align 4
  %21 = load ptr, ptr %urb_out.i, align 4
  %call.i35 = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %cmp.not.i36, label %if.end.i39, label %if.end.do.end5_crit_edge

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

if.end.i39:                                       ; preds = %if.end
  %call5.i37 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i37)
  %tobool.not.i38 = icmp eq i32 %call5.i37, 0
  br i1 %tobool.not.i38, label %if.then6.i40, label %if.end7

if.then6.i40:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb_out.i, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #9
  br label %do.end5

do.end5:                                          ; preds = %if.then6.i40, %if.end.do.end5_crit_edge
  %retval.0.i41.ph = phi i32 [ %call.i35, %if.end.do.end5_crit_edge ], [ -110, %if.then6.i40 ]
  %24 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irtoy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i41.ph) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end.i39
  %26 = ptrtoint ptr %command_done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %command_done.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %27 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %state1.i, align 4
  %28 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %out.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 115, ptr %29, align 1
  %31 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i48 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %transfer_buffer_length.i48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %transfer_buffer_length.i48, align 4
  %34 = load ptr, ptr %urb_out.i, align 4
  %call.i49 = tail call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %cmp.not.i50, label %if.end.i53, label %if.end7.do.end13_crit_edge

if.end7.do.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.end.i53:                                       ; preds = %if.end7
  %call5.i51 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i51)
  %tobool.not.i52 = icmp eq i32 %call5.i51, 0
  br i1 %tobool.not.i52, label %if.then6.i54, label %if.end.i53.cleanup_crit_edge

if.end.i53.cleanup_crit_edge:                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.i54:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb_out.i, align 4
  tail call void @usb_kill_urb(ptr noundef %36) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then6.i54, %if.end7.do.end13_crit_edge
  %retval.0.i55.ph = phi i32 [ %call.i49, %if.end7.do.end13_crit_edge ], [ -110, %if.then6.i54 ]
  %37 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irtoy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i55.ph) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.i53.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i41.ph, %do.end5 ], [ %retval.0.i55.ph, %do.end13 ], [ 0, %if.end.i53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irtoy_tx(ptr nocapture noundef readonly %rc, ptr nocapture noundef readonly %txbuf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add = shl i32 %count, 1
  %mul = add i32 %add, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp118.not = icmp eq i32 %count, 0
  br i1 %cmp118.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %txbuf, i32 %i.0119
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add1 = add i32 %3, 10
  %div2 = udiv i32 %add1, 21
  %conv = trunc i32 %div2 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool3.not = icmp eq i16 %conv, 0
  %spec.store.select = select i1 %tobool3.not, i16 1, i16 %conv
  %arrayidx6 = getelementptr i16, ptr %call9.i, i32 %i.0119
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.store.select, ptr %arrayidx6, align 2
  %inc = add nuw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx7 = getelementptr i16, ptr %call9.i, i32 %count
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %arrayidx7, align 2
  %tx_buf = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %tx_buf, align 4
  %tx_len = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %tx_len, align 4
  %emitted = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %emitted to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %emitted, align 4
  %command_done.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %command_done.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %command_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %state1.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state1.i, align 4
  %out.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %urb_out.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %transfer_buffer_length.i, align 4
  %17 = load ptr, ptr %urb_out.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i80, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i80:                                       ; preds = %for.end
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end11

if.then6.i:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb_out.i, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #9
  br label %do.end

do.end:                                           ; preds = %if.then6.i, %for.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %for.end.do.end_crit_edge ], [ -110, %if.then6.i ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end.i80
  %22 = ptrtoint ptr %command_done.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %command_done.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %23 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state1.i, align 4
  %24 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 115, ptr %25, align 1
  %27 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i86 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i86 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %transfer_buffer_length.i86, align 4
  %30 = load ptr, ptr %urb_out.i, align 4
  %call.i87 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %cmp.not.i88, label %if.end.i91, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

if.end.i91:                                       ; preds = %if.end11
  %call5.i89 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i89)
  %tobool.not.i90 = icmp eq i32 %call5.i89, 0
  br i1 %tobool.not.i90, label %if.then6.i92, label %if.end19

if.then6.i92:                                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urb_out.i, align 4
  tail call void @usb_kill_urb(ptr noundef %32) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then6.i92, %if.end11.do.end17_crit_edge
  %retval.0.i93.ph = phi i32 [ %call.i87, %if.end11.do.end17_crit_edge ], [ -110, %if.then6.i92 ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i93.ph) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end.i91
  %35 = ptrtoint ptr %command_done.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %command_done.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %36 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %state1.i, align 4
  %37 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 639902979, ptr %38, align 1
  %40 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i100 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %transfer_buffer_length.i100 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %transfer_buffer_length.i100, align 4
  %43 = load ptr, ptr %urb_out.i, align 4
  %call.i101 = tail call i32 @usb_submit_urb(ptr noundef %43, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %cmp.not.i102, label %if.end.i105, label %if.end19.do.end25_crit_edge

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

if.end.i105:                                      ; preds = %if.end19
  %call5.i103 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i103)
  %tobool.not.i104 = icmp eq i32 %call5.i103, 0
  br i1 %tobool.not.i104, label %if.then6.i106, label %if.end28

if.then6.i106:                                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %urb_out.i, align 4
  tail call void @usb_kill_urb(ptr noundef %45) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then6.i106, %if.end19.do.end25_crit_edge
  %retval.0.i107.ph = phi i32 [ %call.i101, %if.end19.do.end25_crit_edge ], [ -110, %if.then6.i106 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i107.ph) #12
  %call27 = tail call fastcc i32 @irtoy_setup(ptr noundef %1)
  br label %cleanup

if.end28:                                         ; preds = %if.end.i105
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  %48 = ptrtoint ptr %emitted to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %emitted, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %49)
  %cmp30.not = icmp eq i32 %mul, %49
  br i1 %cmp30.not, label %if.end28.cleanup_crit_edge, label %do.end35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.59, i32 noundef %mul, i32 noundef %49) #12
  %call38 = tail call fastcc i32 @irtoy_setup(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end28.cleanup_crit_edge, %do.end25, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i93.ph, %do.end17 ], [ %retval.0.i107.ph, %do.end25 ], [ -22, %do.end35 ], [ -12, %entry.cleanup_crit_edge ], [ %count, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irtoy_tx_carrier(ptr nocapture noundef readonly %rc, i32 noundef %carrier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11800, i32 %carrier)
  %cmp = icmp ult i32 %carrier, 11800
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %carrier, 4
  %div13 = lshr exact i32 %mul, 1
  %add = add nuw i32 %div13, 48000000
  %div1 = udiv i32 %add, %mul
  %2 = trunc i32 %div1 to i8
  %conv = add i8 %2, -1
  %command_done.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %command_done.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %command_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %state1.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state1.i, align 4
  %out.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %6, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 1
  %8 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 2
  %9 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buf.sroa.7.0..sroa_idx, align 1
  %urb_out.i = getelementptr inbounds %struct.irtoy, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %transfer_buffer_length.i, align 4
  %13 = load ptr, ptr %urb_out.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb_out.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #9
  br label %do.end

do.end:                                           ; preds = %if.then6.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.do.end_crit_edge ], [ -110, %if.then6.i ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irtoy_response(ptr noundef %irtoy, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %version = alloca i32, align 4
  %version29 = alloca i32, align 4
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.bb74_crit_edge
    i32 0, label %entry.sw.bb74_crit_edge343
    i32 3, label %sw.bb127
  ]

entry.sw.bb74_crit_edge343:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb74

entry.sw.bb74_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb74

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %len, label %sw.bb.do.end69_crit_edge [
    i32 4, label %land.lhs.true
    i32 3, label %land.lhs.true22
  ]

sw.bb.do.end69_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

land.lhs.true:                                    ; preds = %sw.bb
  %in = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 5
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %7)
  %cmp1 = icmp eq i8 %7, 86
  br i1 %cmp1, label %if.then, label %land.lhs.true.do.end69_crit_edge

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #9
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %version, align 4, !annotation !146
  %arrayidx4 = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx4, align 1
  %10 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 1
  %call = call i32 @kstrtouint(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irtoy, align 4
  %14 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef 4, ptr noundef %15) #12
  br label %cleanup

do.body8:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irtoy_response.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irtoy_response, %if.then13)) #9
          to label %do.end18 [label %if.then13], !srcloc !145

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irtoy, align 4
  %18 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irtoy_response.__UNIQUE_ID_ddebug237, ptr noundef %17, ptr noundef nonnull @.str.24, ptr noundef %19) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body8
  %20 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version, align 4
  %.frozen = freeze i32 %21
  %div = udiv i32 %.frozen, 100
  %hw_version = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 13
  %22 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %hw_version, align 4
  %23 = mul i32 %div, 100
  %rem.decomposed = sub i32 %.frozen, %23
  %sw_version = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 14
  %24 = ptrtoint ptr %sw_version to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem.decomposed, ptr %sw_version, align 4
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %state, align 4
  %command_done = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 7
  call void @complete(ptr noundef %command_done) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #9
  br label %sw.epilog

land.lhs.true22:                                  ; preds = %sw.bb
  %in23 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 5
  %26 = ptrtoint ptr %in23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in23, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %29)
  %cmp26 = icmp eq i8 %29, 83
  br i1 %cmp26, label %if.then28, label %land.lhs.true22.do.end69_crit_edge

land.lhs.true22.do.end69_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

if.then28:                                        ; preds = %land.lhs.true22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version29) #9
  %30 = ptrtoint ptr %version29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %version29, align 4, !annotation !146
  %arrayidx31 = getelementptr i8, ptr %27, i32 3
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx31, align 1
  %32 = ptrtoint ptr %in23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in23, align 4
  %add.ptr33 = getelementptr i8, ptr %33, i32 1
  %call34 = call i32 @kstrtouint(ptr noundef %add.ptr33, i32 noundef 10, ptr noundef nonnull %version29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body43, label %do.end39

do.end39:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irtoy, align 4
  %36 = ptrtoint ptr %in23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.26, i32 noundef 3, ptr noundef %37) #12
  br label %cleanup63

do.body43:                                        ; preds = %if.then28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irtoy_response.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irtoy_response, %if.then55)) #9
          to label %do.end60 [label %if.then55], !srcloc !145

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irtoy, align 4
  %40 = ptrtoint ptr %in23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %in23, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irtoy_response.__UNIQUE_ID_ddebug238, ptr noundef %39, ptr noundef nonnull @.str.28, ptr noundef %41) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.body43
  %42 = ptrtoint ptr %version29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %version29, align 4
  %proto_version = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 15
  %44 = ptrtoint ptr %proto_version to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %proto_version, align 4
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %state, align 4
  %command_done62 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 7
  call void @complete(ptr noundef %command_done62) #9
  br label %cleanup63

cleanup63:                                        ; preds = %do.end60, %do.end39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version29) #9
  br label %sw.epilog

do.end69:                                         ; preds = %land.lhs.true22.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge, %sw.bb.do.end69_crit_edge
  %46 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irtoy, align 4
  %in71 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 5
  %48 = ptrtoint ptr %in71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %in71, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.30, i32 noundef %len, ptr noundef %49) #12
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry.sw.bb74_crit_edge, %entry.sw.bb74_crit_edge343
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #9
  %50 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 16777215, ptr %rawir, align 8, !annotation !146
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %pulse75 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 8
  %51 = ptrtoint ptr %pulse75 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pulse75, align 4, !range !147
  %bf.shl = shl nuw i8 %52, 7
  %bf.set = or i8 %bf.shl, 15
  %53 = ptrtoint ptr %pulse to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bf.set, ptr %pulse, align 1
  %in88 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 5
  %54 = ptrtoint ptr %in88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %in88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp90341.not = icmp ult i32 %len, 2
  br i1 %cmp90341.not, label %sw.bb74.for.end_crit_edge, label %for.body.lr.ph

sw.bb74.for.end_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb74
  %div89322 = lshr i32 %len, 1
  %rc = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end104.for.body_crit_edge, %for.body.lr.ph
  %i.0342 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end104.for.body_crit_edge ]
  %arrayidx92 = getelementptr i16, ptr %55, i32 %i.0342
  %56 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %57)
  %cmp94 = icmp eq i16 %57, -1
  br i1 %cmp94, label %if.then96, label %if.else101

if.then96:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load98 = load i8, ptr %pulse, align 1
  %bf.clear99 = and i8 %bf.load98, 127
  store i8 %bf.clear99, ptr %pulse, align 1
  br label %if.end104

if.else101:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv93 = zext i16 %57 to i32
  %mul = mul nuw nsw i32 %conv93, 21
  %59 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul, ptr %rawir, align 8
  %60 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rc, align 4
  %call103 = call i32 @ir_raw_event_store_with_timeout(ptr noundef %61, ptr noundef nonnull %rawir) #9
  br label %if.end104

if.end104:                                        ; preds = %if.else101, %if.then96
  %62 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load106 = load i8, ptr %pulse, align 1
  %bf.set115 = xor i8 %bf.load106, -128
  store i8 %bf.set115, ptr %pulse, align 1
  %inc = add nuw nsw i32 %i.0342, 1
  %exitcond.not = icmp eq i32 %inc, %div89322
  br i1 %exitcond.not, label %if.end104.for.end_crit_edge, label %if.end104.for.body_crit_edge

if.end104.for.body_crit_edge:                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end104.for.end_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end104.for.end_crit_edge, %sw.bb74.for.end_crit_edge
  %63 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load117 = load i8, ptr %pulse, align 1
  %bf.load117.lobit = lshr i8 %bf.load117, 7
  %64 = ptrtoint ptr %pulse75 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.load117.lobit, ptr %pulse75, align 4
  %rc123 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 2
  %65 = ptrtoint ptr %rc123 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rc123, align 4
  call void @ir_raw_event_handle(ptr noundef %66) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #9
  br label %sw.epilog

sw.bb127:                                         ; preds = %entry
  %tx_len = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 11
  %67 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp128 = icmp eq i32 %68, 0
  br i1 %cmp128, label %if.then130, label %if.else177

if.then130:                                       ; preds = %sw.bb127
  %69 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %len, label %if.then130.sw.epilog_crit_edge [
    i32 3, label %land.lhs.true133
    i32 1, label %land.lhs.true166
  ]

if.then130.sw.epilog_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true133:                                 ; preds = %if.then130
  %in134 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 5
  %70 = ptrtoint ptr %in134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %in134, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %73)
  %cmp137 = icmp eq i8 %73, 116
  br i1 %cmp137, label %if.then139, label %land.lhs.true133.sw.epilog_crit_edge

land.lhs.true133.sw.epilog_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then139:                                       ; preds = %land.lhs.true133
  %add.ptr141 = getelementptr i8, ptr %71, i32 1
  %74 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %add.ptr141, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irtoy_response.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irtoy_response, %if.then155)) #9
          to label %do.end160 [label %if.then155], !srcloc !145

if.then155:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irtoy, align 4
  %conv157 = zext i16 %75 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irtoy_response.__UNIQUE_ID_ddebug239, ptr noundef %77, ptr noundef nonnull @.str.32, i32 noundef %conv157) #9
  br label %do.end160

do.end160:                                        ; preds = %if.then155, %if.then139
  %conv161 = zext i16 %75 to i32
  %emitted162 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 12
  %78 = ptrtoint ptr %emitted162 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv161, ptr %emitted162, align 4
  br label %sw.epilog

land.lhs.true166:                                 ; preds = %if.then130
  %in167 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 5
  %79 = ptrtoint ptr %in167 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %in167, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %82)
  %cmp170 = icmp eq i8 %82, 67
  br i1 %cmp170, label %if.then172, label %land.lhs.true166.sw.epilog_crit_edge

land.lhs.true166.sw.epilog_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then172:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %state, align 4
  %command_done174 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 7
  tail call void @complete(ptr noundef %command_done174) #9
  br label %sw.epilog

if.else177:                                       ; preds = %sw.bb127
  %in178 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 5
  %84 = ptrtoint ptr %in178 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %in178, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp181.not = icmp ne i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %87)
  %cmp183 = icmp ugt i8 %87, 64
  %or.cond = select i1 %cmp181.not, i1 true, i1 %cmp183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp186 = icmp eq i8 %87, 0
  %or.cond323 = select i1 %or.cond, i1 true, i1 %cmp186
  br i1 %or.cond323, label %do.body189, label %if.end207

do.body189:                                       ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irtoy_response.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irtoy_response, %if.then201)) #9
          to label %sw.epilog [label %if.then201], !srcloc !145

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %irtoy, align 4
  %90 = ptrtoint ptr %in178 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %in178, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irtoy_response.__UNIQUE_ID_ddebug240, ptr noundef %89, ptr noundef nonnull @.str.33, i32 noundef %len, ptr noundef %91) #9
  br label %sw.epilog

if.end207:                                        ; preds = %if.else177
  %conv180 = zext i8 %87 to i32
  %92 = tail call i32 @llvm.umin.i32(i32 %68, i32 %conv180)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irtoy_response.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irtoy_response, %if.then224)) #9
          to label %do.end229 [label %if.then224], !srcloc !145

if.then224:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %irtoy, align 4
  %95 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irtoy_response.__UNIQUE_ID_ddebug243, ptr noundef %94, ptr noundef nonnull @.str.34, i32 noundef %96, i32 noundef %92) #9
  br label %do.end229

do.end229:                                        ; preds = %if.then224, %if.end207
  %out = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 6
  %97 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %out, align 4
  %tx_buf = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 10
  %99 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_buf, align 4
  %101 = call ptr @memcpy(ptr %98, ptr %100, i32 %92)
  %urb_out = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 4
  %102 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %urb_out, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 19
  %104 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %92, ptr %transfer_buffer_length, align 4
  %105 = load ptr, ptr %urb_out, align 4
  %call231 = tail call i32 @usb_submit_urb(ptr noundef %105, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232.not = icmp eq i32 %call231, 0
  br i1 %cmp232.not, label %if.end241, label %do.end237

do.end237:                                        ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %irtoy to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %irtoy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.36, i32 noundef %call231) #12
  %108 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %state, align 4
  %command_done240 = getelementptr inbounds %struct.irtoy, ptr %irtoy, i32 0, i32 7
  tail call void @complete(ptr noundef %command_done240) #9
  br label %sw.epilog

if.end241:                                        ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx_buf, align 4
  %add.ptr243 = getelementptr i8, ptr %110, i32 %92
  store ptr %add.ptr243, ptr %tx_buf, align 4
  %111 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tx_len, align 4
  %sub = sub i32 %112, %92
  store i32 %sub, ptr %tx_len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end241, %do.end237, %if.then201, %do.body189, %if.then172, %land.lhs.true166.sw.epilog_crit_edge, %do.end160, %land.lhs.true133.sw.epilog_crit_edge, %if.then130.sw.epilog_crit_edge, %for.end, %do.end69, %cleanup63, %cleanup, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !132, !133, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_ir_toy__245_555_irtoy_driver_init6, !1, !"__initcall__kmod_ir_toy__245_555_irtoy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir_toy.c", i32 555, i32 1}
!2 = !{ptr @__exitcall_irtoy_driver_exit, !1, !"__exitcall_irtoy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author246, !4, !"__UNIQUE_ID_author246", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/ir_toy.c", i32 557, i32 1}
!5 = !{ptr @__UNIQUE_ID_description247, !6, !"__UNIQUE_ID_description247", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/ir_toy.c", i32 558, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir_toy.c", i32 559, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @irtoy_driver, !12, !"irtoy_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir_toy.c", i32 548, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir_toy.c", i32 415, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @irtoy_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @irtoy_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir_toy.c", i32 460, i32 3}
!23 = !{ptr @irtoy_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @irtoy_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/ir_toy.c", i32 468, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @irtoy_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @irtoy_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ir_toy.c", i32 473, i32 3}
!32 = !{ptr @irtoy_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @irtoy_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/ir_toy.c", i32 481, i32 20}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/ir_toy.c", i32 490, i32 17}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/ir_toy.c", i32 229, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @irtoy_in_callback.__UNIQUE_ID_ddebug244, !39, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/rc/ir_toy.c", i32 234, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @irtoy_in_callback._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @irtoy_in_callback._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/ir_toy.c", i32 91, i32 5}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @irtoy_response._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @irtoy_response._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/rc/ir_toy.c", i32 96, i32 4}
!54 = !{ptr @irtoy_response.__UNIQUE_ID_ddebug237, !53, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/rc/ir_toy.c", i32 110, i32 5}
!57 = !{ptr @irtoy_response._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @irtoy_response._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/ir_toy.c", i32 115, i32 4}
!61 = !{ptr @irtoy_response.__UNIQUE_ID_ddebug238, !60, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/ir_toy.c", i32 122, i32 4}
!64 = !{ptr @irtoy_response._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @irtoy_response._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/ir_toy.c", i32 157, i32 5}
!68 = !{ptr @irtoy_response.__UNIQUE_ID_ddebug239, !67, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/rc/ir_toy.c", i32 172, i32 5}
!71 = !{ptr @irtoy_response.__UNIQUE_ID_ddebug240, !70, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/rc/ir_toy.c", i32 179, i32 4}
!74 = !{ptr @irtoy_response.__UNIQUE_ID_ddebug243, !73, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/rc/ir_toy.c", i32 186, i32 5}
!77 = !{ptr @irtoy_response._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @irtoy_response._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/rc/ir_toy.c", i32 208, i32 3}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @irtoy_out_callback._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @irtoy_out_callback._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/rc/ir_toy.c", i32 269, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @irtoy_setup._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @irtoy_setup._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/rc/ir_toy.c", i32 280, i32 3}
!91 = !{ptr @irtoy_setup._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @irtoy_setup._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/rc/ir_toy.c", i32 289, i32 3}
!95 = !{ptr @irtoy_setup._entry.45, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @irtoy_setup._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @init_completion.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../include/linux/completion.h", i32 87, i32 2}
!99 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @COMMAND_RESET, !101, !"COMMAND_RESET", i1 false, i1 false}
!101 = !{!"../drivers/media/rc/ir_toy.c", i32 27, i32 17}
!102 = distinct !{null, !103, !"COMMAND_VERSION", i1 false, i1 false}
!103 = !{!"../drivers/media/rc/ir_toy.c", i32 25, i32 17}
!104 = distinct !{null, !105, !"COMMAND_SMODE_ENTER", i1 false, i1 false}
!105 = !{!"../drivers/media/rc/ir_toy.c", i32 28, i32 17}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/usb.h", i32 912, i32 31}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/rc/ir_toy.c", i32 334, i32 3}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @irtoy_tx._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @irtoy_tx._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/rc/ir_toy.c", i32 341, i32 3}
!115 = !{ptr @irtoy_tx._entry.52, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @irtoy_tx._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/rc/ir_toy.c", i32 350, i32 3}
!119 = !{ptr @irtoy_tx._entry.55, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @irtoy_tx._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/rc/ir_toy.c", i32 358, i32 3}
!123 = !{ptr @irtoy_tx._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @irtoy_tx._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !126, !"COMMAND_SMODE_EXIT", i1 false, i1 false}
!126 = !{!"../drivers/media/rc/ir_toy.c", i32 29, i32 17}
!127 = distinct !{null, !128, !"COMMAND_TXSTART", i1 false, i1 false}
!128 = !{!"../drivers/media/rc/ir_toy.c", i32 30, i32 17}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/rc/ir_toy.c", i32 383, i32 3}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @irtoy_tx_carrier._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @irtoy_tx_carrier._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @irtoy_table, !135, !"irtoy_table", i1 false, i1 false}
!135 = !{!"../drivers/media/rc/ir_toy.c", i32 542, i32 35}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148356636, i64 2148356641, i64 2148356654, i64 2148356698, i64 2148356732, i64 2148356753}
!146 = !{!"auto-init"}
!147 = !{i8 0, i8 2}
