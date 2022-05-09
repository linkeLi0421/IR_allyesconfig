; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/onetouch.c_pt.bc'
source_filename = "../drivers/usb/storage/onetouch.c"
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_onetouch = type { [128 x i8], [64 x i8], ptr, ptr, ptr, ptr, i32, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID_description287 = internal constant [70 x i8] c"ums_onetouch.description=Maxtor USB OneTouch hard drive button driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author288 = internal constant [54 x i8] c"ums_onetouch.author=Nick Sillik <n.sillik@temple.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [51 x i8] c"ums_onetouch.file=drivers/usb/storage/ums-onetouch\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [25 x i8] c"ums_onetouch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns291 = internal constant [35 x i8] c"ums_onetouch.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_onetouch__294_307_onetouch_driver_init6 = internal global ptr @onetouch_driver_init, section ".initcall6.init", align 4
@onetouch_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @onetouch_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @onetouch_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_onetouch_driver_exit = internal global ptr @onetouch_driver_exit, section ".exitcall.exit", align 4
@onetouch_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ums-onetouch\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ums_onetouch\00", [19 x i8] zeroinitializer }, align 32
@onetouch_usb_ids = internal global { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 3401, i16 28672, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3401, i16 28688, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@onetouch_unusual_dev_list = internal global { [3 x %struct.us_unusual_dev], [48 x i8] } { [3 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.2, ptr @.str.3, i8 -1, i8 -1, ptr @onetouch_connect_input }, %struct.us_unusual_dev { ptr @.str.2, ptr @.str.3, i8 -1, i8 -1, ptr @onetouch_connect_input }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Maxtor\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OneTouch External Harddrive\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Maxtor Onetouch %04x:%04x\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@usb_onetouch_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 126, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_submit_urb failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_onetouch_open\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/storage/onetouch.c\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_onetouch_open._entry_ptr = internal global ptr @usb_onetouch_open._entry, section ".printk_index", align 4
@usb_onetouch_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.11, i32 116, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can't resubmit intr, %s-%s/input0, retval %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_onetouch_irq\00", [47 x i8] zeroinitializer }, align 32
@usb_onetouch_irq._entry_ptr = internal global ptr @usb_onetouch_irq._entry, section ".printk_index", align 4
@usb_onetouch_pm_hook._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.11, i32 154, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb_onetouch_pm_hook\00", [43 x i8] zeroinitializer }, align 32
@usb_onetouch_pm_hook._entry_ptr = internal global ptr @usb_onetouch_pm_hook._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"onetouch_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 293, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"onetouch_host_template\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 273, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 307, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"onetouch_usb_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 58, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"onetouch_unusual_dev_list\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 80, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [42 x i8] c"../drivers/usb/storage/unusual_onetouch.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 13, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 208, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 214, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 219, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 912, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 126, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 114, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [34 x i8] c"../drivers/usb/storage/onetouch.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 153, i32 5 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_import_ns291, ptr @__UNIQUE_ID_license290, ptr @__exitcall_onetouch_driver_exit, ptr @__initcall__kmod_ums_onetouch__294_307_onetouch_driver_init6, ptr @onetouch_driver_exit, ptr @usb_onetouch_irq._entry, ptr @usb_onetouch_irq._entry_ptr, ptr @usb_onetouch_open._entry, ptr @usb_onetouch_open._entry_ptr, ptr @usb_onetouch_pm_hook._entry, ptr @usb_onetouch_pm_hook._entry_ptr, ptr @onetouch_driver, ptr @onetouch_host_template, ptr @.str, ptr @.str.1, ptr @onetouch_usb_ids, ptr @onetouch_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onetouch_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onetouch_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onetouch_usb_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onetouch_unusual_dev_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_onetouch_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_onetouch_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_onetouch_pm_hook._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @onetouch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @onetouch_host_template, ptr noundef nonnull @.str, ptr noundef null) #9
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @onetouch_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @onetouch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @onetouch_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onetouch_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #9
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !61
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @onetouch_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @onetouch_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @onetouch_host_template) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %us, align 4
  %call1 = call i32 @usb_stor_probe2(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_reset_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_pre_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_post_reset(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onetouch_connect_input(ptr nocapture noundef %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pusb_dev = getelementptr inbounds %struct.us_data, ptr %ss, i32 0, i32 1
  %0 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusb_dev, align 4
  %pusb_intf = getelementptr inbounds %struct.us_data, ptr %ss, i32 0, i32 2
  %2 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pusb_intf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.not = icmp eq i8 %7, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint2, align 4
  %bmAttributes.i.i = getelementptr %struct.usb_host_endpoint, ptr %9, i32 2, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp.i.not.i = icmp eq i8 %12, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr %struct.usb_host_endpoint, ptr %9, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not = icmp sgt i8 %14, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.cleanup_crit_edge, label %if.end5

usb_endpoint_is_int_in.exit.cleanup_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %usb_endpoint_is_int_in.exit
  %15 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv6 = zext i8 %16 to i32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  %shl.i = shl i32 %18, 8
  %shl1.i = shl nuw nsw i32 %conv6, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or8 = or i32 %or.i, 1073741952
  %19 = lshr i32 %or.i, 15
  %and.i = and i32 %19, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %1, i32 0, i32 21, i32 %and.i
  %20 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %21, null
  br i1 %tobool59.not.i, label %if.end5.usb_maxpacket.exit.thread_crit_edge, label %usb_maxpacket.exit

if.end5.usb_maxpacket.exit.thread_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_maxpacket.exit.thread

usb_maxpacket.exit:                               ; preds = %if.end5
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %24 = and i16 %23, -249
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp12 = icmp ult i16 %25, 2
  %conv11 = zext i16 %25 to i32
  br i1 %cmp12, label %usb_maxpacket.exit.usb_maxpacket.exit.thread_crit_edge, label %usb_maxpacket.exit._crit_edge

usb_maxpacket.exit._crit_edge:                    ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %26

usb_maxpacket.exit.usb_maxpacket.exit.thread_crit_edge: ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_maxpacket.exit.thread

usb_maxpacket.exit.thread:                        ; preds = %usb_maxpacket.exit.usb_maxpacket.exit.thread_crit_edge, %if.end5.usb_maxpacket.exit.thread_crit_edge
  %conv11175 = phi i32 [ %conv11, %usb_maxpacket.exit.usb_maxpacket.exit.thread_crit_edge ], [ 0, %if.end5.usb_maxpacket.exit.thread_crit_edge ]
  br label %26

26:                                               ; preds = %usb_maxpacket.exit.thread, %usb_maxpacket.exit._crit_edge
  %27 = phi i32 [ %conv11175, %usb_maxpacket.exit.thread ], [ 2, %usb_maxpacket.exit._crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 216) #12
  %call15 = tail call ptr @input_allocate_device() #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  %tobool17.not = icmp eq ptr %call15, null
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %.fail1_crit_edge, label %if.end19

.fail1_crit_edge:                                 ; preds = %26
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end19:                                         ; preds = %26
  %data_dma = getelementptr inbounds %struct.usb_onetouch, ptr %call7.i.i, i32 0, i32 6
  %call20 = tail call ptr @usb_alloc_coherent(ptr noundef %1, i32 noundef 2, i32 noundef 3264, ptr noundef %data_dma) #9
  %data = getelementptr inbounds %struct.usb_onetouch, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call20, ptr %data, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end19.fail1_crit_edge, label %if.end24

if.end19.fail1_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end24:                                         ; preds = %if.end19
  %call25 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %irq = getelementptr inbounds %struct.usb_onetouch, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call25, ptr %irq, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end24.fail2_crit_edge, label %if.end29

if.end24.fail2_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.end29:                                         ; preds = %if.end24
  %udev30 = getelementptr inbounds %struct.usb_onetouch, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %udev30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %udev30, align 4
  %dev = getelementptr inbounds %struct.usb_onetouch, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call15, ptr %dev, align 8
  %manufacturer = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 32
  %33 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %manufacturer, align 4
  %tobool31.not = icmp eq ptr %34, null
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %34, i32 noundef 128) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %product = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 31
  %35 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %product, align 8
  %tobool36.not = icmp eq ptr %36, null
  br i1 %tobool36.not, label %if.end35.if.end49_crit_edge, label %if.then37

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then37:                                        ; preds = %if.end35
  %37 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %manufacturer, align 4
  %tobool39.not = icmp eq ptr %38, null
  br i1 %tobool39.not, label %if.then37.if.end44_crit_edge, label %if.then40

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, i32 noundef 128) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then37.if.end44_crit_edge
  %39 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %product, align 8
  %call48 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef %40, i32 noundef 128) #9
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %if.end35.if.end49_crit_edge
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %char0 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool53.not = icmp eq i8 %char0, 0
  br i1 %tobool53.not, label %if.then54, label %if.end49.if.end61_crit_edge

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 7
  %42 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %idVendor, align 8
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv57 = zext i16 %44 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %45 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %idProduct, align 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv59 = zext i16 %47 to i32
  %call60 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str.5, i32 noundef %conv57, i32 noundef %conv59)
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.end49.if.end61_crit_edge
  %phys = getelementptr inbounds %struct.usb_onetouch, ptr %call7.i.i, i32 0, i32 1
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.8, ptr noundef %51, ptr noundef %devpath.i) #9
  %call66 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.6, i32 noundef 64) #9
  %52 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %call15, align 8
  %phys72 = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 1
  %53 = ptrtoint ptr %phys72 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %phys, ptr %phys72, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 3
  %54 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 3, ptr %id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 7
  %55 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %idVendor.i, align 8
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #9
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %59 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %idProduct.i, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #9
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 9
  %63 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bcdDevice.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #9
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 3, i32 3
  %66 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %version.i, align 2
  %dev73 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %parent = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 40, i32 1
  %67 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dev73, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #9
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 148, ptr noundef %keybit) #9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %keybit) #9
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 40, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 31
  %69 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @usb_onetouch_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 32
  %70 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @usb_onetouch_close, ptr %close, align 4
  %71 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %irq, align 8
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %bInterval = getelementptr %struct.usb_host_endpoint, ptr %9, i32 2, i32 0, i32 5
  %75 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bInterval, align 1
  %conv81 = zext i8 %76 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 8
  %77 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 10
  %78 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or8, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 14
  %79 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %74, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 19
  %80 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %27, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 28
  %81 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @usb_onetouch_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 27
  %82 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %83 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp.i = icmp eq i32 %84, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp6.i = icmp ugt i32 %84, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end61.usb_fill_int_urb.exit_crit_edge

