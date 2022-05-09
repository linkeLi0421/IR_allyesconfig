; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ttusbir.c_pt.bc'
source_filename = "../drivers/media/rc/ttusbir.c"
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ttusbir = type { ptr, ptr, ptr, [4 x ptr], %struct.led_classdev, ptr, [5 x i8], i32, i32, i8, i8, %struct.atomic_t, [64 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@__initcall__kmod_ttusbir__239_430_ttusbir_driver_init6 = internal global ptr @ttusbir_driver_init, section ".initcall6.init", align 4
@ttusbir_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ttusbir_probe, ptr @ttusbir_disconnect, ptr null, ptr @ttusbir_suspend, ptr @ttusbir_resume, ptr @ttusbir_resume, ptr null, ptr null, ptr @ttusbir_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ttusbir_driver_exit = internal global ptr @ttusbir_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [48 x i8] c"ttusbir.description=TechnoTrend USB IR Receiver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [42 x i8] c"ttusbir.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [38 x i8] c"ttusbir.file=drivers/media/rc/ttusbir\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [20 x i8] c"ttusbir.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ttusbir\00", [24 x i8] zeroinitializer }, align 32
@ttusbir_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2888, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ttusbir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot find expected altsetting\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttusbir_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/rc/ttusbir.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ttusbir_probe._entry_ptr = internal global ptr @ttusbir_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ttusbir:green:power\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-feedback\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TechnoTrend USB IR Receiver\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@ttusbir_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register rc device %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ttusbir_probe._entry_ptr.12 = internal global ptr @ttusbir_probe._entry.10, section ".printk_index", align 4
@ttusbir_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to submit urb %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ttusbir_probe._entry_ptr.15 = internal global ptr @ttusbir_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ttusbir_urb_complete.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttusbir_urb_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error: urb status = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ttusbir_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 179, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to resubmit urb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ttusbir_urb_complete._entry_ptr = internal global ptr @ttusbir_urb_complete._entry, section ".printk_index", align 4
@ttusbir_bulk_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.17, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ttusbir_bulk_complete\00", [42 x i8] zeroinitializer }, align 32
@ttusbir_set_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 62, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to submit bulk urb: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ttusbir_set_led\00", [16 x i8] zeroinitializer }, align 32
@ttusbir_set_led._entry_ptr = internal global ptr @ttusbir_set_led._entry, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@ttusbir_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 407, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to submit urb: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttusbir_resume\00", [17 x i8] zeroinitializer }, align 32
@ttusbir_resume._entry_ptr = internal global ptr @ttusbir_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 254]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"ttusbir_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 420, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 430, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"ttusbir_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 415, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 227, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 289, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 290, i32 28 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 301, i32 20 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 308, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 321, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 330, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 173, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 179, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 97, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 61, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 912, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [30 x i8] c"../drivers/media/rc/ttusbir.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 407, i32 4 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_ttusbir_driver_exit, ptr @__initcall__kmod_ttusbir__239_430_ttusbir_driver_init6, ptr @ttusbir_driver_exit, ptr @ttusbir_probe._entry, ptr @ttusbir_probe._entry.10, ptr @ttusbir_probe._entry.13, ptr @ttusbir_probe._entry_ptr, ptr @ttusbir_probe._entry_ptr.12, ptr @ttusbir_probe._entry_ptr.15, ptr @ttusbir_resume._entry, ptr @ttusbir_resume._entry_ptr, ptr @ttusbir_set_led._entry, ptr @ttusbir_set_led._entry_ptr, ptr @ttusbir_urb_complete._entry, ptr @ttusbir_urb_complete._entry_ptr, ptr @ttusbir_driver, ptr @.str, ptr @ttusbir_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_set_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusbir_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ttusbir_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ttusbir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @ttusbir_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbir_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 520) #13
  %call1 = tail call ptr @rc_allocate_device(i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.preheader:                               ; preds = %entry
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %1 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp340.not = icmp eq i32 %2, 0
  br i1 %cmp340.not, label %for.cond.preheader.do.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 8
  %bulk_out_endp40 = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 7
  %iso_in_endp41 = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0341 = phi i32 [ 0, %for.body.lr.ph ], [ %inc44, %for.end.for.body_crit_edge ]
  %bNumEndpoints = getelementptr %struct.usb_host_interface, ptr %4, i32 %i.0341, i32 0, i32 4
  %5 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumEndpoints, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp7333.not = icmp eq i8 %6, 0
  br i1 %cmp7333.not, label %for.body.for.end_crit_edge, label %for.body9.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body9.lr.ph:                                  ; preds = %for.body
  %endpoint = getelementptr %struct.usb_host_interface, ptr %4, i32 %i.0341, i32 3
  %7 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endpoint, align 4
  br label %for.body9

for.cond6:                                        ; preds = %if.end33
  %inc = add nuw nsw i32 %j.0334, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond6.for.end_crit_edge, label %for.cond6.for.body9_crit_edge

for.cond6.for.body9_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.cond6.for.end_crit_edge:                      ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body9:                                        ; preds = %for.cond6.for.body9_crit_edge, %for.body9.lr.ph
  %iso_in_endp.0339 = phi i32 [ -1, %for.body9.lr.ph ], [ %iso_in_endp.1, %for.cond6.for.body9_crit_edge ]
  %bulk_out_endp.0337 = phi i32 [ -1, %for.body9.lr.ph ], [ %bulk_out_endp.1, %for.cond6.for.body9_crit_edge ]
  %j.0334 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.cond6.for.body9_crit_edge ]
  %arrayidx12 = getelementptr %struct.usb_host_endpoint, ptr %8, i32 %j.0334
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx12, i32 0, i32 4
  %9 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wMaxPacketSize, align 1
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx12, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool16.not = icmp sgt i8 %12, -1
  %bmAttributes.i322 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx12, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i322 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i322, align 1
  %15 = and i8 %14, 3
  br i1 %tobool16.not, label %land.lhs.true25, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i = icmp eq i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %10)
  %cmp20 = icmp eq i16 %10, 4096
  %or.cond317 = select i1 %cmp.i, i1 %cmp20, i1 false
  %spec.select366 = select i1 %or.cond317, i32 %j.0334, i32 %iso_in_endp.0339
  br label %if.end33

