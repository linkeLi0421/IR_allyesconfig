; ModuleID = '/llk/IR_all_yes/drivers/input/tablet/pegasus_notetaker.c_pt.bc'
source_filename = "../drivers/input/tablet/pegasus_notetaker.c"
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.pegasus = type { ptr, i8, i32, ptr, ptr, ptr, ptr, %struct.mutex, i8, [128 x i8], [64 x i8], %struct.work_struct }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pegasus_notetaker__232_464_pegasus_driver_init6 = internal global ptr @pegasus_driver_init, section ".initcall6.init", align 4
@pegasus_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @pegasus_probe, ptr @pegasus_disconnect, ptr null, ptr @pegasus_suspend, ptr @pegasus_resume, ptr @pegasus_reset_resume, ptr null, ptr null, ptr @pegasus_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pegasus_driver_exit = internal global ptr @pegasus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [63 x i8] c"pegasus_notetaker.author=Martin Kepplinger <martink@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [73 x i8] c"pegasus_notetaker.description=Pegasus Mobile Notetaker Pen tablet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [62 x i8] c"pegasus_notetaker.file=drivers/input/tablet/pegasus_notetaker\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [30 x i8] c"pegasus_notetaker.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pegasus_notetaker\00", [46 x i8] zeroinitializer }, align 32
@pegasus_ids = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3616, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pegasus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid number of endpoints\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pegasus_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/tablet/pegasus_notetaker.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pegasus_probe._entry_ptr = internal global ptr @pegasus_probe._entry, section ".printk_index", align 4
@pegasus_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pegasus->pm_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USB Pegasus Device %04x:%04x\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@pegasus_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&pegasus->init)\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pegasus_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - urb shutting down with status: %d\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pegasus_irq\00", [20 x i8] zeroinitializer }, align 32
@pegasus_irq._entry_ptr = internal global ptr @pegasus_irq._entry, section ".printk_index", align 4
@pegasus_irq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - nonzero urb status received: %d\00", [59 x i8] zeroinitializer }, align 32
@pegasus_irq._entry_ptr.17 = internal global ptr @pegasus_irq._entry.15, section ".printk_index", align 4
@pegasus_irq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - usb_submit_urb failed with result %d\00", [54 x i8] zeroinitializer }, align 32
@pegasus_irq._entry_ptr.20 = internal global ptr @pegasus_irq._entry.18, section ".printk_index", align 4
@pegasus_parse_packet.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@pegasus_parse_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 148, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Pen battery low\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pegasus_parse_packet\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pegasus_parse_packet._entry_ptr = internal global ptr @pegasus_parse_packet._entry, section ".printk_index", align 4
@pegasus_parse_packet.__print_once.24 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@pegasus_parse_packet._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.3, i32 171, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown answer from device\0A\00", [36 x i8] zeroinitializer }, align 32
@pegasus_parse_packet._entry_ptr.27 = internal global ptr @pegasus_parse_packet._entry.25, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@pegasus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pegasus_set_mode error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pegasus_init\00", [19 x i8] zeroinitializer }, align 32
@pegasus_init._entry_ptr = internal global ptr @pegasus_init._entry, section ".printk_index", align 4
@pegasus_control_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"control msg error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pegasus_control_msg\00", [44 x i8] zeroinitializer }, align 32
@pegasus_control_msg._entry_ptr = internal global ptr @pegasus_control_msg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 8, i64 64, i64 65, i64 66, i64 128]
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"pegasus_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 453, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 464, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"pegasus_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 446, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 279, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 292, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 327, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 333, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 338, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 340, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 190, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 195, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 202, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 148, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 170, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 912, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 213, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [44 x i8] c"../drivers/input/tablet/pegasus_notetaker.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 117, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_pegasus_driver_exit, ptr @__initcall__kmod_pegasus_notetaker__232_464_pegasus_driver_init6, ptr @pegasus_control_msg._entry, ptr @pegasus_control_msg._entry_ptr, ptr @pegasus_driver_exit, ptr @pegasus_init._entry, ptr @pegasus_init._entry_ptr, ptr @pegasus_irq._entry, ptr @pegasus_irq._entry.15, ptr @pegasus_irq._entry.18, ptr @pegasus_irq._entry_ptr, ptr @pegasus_irq._entry_ptr.17, ptr @pegasus_irq._entry_ptr.20, ptr @pegasus_parse_packet._entry, ptr @pegasus_parse_packet._entry.25, ptr @pegasus_parse_packet._entry_ptr, ptr @pegasus_parse_packet._entry_ptr.27, ptr @pegasus_probe._entry, ptr @pegasus_probe._entry_ptr, ptr @pegasus_driver, ptr @.str, ptr @pegasus_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pegasus_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pegasus_probe.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_irq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_irq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_parse_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_parse_packet._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_control_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @pegasus_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @pegasus_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i229 = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5 = icmp eq i8 %7, 0
  br i1 %cmp5, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %endpoint11 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 360) #12
  %call14 = tail call ptr @input_allocate_device() #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool15.not = icmp eq ptr %call14, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %if.end9.err_free_mem_crit_edge, label %do.body18