if.end61.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %85 = tail call i32 @llvm.smax.i32(i32 %conv81, i32 1) #9
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 16) #9
  %sub.i = add nsw i32 %86, -1
  %shl.i170 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end61.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i170, %if.then.i ], [ %conv81, %if.end61.usb_fill_int_urb.exit_crit_edge ]
  %87 = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 25
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %interval.sink.i, ptr %87, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 23
  %89 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %start_frame.i, align 4
  %90 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_dma, align 8
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %irq, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %transfer_dma, align 4
  %95 = load ptr, ptr %irq, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %transfer_flags, align 4
  %or85 = or i32 %97, 4
  store i32 %or85, ptr %transfer_flags, align 4
  %extra_destructor = getelementptr inbounds %struct.us_data, ptr %ss, i32 0, i32 36
  %98 = ptrtoint ptr %extra_destructor to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @onetouch_release_input, ptr %extra_destructor, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %ss, i32 0, i32 35
  %99 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i, ptr %extra, align 4
  %suspend_resume_hook = getelementptr inbounds %struct.us_data, ptr %ss, i32 0, i32 37
  %100 = ptrtoint ptr %suspend_resume_hook to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @usb_onetouch_pm_hook, ptr %suspend_resume_hook, align 4
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 8
  %call87 = tail call i32 @input_register_device(ptr noundef %102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %usb_fill_int_urb.exit.cleanup_crit_edge, label %fail3

usb_fill_int_urb.exit.cleanup_crit_edge:          ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail3:                                            ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %irq, align 8
  tail call void @usb_free_urb(ptr noundef %104) #9
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end24.fail2_crit_edge
  %error.0 = phi i32 [ %call87, %fail3 ], [ -12, %if.end24.fail2_crit_edge ]
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %107 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_dma, align 8
  tail call void @usb_free_coherent(ptr noundef %1, i32 noundef 2, ptr noundef %106, i32 noundef %108) #9
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end19.fail1_crit_edge, %.fail1_crit_edge
  %error.1 = phi i32 [ %error.0, %fail2 ], [ -12, %if.end19.fail1_crit_edge ], [ -12, %.fail1_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  tail call void @input_free_device(ptr noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %fail1, %usb_fill_int_urb.exit.cleanup_crit_edge, %usb_endpoint_is_int_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %fail1 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %usb_endpoint_is_int_in.exit.cleanup_crit_edge ], [ 0, %usb_fill_int_urb.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_onetouch_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_open = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_open, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_open, align 4
  %udev = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %irq = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %dev1, align 4
  %8 = load ptr, ptr %irq, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %8, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.9) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_onetouch_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %is_open = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_open, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %is_open, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_onetouch_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev2 = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.resubmit_crit_edge [
    i32 0, label %sw.epilog
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge19
    i32 -108, label %entry.cleanup_crit_edge20
  ]

entry.cleanup_crit_edge20:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.resubmit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data1 = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = lshr i8 %10, 1
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 148, i32 noundef %12) #9
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %resubmit

resubmit:                                         ; preds = %sw.epilog, %entry.resubmit_crit_edge
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %resubmit.cleanup_crit_edge, label %do.end

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  %udev = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_name, align 4
  %devpath = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.14, ptr noundef %18, ptr noundef %devpath, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %resubmit.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge19, %entry.cleanup_crit_edge20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @onetouch_release_input(ptr noundef readonly %onetouch_) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %onetouch_, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.usb_onetouch, ptr %onetouch_, i32 0, i32 4
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.usb_onetouch, ptr %onetouch_, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #9
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %5) #9
  %udev = getelementptr inbounds %struct.usb_onetouch, ptr %onetouch_, i32 0, i32 3
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %data = getelementptr inbounds %struct.usb_onetouch, ptr %onetouch_, i32 0, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %data_dma = getelementptr inbounds %struct.usb_onetouch, ptr %onetouch_, i32 0, i32 6
  %10 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef 2, ptr noundef %9, i32 noundef %11) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_onetouch_pm_hook(ptr nocapture noundef readonly %us, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %is_open = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_open, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %3 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %action, label %if.then.if.end6_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  br label %if.end6

sw.bb1:                                           ; preds = %if.then
  %irq2 = getelementptr inbounds %struct.usb_onetouch, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq2, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3072) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %sw.bb1.if.end6_crit_edge, label %do.end

