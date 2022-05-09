; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/appledisplay.c_pt.bc'
source_filename = "../drivers/usb/misc/appledisplay.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.appledisplay = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, %struct.mutex }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_appledisplay__308_345_appledisplay_driver_init6 = internal global ptr @appledisplay_driver_init, section ".initcall6.init", align 4
@appledisplay_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @appledisplay_probe, ptr @appledisplay_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @appledisplay_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_appledisplay_driver_exit = internal global ptr @appledisplay_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [39 x i8] c"appledisplay.author=Michael Hanselmann\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [53 x i8] c"appledisplay.description=Apple Cinema Display driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [48 x i8] c"appledisplay.file=drivers/usb/misc/appledisplay\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [25 x i8] c"appledisplay.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"appledisplay\00", [19 x i8] zeroinitializer }, align 32
@appledisplay_table = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 643, i16 1452, i16 -28136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not find int-in endpoint\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"appledisplay_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/misc/appledisplay.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry_ptr = internal global ptr @appledisplay_probe._entry, section ".printk_index", align 4
@appledisplay_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&pdata->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@appledisplay_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&pdata->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@appledisplay_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pdata->sysfslock\00", [46 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Allocating URB buffer failed\0A\00", [34 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry_ptr.13 = internal global ptr @appledisplay_probe._entry.11, section ".printk_index", align 4
@appledisplay_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Submitting URB failed\0A\00", [41 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry_ptr.16 = internal global ptr @appledisplay_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"appledisplay%d\00", [17 x i8] zeroinitializer }, align 32
@count_displays = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@appledisplay_bl_data = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @appledisplay_bl_update_status, ptr @appledisplay_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Backlight registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry_ptr.20 = internal global ptr @appledisplay_probe._entry.18, section ".printk_index", align 4
@appledisplay_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error while getting initial brightness: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry_ptr.23 = internal global ptr @appledisplay_probe._entry.21, section ".printk_index", align 4
@appledisplay_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016appledisplay: Apple Cinema Display connected\0A\00", [48 x i8] zeroinitializer }, align 32
@appledisplay_probe._entry_ptr.26 = internal global ptr @appledisplay_probe._entry.24, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@appledisplay_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"OVERFLOW with data length %d, actual length is %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"appledisplay_complete\00", [42 x i8] zeroinitializer }, align 32
@appledisplay_complete._entry_ptr = internal global ptr @appledisplay_complete._entry, section ".printk_index", align 4
@appledisplay_complete.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - urb shuttingdown with status: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@appledisplay_complete.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@appledisplay_complete._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@appledisplay_complete._entry_ptr.33 = internal global ptr @appledisplay_complete._entry.31, section ".printk_index", align 4
@appledisplay_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016appledisplay: Apple Cinema Display disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"appledisplay_disconnect\00", [40 x i8] zeroinitializer }, align 32
@appledisplay_disconnect._entry_ptr = internal global ptr @appledisplay_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967221, i64 4294967294]
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"appledisplay_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 339, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 345, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"appledisplay_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 48, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 216, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 232, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 253, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 265, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 270, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"count_displays\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 75, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"appledisplay_bl_data\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 181, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 278, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 288, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 299, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 89, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 97, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 101, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 121, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [35 x i8] c"../drivers/usb/misc/appledisplay.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 336, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_appledisplay_driver_exit, ptr @__initcall__kmod_appledisplay__308_345_appledisplay_driver_init6, ptr @appledisplay_complete._entry, ptr @appledisplay_complete._entry.31, ptr @appledisplay_complete._entry_ptr, ptr @appledisplay_complete._entry_ptr.33, ptr @appledisplay_disconnect._entry, ptr @appledisplay_disconnect._entry_ptr, ptr @appledisplay_driver_exit, ptr @appledisplay_probe._entry, ptr @appledisplay_probe._entry.11, ptr @appledisplay_probe._entry.14, ptr @appledisplay_probe._entry.18, ptr @appledisplay_probe._entry.21, ptr @appledisplay_probe._entry.24, ptr @appledisplay_probe._entry_ptr, ptr @appledisplay_probe._entry_ptr.13, ptr @appledisplay_probe._entry_ptr.16, ptr @appledisplay_probe._entry_ptr.20, ptr @appledisplay_probe._entry_ptr.23, ptr @appledisplay_probe._entry_ptr.26, ptr @appledisplay_driver, ptr @.str, ptr @appledisplay_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @appledisplay_probe.__key, ptr @.str.6, ptr @appledisplay_probe.__key.7, ptr @.str.8, ptr @appledisplay_probe.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @count_displays, ptr @appledisplay_bl_data, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @count_displays to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_bl_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_complete._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appledisplay_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @appledisplay_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @appledisplay_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @appledisplay_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @appledisplay_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appledisplay_probe(ptr noundef %iface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  %endpoint = alloca ptr, align 4
  %bl_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #9
  %0 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 1
  %2 = call ptr @memset(ptr %props, i32 255, i32 28)
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endpoint) #9
  %5 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %endpoint, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bl_name) #9
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 1
  %6 = call ptr @memset(ptr %bl_name, i32 255, i32 20)
  %7 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_altsetting, align 4
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef nonnull %endpoint, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %12 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 216) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.if.end116_crit_edge, label %if.end6