land.lhs.true25:                                  ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i323 = icmp eq i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %10)
  %cmp29 = icmp eq i16 %10, 8192
  %or.cond318 = select i1 %cmp.i323, i1 %cmp29, i1 false
  %spec.select = select i1 %or.cond318, i32 %j.0334, i32 %bulk_out_endp.0337
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true25, %land.lhs.true
  %bulk_out_endp.1 = phi i32 [ %spec.select, %land.lhs.true25 ], [ %bulk_out_endp.0337, %land.lhs.true ]
  %iso_in_endp.1 = phi i32 [ %iso_in_endp.0339, %land.lhs.true25 ], [ %spec.select366, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bulk_out_endp.1)
  %cmp34.not = icmp eq i32 %bulk_out_endp.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %iso_in_endp.1)
  %cmp37.not = icmp eq i32 %iso_in_endp.1, -1
  %or.cond319 = select i1 %cmp34.not, i1 true, i1 %cmp37.not
  br i1 %or.cond319, label %for.cond6, label %if.then39

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %bulk_out_endp40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bulk_out_endp.1, ptr %bulk_out_endp40, align 8
  %17 = ptrtoint ptr %iso_in_endp41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %iso_in_endp.1, ptr %iso_in_endp41, align 4
  br label %for.end

for.end:                                          ; preds = %if.then39, %for.cond6.for.end_crit_edge, %for.body.for.end_crit_edge
  %altsetting.1 = phi i32 [ %i.0341, %if.then39 ], [ -1, %for.body.for.end_crit_edge ], [ -1, %for.cond6.for.end_crit_edge ]
  %inc44 = add nuw i32 %i.0341, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc44, i32 %2)
  %cmp = icmp ult i32 %inc44, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %altsetting.1)
  %cmp3 = icmp eq i32 %altsetting.1, -1
  %or.cond316 = and i1 %cmp, %cmp3
  br i1 %or.cond316, label %for.end.for.body_crit_edge, label %for.end45

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end45:                                        ; preds = %for.end
  br i1 %cmp3, label %for.end45.do.end_crit_edge, label %if.end49

for.end45.do.end_crit_edge:                       ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.end45.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %out

if.end49:                                         ; preds = %for.end45
  %dev50 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev51 = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dev51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev50, ptr %dev51, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 -128
  %udev = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %udev, align 8
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1, ptr %call7.i.i, align 8
  %call55 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %altsetting.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.cond59.preheader, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond59.preheader:                             ; preds = %if.end49
  %iso_in_endp70 = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 8
  br label %for.body62

for.body62:                                       ; preds = %if.end77.for.body62_crit_edge, %for.cond59.preheader
  %i.1346 = phi i32 [ 0, %for.cond59.preheader ], [ %inc92, %if.end77.for.body62_crit_edge ]
  %call63 = tail call ptr @usb_alloc_urb(i32 noundef 8, i32 noundef 3264) #10
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %for.body62.out_crit_edge, label %if.end66

for.body62.out_crit_edge:                         ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end66:                                         ; preds = %for.body62
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 8
  %dev68 = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 8
  %25 = ptrtoint ptr %dev68 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dev68, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 27
  %26 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %context, align 4
  %27 = load ptr, ptr %udev, align 8
  %28 = ptrtoint ptr %iso_in_endp70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iso_in_endp70, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 8
  %shl.i = shl i32 %31, 8
  %shl1.i = shl i32 %29, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or72 = or i32 %or.i, 128
  %pipe = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 10
  %32 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or72, ptr %pipe, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 25
  %33 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %interval, align 4
  %34 = load ptr, ptr %udev, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 15
  %call74 = tail call ptr @usb_alloc_coherent(ptr noundef %34, i32 noundef 128, i32 noundef 3264, ptr noundef %transfer_dma) #10
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_free_urb(ptr noundef nonnull %call63) #10
  br label %out