if.end9.err_free_mem_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mem

do.body18:                                        ; preds = %if.end9
  %pm_mutex = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %pm_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @pegasus_probe.__key) #8
  %usbdev = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i229, ptr %usbdev, align 8
  %dev21 = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %dev21, align 4
  %intf22 = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %intf22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %intf, ptr %intf22, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress, align 1
  %conv23 = zext i8 %15 to i32
  %16 = ptrtoint ptr %add.ptr.i229 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i229, align 8
  %shl.i = shl i32 %17, 8
  %shl1.i = shl nuw nsw i32 %conv23, 15
  %or.i230 = or i32 %shl.i, %shl1.i
  %or25 = or i32 %or.i230, 1073741952
  %18 = lshr i32 %or.i230, 15
  %and.i = and i32 %18, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr.i229, i32 0, i32 21, i32 %and.i
  %19 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %20, null
  br i1 %tobool59.not.i, label %do.body18.usb_maxpacket.exit_crit_edge, label %if.end61.i

do.body18.usb_maxpacket.exit_crit_edge:           ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %23 = and i16 %22, -249
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #8
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %do.body18.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i16 [ %24, %if.end61.i ], [ 0, %do.body18.usb_maxpacket.exit_crit_edge ]
  %conv28 = trunc i16 %retval.0.i to i8
  %data_len = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28, ptr %data_len, align 4
  %conv28.mask = and i16 %retval.0.i, 255
  %conv30 = zext i16 %conv28.mask to i32
  %data_dma = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 2
  %call31 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i229, i32 noundef %conv30, i32 noundef 3264, ptr noundef %data_dma) #8
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31, ptr %call7.i.i, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %usb_maxpacket.exit.err_free_mem_crit_edge, label %if.end35

usb_maxpacket.exit.err_free_mem_crit_edge:        ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mem

if.end35:                                         ; preds = %usb_maxpacket.exit
  %call36 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %irq = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call36, ptr %irq, align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.err_free_dma_crit_edge, label %if.end40

if.end35.err_free_dma_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma

if.end40:                                         ; preds = %if.end35
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data_len, align 4
  %conv44 = zext i8 %31 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 5
  %32 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterval, align 1
  %conv45 = zext i8 %33 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 8
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i229, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 10
  %35 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or25, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %29, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv44, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 28
  %38 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @pegasus_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 27
  %39 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %40 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp.i = icmp eq i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp6.i = icmp ugt i32 %41, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end40.usb_fill_int_urb.exit_crit_edge

if.end40.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %42 = tail call i32 @llvm.smax.i32(i32 %conv45, i32 1) #8
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 16) #8
  %sub.i = add nsw i32 %43, -1
  %shl.i231 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end40.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i231, %if.then.i ], [ %conv45, %if.end40.usb_fill_int_urb.exit_crit_edge ]
  %44 = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 25
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %interval.sink.i, ptr %44, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 23
  %46 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %start_frame.i, align 4
  %47 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_dma, align 8
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irq, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %transfer_dma, align 4
  %52 = load ptr, ptr %irq, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_flags, align 4
  %or49 = or i32 %54, 4
  store i32 %or49, ptr %transfer_flags, align 4
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %55 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %manufacturer, align 4
  %tobool50.not = icmp eq ptr %56, null
  br i1 %tobool50.not, label %usb_fill_int_urb.exit.if.end54_crit_edge, label %if.then51