if.end.if.end116_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.end6:                                          ; preds = %if.end
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %work = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 5
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @appledisplay_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry17 = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @appledisplay_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @appledisplay_probe.__key.7) #9
  %sysfslock = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %sysfslock, ptr noundef nonnull @.str.10, ptr noundef nonnull @appledisplay_probe.__key.9) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 2) #13
  %msgdata = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %msgdata to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %msgdata, align 8
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.end6.if.then97_crit_edge, label %if.end35

if.end6.if.then97_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

if.end35:                                         ; preds = %if.end6
  %call36 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %urb = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call36, ptr %urb, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.if.then97_crit_edge, label %if.end40

if.end35.if.then97_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

if.end40:                                         ; preds = %if.end35
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 15
  %call43 = call ptr @usb_alloc_coherent(ptr noundef %23, i32 noundef 2, i32 noundef 3264, ptr noundef %transfer_dma) #9
  %urbdata = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %urbdata to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call43, ptr %urbdata, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.12) #12
  br label %if.then97

if.end51:                                         ; preds = %if.end40
  %25 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %28, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or54 = or i32 %or.i, 1073741952
  %dev1.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or54, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call43, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @appledisplay_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 27
  %34 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 25
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %35, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 23
  %37 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %start_frame.i, align 4
  %38 = load ptr, ptr %urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %transfer_flags, align 4
  %40 = load ptr, ptr %urb, align 4
  %call58 = call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %if.then60

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %dev64 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.15) #12
  br label %if.then97

if.end65:                                         ; preds = %if.end51
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @count_displays, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr nonnull @count_displays, i32 1, i32 3, i32 1) #9
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @count_displays, ptr nonnull @count_displays, i32 1, ptr nonnull elementtype(i32) @count_displays) #9, !srcloc !88
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  %sub = add i32 %asmresult.i.i.i.i, -1
  %call67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bl_name, i32 noundef 20, ptr noundef nonnull @.str.17, i32 noundef %sub)
  %42 = call ptr @memset(ptr %props, i32 0, i32 28)
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %1, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 255, ptr %0, align 4
  %call69 = call ptr @backlight_device_register(ptr noundef nonnull %bl_name, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @appledisplay_bl_data, ptr noundef nonnull %props) #9
  %bd = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call69, ptr %bd, align 8
  %cmp.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end75, label %if.end79

do.end75:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %dev76 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.19) #12
  %46 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd, align 8
  %48 = ptrtoint ptr %47 to i32
  br label %if.then97

if.end79:                                         ; preds = %if.end65
  %call81 = call i32 @appledisplay_bl_get_brightness(ptr noundef %call69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp = icmp slt i32 %call81, 0
  br i1 %cmp, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %dev87 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str.22, i32 noundef %call81) #12
  br label %if.then97

if.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bd, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call81, ptr %50, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.then97:                                        ; preds = %if.then83, %do.end75, %if.then60, %if.then46, %if.end35.if.then97_crit_edge, %if.end6.if.then97_crit_edge
  %retval1.0.ph = phi i32 [ -12, %if.end35.if.then97_crit_edge ], [ -12, %if.end6.if.then97_crit_edge ], [ -12, %if.then46 ], [ %call81, %if.then83 ], [ %48, %do.end75 ], [ -5, %if.then60 ]
  %urb98 = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %urb98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %urb98, align 4
  %tobool99.not = icmp eq ptr %54, null
  br i1 %tobool99.not, label %if.then97.if.end109_crit_edge, label %if.then100

if.then97.if.end109_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_kill_urb(ptr noundef nonnull %54) #9
  %call103 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i, align 8
  %urbdata105 = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %urbdata105 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %urbdata105, align 4
  %59 = ptrtoint ptr %urb98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urb98, align 4
  %transfer_dma107 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %transfer_dma107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %transfer_dma107, align 4
  call void @usb_free_coherent(ptr noundef %56, i32 noundef 2, ptr noundef %58, i32 noundef %62) #9
  %63 = ptrtoint ptr %urb98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %urb98, align 4
  call void @usb_free_urb(ptr noundef %64) #9
  br label %if.end109