if.end77:                                         ; preds = %if.end66
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 13
  %35 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %transfer_flags, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call74, ptr %transfer_buffer, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 28
  %37 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ttusbir_urb_complete, ptr %complete, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 24
  %38 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %number_of_packets, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call63, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %transfer_buffer_length, align 4
  %arrayidx82 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 0
  %40 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx82, align 4
  %length = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 0, i32 1
  %41 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %length, align 4
  %arrayidx82.1 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 1
  %42 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %arrayidx82.1, align 4
  %length.1 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 1, i32 1
  %43 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %length.1, align 4
  %arrayidx82.2 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 2
  %44 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32, ptr %arrayidx82.2, align 4
  %length.2 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 2, i32 1
  %45 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16, ptr %length.2, align 4
  %arrayidx82.3 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 3
  %46 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 48, ptr %arrayidx82.3, align 4
  %length.3 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 3, i32 1
  %47 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16, ptr %length.3, align 4
  %arrayidx82.4 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 4
  %48 = ptrtoint ptr %arrayidx82.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 64, ptr %arrayidx82.4, align 4
  %length.4 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 4, i32 1
  %49 = ptrtoint ptr %length.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %length.4, align 4
  %arrayidx82.5 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 5
  %50 = ptrtoint ptr %arrayidx82.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 80, ptr %arrayidx82.5, align 4
  %length.5 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 5, i32 1
  %51 = ptrtoint ptr %length.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %length.5, align 4
  %arrayidx82.6 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 6
  %52 = ptrtoint ptr %arrayidx82.6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 96, ptr %arrayidx82.6, align 4
  %length.6 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 6, i32 1
  %53 = ptrtoint ptr %length.6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 16, ptr %length.6, align 4
  %arrayidx82.7 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 7
  %54 = ptrtoint ptr %arrayidx82.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 112, ptr %arrayidx82.7, align 4
  %length.7 = getelementptr %struct.urb, ptr %call63, i32 0, i32 29, i32 7, i32 1
  %55 = ptrtoint ptr %length.7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %length.7, align 4
  %arrayidx89 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 %i.1346
  %56 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call63, ptr %arrayidx89, align 4
  %inc92 = add nuw nsw i32 %i.1346, 1
  %exitcond356.not = icmp eq i32 %inc92, 4
  br i1 %exitcond356.not, label %for.end93, label %if.end77.for.body62_crit_edge

if.end77.for.body62_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62

for.end93:                                        ; preds = %if.end77
  %call94 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %bulk_urb = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call94, ptr %bulk_urb, align 4
  %tobool96.not = icmp eq ptr %call94, null
  br i1 %tobool96.not, label %for.end93.out_crit_edge, label %if.end98

for.end93.out_crit_edge:                          ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end98:                                         ; preds = %for.end93
  %bulk_buffer = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %bulk_buffer to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -86, ptr %bulk_buffer, align 8
  %arrayidx101 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 6, i32 1
  %59 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %arrayidx101, align 1
  %arrayidx103 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 6, i32 2
  %60 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %arrayidx103, align 2
  %arrayidx105 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 6, i32 3
  %61 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %arrayidx105, align 1
  %62 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %udev, align 8
  %bulk_out_endp109 = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %bulk_out_endp109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bulk_out_endp109, align 8
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %63, align 8
  %shl.i325 = shl i32 %67, 8
  %shl1.i326 = shl i32 %65, 15
  %or.i327 = or i32 %shl1.i326, %shl.i325
  %or111 = or i32 %or.i327, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call94, i32 0, i32 8
  %68 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %63, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call94, i32 0, i32 10
  %69 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or111, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call94, i32 0, i32 14
  %70 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %bulk_buffer, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call94, i32 0, i32 19
  %71 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 5, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call94, i32 0, i32 28
  %72 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @ttusbir_bulk_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call94, i32 0, i32 27
  %73 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %led = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.6, ptr %led, align 4
  %default_trigger = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 4, i32 14
  %75 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.7, ptr %default_trigger, align 8
  %brightness_set = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 4, i32 5
  %76 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @ttusbir_brightness_set, ptr %brightness_set, align 8
  %brightness_get = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 4, i32 7
  %77 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @ttusbir_brightness_get, ptr %brightness_get, align 8
  %led_on = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 9
  %78 = ptrtoint ptr %led_on to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %led_on, align 8
  %is_led_on = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 10
  %79 = ptrtoint ptr %is_led_on to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %is_led_on, align 1
  %led_complete = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %led_complete, i32 noundef 4) #10
  %80 = ptrtoint ptr %led_complete to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 0, ptr %led_complete, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev50, ptr noundef %led, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool119.not = icmp eq i32 %call.i, 0
  br i1 %tobool119.not, label %if.end121, label %if.end98.out_crit_edge

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end121:                                        ; preds = %if.end98
  %81 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev, align 8
  %phys = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 12
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 12
  %83 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 1
  %call.i328 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.23, ptr noundef %86, ptr noundef %devpath.i) #10
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 3
  %87 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.8, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 4
  %88 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %phys, ptr %input_phys, align 4
  %89 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %udev, align 8
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5
  %91 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 16, i32 7
  %92 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %idVendor.i, align 8
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #10
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 16, i32 8
  %96 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %idProduct.i, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #10
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 2
  %99 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 16, i32 9
  %100 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %bcdDevice.i, align 4
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #10
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 3
  %103 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %version.i, align 2
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %104 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %dev50, ptr %parent, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 16
  %105 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 130023420, ptr %allowed_protocols, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 24
  %106 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i, ptr %priv, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 6
  %107 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 7
  %108 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.9, ptr %map_name, align 4
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 35
  %109 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %min_timeout, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 34
  %110 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 125000, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 36
  %111 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1250000, ptr %max_timeout, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 37
  %112 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 14, ptr %rx_resolution, align 8
  %call130 = tail call i32 @rc_register_device(ptr noundef %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end137, label %do.end135

do.end135:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.11, i32 noundef %call130) #14
  br label %out2