usb_fill_int_urb.exit.if.end54_crit_edge:         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then51:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 9
  %call53 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull %56, i32 noundef 128) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %usb_fill_int_urb.exit.if.end54_crit_edge
  %product = getelementptr i8, ptr %1, i32 1104
  %57 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %product, align 8
  %tobool55.not = icmp eq ptr %58, null
  br i1 %tobool55.not, label %if.end54.if.end68_crit_edge, label %if.then56

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then56:                                        ; preds = %if.end54
  %59 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %manufacturer, align 4
  %tobool58.not = icmp eq ptr %60, null
  br i1 %tobool58.not, label %if.then56.if.end63_crit_edge, label %if.then59

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %name60 = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 9
  %call62 = tail call i32 @strlcat(ptr noundef %name60, ptr noundef nonnull @.str.7, i32 noundef 128) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then56.if.end63_crit_edge
  %name64 = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 9
  %61 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %product, align 8
  %call67 = tail call i32 @strlcat(ptr noundef %name64, ptr noundef %62, i32 noundef 128) #8
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %if.end54.if.end68_crit_edge
  %name69 = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %name69 to i32
  call void @__asan_load1_noabort(i32 %63)
  %char0 = load i8, ptr %name69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool72.not = icmp eq i8 %char0, 0
  br i1 %tobool72.not, label %if.then73, label %if.end68.if.end80_crit_edge

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %idVendor = getelementptr i8, ptr %1, i32 936
  %64 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %idVendor, align 8
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %conv76 = zext i16 %66 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %67 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %idProduct, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %conv78 = zext i16 %69 to i32
  %call79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name69, i32 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %conv76, i32 noundef %conv78)
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %if.end68.if.end80_crit_edge
  %phys = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 10
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %70 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef %73, ptr noundef %devpath.i) #8
  %call85 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.9, i32 noundef 64) #8
  %init = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %init, i32 noundef 0) #8
  %74 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -64, ptr %init, align 4
  %lockdep_map = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @pegasus_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry91 = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 11, i32 1
  %75 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %entry91, ptr %entry91, align 8
  %prev.i = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry91, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pegasus, ptr %call7.i.i, i32 0, i32 11, i32 2
  %77 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @pegasus_init, ptr %func, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %79 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %name69, ptr %call14, align 8
  %phys100 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 1
  %80 = ptrtoint ptr %phys100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %phys, ptr %phys100, align 4
  %id101 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3
  %81 = ptrtoint ptr %id101 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 3, ptr %id101, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %82 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %idVendor.i, align 8
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #8
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %86 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %idProduct.i, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #8
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3, i32 2
  %89 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %90 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %bcdDevice.i, align 4
  %92 = tail call i16 @llvm.bswap.i16(i16 %91) #8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3, i32 3
  %93 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %version.i, align 2
  %dev102 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 1
  %94 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %dev102, ptr %parent, align 8
  %driver_data.i.i232 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 8
  %95 = ptrtoint ptr %driver_data.i.i232 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i, ptr %driver_data.i.i232, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 31
  %96 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @pegasus_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 32
  %97 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @pegasus_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 5
  %98 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %evbit, align 4
  %or.i219 = or i32 %99, 10
  store i32 %or.i219, ptr %evbit, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 8
  %100 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %absbit, align 4
  %or.i221 = or i32 %101, 3
  store i32 %or.i221, ptr %absbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call14, i32 0, i32 6, i32 10
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i, align 4
  %add.ptr.i223 = getelementptr %struct.input_dev, ptr %call14, i32 0, i32 6, i32 8
  %104 = ptrtoint ptr %add.ptr.i223 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i223, align 4
  %or.i224 = or i32 %105, 131072
  store i32 %or.i224, ptr %add.ptr.i223, align 4
  %or.i226 = or i32 %103, 1025
  store i32 %or.i226, ptr %add.ptr.i, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 4
  %106 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %propbit, align 4
  %or.i228 = or i32 %107, 3
  store i32 %or.i228, ptr %propbit, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 0, i32 noundef -1500, i32 noundef 1500, i32 noundef 8, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 1, i32 noundef 1600, i32 noundef 3000, i32 noundef 8, i32 noundef 0) #8
  %108 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev21, align 4
  %call119 = tail call i32 @input_register_device(ptr noundef %109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end80.cleanup_crit_edge, label %err_free_urb

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_urb:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %irq, align 8
  tail call void @usb_free_urb(ptr noundef %111) #8
  br label %err_free_dma

err_free_dma:                                     ; preds = %err_free_urb, %if.end35.err_free_dma_crit_edge
  %error.0 = phi i32 [ %call119, %err_free_urb ], [ -12, %if.end35.err_free_dma_crit_edge ]
  %112 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %data_len, align 4
  %conv125 = zext i8 %113 to i32
  %114 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call7.i.i, align 8
  %116 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_dma, align 8
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i229, i32 noundef %conv125, ptr noundef %115, i32 noundef %117) #8
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_dma, %usb_maxpacket.exit.err_free_mem_crit_edge, %if.end9.err_free_mem_crit_edge
  %error.1 = phi i32 [ %error.0, %err_free_dma ], [ -12, %if.end9.err_free_mem_crit_edge ], [ -12, %usb_maxpacket.exit.err_free_mem_crit_edge ]
  tail call void @input_free_device(ptr noundef %call14) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  %driver_data.i.i233 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %118 = ptrtoint ptr %driver_data.i.i233 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %driver_data.i.i233, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end80.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %error.1, %err_free_mem ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #8
  %irq = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %5) #8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %data_len = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data_len, align 4
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %data_dma = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef %11, i32 noundef %13) #8
  tail call void @kfree(ptr noundef %1) #8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  %init = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 11
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %init) #8
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %is_open = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %spec.select = select i1 %cmp, i32 -5, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_reset_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %is_open = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @pegasus_set_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  %spec.select = select i1 %cmp, i32 -5, i32 0
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %retval1.0 = phi i32 [ %call2, %if.then.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  ret i32 %retval1.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %usbdev = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end7 [
    i32 0, label %sw.bb
    i32 -104, label %entry.do.end_crit_edge
    i32 -2, label %entry.do.end_crit_edge25
    i32 -108, label %entry.do.end_crit_edge26
  ]

entry.do.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.do.end_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %12, label %do.body33.i [
    i8 -128, label %sw.bb.i
    i8 65, label %do.body.i
    i8 64, label %sw.bb.sw.bb13.i_crit_edge
    i8 66, label %sw.bb.sw.bb13.i_crit_edge27
  ]

sw.bb.sw.bb13.i_crit_edge27:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i

sw.bb.sw.bb13.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i

sw.bb.i:                                          ; preds = %sw.bb
  %arrayidx3.i = getelementptr i8, ptr %8, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -75, i8 %15)
  %cmp.i = icmp eq i8 %15, -75
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.pegasus_parse_packet.exit_crit_edge