if.end109:                                        ; preds = %if.then100, %if.then97.if.end109_crit_edge
  %bd110 = getelementptr inbounds %struct.appledisplay, ptr %call7.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %bd110 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bd110, align 8
  %cmp.i179 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.end109.if.end114_crit_edge, label %if.then112

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  call void @backlight_device_unregister(ptr noundef %66) #9
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end109.if.end114_crit_edge
  %67 = ptrtoint ptr %msgdata to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %msgdata, align 8
  call void @kfree(ptr noundef %68) #9
  br label %if.end116

if.end116:                                        ; preds = %if.end114, %if.end.if.end116_crit_edge
  %retval1.0183 = phi i32 [ %retval1.0.ph, %if.end114 ], [ -12, %if.end.if.end116_crit_edge ]
  %driver_data.i.i180 = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %69 = ptrtoint ptr %driver_data.i.i180 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %driver_data.i.i180, align 4
  call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.end88, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %retval1.0183, %if.end116 ], [ 0, %if.end88 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bl_name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endpoint) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @appledisplay_disconnect(ptr nocapture noundef readonly %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %urb = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %work = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %bd = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd, align 4
  tail call void @backlight_device_unregister(ptr noundef %5) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %urbdata = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %urbdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urbdata, align 4
  %10 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef 2, ptr noundef %9, i32 noundef %13) #9
  %14 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %15) #9
  %msgdata = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %msgdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msgdata, align 4
  tail call void @kfree(ptr noundef %17) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @appledisplay_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %sysfslock.i = getelementptr inbounds %struct.appledisplay, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %sysfslock.i, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or4.i = or i32 %shl.i.i, -2147483520
  %msgdata.i = getelementptr inbounds %struct.appledisplay, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %msgdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msgdata.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or4.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 784, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 2, i32 noundef 250) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp6.i = icmp sgt i32 %call5.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -90, i32 %call5.i
  br label %appledisplay_bl_get_brightness.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %msgdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msgdata.i, align 4
  %arrayidx.i = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %appledisplay_bl_get_brightness.exit

appledisplay_bl_get_brightness.exit:              ; preds = %if.else.i, %if.then.i
  %retval1.0.i = phi i32 [ %spec.store.select.i, %if.then.i ], [ %call5.i, %if.else.i ]
  %brightness.0.i = phi i32 [ -1, %if.then.i ], [ %conv.i, %if.else.i ]
  tail call void @mutex_unlock(ptr noundef %sysfslock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp11.i = icmp slt i32 %retval1.0.i, 0
  %retval1.0.brightness.0.i = select i1 %cmp11.i, i32 %retval1.0.i, i32 %brightness.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval1.0.brightness.0.i)
  %cmp = icmp sgt i32 %retval1.0.brightness.0.i, -1
  br i1 %cmp, label %if.then, label %appledisplay_bl_get_brightness.exit.if.end_crit_edge

appledisplay_bl_get_brightness.exit.if.end_crit_edge: ; preds = %appledisplay_bl_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %appledisplay_bl_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval1.0.brightness.0.i, ptr %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %appledisplay_bl_get_brightness.exit.if.end_crit_edge
  %button_pressed = getelementptr i8, ptr %work, i32 100
  %17 = ptrtoint ptr %button_pressed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %button_pressed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %work, i32 noundef 12) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @appledisplay_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body10 [
    i32 0, label %sw.epilog
    i32 -75, label %do.end
    i32 -104, label %entry.do.body5_crit_edge
    i32 -2, label %entry.do.body5_crit_edge61
    i32 -108, label %entry.do.body5_crit_edge62
  ]

entry.do.body5_crit_edge62:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

entry.do.body5_crit_edge61:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %urb3 = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %urb3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb3, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef %10) #12
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge, %entry.do.body5_crit_edge61, %entry.do.body5_crit_edge62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @appledisplay_complete.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@appledisplay_complete, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !90

if.then:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @appledisplay_complete.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %5) #9
  br label %cleanup

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @appledisplay_complete.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@appledisplay_complete, %if.then22)) #9
          to label %exit [label %if.then22], !srcloc !90

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @appledisplay_complete.__UNIQUE_ID_ddebug307, ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %5) #9
  br label %exit

sw.epilog:                                        ; preds = %entry
  %urbdata = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %urbdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urbdata, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %.off = add i8 %14, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %button_pressed = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 6
  br i1 %switch, label %sw.bb26, label %sw.default29

sw.bb26:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %button_pressed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %button_pressed, align 4
  %work = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 0) #9
  br label %exit

sw.default29:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %button_pressed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %button_pressed, align 4
  br label %exit