if.end137:                                        ; preds = %if.end121
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %113 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %arrayidx143 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 0
  %114 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx143, align 4
  %call144 = tail call i32 @usb_submit_urb(ptr noundef %115, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %for.cond138, label %if.end137.do.end149_crit_edge

if.end137.do.end149_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

for.cond138:                                      ; preds = %if.end137
  %arrayidx143.1 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 1
  %116 = ptrtoint ptr %arrayidx143.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx143.1, align 8
  %call144.1 = tail call i32 @usb_submit_urb(ptr noundef %117, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.1)
  %tobool145.not.1 = icmp eq i32 %call144.1, 0
  br i1 %tobool145.not.1, label %for.cond138.1, label %for.cond138.do.end149_crit_edge

for.cond138.do.end149_crit_edge:                  ; preds = %for.cond138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

for.cond138.1:                                    ; preds = %for.cond138
  %arrayidx143.2 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 2
  %118 = ptrtoint ptr %arrayidx143.2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx143.2, align 4
  %call144.2 = tail call i32 @usb_submit_urb(ptr noundef %119, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.2)
  %tobool145.not.2 = icmp eq i32 %call144.2, 0
  br i1 %tobool145.not.2, label %for.cond138.2, label %for.cond138.1.do.end149_crit_edge

for.cond138.1.do.end149_crit_edge:                ; preds = %for.cond138.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

for.cond138.2:                                    ; preds = %for.cond138.1
  %arrayidx143.3 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 3
  %120 = ptrtoint ptr %arrayidx143.3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx143.3, align 8
  %call144.3 = tail call i32 @usb_submit_urb(ptr noundef %121, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.3)
  %tobool145.not.3 = icmp eq i32 %call144.3, 0
  br i1 %tobool145.not.3, label %for.cond138.2.cleanup179_crit_edge, label %for.cond138.2.do.end149_crit_edge

for.cond138.2.do.end149_crit_edge:                ; preds = %for.cond138.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

for.cond138.2.cleanup179_crit_edge:               ; preds = %for.cond138.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

do.end149:                                        ; preds = %for.cond138.2.do.end149_crit_edge, %for.cond138.1.do.end149_crit_edge, %for.cond138.do.end149_crit_edge, %if.end137.do.end149_crit_edge
  %call144.lcssa = phi i32 [ %call144, %if.end137.do.end149_crit_edge ], [ %call144.1, %for.cond138.do.end149_crit_edge ], [ %call144.2, %for.cond138.1.do.end149_crit_edge ], [ %call144.3, %for.cond138.2.do.end149_crit_edge ]
  %122 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.14, i32 noundef %call144.lcssa) #14
  tail call void @rc_unregister_device(ptr noundef %call1) #10
  br label %out2

out2:                                             ; preds = %do.end149, %do.end135
  %rc.0 = phi ptr [ %call1, %do.end135 ], [ null, %do.end149 ]
  %ret.2 = phi i32 [ %call130, %do.end135 ], [ %call144.lcssa, %do.end149 ]
  tail call void @led_classdev_unregister(ptr noundef %led) #10
  br label %out