sw.bb.i.pegasus_parse_packet.exit_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pegasus_parse_packet.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %init.i = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %init.i) #8
  br label %pegasus_parse_packet.exit

do.body.i:                                        ; preds = %sw.bb
  %.b60.i = load i1, ptr @pegasus_parse_packet.__print_once, align 1
  br i1 %.b60.i, label %do.body.i.sw.bb13.i_crit_edge, label %if.then7.i

do.body.i.sw.bb13.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pegasus_parse_packet.__print_once, align 1
  %dev9.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i, ptr noundef nonnull @.str.21) #11
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %if.then7.i, %do.body.i.sw.bb13.i_crit_edge, %sw.bb.sw.bb13.i_crit_edge, %sw.bb.sw.bb13.i_crit_edge27
  %arrayidx14.i = getelementptr i8, ptr %8, i32 2
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx14.i, align 2
  %arrayidx16.i = getelementptr i8, ptr %8, i32 4
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp19.i = icmp eq i16 %18, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp22.i = icmp eq i16 %20, 0
  %or.cond.i = select i1 %cmp19.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i, label %sw.bb13.i.pegasus_parse_packet.exit_crit_edge, label %if.end25.i

sw.bb13.i.pegasus_parse_packet.exit_crit_edge:    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pegasus_parse_packet.exit

if.end25.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  %22 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  %arrayidx26.i = getelementptr i8, ptr %8, i32 1
  %23 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26.i, align 1
  %25 = and i8 %24, 1
  %26 = zext i8 %25 to i32
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 330, i32 noundef %26) #8
  %27 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26.i, align 1
  %29 = lshr i8 %28, 1
  %.lobit.i = and i8 %29, 1
  %30 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 273, i32 noundef %30) #8
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 320, i32 noundef 1) #8
  %conv31.i = sext i16 %22 to i32
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 0, i32 noundef %conv31.i) #8
  %conv32.i = zext i16 %21 to i32
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 1, i32 noundef %conv32.i) #8
  tail call void @input_event(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %pegasus_parse_packet.exit

do.body33.i:                                      ; preds = %sw.bb
  %.b5961.i = load i1, ptr @pegasus_parse_packet.__print_once.24, align 1
  br i1 %.b5961.i, label %do.body33.i.pegasus_parse_packet.exit_crit_edge, label %if.then35.i

do.body33.i.pegasus_parse_packet.exit_crit_edge:  ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pegasus_parse_packet.exit

if.then35.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pegasus_parse_packet.__print_once.24, align 1
  %dev39.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev39.i, ptr noundef nonnull @.str.26) #11
  br label %pegasus_parse_packet.exit