sw.bb1.if.end6_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq2, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.9) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %sw.bb1.if.end6_crit_edge, %sw.bb, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__UNIQUE_ID_description287, !1, !"__UNIQUE_ID_description287", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/onetouch.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_author288, !3, !"__UNIQUE_ID_author288", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/onetouch.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/onetouch.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns291, !8, !"__UNIQUE_ID_import_ns291", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/onetouch.c", i32 28, i32 1}
!9 = !{ptr @__initcall__kmod_ums_onetouch__294_307_onetouch_driver_init6, !10, !"__initcall__kmod_ums_onetouch__294_307_onetouch_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/onetouch.c", i32 307, i32 1}
!11 = !{ptr @__exitcall_onetouch_driver_exit, !10, !"__exitcall_onetouch_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @onetouch_host_template, !15, !"onetouch_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/onetouch.c", i32 273, i32 34}
!16 = !{ptr @onetouch_driver, !17, !"onetouch_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/onetouch.c", i32 293, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/unusual_onetouch.h", i32 13, i32 1}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @onetouch_unusual_dev_list, !22, !"onetouch_unusual_dev_list", i1 false, i1 false}
!22 = !{!"../drivers/usb/storage/onetouch.c", i32 80, i32 30}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/onetouch.c", i32 208, i32 28}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/storage/onetouch.c", i32 214, i32 5}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/storage/onetouch.c", i32 219, i32 26}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/usb.h", i32 912, i32 31}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/storage/onetouch.c", i32 126, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @usb_onetouch_open._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @usb_onetouch_open._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/storage/onetouch.c", i32 114, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @usb_onetouch_irq._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @usb_onetouch_irq._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/onetouch.c", i32 153, i32 5}
!48 = !{ptr @usb_onetouch_pm_hook._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @usb_onetouch_pm_hook._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @onetouch_usb_ids, !51, !"onetouch_usb_ids", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/onetouch.c", i32 58, i32 29}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