out:                                              ; preds = %out2, %if.end98.out_crit_edge, %for.end93.out_crit_edge, %if.then76, %for.body62.out_crit_edge, %if.end49.out_crit_edge, %do.end, %entry.out_crit_edge
  %rc.1 = phi ptr [ %call1, %do.end ], [ %call1, %if.end49.out_crit_edge ], [ %call1, %if.end98.out_crit_edge ], [ %rc.0, %out2 ], [ %call1, %entry.out_crit_edge ], [ %call1, %for.end93.out_crit_edge ], [ %call1, %if.then76 ], [ %call1, %for.body62.out_crit_edge ]
  %ret.3 = phi i32 [ -19, %do.end ], [ %call55, %if.end49.out_crit_edge ], [ %call.i, %if.end98.out_crit_edge ], [ %ret.2, %out2 ], [ -12, %entry.out_crit_edge ], [ -12, %for.end93.out_crit_edge ], [ -12, %if.then76 ], [ -12, %for.body62.out_crit_edge ]
  br i1 %tobool.not, label %out.if.end178_crit_edge, label %for.cond158.preheader

out.if.end178_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

for.cond158.preheader:                            ; preds = %out
  %udev170 = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 2
  %arrayidx163 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 0
  %124 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx163, align 4
  %tobool164.not = icmp eq ptr %125, null
  br i1 %tobool164.not, label %for.cond158.preheader.for.end175_crit_edge, label %for.body166

for.cond158.preheader.for.end175_crit_edge:       ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end175

for.body166:                                      ; preds = %for.cond158.preheader
  tail call void @usb_kill_urb(ptr noundef nonnull %125) #10
  %126 = ptrtoint ptr %udev170 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %udev170, align 8
  %transfer_buffer171 = getelementptr inbounds %struct.urb, ptr %125, i32 0, i32 14
  %128 = ptrtoint ptr %transfer_buffer171 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %transfer_buffer171, align 4
  %transfer_dma172 = getelementptr inbounds %struct.urb, ptr %125, i32 0, i32 15
  %130 = ptrtoint ptr %transfer_dma172 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %transfer_dma172, align 4
  tail call void @usb_free_coherent(ptr noundef %127, i32 noundef 128, ptr noundef %129, i32 noundef %131) #10
  tail call void @usb_free_urb(ptr noundef nonnull %125) #10
  %arrayidx163.1 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 1
  %132 = ptrtoint ptr %arrayidx163.1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx163.1, align 8
  %tobool164.not.1 = icmp eq ptr %133, null
  br i1 %tobool164.not.1, label %for.body166.for.end175_crit_edge, label %for.body166.1

for.body166.for.end175_crit_edge:                 ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end175

for.body166.1:                                    ; preds = %for.body166
  tail call void @usb_kill_urb(ptr noundef nonnull %133) #10
  %134 = ptrtoint ptr %udev170 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %udev170, align 8
  %transfer_buffer171.1 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 14
  %136 = ptrtoint ptr %transfer_buffer171.1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %transfer_buffer171.1, align 4
  %transfer_dma172.1 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 15
  %138 = ptrtoint ptr %transfer_dma172.1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %transfer_dma172.1, align 4
  tail call void @usb_free_coherent(ptr noundef %135, i32 noundef 128, ptr noundef %137, i32 noundef %139) #10
  tail call void @usb_free_urb(ptr noundef nonnull %133) #10
  %arrayidx163.2 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 2
  %140 = ptrtoint ptr %arrayidx163.2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx163.2, align 4
  %tobool164.not.2 = icmp eq ptr %141, null
  br i1 %tobool164.not.2, label %for.body166.1.for.end175_crit_edge, label %for.body166.2

for.body166.1.for.end175_crit_edge:               ; preds = %for.body166.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end175

for.body166.2:                                    ; preds = %for.body166.1
  tail call void @usb_kill_urb(ptr noundef nonnull %141) #10
  %142 = ptrtoint ptr %udev170 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %udev170, align 8
  %transfer_buffer171.2 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 14
  %144 = ptrtoint ptr %transfer_buffer171.2 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %transfer_buffer171.2, align 4
  %transfer_dma172.2 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 15
  %146 = ptrtoint ptr %transfer_dma172.2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %transfer_dma172.2, align 4
  tail call void @usb_free_coherent(ptr noundef %143, i32 noundef 128, ptr noundef %145, i32 noundef %147) #10
  tail call void @usb_free_urb(ptr noundef nonnull %141) #10
  %arrayidx163.3 = getelementptr %struct.ttusbir, ptr %call7.i.i, i32 0, i32 3, i32 3
  %148 = ptrtoint ptr %arrayidx163.3 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx163.3, align 8
  %tobool164.not.3 = icmp eq ptr %149, null
  br i1 %tobool164.not.3, label %for.body166.2.for.end175_crit_edge, label %for.body166.3

for.body166.2.for.end175_crit_edge:               ; preds = %for.body166.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end175