pegasus_parse_packet.exit:                        ; preds = %if.then35.i, %do.body33.i.pegasus_parse_packet.exit_crit_edge, %if.end25.i, %sw.bb13.i.pegasus_parse_packet.exit_crit_edge, %if.then.i, %sw.bb.i.pegasus_parse_packet.exit_crit_edge
  %31 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usbdev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge25, %entry.do.end_crit_edge26
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %5) #11
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %5) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %pegasus_parse_packet.exit
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_init(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -316
  %call = tail call fastcc i32 @pegasus_set_mode(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usbdev = getelementptr i8, ptr %work, i32 -300
  %0 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbdev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_mutex = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %usbdev = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbdev, align 4
  %irq = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  %dev2 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %dev2, align 4
  %9 = load ptr, ptr %irq, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_autopm_put_crit_edge

if.end.err_autopm_put_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_autopm_put

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @pegasus_set_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %err_kill_urb

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %is_open = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_open, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  br label %cleanup

err_kill_urb:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #8
  %init = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 11
  %call14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %init) #8
  br label %err_autopm_put

err_autopm_put:                                   ; preds = %err_kill_urb, %if.end.err_autopm_put_crit_edge
  %error.0 = phi i32 [ %call8, %err_kill_urb ], [ -5, %if.end.err_autopm_put_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %err_autopm_put, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_autopm_put ], [ 0, %if.end11 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  %init = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 11
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %init) #8
  %is_open = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_open, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  %intf = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pegasus_set_mode(ptr nocapture noundef readonly %pegasus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 6) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.pegasus_control_msg.exit_crit_edge, label %if.end.i

entry.pegasus_control_msg.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pegasus_control_msg.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %call7.i.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %arrayidx1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 -2135621119, ptr %add.ptr.i, align 2
  %usbdev.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 4
  %4 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbdev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 6, i32 noundef 5000) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 6
  br i1 %cmp.not.i, label %if.end.i.pegasus_control_msg.exit_crit_edge, label %if.then9.i, !prof !84

if.end.i.pegasus_control_msg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pegasus_control_msg.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp10.i = icmp slt i32 %call5.i, 0
  %spec.select.i = select i1 %cmp10.i, i32 %call5.i, i32 -5
  %8 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usbdev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %spec.select.i) #11
  br label %pegasus_control_msg.exit

pegasus_control_msg.exit:                         ; preds = %if.then9.i, %if.end.i.pegasus_control_msg.exit_crit_edge, %entry.pegasus_control_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.then9.i ], [ -12, %entry.pegasus_control_msg.exit_crit_edge ], [ 0, %if.end.i.pegasus_control_msg.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_pegasus_notetaker__232_464_pegasus_driver_init6, !1, !"__initcall__kmod_pegasus_notetaker__232_464_pegasus_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 464, i32 1}
!2 = !{ptr @__exitcall_pegasus_driver_exit, !1, !"__exitcall_pegasus_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 466, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 467, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 468, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pegasus_driver, !12, !"pegasus_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 453, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 279, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pegasus_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @pegasus_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @pegasus_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 292, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 327, i32 27}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 333, i32 5}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 338, i32 25}
!30 = !{ptr @pegasus_probe.__key.10, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 340, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 190, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pegasus_irq._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pegasus_irq._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 195, i32 3}
!42 = !{ptr @pegasus_irq._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pegasus_irq._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 202, i32 3}
!46 = !{ptr @pegasus_irq._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pegasus_irq._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__print_once", i1 false, i1 false}
!49 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 148, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pegasus_parse_packet._entry, !49, !"_entry", i1 false, i1 false}
!54 = !{ptr @pegasus_parse_packet._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__print_once", i1 false, i1 false}
!56 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 170, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pegasus_parse_packet._entry.25, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @pegasus_parse_packet._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/usb.h", i32 912, i32 31}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 213, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @pegasus_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @pegasus_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 117, i32 3}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pegasus_control_msg._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @pegasus_control_msg._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @pegasus_ids, !73, !"pegasus_ids", i1 false, i1 false}
!73 = !{!"../drivers/input/tablet/pegasus_notetaker.c", i32 446, i32 35}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{!"branch_weights", i32 2000, i32 1}
