; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-letsketch.c_pt.bc'
source_filename = "../drivers/hid/hid-letsketch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.letsketch_data = type { ptr, ptr, ptr, %struct.timer_list }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_hid_letsketch__232_319_letsketch_driver_init6 = internal global ptr @letsketch_driver_init, section ".initcall6.init", align 4
@letsketch_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @letsketch_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @letsketch_probe, ptr null, ptr null, ptr @letsketch_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_letsketch_driver_exit = internal global ptr @letsketch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [57 x i8] c"hid_letsketch.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [45 x i8] c"hid_letsketch.file=drivers/hid/hid-letsketch\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [26 x i8] c"hid_letsketch.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hid_letsketch\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"letsketch\00", [22 x i8] zeroinitializer }, align 32
@letsketch_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 24929, i32 19733, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@letsketch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Device info: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"letsketch_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hid/hid-letsketch.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@letsketch_probe._entry_ptr = internal global ptr @letsketch_probe._entry, section ".printk_index", align 4
@letsketch_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&data->inrange_timer)\00", [41 x i8] zeroinitializer }, align 32
@letsketch_get_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 228, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Max retries (%d) exceeded reading string descriptor %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"letsketch_get_string\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@letsketch_get_string._entry_ptr = internal global ptr @letsketch_get_string._entry, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WP9620 Tablet\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WP9620 Pad\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@letsketch_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 202, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Warning unknown data header: 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"letsketch_raw_event\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@letsketch_raw_event._entry_ptr = internal global ptr @letsketch_raw_event._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 224]
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"letsketch_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 313, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 319, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 314, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"letsketch_devices\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 307, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 261, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 293, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 227, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 122, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 149, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [31 x i8] c"../drivers/hid/hid-letsketch.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 201, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_letsketch_driver_exit, ptr @__initcall__kmod_hid_letsketch__232_319_letsketch_driver_init6, ptr @letsketch_driver_exit, ptr @letsketch_get_string._entry, ptr @letsketch_get_string._entry_ptr, ptr @letsketch_probe._entry, ptr @letsketch_probe._entry_ptr, ptr @letsketch_raw_event._entry, ptr @letsketch_raw_event._entry_ptr, ptr @letsketch_driver, ptr @.str, ptr @.str.1, ptr @letsketch_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @letsketch_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @letsketch_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @letsketch_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @letsketch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @letsketch_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @letsketch_get_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @letsketch_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @letsketch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @letsketch_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @letsketch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @letsketch_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @letsketch_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %1 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ll_driver.i, align 4
  %cmp.i = icmp eq ptr %2, @usb_hid_driver
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 -32
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %parent.i = getelementptr i8, ptr %4, i32 136
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 -128
  %call9 = call fastcc i32 @letsketch_get_string(ptr noundef %add.ptr.i, i32 noundef 200, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.end, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %buf) #9
  %call9.1 = call fastcc i32 @letsketch_get_string(ptr noundef %add.ptr.i, i32 noundef 201, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool.not.1, label %do.end.1, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.1:                                         ; preds = %do.end
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %buf) #9
  %call9.2 = call fastcc i32 @letsketch_get_string(ptr noundef %add.ptr.i, i32 noundef 202, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %tobool.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool.not.2, label %do.end.2, label %do.end.1.cleanup_crit_edge

do.end.1.cleanup_crit_edge:                       ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.2:                                         ; preds = %do.end.1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %buf) #9
  br label %for.body17

for.cond14:                                       ; preds = %for.body17
  %inc24 = add nuw nsw i32 %i.1100, 1
  %exitcond.not = icmp eq i32 %inc24, 251
  br i1 %exitcond.not, label %for.end25, label %for.cond14.for.body17_crit_edge

for.cond14.for.body17_crit_edge:                  ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