for.body166.3:                                    ; preds = %for.body166.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %149) #10
  %150 = ptrtoint ptr %udev170 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %udev170, align 8
  %transfer_buffer171.3 = getelementptr inbounds %struct.urb, ptr %149, i32 0, i32 14
  %152 = ptrtoint ptr %transfer_buffer171.3 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %transfer_buffer171.3, align 4
  %transfer_dma172.3 = getelementptr inbounds %struct.urb, ptr %149, i32 0, i32 15
  %154 = ptrtoint ptr %transfer_dma172.3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %transfer_dma172.3, align 4
  tail call void @usb_free_coherent(ptr noundef %151, i32 noundef 128, ptr noundef %153, i32 noundef %155) #10
  tail call void @usb_free_urb(ptr noundef nonnull %149) #10
  br label %for.end175

for.end175:                                       ; preds = %for.body166.3, %for.body166.2.for.end175_crit_edge, %for.body166.1.for.end175_crit_edge, %for.body166.for.end175_crit_edge, %for.cond158.preheader.for.end175_crit_edge
  %bulk_urb176 = getelementptr inbounds %struct.ttusbir, ptr %call7.i.i, i32 0, i32 5
  %156 = ptrtoint ptr %bulk_urb176 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bulk_urb176, align 4
  tail call void @usb_kill_urb(ptr noundef %157) #10
  %158 = ptrtoint ptr %bulk_urb176 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bulk_urb176, align 4
  tail call void @usb_free_urb(ptr noundef %159) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end178

if.end178:                                        ; preds = %for.end175, %out.if.end178_crit_edge
  tail call void @rc_free_device(ptr noundef %rc.1) #10
  br label %cleanup179