exit:                                             ; preds = %sw.default29, %sw.bb26, %if.then22, %do.body10
  %urb32 = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %urb32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb32, align 4
  %call33 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %exit.cleanup_crit_edge, label %do.end38

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end38:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef %call33) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %exit.cleanup_crit_edge, %if.then, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appledisplay_bl_get_brightness(ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfslock = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %sysfslock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or4 = or i32 %shl.i, -2147483520
  %msgdata = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %msgdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msgdata, align 4
  %call5 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or4, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 784, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext 2, i32 noundef 250) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp = icmp slt i32 %call5, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, -1
  %spec.store.select = select i1 %cmp6, i32 -90, i32 %call5
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %msgdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msgdata, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %spec.store.select, %if.then ], [ %call5, %if.else ]
  %brightness.0 = phi i32 [ -1, %if.then ], [ %conv, %if.else ]
  tail call void @mutex_unlock(ptr noundef %sysfslock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp11 = icmp slt i32 %retval1.0, 0
  %retval1.0.brightness.0 = select i1 %cmp11, i32 %retval1.0, i32 %brightness.0
  ret i32 %retval1.0.brightness.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appledisplay_bl_update_status(ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysfslock = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %sysfslock, i32 noundef 0) #9
  %msgdata = getelementptr inbounds %struct.appledisplay, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %msgdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %3, align 1
  %5 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd, align 8
  %conv = trunc i32 %6 to i8
  %7 = load ptr, ptr %msgdata, align 4
  %arrayidx3 = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx3, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i = shl i32 %12, 8
  %or = or i32 %shl.i, -2147483648
  %13 = load ptr, ptr %msgdata, align 4
  %call7 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 784, i16 noundef zeroext 0, ptr noundef %13, i16 noundef zeroext 2, i32 noundef 250) #9
  tail call void @mutex_unlock(ptr noundef %sysfslock) #9
  %14 = tail call i32 @llvm.smin.i32(i32 %call7, i32 0)
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_appledisplay__308_345_appledisplay_driver_init6, !1, !"__initcall__kmod_appledisplay__308_345_appledisplay_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/appledisplay.c", i32 345, i32 1}
!2 = !{ptr @__exitcall_appledisplay_driver_exit, !1, !"__exitcall_appledisplay_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/appledisplay.c", i32 347, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/appledisplay.c", i32 348, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/appledisplay.c", i32 349, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @appledisplay_driver, !12, !"appledisplay_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/appledisplay.c", i32 339, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/appledisplay.c", i32 216, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @appledisplay_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @appledisplay_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @appledisplay_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/appledisplay.c", i32 231, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @appledisplay_probe.__key.7, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @appledisplay_probe.__key.9, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/usb/misc/appledisplay.c", i32 232, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/misc/appledisplay.c", i32 253, i32 3}
!31 = !{ptr @appledisplay_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @appledisplay_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/misc/appledisplay.c", i32 265, i32 3}
!35 = !{ptr @appledisplay_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @appledisplay_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/misc/appledisplay.c", i32 270, i32 37}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/misc/appledisplay.c", i32 278, i32 3}
!41 = !{ptr @appledisplay_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @appledisplay_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/misc/appledisplay.c", i32 288, i32 3}
!45 = !{ptr @appledisplay_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @appledisplay_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/misc/appledisplay.c", i32 299, i32 2}
!49 = !{ptr @appledisplay_probe._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @appledisplay_probe._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/misc/appledisplay.c", i32 89, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @appledisplay_complete._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @appledisplay_complete._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/appledisplay.c", i32 97, i32 3}
!58 = !{ptr @appledisplay_complete.__UNIQUE_ID_ddebug306, !57, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/misc/appledisplay.c", i32 101, i32 3}
!61 = !{ptr @appledisplay_complete.__UNIQUE_ID_ddebug307, !60, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/misc/appledisplay.c", i32 121, i32 3}
!64 = !{ptr @appledisplay_complete._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @appledisplay_complete._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @count_displays, !67, !"count_displays", i1 false, i1 false}
!67 = !{!"../drivers/usb/misc/appledisplay.c", i32 75, i32 17}
!68 = !{ptr @appledisplay_bl_data, !69, !"appledisplay_bl_data", i1 false, i1 false}
!69 = !{!"../drivers/usb/misc/appledisplay.c", i32 181, i32 35}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/misc/appledisplay.c", i32 336, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @appledisplay_disconnect._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @appledisplay_disconnect._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @appledisplay_table, !76, !"appledisplay_table", i1 false, i1 false}
!76 = !{!"../drivers/usb/misc/appledisplay.c", i32 48, i32 35}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i64 2148302093}
!88 = !{i64 2148217402, i64 2148217434, i64 2148217463, i64 2148217497, i64 2148217528, i64 2148217551}
!89 = !{i64 2148302322}
!90 = !{i64 2148698497, i64 2148698502, i64 2148698515, i64 2148698559, i64 2148698593, i64 2148698614}