for.body17:                                       ; preds = %for.cond14.for.body17_crit_edge, %do.end.2
  %i.1100 = phi i32 [ %inc24, %for.cond14.for.body17_crit_edge ], [ 1, %do.end.2 ]
  %call19 = call fastcc i32 @letsketch_get_string(ptr noundef %add.ptr.i, i32 noundef %i.1100, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.cond14, label %for.body17.cleanup_crit_edge

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end25:                                        ; preds = %for.cond14
  %call27 = call fastcc i32 @letsketch_get_string(ptr noundef %add.ptr.i, i32 noundef 100, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.end25.cleanup_crit_edge

for.end25.cleanup_crit_edge:                      ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %for.end25
  %call32 = call fastcc i32 @letsketch_get_string(ptr noundef %add.ptr.i, i32 noundef 200, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #6
  %call.i = call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %call.i97 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #6
  %tobool41.not = icmp eq ptr %call.i97, null
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %11 = ptrtoint ptr %call.i97 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hdev, ptr %call.i97, align 4
  %inrange_timer = getelementptr inbounds %struct.letsketch_data, ptr %call.i97, i32 0, i32 3
  call void @init_timer_key(ptr noundef %inrange_timer, ptr noundef nonnull @letsketch_inrange_timeout, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @letsketch_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i97, ptr %driver_data.i.i, align 4
  %call48 = call fastcc i32 @letsketch_setup_input_tablet(ptr noundef nonnull %call.i97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call52 = call fastcc i32 @letsketch_setup_input_tablet_pad(ptr noundef nonnull %call.i97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end51.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.end25.cleanup_crit_edge, %for.body17.cleanup_crit_edge, %do.end.1.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %if.end55 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call27, %for.end25.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ %call.i, %if.end35.cleanup_crit_edge ], [ -12, %if.end39.cleanup_crit_edge ], [ %call48, %if.end43.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call9, %if.end5.cleanup_crit_edge ], [ %call9.1, %do.end.cleanup_crit_edge ], [ %call9.2, %do.end.1.cleanup_crit_edge ], [ %call19, %for.body17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @letsketch_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %raw_data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %size)
  %cmp.not = icmp eq i32 %size, 12
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %raw_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp1.not = icmp eq i8 %3, 8
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx3 = getelementptr i8, ptr %raw_data, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = and i8 %5, -16
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end [
    i8 -128, label %sw.bb
    i8 -32, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %input_tablet = getelementptr inbounds %struct.letsketch_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %input_tablet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_tablet, align 4
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 320, i32 noundef 1) #6
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %12 = and i8 %11, 1
  %13 = zext i8 %12 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 330, i32 noundef %13) #6
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3, align 1
  %16 = lshr i8 %15, 1
  %.lobit = and i8 %16, 1
  %17 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 331, i32 noundef %17) #6
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3, align 1
  %20 = lshr i8 %19, 2
  %.lobit66 = and i8 %20, 1
  %21 = zext i8 %.lobit66 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 332, i32 noundef %21) #6
  %add.ptr = getelementptr i8, ptr %raw_data, i32 2
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #6
  %conv15 = zext i16 %24 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 0, i32 noundef %conv15) #6
  %add.ptr16 = getelementptr i8, ptr %raw_data, i32 4
  %25 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr16, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #6
  %conv18 = zext i16 %27 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 1, i32 noundef %conv18) #6
  %add.ptr19 = getelementptr i8, ptr %raw_data, i32 6
  %28 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr19, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #6
  %conv21 = zext i16 %30 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 24, i32 noundef %conv21) #6
  %inrange_timer = getelementptr inbounds %struct.letsketch_data, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 10
  %call23 = tail call i32 @mod_timer(ptr noundef %inrange_timer, i32 noundef %add) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %input_tablet_pad = getelementptr inbounds %struct.letsketch_data, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %input_tablet_pad to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input_tablet_pad, align 4
  %arrayidx28 = getelementptr i8, ptr %raw_data, i32 4
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp31 = icmp eq i8 %35, 1
  %lnot.ext.i65 = zext i1 %cmp31 to i32
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 256, i32 noundef %lnot.ext.i65) #6
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp31.1 = icmp eq i8 %37, 2
  %lnot.ext.i65.1 = zext i1 %cmp31.1 to i32
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 257, i32 noundef %lnot.ext.i65.1) #6
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp31.2 = icmp eq i8 %39, 3
  %lnot.ext.i65.2 = zext i1 %cmp31.2 to i32
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 258, i32 noundef %lnot.ext.i65.2) #6
  %40 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %41)
  %cmp31.3 = icmp eq i8 %41, 4
  %lnot.ext.i65.3 = zext i1 %cmp31.3 to i32
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 259, i32 noundef %lnot.ext.i65.3) #6
  %42 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %43)
  %cmp31.4 = icmp eq i8 %43, 5
  %lnot.ext.i65.4 = zext i1 %cmp31.4 to i32
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 260, i32 noundef %lnot.ext.i65.4) #6
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %45, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 8) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb
  %input.0 = phi ptr [ %9, %sw.bb ], [ %33, %sw.bb24 ]
  tail call void @input_event(ptr noundef %input.0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @letsketch_get_string(ptr noundef %udev, i32 noundef %index, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #6
  %call = tail call i32 @usb_string(ptr noundef %udev, i32 noundef %index, ptr noundef %buf, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #6
  %call.1 = tail call i32 @usb_string(ptr noundef %udev, i32 noundef %index, ptr noundef %buf, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp sgt i32 %call.1, 0
  br i1 %cmp1.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #6
  %call.2 = tail call i32 @usb_string(ptr noundef %udev, i32 noundef %index, ptr noundef %buf, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp sgt i32 %call.2, 0
  br i1 %cmp1.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #6
  %call.3 = tail call i32 @usb_string(ptr noundef %udev, i32 noundef %index, ptr noundef %buf, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp sgt i32 %call.3, 0
  br i1 %cmp1.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #6
  %call.4 = tail call i32 @usb_string(ptr noundef %udev, i32 noundef %index, ptr noundef %buf, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp sgt i32 %call.4, 0
  br i1 %cmp1.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 5, i32 noundef %index) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not = icmp eq i32 %call.4, 0
  %spec.select = select i1 %tobool.not, i32 -5, i32 %call.4
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.cond.4 ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @letsketch_inrange_timeout(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_tablet = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %input_tablet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_tablet, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 320, i32 noundef 0) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @letsketch_setup_input_tablet(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus.i, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %id.i, align 4
  %7 = load ptr, ptr %data, align 4
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vendor.i, align 4
  %conv.i = trunc i32 %9 to i16
  %vendor4.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %vendor4.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %vendor4.i, align 2
  %11 = load ptr, ptr %data, align 4
  %product.i = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %product.i, align 8
  %conv6.i = trunc i32 %13 to i16
  %product8.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %product8.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6.i, ptr %product8.i, align 4
  %15 = load ptr, ptr %data, align 4
  %bus10.i = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %bus10.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bus10.i, align 8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %version.i, align 2
  %19 = load ptr, ptr %data, align 4
  %phys.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 40
  %phys13.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %phys13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %phys.i, ptr %phys13.i, align 4
  %21 = load ptr, ptr %data, align 4
  %uniq.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 41
  %uniq16.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %uniq16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %uniq.i, ptr %uniq16.i, align 8
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 31
  %23 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @letsketch_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 32
  %24 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @letsketch_close, ptr %close.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 40, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data, ptr %driver_data.i.i.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0, i32 noundef 50800, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0, i32 noundef 31750, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i, i32 noundef 24, i32 noundef 0, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i) #6
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 26
  %26 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i16 = icmp eq ptr %27, null
  br i1 %tobool.not.i16, label %if.end.input_abs_set_res.exit_crit_edge, label %if.then.i

if.end.input_abs_set_res.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i = getelementptr %struct.input_absinfo, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 240, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.end.input_abs_set_res.exit_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i) #6
  %29 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i19 = icmp eq ptr %30, null
  br i1 %tobool.not.i19, label %input_abs_set_res.exit.input_abs_set_res.exit23_crit_edge, label %if.then.i21

input_abs_set_res.exit.input_abs_set_res.exit23_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit23

if.then.i21:                                      ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i20 = getelementptr %struct.input_absinfo, ptr %30, i32 1, i32 5
  %31 = ptrtoint ptr %resolution.i20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 225, ptr %resolution.i20, align 4
  br label %input_abs_set_res.exit23

input_abs_set_res.exit23:                         ; preds = %if.then.i21, %input_abs_set_res.exit.input_abs_set_res.exit23_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 330) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 320) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 331) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 332) #6
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.11, ptr %call.i, align 8
  %input_tablet = getelementptr inbounds %struct.letsketch_data, ptr %data, i32 0, i32 1
  %33 = ptrtoint ptr %input_tablet to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %input_tablet, align 4
  %call2 = tail call i32 @input_register_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %input_abs_set_res.exit23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %input_abs_set_res.exit23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @letsketch_setup_input_tablet_pad(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %letsketch_alloc_input_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

letsketch_alloc_input_dev.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus.i, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %id.i, align 4
  %7 = load ptr, ptr %data, align 4
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vendor.i, align 4
  %conv.i = trunc i32 %9 to i16
  %vendor4.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %vendor4.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %vendor4.i, align 2
  %11 = load ptr, ptr %data, align 4
  %product.i = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %product.i, align 8
  %conv6.i = trunc i32 %13 to i16
  %product8.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %product8.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6.i, ptr %product8.i, align 4
  %15 = load ptr, ptr %data, align 4
  %bus10.i = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %bus10.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bus10.i, align 8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %version.i, align 2
  %19 = load ptr, ptr %data, align 4
  %phys.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 40
  %phys13.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %phys13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %phys.i, ptr %phys13.i, align 4
  %21 = load ptr, ptr %data, align 4
  %uniq.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 41
  %uniq16.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %uniq16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %uniq.i, ptr %uniq16.i, align 8
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 31
  %23 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @letsketch_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 32
  %24 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @letsketch_close, ptr %close.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 40, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data, ptr %driver_data.i.i.i, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 256) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 257) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 258) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 259) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 260) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 331) #6
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.12, ptr %call.i, align 8
  %input_tablet_pad = getelementptr inbounds %struct.letsketch_data, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %input_tablet_pad to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %input_tablet_pad, align 4
  %call2 = tail call i32 @input_register_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %letsketch_alloc_input_dev.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %letsketch_alloc_input_dev.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @letsketch_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @hid_hw_open(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @letsketch_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @hid_hw_close(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_hid_letsketch__232_319_letsketch_driver_init6, !1, !"__initcall__kmod_hid_letsketch__232_319_letsketch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-letsketch.c", i32 319, i32 1}
!2 = !{ptr @__exitcall_letsketch_driver_exit, !1, !"__exitcall_letsketch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-letsketch.c", i32 321, i32 1}
!5 = !{ptr @__UNIQUE_ID_file234, !6, !"__UNIQUE_ID_file234", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-letsketch.c", i32 322, i32 1}
!7 = !{ptr @__UNIQUE_ID_license235, !6, !"__UNIQUE_ID_license235", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-letsketch.c", i32 314, i32 10}
!11 = !{ptr @letsketch_driver, !12, !"letsketch_driver", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-letsketch.c", i32 313, i32 26}
!13 = !{ptr @letsketch_devices, !14, !"letsketch_devices", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-letsketch.c", i32 307, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-letsketch.c", i32 261, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @letsketch_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @letsketch_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @letsketch_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-letsketch.c", i32 293, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hid/hid-letsketch.c", i32 227, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @letsketch_get_string._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @letsketch_get_string._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-letsketch.c", i32 122, i32 16}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-letsketch.c", i32 149, i32 16}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-letsketch.c", i32 201, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @letsketch_raw_event._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @letsketch_raw_event._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