cleanup179:                                       ; preds = %if.end178, %for.cond138.2.cleanup179_crit_edge
  %retval.0 = phi i32 [ %ret.3, %if.end178 ], [ 0, %for.cond138.2.cleanup179_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusbir_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev1 = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  store ptr null, ptr %udev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @rc_unregister_device(ptr noundef %5) #10
  %led = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 4
  tail call void @led_classdev_unregister(ptr noundef %led) #10
  %arrayidx = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 15
  %12 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef 128, ptr noundef %11, i32 noundef %13) #10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %15) #10
  %arrayidx.1 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #10
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  %transfer_buffer.1 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer.1, align 4
  %transfer_dma.1 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %transfer_dma.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_dma.1, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef 128, ptr noundef %21, i32 noundef %23) #10
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %25) #10
  %arrayidx.2 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #10
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2, align 4
  %transfer_buffer.2 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer.2, align 4
  %transfer_dma.2 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 15
  %32 = ptrtoint ptr %transfer_dma.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %transfer_dma.2, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef 128, ptr noundef %31, i32 noundef %33) #10
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %35) #10
  %arrayidx.3 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %37) #10
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.3, align 4
  %transfer_buffer.3 = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transfer_buffer.3, align 4
  %transfer_dma.3 = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 15
  %42 = ptrtoint ptr %transfer_dma.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %transfer_dma.3, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef 128, ptr noundef %41, i32 noundef %43) #10
  %44 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %45) #10
  %bulk_urb = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bulk_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %47) #10
  %48 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bulk_urb, align 4
  tail call void @usb_free_urb(ptr noundef %49) #10
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbir_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #10
  %arrayidx.1 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #10
  %arrayidx.2 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #10
  %arrayidx.3 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %led = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 4
  tail call void @led_classdev_suspend(ptr noundef %led) #10
  %bulk_urb = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bulk_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusbir_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_led_on = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %is_led_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_led_on, align 1
  %led = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 4
  tail call void @led_classdev_resume(ptr noundef %led) #10
  %arrayidx = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %4, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %call1.1 = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.2, align 4
  %call1.2 = tail call i32 @usb_submit_urb(ptr noundef %8, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.do.end_crit_edge

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.ttusbir, ptr %1, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %call1.3 = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool.not.3, label %for.cond.2.for.end_crit_edge, label %for.cond.2.do.end_crit_edge

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end:                                           ; preds = %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call1.lcssa = phi i32 [ %call1, %entry.do.end_crit_edge ], [ %call1.1, %for.cond.do.end_crit_edge ], [ %call1.2, %for.cond.1.do.end_crit_edge ], [ %call1.3, %for.cond.2.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef %call1.lcssa) #14
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.2.for.end_crit_edge
  %rc.1 = phi i32 [ %call1.lcssa, %do.end ], [ 0, %for.cond.2.for.end_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusbir_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  %rawir.i = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #12
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
    i32 -2, label %entry.sw.bb1_crit_edge26
    i32 -108, label %entry.sw.bb1_crit_edge27
  ]

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %5 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i) #10
  %7 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %rawir.i, align 8
  %pulse2.i = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %event.0.off065.i = phi i1 [ false, %sw.bb ], [ %spec.select63.i, %for.inc.i.for.body.i_crit_edge ]
  %i.064.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %6, i32 %i.064.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, -2
  %and.i = zext i8 %10 to i32
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %10, label %sw.default.i [
    i8 -2, label %sw.bb.i
    i8 0, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pulse2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %pulse2.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %pulse2.i, align 1
  %13 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 62, ptr %rawir.i, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %15, ptr noundef nonnull %rawir.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  br label %for.inc.i

sw.bb1.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %pulse2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load3.i = load i8, ptr %pulse2.i, align 1
  %bf.set5.i = or i8 %bf.load3.i, -128
  store i8 %bf.set5.i, ptr %pulse2.i, align 1
  %17 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 62, ptr %rawir.i, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call7.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %19, ptr noundef nonnull %rawir.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp ne i32 %call7.i, 0
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %and11.i = and i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %and.i, -2
  %20 = call i32 @llvm.cttz.i32(i32 %neg.i, i1 true) #10, !range !72
  %21 = ptrtoint ptr %pulse2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load16.i = load i8, ptr %pulse2.i, align 1
  %bf.set18.i = or i8 %bf.load16.i, -128
  br label %if.end23.i

if.else.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = call i32 @llvm.cttz.i32(i32 %and.i, i1 true) #10, !range !73
  %23 = ptrtoint ptr %pulse2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load20.i = load i8, ptr %pulse2.i, align 1
  %bf.clear21.i = and i8 %bf.load20.i, 127
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then13.i
  %storemerge.i = phi i8 [ %bf.set18.i, %if.then13.i ], [ %bf.clear21.i, %if.else.i ]
  %b.0.i = phi i32 [ %20, %if.then13.i ], [ %22, %if.else.i ]
  %24 = ptrtoint ptr %pulse2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %storemerge.i, ptr %pulse2.i, align 1
  %sub24.i = sub nsw i32 8, %b.0.i
  %mul.i = mul nsw i32 %sub24.i, 7
  %25 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %rawir.i, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call26.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %27, ptr noundef nonnull %rawir.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp ne i32 %call26.i, 0
  %28 = ptrtoint ptr %pulse2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load31.i = load i8, ptr %pulse2.i, align 1
  %bf.set36.i = xor i8 %bf.load31.i, -128
  store i8 %bf.set36.i, ptr %pulse2.i, align 1
  %mul37.i = mul nuw nsw i32 %b.0.i, 7
  %29 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul37.i, ptr %rawir.i, align 8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call39.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %31, ptr noundef nonnull %rawir.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp ne i32 %call39.i, 0
  %32 = select i1 %tobool40.not.i, i1 true, i1 %tobool27.not.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i, %sw.bb1.i, %sw.bb.i
  %.sink.i = phi i1 [ %32, %if.end23.i ], [ %tobool8.not.i, %sw.bb1.i ], [ %tobool.not.i, %sw.bb.i ]
  %spec.select63.i = select i1 %.sink.i, i1 true, i1 %event.0.off065.i
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %spec.select63.i, label %if.then44.i, label %for.end.i.ttusbir_process_ir_data.exit_crit_edge

for.end.i.ttusbir_process_ir_data.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusbir_process_ir_data.exit

if.then44.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void @ir_raw_event_handle(ptr noundef %34) #10
  br label %ttusbir_process_ir_data.exit

ttusbir_process_ir_data.exit:                     ; preds = %if.then44.i, %for.end.i.ttusbir_process_ir_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge26, %entry.sw.bb1_crit_edge27
  %call = tail call i32 @usb_unlink_urb(ptr noundef %urb) #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ttusbir_urb_complete.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ttusbir_urb_complete, %if.then)) #10
          to label %sw.epilog [label %if.then], !srcloc !74

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ttusbir_urb_complete.__UNIQUE_ID_ddebug238, ptr noundef %36, ptr noundef nonnull @.str.17, i32 noundef %38) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %ttusbir_process_ir_data.exit
  %call7 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  %39 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call7, label %do.end12 [
    i32 0, label %sw.epilog.cleanup_crit_edge
    i32 -19, label %sw.epilog.cleanup_crit_edge28
  ]

sw.epilog.cleanup_crit_edge28:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.18, i32 noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge28, %sw.bb1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusbir_bulk_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %led_complete = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %led_complete, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %led_complete, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %led_complete, ptr %led_complete, i32 1, ptr elementtype(i32) %led_complete) #10, !srcloc !75
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %4, label %do.body [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.sw.bb_crit_edge
    i32 -2, label %entry.sw.bb_crit_edge12
    i32 -108, label %entry.sw.bb_crit_edge13
  ]

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13
  %call = tail call i32 @usb_unlink_urb(ptr noundef %urb) #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ttusbir_bulk_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ttusbir_bulk_complete, %if.then)) #10
          to label %sw.epilog [label %if.then], !srcloc !74

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ttusbir, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ttusbir_bulk_complete.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %9) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %entry.sw.epilog_crit_edge
  tail call fastcc void @ttusbir_set_led(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusbir_brightness_set(ptr noundef %led_dev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_dev, i32 -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp ne i32 %brightness, 0
  %led_on = getelementptr i8, ptr %led_dev, i32 420
  %frombool = zext i1 %cmp to i8
  %0 = ptrtoint ptr %led_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %led_on, align 4
  tail call fastcc void @ttusbir_set_led(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ttusbir_brightness_get(ptr nocapture noundef readonly %led_dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %led_on = getelementptr i8, ptr %led_dev, i32 420
  %0 = ptrtoint ptr %led_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_on, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttusbir_set_led(ptr noundef %tt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %led_on = getelementptr inbounds %struct.ttusbir, ptr %tt, i32 0, i32 9
  %0 = ptrtoint ptr %led_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_on, align 4, !range !76
  %is_led_on = getelementptr inbounds %struct.ttusbir, ptr %tt, i32 0, i32 10
  %2 = ptrtoint ptr %is_led_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_led_on, align 1, !range !76
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %land.lhs.true

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %entry
  %udev = getelementptr inbounds %struct.ttusbir, ptr %tt, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true8

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true8:                                   ; preds = %land.lhs.true
  %led_complete = getelementptr inbounds %struct.ttusbir, ptr %tt, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %led_complete, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %led_complete, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %led_complete, ptr %led_complete, i32 1, i32 1, ptr elementtype(i32) %led_complete) #10, !srcloc !79
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %land.lhs.true8.if.end21_crit_edge, label %if.then

land.lhs.true8.if.end21_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %land.lhs.true8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %7 = ptrtoint ptr %led_on to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %led_on, align 4, !range !76
  %9 = ptrtoint ptr %is_led_on to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %is_led_on, align 1
  %arrayidx = getelementptr %struct.ttusbir, ptr %tt, i32 0, i32 6, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %arrayidx, align 4
  %bulk_urb = getelementptr inbounds %struct.ttusbir, ptr %tt, i32 0, i32 5
  %11 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bulk_urb, align 4
  %call14 = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then.if.end21_crit_edge, label %do.end19

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end19:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ttusbir, ptr %tt, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.21, i32 noundef %call14) #14
  %call.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %led_complete, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %led_complete, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %led_complete, ptr %led_complete, i32 1, ptr elementtype(i32) %led_complete) #10, !srcloc !75
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.then.if.end21_crit_edge, %land.lhs.true8.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %entry.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_ttusbir__239_430_ttusbir_driver_init6, !1, !"__initcall__kmod_ttusbir__239_430_ttusbir_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ttusbir.c", i32 430, i32 1}
!2 = !{ptr @__exitcall_ttusbir_driver_exit, !1, !"__exitcall_ttusbir_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/ttusbir.c", i32 432, i32 1}
!5 = !{ptr @__UNIQUE_ID_author241, !6, !"__UNIQUE_ID_author241", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/ttusbir.c", i32 433, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ttusbir.c", i32 434, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ttusbir_driver, !12, !"ttusbir_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ttusbir.c", i32 420, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ttusbir.c", i32 227, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ttusbir_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ttusbir_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ttusbir.c", i32 289, i32 17}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/ttusbir.c", i32 290, i32 28}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/ttusbir.c", i32 301, i32 20}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/ttusbir.c", i32 308, i32 17}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/ttusbir.c", i32 321, i32 3}
!31 = !{ptr @ttusbir_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ttusbir_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/ttusbir.c", i32 330, i32 4}
!35 = !{ptr @ttusbir_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ttusbir_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/ttusbir.c", i32 173, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ttusbir_urb_complete.__UNIQUE_ID_ddebug238, !38, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/ttusbir.c", i32 179, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ttusbir_urb_complete._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ttusbir_urb_complete._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/rc/ttusbir.c", i32 97, i32 3}
!48 = !{ptr @ttusbir_bulk_complete.__UNIQUE_ID_ddebug237, !47, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/rc/ttusbir.c", i32 61, i32 4}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ttusbir_set_led._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ttusbir_set_led._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/usb.h", i32 912, i32 31}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/ttusbir.c", i32 407, i32 4}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ttusbir_resume._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ttusbir_resume._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ttusbir_table, !62, !"ttusbir_table", i1 false, i1 false}
!62 = !{!"../drivers/media/rc/ttusbir.c", i32 415, i32 35}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i32 0, i32 33}
!73 = !{i32 1, i32 33}
!74 = !{i64 2148961363, i64 2148961368, i64 2148961381, i64 2148961425, i64 2148961459, i64 2148961480}
!75 = !{i64 2148350451, i64 2148350477, i64 2148350506, i64 2148350540, i64 2148350571, i64 2148350594}
!76 = !{i8 0, i8 2}
!77 = !{i64 2154433229}
!78 = !{i64 2148347405}
!79 = !{i64 833025, i64 833050, i64 833072, i64 833088, i64 833100, i64 833120, i64 833144, i64 833160, i64 833172}
!80 = !{i64 2148347593}
