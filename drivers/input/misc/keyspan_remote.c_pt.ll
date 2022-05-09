; ModuleID = '/llk/IR_all_yes/drivers/input/misc/keyspan_remote.c_pt.bc'
source_filename = "../drivers/input/misc/keyspan_remote.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_keyspan = type { [128 x i8], [64 x i8], [32 x i16], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.bit_tester, i32, i32 }
%struct.bit_tester = type { i32, i32, i32, i32, [32 x i8] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__param_str_debug = internal constant [21 x i8] c"keyspan_remote.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype232 = internal constant [34 x i8] c"keyspan_remote.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug233 = internal constant [70 x i8] c"keyspan_remote.parm=debug:Enable extra debug messages and information\00", section ".modinfo", align 1
@__initcall__kmod_keyspan_remote__240_585_keyspan_driver_init6 = internal global ptr @keyspan_driver_init, section ".initcall6.init", align 4
@keyspan_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @keyspan_probe, ptr @keyspan_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keyspan_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_keyspan_driver_exit = internal global ptr @keyspan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [57 x i8] c"keyspan_remote.author=Michael Downey <downey@zymeta.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [70 x i8] c"keyspan_remote.description=Driver for the USB Keyspan remote control.\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [54 x i8] c"keyspan_remote.file=drivers/input/misc/keyspan_remote\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [27 x i8] c"keyspan_remote.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"keyspan_remote\00", [17 x i8] zeroinitializer }, align 32
@keyspan_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USB Keyspan Remote %04x:%04x\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@keyspan_key_table = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 0, i16 0, i16 128, i16 200, i16 0, i16 165, i16 168, i16 159, i16 163, i16 0, i16 0, i16 0, i16 119, i16 115, i16 0, i16 0, i16 0, i16 114, i16 0, i16 103, i16 0, i16 113, i16 105, i16 28, i16 106, i16 0, i16 0, i16 108, i16 0, i16 55, i16 0, i16 139], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@keyspan_setup.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keyspan_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/misc/keyspan_remote.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s - failed to set bit rate due to error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@keyspan_setup.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s - failed to set resume sensitivity due to error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@keyspan_setup.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s - failed to turn receive on due to error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@keyspan_setup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - Setup complete.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@keyspan_irq_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 402, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - usb_submit_urb failed with result: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"keyspan_irq_recv\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keyspan_irq_recv._entry_ptr = internal global ptr @keyspan_irq_recv._entry, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@keyspan_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 134, ptr @.str.18, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keyspan_print\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@keyspan_print._entry_ptr = internal global ptr @keyspan_print._entry, section ".printk_index", align 4
@keyspan_check_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 263, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - Unknown sequence found in system data.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keyspan_check_data\00", [45 x i8] zeroinitializer }, align 32
@keyspan_check_data._entry_ptr = internal global ptr @keyspan_check_data._entry, section ".printk_index", align 4
@keyspan_check_data._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 284, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - Unknown sequence found in button data.\0A\00", [51 x i8] zeroinitializer }, align 32
@keyspan_check_data._entry_ptr.23 = internal global ptr @keyspan_check_data._entry.21, section ".printk_index", align 4
@keyspan_check_data._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.5, i32 302, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - Error in message, invalid toggle.\0A\00", [56 x i8] zeroinitializer }, align 32
@keyspan_check_data._entry_ptr.26 = internal global ptr @keyspan_check_data._entry.24, section ".printk_index", align 4
@keyspan_check_data._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.5, i32 313, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Bad message received, no stop bit found.\0A\00", [54 x i8] zeroinitializer }, align 32
@keyspan_check_data._entry_ptr.29 = internal global ptr @keyspan_check_data._entry.27, section ".printk_index", align 4
@keyspan_check_data.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.5, ptr @.str.30, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s found valid message: system: %d, button: %d, toggle: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@keyspan_load_tester.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keyspan_load_tester\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s - Error ran out of data. pos: %d, len: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 18, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"keyspan_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 577, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 585, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"keyspan_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 80, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 492, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 498, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 503, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"keyspan_key_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 44, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 342, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 351, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 360, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 365, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 912, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 400, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 132, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 134, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 261, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 282, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 300, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 312, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 316, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [39 x i8] c"../drivers/input/misc/keyspan_remote.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 151, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_debug233, ptr @__UNIQUE_ID_debugtype232, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_keyspan_driver_exit, ptr @__initcall__kmod_keyspan_remote__240_585_keyspan_driver_init6, ptr @__param_debug, ptr @keyspan_check_data._entry, ptr @keyspan_check_data._entry.21, ptr @keyspan_check_data._entry.24, ptr @keyspan_check_data._entry.27, ptr @keyspan_check_data._entry_ptr, ptr @keyspan_check_data._entry_ptr.23, ptr @keyspan_check_data._entry_ptr.26, ptr @keyspan_check_data._entry_ptr.29, ptr @keyspan_driver_exit, ptr @keyspan_irq_recv._entry, ptr @keyspan_irq_recv._entry_ptr, ptr @keyspan_print._entry, ptr @keyspan_print._entry_ptr, ptr @debug, ptr @keyspan_driver, ptr @.str, ptr @keyspan_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @keyspan_key_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_key_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_irq_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_check_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_check_data._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_check_data._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_check_data._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @keyspan_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @keyspan_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp10.not.i = icmp eq i8 %5, 0
  br i1 %cmp10.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %endpoint2.i = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %7, i32 %i.011.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i.not.i.i = icmp eq i8 %10, 3
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_int_in.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

usb_endpoint_is_int_in.exit.i:                    ; preds = %for.body.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not.i = icmp sgt i8 %12, -1
  br i1 %tobool.not.i, label %usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge, label %keyspan_get_in_endpoint.exit

usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge: ; preds = %usb_endpoint_is_int_in.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

keyspan_get_in_endpoint.exit:                     ; preds = %usb_endpoint_is_int_in.exit.i
  %bEndpointAddress.i.i.i.le = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %keyspan_get_in_endpoint.exit.cleanup_crit_edge, label %if.end

keyspan_get_in_endpoint.exit.cleanup_crit_edge:   ; preds = %keyspan_get_in_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %keyspan_get_in_endpoint.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 344) #12
  %call3 = tail call ptr @input_allocate_device() #9
  %tobool4.not = icmp eq ptr %call7.i.i, null
  %tobool5.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.fail1_crit_edge, label %if.end7

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end7:                                          ; preds = %if.end
  %udev8 = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %udev8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i177, ptr %udev8, align 8
  %input = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %input, align 4
  %interface9 = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %interface9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %interface, ptr %interface9, align 8
  %in_endpoint = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %in_endpoint to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.i, ptr %in_endpoint, align 4
  %toggle = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %toggle to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %toggle, align 4
  %in_dma = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 9
  %call10 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i177, i32 noundef 8, i32 noundef 3264, ptr noundef %in_dma) #9
  %in_buffer = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %in_buffer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call10, ptr %in_buffer, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end7.fail1_crit_edge, label %if.end14

if.end7.fail1_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %irq_urb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call15, ptr %irq_urb, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end14.fail2_crit_edge, label %if.end19

if.end14.fail2_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.end19:                                         ; preds = %if.end14
  %call20 = tail call fastcc i32 @keyspan_setup(ptr noundef %add.ptr.i177)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.fail3_crit_edge

if.end19.fail3_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end23:                                         ; preds = %if.end19
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %21 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %manufacturer, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %22, i32 noundef 128) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %product = getelementptr i8, ptr %1, i32 1104
  %23 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %product, align 8
  %tobool29.not = icmp eq ptr %24, null
  br i1 %tobool29.not, label %if.end28.if.end42_crit_edge, label %if.then30

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then30:                                        ; preds = %if.end28
  %25 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %manufacturer, align 4
  %tobool32.not = icmp eq ptr %26, null
  br i1 %tobool32.not, label %if.then30.if.end37_crit_edge, label %if.then33

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, i32 noundef 128) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then30.if.end37_crit_edge
  %27 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %product, align 8
  %call41 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef %28, i32 noundef 128) #9
  br label %if.end42

if.end42:                                         ; preds = %if.end37, %if.end28.if.end42_crit_edge
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %char0 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool46.not = icmp eq i8 %char0, 0
  br i1 %tobool46.not, label %if.then47, label %if.end42.if.end53_crit_edge

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %idVendor = getelementptr i8, ptr %1, i32 936
  %30 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %idVendor, align 8
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv = zext i16 %32 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %33 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %idProduct, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv51 = zext i16 %35 to i32
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv51)
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.end42.if.end53_crit_edge
  %phys = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 1
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef %39, ptr noundef %devpath.i) #9
  %call58 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.3, i32 noundef 64) #9
  %keymap = getelementptr inbounds %struct.usb_keyspan, ptr %call7.i.i, i32 0, i32 2
  %40 = call ptr @memcpy(ptr %keymap, ptr @keyspan_key_table, i32 64)
  %41 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %call3, align 8
  %phys65 = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 1
  %42 = ptrtoint ptr %phys65 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %phys, ptr %phys65, align 4
  %id66 = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3
  %43 = ptrtoint ptr %id66 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 3, ptr %id66, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %44 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %idVendor.i, align 8
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #9
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %48 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %idProduct.i, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #9
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %52 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bcdDevice.i, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #9
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %version.i, align 2
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 1
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev, ptr %parent, align 8
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 17
  %57 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %keymap, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 16
  %58 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 15
  %59 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32, ptr %keycodemax, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call3, i32 noundef 4, i32 noundef 4) #9
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 5
  %60 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %evbit, align 4
  %or.i = or i32 %61, 2
  store i32 %or.i, ptr %evbit, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end53
  %i.0185 = phi i32 [ 0, %if.end53 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i16], ptr @keyspan_key_table, i32 0, i32 %i.0185
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx, align 2
  %conv72 = zext i16 %63 to i32
  %rem.i = and i32 %conv72, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv72, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i, align 4
  %or.i176 = or i32 %shl.i, %65
  store i32 %or.i176, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %66 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %keybit, align 4
  %and.i = and i32 %67, -2
  store i32 %and.i, ptr %keybit, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 31
  %69 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @keyspan_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 32
  %70 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @keyspan_close, ptr %close, align 4
  %71 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %irq_urb, align 8
  %73 = ptrtoint ptr %udev8 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udev8, align 8
  %75 = ptrtoint ptr %bEndpointAddress.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bEndpointAddress.i.i.i.le, align 1
  %conv79 = zext i8 %76 to i32
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %74, align 8
  %shl.i178 = shl i32 %78, 8
  %shl1.i = shl nuw nsw i32 %conv79, 15
  %or.i179 = or i32 %shl1.i, %shl.i178
  %or81 = or i32 %or.i179, 1073741952
  %79 = ptrtoint ptr %in_buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %in_buffer, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 5
  %81 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bInterval, align 1
  %conv83 = zext i8 %82 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 8
  %83 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %74, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 10
  %84 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or81, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 14
  %85 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %80, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 19
  %86 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 28
  %87 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @keyspan_irq_recv, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 27
  %88 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 4
  %89 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp.i = icmp eq i32 %90, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp6.i = icmp ugt i32 %90, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %for.end.usb_fill_int_urb.exit_crit_edge

for.end.usb_fill_int_urb.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %91 = tail call i32 @llvm.smax.i32(i32 %conv83, i32 1) #9
  %92 = tail call i32 @llvm.umin.i32(i32 %91, i32 16) #9
  %sub.i = add nsw i32 %92, -1
  %shl.i180 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %for.end.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i180, %if.then.i ], [ %conv83, %for.end.usb_fill_int_urb.exit_crit_edge ]
  %93 = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 25
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %interval.sink.i, ptr %93, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 23
  %95 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %start_frame.i, align 4
  %96 = ptrtoint ptr %in_dma to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %in_dma, align 8
  %98 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %irq_urb, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 15
  %100 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %transfer_dma, align 4
  %101 = load ptr, ptr %irq_urb, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %transfer_flags, align 4
  %or87 = or i32 %103, 4
  store i32 %or87, ptr %transfer_flags, align 4
  %104 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %input, align 4
  %call89 = tail call i32 @input_register_device(ptr noundef %105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %usb_fill_int_urb.exit.fail3_crit_edge

usb_fill_int_urb.exit.fail3_crit_edge:            ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end92:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i181 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %106 = ptrtoint ptr %driver_data.i.i181 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i, ptr %driver_data.i.i181, align 4
  br label %cleanup

fail3:                                            ; preds = %usb_fill_int_urb.exit.fail3_crit_edge, %if.end19.fail3_crit_edge
  %error.0 = phi i32 [ %call89, %usb_fill_int_urb.exit.fail3_crit_edge ], [ -19, %if.end19.fail3_crit_edge ]
  %107 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %irq_urb, align 8
  tail call void @usb_free_urb(ptr noundef %108) #9
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end14.fail2_crit_edge
  %error.1 = phi i32 [ %error.0, %fail3 ], [ -12, %if.end14.fail2_crit_edge ]
  %109 = ptrtoint ptr %in_buffer to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %in_buffer, align 4
  %111 = ptrtoint ptr %in_dma to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %in_dma, align 8
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i177, i32 noundef 8, ptr noundef %110, i32 noundef %112) #9
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end7.fail1_crit_edge, %if.end.fail1_crit_edge
  %error.2 = phi i32 [ %error.1, %fail2 ], [ -12, %if.end.fail1_crit_edge ], [ -12, %if.end7.fail1_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  tail call void @input_free_device(ptr noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end92, %keyspan_get_in_endpoint.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %fail1 ], [ 0, %if.end92 ], [ -19, %keyspan_get_in_endpoint.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %input = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %3) #9
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %6 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #9
  %udev = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %in_buffer = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %in_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_buffer, align 4
  %in_dma = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %in_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 8, ptr noundef %11, i32 noundef %13) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keyspan_setup(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %1, 8
  %or = or i32 %shl.i, -2147483648
  %call2 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or, i8 noundef zeroext 17, i8 noundef zeroext 64, i16 noundef zeroext 22017, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_setup.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_setup, %if.then7)) #9
          to label %cleanup [label %if.then7], !srcloc !95

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_setup.__UNIQUE_ID_ddebug236, ptr noundef %dev8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call2) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shl.i100 = shl i32 %3, 8
  %or11 = or i32 %shl.i100, -2147483648
  %call12 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or11, i8 noundef zeroext 68, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end32, label %do.body15

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_setup.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_setup, %if.then27)) #9
          to label %cleanup [label %if.then27], !srcloc !95

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_setup.__UNIQUE_ID_ddebug237, ptr noundef %dev28, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %call12) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 8
  %shl.i101 = shl i32 %5, 8
  %or34 = or i32 %shl.i101, -2147483648
  %call35 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or34, i8 noundef zeroext 34, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body56, label %do.body38

do.body38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_setup.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_setup, %if.then50)) #9
          to label %cleanup [label %if.then50], !srcloc !95

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %dev51 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_setup.__UNIQUE_ID_ddebug238, ptr noundef %dev51, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef %call35) #9
  br label %cleanup

do.body56:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_setup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_setup, %if.then68)) #9
          to label %cleanup [label %if.then68], !srcloc !95

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %dev69 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_setup.__UNIQUE_ID_ddebug239, ptr noundef %dev69, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %if.then50, %do.body38, %if.then27, %do.body15, %if.then7, %do.body
  %retval.0 = phi i32 [ %call2, %if.then7 ], [ %call12, %if.then27 ], [ %call35, %if.then50 ], [ 0, %if.then68 ], [ %call2, %do.body ], [ %call12, %do.body15 ], [ %call35, %do.body38 ], [ 0, %do.body56 ]
  ret i32 %retval.0
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
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %dev1, align 4
  %7 = load ptr, ptr %irq_urb, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_irq_recv(ptr noundef %urb) #2 align 64 {
entry:
  %codes.i = alloca [32 x i8], align 1
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
  switch i32 %3, label %entry.resubmit_crit_edge [
    i32 0, label %sw.epilog
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge11
    i32 -108, label %entry.cleanup_crit_edge12
  ]

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.resubmit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

sw.epilog:                                        ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %codes.i) #9
  %6 = getelementptr inbounds [32 x i8], ptr %codes.i, i32 0, i32 3
  %7 = getelementptr inbounds [32 x i8], ptr %codes.i, i32 0, i32 6
  %8 = getelementptr inbounds [32 x i8], ptr %codes.i, i32 0, i32 9
  %9 = getelementptr inbounds [32 x i8], ptr %codes.i, i32 0, i32 12
  %10 = getelementptr inbounds [32 x i8], ptr %codes.i, i32 0, i32 15
  %11 = getelementptr inbounds [32 x i8], ptr %codes.i, i32 0, i32 18
  %12 = getelementptr inbounds [32 x i8], ptr %codes.i, i32 0, i32 21
  %in_buffer.i = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 10
  %13 = call ptr @memset(ptr %codes.i, i32 255, i32 32)
  %14 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_buffer.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv.i = zext i8 %17 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %codes.i, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.i) #9
  %18 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_buffer.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %21 to i32
  %call.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.1.i) #9
  %22 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_buffer.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %25 to i32
  %call.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.2.i) #9
  %26 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_buffer.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %27, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %29 to i32
  %call.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.3.i) #9
  %30 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in_buffer.i, align 4
  %arrayidx.4.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %33 to i32
  %call.4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.4.i) #9
  %34 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_buffer.i, align 4
  %arrayidx.5.i = getelementptr i8, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %37 to i32
  %call.5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.5.i) #9
  %38 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in_buffer.i, align 4
  %arrayidx.6.i = getelementptr i8, ptr %39, i32 6
  %40 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %41 to i32
  %call.6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.6.i) #9
  %42 = ptrtoint ptr %in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_buffer.i, align 4
  %arrayidx.7.i = getelementptr i8, ptr %43, i32 7
  %44 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %45 to i32
  %call.7.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv.7.i) #9
  %udev.i = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %udev.i, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %codes.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %codes.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  call fastcc void @keyspan_check_data(ptr noundef %1)
  br label %resubmit

resubmit:                                         ; preds = %if.end, %entry.resubmit_crit_edge
  %call = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %resubmit.cleanup_crit_edge, label %do.end

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  %interface = getelementptr inbounds %struct.usb_keyspan, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %interface, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %49, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %resubmit.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keyspan_check_data(ptr noundef %remote) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stage = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 12
  %0 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stage, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb11
    i32 2, label %sw.bb71
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %in_buffer = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 10
  %3 = ptrtoint ptr %in_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %in_buffer, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp1 = icmp eq i8 %6, -1
  br i1 %cmp1, label %for.cond, label %for.cond.preheader.if.then.critedge_crit_edge

for.cond.preheader.if.then.critedge_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond:                                         ; preds = %for.cond.preheader
  %arrayidx.1 = getelementptr i8, ptr %4, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp1.1 = icmp eq i8 %8, -1
  br i1 %cmp1.1, label %for.cond.1, label %for.cond.if.then.critedge_crit_edge

for.cond.if.then.critedge_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %4, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp1.2 = icmp eq i8 %10, -1
  br i1 %cmp1.2, label %for.cond.2, label %for.cond.1.if.then.critedge_crit_edge

for.cond.1.if.then.critedge_crit_edge:            ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %4, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp1.3 = icmp eq i8 %12, -1
  br i1 %cmp1.3, label %for.cond.3, label %for.cond.2.if.then.critedge_crit_edge

for.cond.2.if.then.critedge_crit_edge:            ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %4, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp1.4 = icmp eq i8 %14, -1
  br i1 %cmp1.4, label %for.cond.4, label %for.cond.3.if.then.critedge_crit_edge

for.cond.3.if.then.critedge_crit_edge:            ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i8, ptr %4, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp1.5 = icmp eq i8 %16, -1
  br i1 %cmp1.5, label %for.cond.5, label %for.cond.4.if.then.critedge_crit_edge

for.cond.4.if.then.critedge_crit_edge:            ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr i8, ptr %4, i32 6
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp1.6 = icmp eq i8 %18, -1
  br i1 %cmp1.6, label %for.cond.6, label %for.cond.5.if.then.critedge_crit_edge

for.cond.5.if.then.critedge_crit_edge:            ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr i8, ptr %4, i32 7
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp1.7 = icmp eq i8 %20, -1
  br i1 %cmp1.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.6.if.then.critedge_crit_edge

for.cond.6.if.then.critedge_crit_edge:            ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.critedge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.critedge:                                 ; preds = %for.cond.6.if.then.critedge_crit_edge, %for.cond.5.if.then.critedge_crit_edge, %for.cond.4.if.then.critedge_crit_edge, %for.cond.3.if.then.critedge_crit_edge, %for.cond.2.if.then.critedge_crit_edge, %for.cond.1.if.then.critedge_crit_edge, %for.cond.if.then.critedge_crit_edge, %for.cond.preheader.if.then.critedge_crit_edge
  %data = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11
  %buffer = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %4, align 1
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %buffer, align 4
  %len = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %len, align 4
  %pos = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pos, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %data, align 4
  %bits_left = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 3
  %27 = ptrtoint ptr %bits_left to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bits_left, align 4
  %28 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %stage, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %data12 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11
  %buffer13 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4
  %len16 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len16, align 4
  %add.ptr = getelementptr i8, ptr %buffer13, i32 %30
  %in_buffer17 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 10
  %31 = ptrtoint ptr %in_buffer17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %in_buffer17, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %32, align 1
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %add.ptr, align 1
  %36 = load i32, ptr %len16, align 4
  %add = add i32 %36, 8
  store i32 %add, ptr %len16, align 4
  %bits_left21 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 3
  %pos25 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then45, %sw.bb11
  %tobool.not = phi i1 [ false, %if.then45 ], [ true, %sw.bb11 ]
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %while.cond.outer
  %37 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bits_left21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %38)
  %cmp22 = icmp sgt i32 %38, 13
  br i1 %cmp22, label %land.rhs30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %39 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos25, align 4
  %41 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp28 = icmp slt i32 %40, %42
  %or.cond = and i1 %cmp28, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.while.body_crit_edge, label %while.end

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

land.rhs30:                                       ; preds = %while.cond
  br i1 %tobool.not, label %land.rhs30.while.body_crit_edge, label %land.rhs30.if.else68_crit_edge

land.rhs30.if.else68_crit_edge:                   ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68

land.rhs30.while.body_crit_edge:                  ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %land.rhs30.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge
  %43 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %bits_left21, align 4
  br label %for.body35

for.body35:                                       ; preds = %if.else.for.body35_crit_edge, %while.body
  %44 = phi i32 [ %.pr, %while.body ], [ %dec, %if.else.for.body35_crit_edge ]
  %i.1506 = phi i32 [ 0, %while.body ], [ %inc61, %if.else.for.body35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %44)
  %cmp.not.i = icmp slt i32 %44, 14
  br i1 %cmp.not.i, label %if.end.i, label %for.body35.if.end40_crit_edge

for.body35.if.end40_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end.i:                                         ; preds = %for.body35
  %45 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pos25, align 4
  %47 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp3.not.i = icmp slt i32 %46, %48
  br i1 %cmp3.not.i, label %while.cond.preheader.i, label %do.body.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %add47.i = add nsw i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add47.i)
  %cmp1748.i = icmp ult i32 %add47.i, 32
  br i1 %cmp1748.i, label %land.rhs.i, label %while.cond.preheader.i.if.end40_crit_edge

while.cond.preheader.i.if.end40_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_load_tester.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_check_data, %if.then7.i)) #9
          to label %if.then38 [label %if.then7.i], !srcloc !95

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %interface.i = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 5
  %49 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %interface.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pos25, align 4
  %53 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_load_tester.__UNIQUE_ID_ddebug234, ptr noundef %dev8.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %52, i32 noundef %54) #9
  br label %if.then38

land.rhs.i:                                       ; preds = %while.cond.preheader.i
  %55 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pos25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %48)
  %cmp22.i = icmp slt i32 %56, %48
  br i1 %cmp22.i, label %while.body.i, label %land.rhs.i.if.end40_crit_edge

land.rhs.i.if.end40_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nsw i32 %56, 1
  %57 = ptrtoint ptr %pos25 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc.i, ptr %pos25, align 4
  %arrayidx.i = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %56
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %59 to i32
  %shl.i = shl nuw i32 %conv.i, %44
  %60 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data12, align 4
  %add29.i = add i32 %shl.i, %61
  store i32 %add29.i, ptr %data12, align 4
  %add32.i = add nsw i32 %44, 8
  %62 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add32.i, ptr %bits_left21, align 4
  %add.i = add i32 %44, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp17.i = icmp ult i32 %add.i, 32
  br i1 %cmp17.i, label %land.rhs.i.1, label %while.body.i.if.end40_crit_edge

while.body.i.if.end40_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs.i.1:                                     ; preds = %while.body.i
  %63 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pos25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %48)
  %cmp22.i.1 = icmp slt i32 %64, %48
  br i1 %cmp22.i.1, label %while.body.i.1, label %land.rhs.i.1.if.end40_crit_edge

land.rhs.i.1.if.end40_crit_edge:                  ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

while.body.i.1:                                   ; preds = %land.rhs.i.1
  %inc.i.1 = add nsw i32 %64, 1
  %65 = ptrtoint ptr %pos25 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %inc.i.1, ptr %pos25, align 4
  %arrayidx.i.1 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %64
  %66 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %67 to i32
  %shl.i.1 = shl nuw i32 %conv.i.1, %add32.i
  %68 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data12, align 4
  %add29.i.1 = add i32 %shl.i.1, %69
  store i32 %add29.i.1, ptr %data12, align 4
  %add32.i.1 = add nsw i32 %44, 16
  %70 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add32.i.1, ptr %bits_left21, align 4
  %add.i.1 = add i32 %44, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.1)
  %cmp17.i.1 = icmp ult i32 %add.i.1, 32
  br i1 %cmp17.i.1, label %land.rhs.i.2, label %while.body.i.1.if.end40_crit_edge

while.body.i.1.if.end40_crit_edge:                ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs.i.2:                                     ; preds = %while.body.i.1
  %71 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pos25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %48)
  %cmp22.i.2 = icmp slt i32 %72, %48
  br i1 %cmp22.i.2, label %while.body.i.2, label %land.rhs.i.2.if.end40_crit_edge

land.rhs.i.2.if.end40_crit_edge:                  ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

while.body.i.2:                                   ; preds = %land.rhs.i.2
  %inc.i.2 = add nsw i32 %72, 1
  %73 = ptrtoint ptr %pos25 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %inc.i.2, ptr %pos25, align 4
  %arrayidx.i.2 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %72
  %74 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %75 to i32
  %shl.i.2 = shl nuw i32 %conv.i.2, %add32.i.1
  %76 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data12, align 4
  %add29.i.2 = add i32 %shl.i.2, %77
  store i32 %add29.i.2, ptr %data12, align 4
  %add32.i.2 = add nsw i32 %44, 24
  %78 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add32.i.2, ptr %bits_left21, align 4
  %add.i.2 = add i32 %44, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.2)
  %cmp17.i.2 = icmp ult i32 %add.i.2, 32
  br i1 %cmp17.i.2, label %land.rhs.i.3, label %while.body.i.2.if.end40_crit_edge

while.body.i.2.if.end40_crit_edge:                ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs.i.3:                                     ; preds = %while.body.i.2
  %79 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pos25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %48)
  %cmp22.i.3 = icmp slt i32 %80, %48
  br i1 %cmp22.i.3, label %while.body.i.3, label %land.rhs.i.3.if.end40_crit_edge

land.rhs.i.3.if.end40_crit_edge:                  ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

while.body.i.3:                                   ; preds = %land.rhs.i.3
  %inc.i.3 = add nsw i32 %80, 1
  %81 = ptrtoint ptr %pos25 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %inc.i.3, ptr %pos25, align 4
  %arrayidx.i.3 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %80
  %82 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %83 to i32
  %shl.i.3 = shl nuw i32 %conv.i.3, %add32.i.2
  %84 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data12, align 4
  %add29.i.3 = add i32 %shl.i.3, %85
  store i32 %add29.i.3, ptr %data12, align 4
  %add32.i.3 = add nsw i32 %44, 32
  %86 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add32.i.3, ptr %bits_left21, align 4
  %add.i.3 = add i32 %44, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.3)
  %cmp17.i.3 = icmp ult i32 %add.i.3, 32
  br i1 %cmp17.i.3, label %land.rhs.i.4, label %while.body.i.3.if.end40_crit_edge

while.body.i.3.if.end40_crit_edge:                ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs.i.4:                                     ; preds = %while.body.i.3
  %87 = ptrtoint ptr %pos25 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pos25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %48)
  %cmp22.i.4 = icmp slt i32 %88, %48
  br i1 %cmp22.i.4, label %while.body.i.4, label %land.rhs.i.4.if.end40_crit_edge

land.rhs.i.4.if.end40_crit_edge:                  ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

while.body.i.4:                                   ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.4 = add nsw i32 %88, 1
  %89 = ptrtoint ptr %pos25 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %inc.i.4, ptr %pos25, align 4
  %arrayidx.i.4 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %88
  %90 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.4, align 1
  %conv.i.4 = zext i8 %91 to i32
  %shl.i.4 = shl nuw i32 %conv.i.4, %add32.i.3
  %92 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data12, align 4
  %add29.i.4 = add i32 %shl.i.4, %93
  store i32 %add29.i.4, ptr %data12, align 4
  %add32.i.4 = add nsw i32 %44, 40
  %94 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add32.i.4, ptr %bits_left21, align 4
  br label %if.end40

if.then38:                                        ; preds = %if.then7.i, %do.body.i
  %95 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %stage, align 4
  br label %cleanup

if.end40:                                         ; preds = %while.body.i.4, %land.rhs.i.4.if.end40_crit_edge, %while.body.i.3.if.end40_crit_edge, %land.rhs.i.3.if.end40_crit_edge, %while.body.i.2.if.end40_crit_edge, %land.rhs.i.2.if.end40_crit_edge, %while.body.i.1.if.end40_crit_edge, %land.rhs.i.1.if.end40_crit_edge, %while.body.i.if.end40_crit_edge, %land.rhs.i.if.end40_crit_edge, %while.cond.preheader.i.if.end40_crit_edge, %for.body35.if.end40_crit_edge
  %96 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data12, align 4
  %and = and i32 %97, 16383
  %cmp43 = icmp eq i32 %and, 16256
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %97, 14
  %98 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shr, ptr %data12, align 4
  %99 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bits_left21, align 4
  %sub = add i32 %100, -14
  store i32 %sub, ptr %bits_left21, align 4
  br label %while.cond.outer

if.else:                                          ; preds = %if.end40
  %shr54 = lshr i32 %97, 1
  %101 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %shr54, ptr %data12, align 4
  %102 = ptrtoint ptr %bits_left21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bits_left21, align 4
  %dec = add i32 %103, -1
  store i32 %dec, ptr %bits_left21, align 4
  %inc61 = add nuw nsw i32 %i.1506, 1
  %exitcond510.not = icmp eq i32 %inc61, 8
  br i1 %exitcond510.not, label %if.else.while.cond_crit_edge, label %if.else.for.body35_crit_edge

if.else.for.body35_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %lor.lhs.false
  br i1 %tobool.not, label %if.then64, label %while.end.if.else68_crit_edge

while.end.if.else68_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68

if.then64:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %stage, align 4
  %105 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %len16, align 4
  br label %cleanup

if.else68:                                        ; preds = %while.end.if.else68_crit_edge, %land.rhs30.if.else68_crit_edge
  %106 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %stage, align 4
  br label %cleanup

sw.bb71:                                          ; preds = %entry
  %data72 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11
  %buffer73 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4
  %len76 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 1
  %107 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len76, align 4
  %add.ptr77 = getelementptr i8, ptr %buffer73, i32 %108
  %in_buffer78 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 10
  %109 = ptrtoint ptr %in_buffer78 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %in_buffer78, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %110, align 1
  %113 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 8)
  store i64 %112, ptr %add.ptr77, align 1
  %114 = load i32, ptr %len76, align 4
  %add81 = add i32 %114, 8
  store i32 %add81, ptr %len76, align 4
  %bits_left.i383 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 3
  %pos.i385 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 2
  %interface.i393 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 5
  %115 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr512 = load i32, ptr %bits_left.i383, align 4
  br label %for.body85

for.body85:                                       ; preds = %for.inc130.for.body85_crit_edge, %sw.bb71
  %116 = phi i32 [ %.pr512, %sw.bb71 ], [ %sub104, %for.inc130.for.body85_crit_edge ]
  %i.2503 = phi i32 [ 0, %sw.bb71 ], [ %inc131, %for.inc130.for.body85_crit_edge ]
  %message.sroa.0.0502 = phi i16 [ 0, %sw.bb71 ], [ %message.sroa.0.1, %for.inc130.for.body85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %116)
  %cmp.not.i384 = icmp slt i32 %116, 6
  br i1 %cmp.not.i384, label %if.end.i388, label %for.body85.keyspan_load_tester.exit408_crit_edge

for.body85.keyspan_load_tester.exit408_crit_edge: ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

if.end.i388:                                      ; preds = %for.body85
  %117 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pos.i385, align 4
  %119 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp3.not.i387 = icmp slt i32 %118, %120
  br i1 %cmp3.not.i387, label %while.cond.preheader.i391, label %do.body.i392

while.cond.preheader.i391:                        ; preds = %if.end.i388
  %add47.i389 = add nsw i32 %116, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add47.i389)
  %cmp1748.i390 = icmp ult i32 %add47.i389, 32
  br i1 %cmp1748.i390, label %land.rhs.i397, label %while.cond.preheader.i391.keyspan_load_tester.exit408_crit_edge

while.cond.preheader.i391.keyspan_load_tester.exit408_crit_edge: ; preds = %while.cond.preheader.i391
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

do.body.i392:                                     ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_load_tester.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_check_data, %if.then7.i395)) #9
          to label %keyspan_load_tester.exit408 [label %if.then7.i395], !srcloc !95

if.then7.i395:                                    ; preds = %do.body.i392
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %interface.i393, align 4
  %dev8.i394 = getelementptr inbounds %struct.usb_interface, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pos.i385, align 4
  %125 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_load_tester.__UNIQUE_ID_ddebug234, ptr noundef %dev8.i394, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %124, i32 noundef %126) #9
  br label %keyspan_load_tester.exit408

land.rhs.i397:                                    ; preds = %while.cond.preheader.i391
  %127 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %120)
  %cmp22.i396 = icmp slt i32 %128, %120
  br i1 %cmp22.i396, label %while.body.i406, label %land.rhs.i397.keyspan_load_tester.exit408_crit_edge

land.rhs.i397.keyspan_load_tester.exit408_crit_edge: ; preds = %land.rhs.i397
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

while.body.i406:                                  ; preds = %land.rhs.i397
  %inc.i398 = add nsw i32 %128, 1
  %129 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %inc.i398, ptr %pos.i385, align 4
  %arrayidx.i399 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %128
  %130 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i399, align 1
  %conv.i400 = zext i8 %131 to i32
  %shl.i401 = shl nuw i32 %conv.i400, %116
  %132 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %data72, align 4
  %add29.i402 = add i32 %shl.i401, %133
  store i32 %add29.i402, ptr %data72, align 4
  %add32.i403 = add nsw i32 %116, 8
  %134 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add32.i403, ptr %bits_left.i383, align 4
  %add.i404 = add i32 %116, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i404)
  %cmp17.i405 = icmp ult i32 %add.i404, 32
  br i1 %cmp17.i405, label %land.rhs.i397.1, label %while.body.i406.keyspan_load_tester.exit408_crit_edge

while.body.i406.keyspan_load_tester.exit408_crit_edge: ; preds = %while.body.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

land.rhs.i397.1:                                  ; preds = %while.body.i406
  %135 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %120)
  %cmp22.i396.1 = icmp slt i32 %136, %120
  br i1 %cmp22.i396.1, label %while.body.i406.1, label %land.rhs.i397.1.keyspan_load_tester.exit408_crit_edge

land.rhs.i397.1.keyspan_load_tester.exit408_crit_edge: ; preds = %land.rhs.i397.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

while.body.i406.1:                                ; preds = %land.rhs.i397.1
  %inc.i398.1 = add nsw i32 %136, 1
  %137 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %inc.i398.1, ptr %pos.i385, align 4
  %arrayidx.i399.1 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %136
  %138 = ptrtoint ptr %arrayidx.i399.1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i399.1, align 1
  %conv.i400.1 = zext i8 %139 to i32
  %shl.i401.1 = shl nuw i32 %conv.i400.1, %add32.i403
  %140 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %data72, align 4
  %add29.i402.1 = add i32 %shl.i401.1, %141
  store i32 %add29.i402.1, ptr %data72, align 4
  %add32.i403.1 = add nsw i32 %116, 16
  %142 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add32.i403.1, ptr %bits_left.i383, align 4
  %add.i404.1 = add i32 %116, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i404.1)
  %cmp17.i405.1 = icmp ult i32 %add.i404.1, 32
  br i1 %cmp17.i405.1, label %land.rhs.i397.2, label %while.body.i406.1.keyspan_load_tester.exit408_crit_edge

while.body.i406.1.keyspan_load_tester.exit408_crit_edge: ; preds = %while.body.i406.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

land.rhs.i397.2:                                  ; preds = %while.body.i406.1
  %143 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %120)
  %cmp22.i396.2 = icmp slt i32 %144, %120
  br i1 %cmp22.i396.2, label %while.body.i406.2, label %land.rhs.i397.2.keyspan_load_tester.exit408_crit_edge

land.rhs.i397.2.keyspan_load_tester.exit408_crit_edge: ; preds = %land.rhs.i397.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

while.body.i406.2:                                ; preds = %land.rhs.i397.2
  %inc.i398.2 = add nsw i32 %144, 1
  %145 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %inc.i398.2, ptr %pos.i385, align 4
  %arrayidx.i399.2 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %144
  %146 = ptrtoint ptr %arrayidx.i399.2 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i399.2, align 1
  %conv.i400.2 = zext i8 %147 to i32
  %shl.i401.2 = shl nuw i32 %conv.i400.2, %add32.i403.1
  %148 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %data72, align 4
  %add29.i402.2 = add i32 %shl.i401.2, %149
  store i32 %add29.i402.2, ptr %data72, align 4
  %add32.i403.2 = add nsw i32 %116, 24
  %150 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add32.i403.2, ptr %bits_left.i383, align 4
  %add.i404.2 = add i32 %116, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i404.2)
  %cmp17.i405.2 = icmp ult i32 %add.i404.2, 32
  br i1 %cmp17.i405.2, label %land.rhs.i397.3, label %while.body.i406.2.keyspan_load_tester.exit408_crit_edge

while.body.i406.2.keyspan_load_tester.exit408_crit_edge: ; preds = %while.body.i406.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

land.rhs.i397.3:                                  ; preds = %while.body.i406.2
  %151 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %120)
  %cmp22.i396.3 = icmp slt i32 %152, %120
  br i1 %cmp22.i396.3, label %while.body.i406.3, label %land.rhs.i397.3.keyspan_load_tester.exit408_crit_edge

land.rhs.i397.3.keyspan_load_tester.exit408_crit_edge: ; preds = %land.rhs.i397.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

while.body.i406.3:                                ; preds = %land.rhs.i397.3
  %inc.i398.3 = add nsw i32 %152, 1
  %153 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %inc.i398.3, ptr %pos.i385, align 4
  %arrayidx.i399.3 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %152
  %154 = ptrtoint ptr %arrayidx.i399.3 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i399.3, align 1
  %conv.i400.3 = zext i8 %155 to i32
  %shl.i401.3 = shl nuw i32 %conv.i400.3, %add32.i403.2
  %156 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %data72, align 4
  %add29.i402.3 = add i32 %shl.i401.3, %157
  store i32 %add29.i402.3, ptr %data72, align 4
  %add32.i403.3 = add nsw i32 %116, 32
  %158 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add32.i403.3, ptr %bits_left.i383, align 4
  %add.i404.3 = add i32 %116, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i404.3)
  %cmp17.i405.3 = icmp ult i32 %add.i404.3, 32
  br i1 %cmp17.i405.3, label %land.rhs.i397.4, label %while.body.i406.3.keyspan_load_tester.exit408_crit_edge

while.body.i406.3.keyspan_load_tester.exit408_crit_edge: ; preds = %while.body.i406.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

land.rhs.i397.4:                                  ; preds = %while.body.i406.3
  %159 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %120)
  %cmp22.i396.4 = icmp slt i32 %160, %120
  br i1 %cmp22.i396.4, label %while.body.i406.4, label %land.rhs.i397.4.keyspan_load_tester.exit408_crit_edge

land.rhs.i397.4.keyspan_load_tester.exit408_crit_edge: ; preds = %land.rhs.i397.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit408

while.body.i406.4:                                ; preds = %land.rhs.i397.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i398.4 = add nsw i32 %160, 1
  %161 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %inc.i398.4, ptr %pos.i385, align 4
  %arrayidx.i399.4 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %160
  %162 = ptrtoint ptr %arrayidx.i399.4 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx.i399.4, align 1
  %conv.i400.4 = zext i8 %163 to i32
  %shl.i401.4 = shl nuw i32 %conv.i400.4, %add32.i403.3
  %164 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %data72, align 4
  %add29.i402.4 = add i32 %shl.i401.4, %165
  store i32 %add29.i402.4, ptr %data72, align 4
  %add32.i403.4 = add nsw i32 %116, 40
  %166 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %add32.i403.4, ptr %bits_left.i383, align 4
  br label %keyspan_load_tester.exit408

keyspan_load_tester.exit408:                      ; preds = %while.body.i406.4, %land.rhs.i397.4.keyspan_load_tester.exit408_crit_edge, %while.body.i406.3.keyspan_load_tester.exit408_crit_edge, %land.rhs.i397.3.keyspan_load_tester.exit408_crit_edge, %while.body.i406.2.keyspan_load_tester.exit408_crit_edge, %land.rhs.i397.2.keyspan_load_tester.exit408_crit_edge, %while.body.i406.1.keyspan_load_tester.exit408_crit_edge, %land.rhs.i397.1.keyspan_load_tester.exit408_crit_edge, %while.body.i406.keyspan_load_tester.exit408_crit_edge, %land.rhs.i397.keyspan_load_tester.exit408_crit_edge, %if.then7.i395, %do.body.i392, %while.cond.preheader.i391.keyspan_load_tester.exit408_crit_edge, %for.body85.keyspan_load_tester.exit408_crit_edge
  %167 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %data72, align 4
  %and89 = and i32 %168, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and89)
  %cmp90 = icmp eq i32 %and89, 24
  br i1 %cmp90, label %if.then92, label %if.else105

if.then92:                                        ; preds = %keyspan_load_tester.exit408
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i16 %message.sroa.0.0502, 1
  br label %for.inc130

if.else105:                                       ; preds = %keyspan_load_tester.exit408
  %and108 = and i32 %168, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and108)
  %cmp109 = icmp eq i32 %and108, 60
  br i1 %cmp109, label %if.then111, label %do.end

if.then111:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  %shl114 = shl i16 %message.sroa.0.0502, 1
  %add115 = or i16 %shl114, 1
  br label %for.inc130

do.end:                                           ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %interface.i393, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %170, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  %171 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %stage, align 4
  br label %cleanup

for.inc130:                                       ; preds = %if.then111, %if.then92
  %.sink = phi i32 [ 5, %if.then92 ], [ 6, %if.then111 ]
  %.sink514 = phi i32 [ -5, %if.then92 ], [ -6, %if.then111 ]
  %message.sroa.0.1 = phi i16 [ %shl, %if.then92 ], [ %add115, %if.then111 ]
  %shr99 = lshr i32 %168, %.sink
  %172 = ptrtoint ptr %data72 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %shr99, ptr %data72, align 4
  %173 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %bits_left.i383, align 4
  %sub104 = add i32 %174, %.sink514
  store i32 %sub104, ptr %bits_left.i383, align 4
  %inc131 = add nuw nsw i32 %i.2503, 1
  %exitcond.not = icmp eq i32 %inc131, 9
  br i1 %exitcond.not, label %for.inc130.for.body136_crit_edge, label %for.inc130.for.body85_crit_edge

for.inc130.for.body85_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body85

for.inc130.for.body136_crit_edge:                 ; preds = %for.inc130
  br label %for.body136

for.body136:                                      ; preds = %for.inc187.for.body136_crit_edge, %for.inc130.for.body136_crit_edge
  %175 = phi i32 [ %sub156, %for.inc187.for.body136_crit_edge ], [ %sub104, %for.inc130.for.body136_crit_edge ]
  %i.3505 = phi i32 [ %inc188, %for.inc187.for.body136_crit_edge ], [ 0, %for.inc130.for.body136_crit_edge ]
  %message.sroa.9.0504 = phi i8 [ %message.sroa.9.1, %for.inc187.for.body136_crit_edge ], [ 0, %for.inc130.for.body136_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %175)
  %cmp.not.i411 = icmp slt i32 %175, 6
  br i1 %cmp.not.i411, label %if.end.i415, label %for.body136.keyspan_load_tester.exit435_crit_edge

for.body136.keyspan_load_tester.exit435_crit_edge: ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

if.end.i415:                                      ; preds = %for.body136
  %176 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pos.i385, align 4
  %178 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %len76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp3.not.i414 = icmp slt i32 %177, %179
  br i1 %cmp3.not.i414, label %while.cond.preheader.i418, label %do.body.i419

while.cond.preheader.i418:                        ; preds = %if.end.i415
  %add47.i416 = add nsw i32 %175, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add47.i416)
  %cmp1748.i417 = icmp ult i32 %add47.i416, 32
  br i1 %cmp1748.i417, label %land.rhs.i424, label %while.cond.preheader.i418.keyspan_load_tester.exit435_crit_edge

while.cond.preheader.i418.keyspan_load_tester.exit435_crit_edge: ; preds = %while.cond.preheader.i418
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

do.body.i419:                                     ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_load_tester.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_check_data, %if.then7.i422)) #9
          to label %keyspan_load_tester.exit435 [label %if.then7.i422], !srcloc !95

if.then7.i422:                                    ; preds = %do.body.i419
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %interface.i393, align 4
  %dev8.i421 = getelementptr inbounds %struct.usb_interface, ptr %181, i32 0, i32 7
  %182 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %pos.i385, align 4
  %184 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %len76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_load_tester.__UNIQUE_ID_ddebug234, ptr noundef %dev8.i421, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %183, i32 noundef %185) #9
  br label %keyspan_load_tester.exit435

land.rhs.i424:                                    ; preds = %while.cond.preheader.i418
  %186 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %179)
  %cmp22.i423 = icmp slt i32 %187, %179
  br i1 %cmp22.i423, label %while.body.i433, label %land.rhs.i424.keyspan_load_tester.exit435_crit_edge

land.rhs.i424.keyspan_load_tester.exit435_crit_edge: ; preds = %land.rhs.i424
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

while.body.i433:                                  ; preds = %land.rhs.i424
  %inc.i425 = add nsw i32 %187, 1
  %188 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %inc.i425, ptr %pos.i385, align 4
  %arrayidx.i426 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %187
  %189 = ptrtoint ptr %arrayidx.i426 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i426, align 1
  %conv.i427 = zext i8 %190 to i32
  %shl.i428 = shl nuw i32 %conv.i427, %175
  %191 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %data72, align 4
  %add29.i429 = add i32 %shl.i428, %192
  store i32 %add29.i429, ptr %data72, align 4
  %add32.i430 = add nsw i32 %175, 8
  %193 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %add32.i430, ptr %bits_left.i383, align 4
  %add.i431 = add i32 %175, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i431)
  %cmp17.i432 = icmp ult i32 %add.i431, 32
  br i1 %cmp17.i432, label %land.rhs.i424.1, label %while.body.i433.keyspan_load_tester.exit435_crit_edge

while.body.i433.keyspan_load_tester.exit435_crit_edge: ; preds = %while.body.i433
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

land.rhs.i424.1:                                  ; preds = %while.body.i433
  %194 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %179)
  %cmp22.i423.1 = icmp slt i32 %195, %179
  br i1 %cmp22.i423.1, label %while.body.i433.1, label %land.rhs.i424.1.keyspan_load_tester.exit435_crit_edge

land.rhs.i424.1.keyspan_load_tester.exit435_crit_edge: ; preds = %land.rhs.i424.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

while.body.i433.1:                                ; preds = %land.rhs.i424.1
  %inc.i425.1 = add nsw i32 %195, 1
  %196 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %inc.i425.1, ptr %pos.i385, align 4
  %arrayidx.i426.1 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %195
  %197 = ptrtoint ptr %arrayidx.i426.1 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i426.1, align 1
  %conv.i427.1 = zext i8 %198 to i32
  %shl.i428.1 = shl nuw i32 %conv.i427.1, %add32.i430
  %199 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %data72, align 4
  %add29.i429.1 = add i32 %shl.i428.1, %200
  store i32 %add29.i429.1, ptr %data72, align 4
  %add32.i430.1 = add nsw i32 %175, 16
  %201 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %add32.i430.1, ptr %bits_left.i383, align 4
  %add.i431.1 = add i32 %175, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i431.1)
  %cmp17.i432.1 = icmp ult i32 %add.i431.1, 32
  br i1 %cmp17.i432.1, label %land.rhs.i424.2, label %while.body.i433.1.keyspan_load_tester.exit435_crit_edge

while.body.i433.1.keyspan_load_tester.exit435_crit_edge: ; preds = %while.body.i433.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

land.rhs.i424.2:                                  ; preds = %while.body.i433.1
  %202 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %179)
  %cmp22.i423.2 = icmp slt i32 %203, %179
  br i1 %cmp22.i423.2, label %while.body.i433.2, label %land.rhs.i424.2.keyspan_load_tester.exit435_crit_edge

land.rhs.i424.2.keyspan_load_tester.exit435_crit_edge: ; preds = %land.rhs.i424.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

while.body.i433.2:                                ; preds = %land.rhs.i424.2
  %inc.i425.2 = add nsw i32 %203, 1
  %204 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %inc.i425.2, ptr %pos.i385, align 4
  %arrayidx.i426.2 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %203
  %205 = ptrtoint ptr %arrayidx.i426.2 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx.i426.2, align 1
  %conv.i427.2 = zext i8 %206 to i32
  %shl.i428.2 = shl nuw i32 %conv.i427.2, %add32.i430.1
  %207 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %data72, align 4
  %add29.i429.2 = add i32 %shl.i428.2, %208
  store i32 %add29.i429.2, ptr %data72, align 4
  %add32.i430.2 = add nsw i32 %175, 24
  %209 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add32.i430.2, ptr %bits_left.i383, align 4
  %add.i431.2 = add i32 %175, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i431.2)
  %cmp17.i432.2 = icmp ult i32 %add.i431.2, 32
  br i1 %cmp17.i432.2, label %land.rhs.i424.3, label %while.body.i433.2.keyspan_load_tester.exit435_crit_edge

while.body.i433.2.keyspan_load_tester.exit435_crit_edge: ; preds = %while.body.i433.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

land.rhs.i424.3:                                  ; preds = %while.body.i433.2
  %210 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %179)
  %cmp22.i423.3 = icmp slt i32 %211, %179
  br i1 %cmp22.i423.3, label %while.body.i433.3, label %land.rhs.i424.3.keyspan_load_tester.exit435_crit_edge

land.rhs.i424.3.keyspan_load_tester.exit435_crit_edge: ; preds = %land.rhs.i424.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

while.body.i433.3:                                ; preds = %land.rhs.i424.3
  %inc.i425.3 = add nsw i32 %211, 1
  %212 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %inc.i425.3, ptr %pos.i385, align 4
  %arrayidx.i426.3 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %211
  %213 = ptrtoint ptr %arrayidx.i426.3 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx.i426.3, align 1
  %conv.i427.3 = zext i8 %214 to i32
  %shl.i428.3 = shl nuw i32 %conv.i427.3, %add32.i430.2
  %215 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %data72, align 4
  %add29.i429.3 = add i32 %shl.i428.3, %216
  store i32 %add29.i429.3, ptr %data72, align 4
  %add32.i430.3 = add nsw i32 %175, 32
  %217 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %add32.i430.3, ptr %bits_left.i383, align 4
  %add.i431.3 = add i32 %175, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i431.3)
  %cmp17.i432.3 = icmp ult i32 %add.i431.3, 32
  br i1 %cmp17.i432.3, label %land.rhs.i424.4, label %while.body.i433.3.keyspan_load_tester.exit435_crit_edge

while.body.i433.3.keyspan_load_tester.exit435_crit_edge: ; preds = %while.body.i433.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

land.rhs.i424.4:                                  ; preds = %while.body.i433.3
  %218 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %179)
  %cmp22.i423.4 = icmp slt i32 %219, %179
  br i1 %cmp22.i423.4, label %while.body.i433.4, label %land.rhs.i424.4.keyspan_load_tester.exit435_crit_edge

land.rhs.i424.4.keyspan_load_tester.exit435_crit_edge: ; preds = %land.rhs.i424.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit435

while.body.i433.4:                                ; preds = %land.rhs.i424.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i425.4 = add nsw i32 %219, 1
  %220 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %inc.i425.4, ptr %pos.i385, align 4
  %arrayidx.i426.4 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %219
  %221 = ptrtoint ptr %arrayidx.i426.4 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.i426.4, align 1
  %conv.i427.4 = zext i8 %222 to i32
  %shl.i428.4 = shl nuw i32 %conv.i427.4, %add32.i430.3
  %223 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %data72, align 4
  %add29.i429.4 = add i32 %shl.i428.4, %224
  store i32 %add29.i429.4, ptr %data72, align 4
  %add32.i430.4 = add nsw i32 %175, 40
  %225 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %add32.i430.4, ptr %bits_left.i383, align 4
  br label %keyspan_load_tester.exit435

keyspan_load_tester.exit435:                      ; preds = %while.body.i433.4, %land.rhs.i424.4.keyspan_load_tester.exit435_crit_edge, %while.body.i433.3.keyspan_load_tester.exit435_crit_edge, %land.rhs.i424.3.keyspan_load_tester.exit435_crit_edge, %while.body.i433.2.keyspan_load_tester.exit435_crit_edge, %land.rhs.i424.2.keyspan_load_tester.exit435_crit_edge, %while.body.i433.1.keyspan_load_tester.exit435_crit_edge, %land.rhs.i424.1.keyspan_load_tester.exit435_crit_edge, %while.body.i433.keyspan_load_tester.exit435_crit_edge, %land.rhs.i424.keyspan_load_tester.exit435_crit_edge, %if.then7.i422, %do.body.i419, %while.cond.preheader.i418.keyspan_load_tester.exit435_crit_edge, %for.body136.keyspan_load_tester.exit435_crit_edge
  %226 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %data72, align 4
  %and140 = and i32 %227, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and140)
  %cmp141 = icmp eq i32 %and140, 24
  br i1 %cmp141, label %if.then143, label %if.else157

if.then143:                                       ; preds = %keyspan_load_tester.exit435
  call void @__sanitizer_cov_trace_pc() #11
  %shl146 = shl i8 %message.sroa.9.0504, 1
  br label %for.inc187

if.else157:                                       ; preds = %keyspan_load_tester.exit435
  %and160 = and i32 %227, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and160)
  %cmp161 = icmp eq i32 %and160, 60
  br i1 %cmp161, label %if.then163, label %do.end181

if.then163:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #11
  %shl166 = shl i8 %message.sroa.9.0504, 1
  %add167 = or i8 %shl166, 1
  br label %for.inc187

do.end181:                                        ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #11
  %228 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %interface.i393, align 4
  %dev183 = getelementptr inbounds %struct.usb_interface, ptr %229, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev183, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #13
  %230 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %stage, align 4
  br label %cleanup

for.inc187:                                       ; preds = %if.then163, %if.then143
  %.sink517 = phi i32 [ 5, %if.then143 ], [ 6, %if.then163 ]
  %.sink516 = phi i32 [ -5, %if.then143 ], [ -6, %if.then163 ]
  %message.sroa.9.1 = phi i8 [ %shl146, %if.then143 ], [ %add167, %if.then163 ]
  %shr151 = lshr i32 %227, %.sink517
  %231 = ptrtoint ptr %data72 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %shr151, ptr %data72, align 4
  %232 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %bits_left.i383, align 4
  %sub156 = add i32 %233, %.sink516
  store i32 %sub156, ptr %bits_left.i383, align 4
  %inc188 = add nuw nsw i32 %i.3505, 1
  %exitcond509.not = icmp eq i32 %inc188, 5
  br i1 %exitcond509.not, label %for.end189, label %for.inc187.for.body136_crit_edge

for.inc187.for.body136_crit_edge:                 ; preds = %for.inc187
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body136

for.end189:                                       ; preds = %for.inc187
  %234 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %bits_left.i383, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %235)
  %cmp.not.i438 = icmp slt i32 %235, 6
  br i1 %cmp.not.i438, label %if.end.i442, label %for.end189.keyspan_load_tester.exit462_crit_edge

for.end189.keyspan_load_tester.exit462_crit_edge: ; preds = %for.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

if.end.i442:                                      ; preds = %for.end189
  %236 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %pos.i385, align 4
  %238 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %len76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %239)
  %cmp3.not.i441 = icmp slt i32 %237, %239
  br i1 %cmp3.not.i441, label %while.cond.preheader.i445, label %do.body.i446

while.cond.preheader.i445:                        ; preds = %if.end.i442
  %add47.i443 = add nsw i32 %235, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add47.i443)
  %cmp1748.i444 = icmp ult i32 %add47.i443, 32
  br i1 %cmp1748.i444, label %land.rhs.i451, label %while.cond.preheader.i445.keyspan_load_tester.exit462_crit_edge

while.cond.preheader.i445.keyspan_load_tester.exit462_crit_edge: ; preds = %while.cond.preheader.i445
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

do.body.i446:                                     ; preds = %if.end.i442
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_load_tester.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_check_data, %if.then7.i449)) #9
          to label %keyspan_load_tester.exit462 [label %if.then7.i449], !srcloc !95

if.then7.i449:                                    ; preds = %do.body.i446
  call void @__sanitizer_cov_trace_pc() #11
  %240 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %interface.i393, align 4
  %dev8.i448 = getelementptr inbounds %struct.usb_interface, ptr %241, i32 0, i32 7
  %242 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %pos.i385, align 4
  %244 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %len76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_load_tester.__UNIQUE_ID_ddebug234, ptr noundef %dev8.i448, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %243, i32 noundef %245) #9
  br label %keyspan_load_tester.exit462

land.rhs.i451:                                    ; preds = %while.cond.preheader.i445
  %246 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %239)
  %cmp22.i450 = icmp slt i32 %247, %239
  br i1 %cmp22.i450, label %while.body.i460, label %land.rhs.i451.keyspan_load_tester.exit462_crit_edge

land.rhs.i451.keyspan_load_tester.exit462_crit_edge: ; preds = %land.rhs.i451
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

while.body.i460:                                  ; preds = %land.rhs.i451
  %inc.i452 = add nsw i32 %247, 1
  %248 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %inc.i452, ptr %pos.i385, align 4
  %arrayidx.i453 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %247
  %249 = ptrtoint ptr %arrayidx.i453 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx.i453, align 1
  %conv.i454 = zext i8 %250 to i32
  %shl.i455 = shl nuw i32 %conv.i454, %235
  %251 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %data72, align 4
  %add29.i456 = add i32 %shl.i455, %252
  store i32 %add29.i456, ptr %data72, align 4
  %add32.i457 = add nsw i32 %235, 8
  %253 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %add32.i457, ptr %bits_left.i383, align 4
  %add.i458 = add i32 %235, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i458)
  %cmp17.i459 = icmp ult i32 %add.i458, 32
  br i1 %cmp17.i459, label %land.rhs.i451.1, label %while.body.i460.keyspan_load_tester.exit462_crit_edge

while.body.i460.keyspan_load_tester.exit462_crit_edge: ; preds = %while.body.i460
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

land.rhs.i451.1:                                  ; preds = %while.body.i460
  %254 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %239)
  %cmp22.i450.1 = icmp slt i32 %255, %239
  br i1 %cmp22.i450.1, label %while.body.i460.1, label %land.rhs.i451.1.keyspan_load_tester.exit462_crit_edge

land.rhs.i451.1.keyspan_load_tester.exit462_crit_edge: ; preds = %land.rhs.i451.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

while.body.i460.1:                                ; preds = %land.rhs.i451.1
  %inc.i452.1 = add nsw i32 %255, 1
  %256 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %inc.i452.1, ptr %pos.i385, align 4
  %arrayidx.i453.1 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %255
  %257 = ptrtoint ptr %arrayidx.i453.1 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx.i453.1, align 1
  %conv.i454.1 = zext i8 %258 to i32
  %shl.i455.1 = shl nuw i32 %conv.i454.1, %add32.i457
  %259 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %data72, align 4
  %add29.i456.1 = add i32 %shl.i455.1, %260
  store i32 %add29.i456.1, ptr %data72, align 4
  %add32.i457.1 = add nsw i32 %235, 16
  %261 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %add32.i457.1, ptr %bits_left.i383, align 4
  %add.i458.1 = add i32 %235, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i458.1)
  %cmp17.i459.1 = icmp ult i32 %add.i458.1, 32
  br i1 %cmp17.i459.1, label %land.rhs.i451.2, label %while.body.i460.1.keyspan_load_tester.exit462_crit_edge

while.body.i460.1.keyspan_load_tester.exit462_crit_edge: ; preds = %while.body.i460.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

land.rhs.i451.2:                                  ; preds = %while.body.i460.1
  %262 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %239)
  %cmp22.i450.2 = icmp slt i32 %263, %239
  br i1 %cmp22.i450.2, label %while.body.i460.2, label %land.rhs.i451.2.keyspan_load_tester.exit462_crit_edge

land.rhs.i451.2.keyspan_load_tester.exit462_crit_edge: ; preds = %land.rhs.i451.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

while.body.i460.2:                                ; preds = %land.rhs.i451.2
  %inc.i452.2 = add nsw i32 %263, 1
  %264 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %inc.i452.2, ptr %pos.i385, align 4
  %arrayidx.i453.2 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %263
  %265 = ptrtoint ptr %arrayidx.i453.2 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx.i453.2, align 1
  %conv.i454.2 = zext i8 %266 to i32
  %shl.i455.2 = shl nuw i32 %conv.i454.2, %add32.i457.1
  %267 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %data72, align 4
  %add29.i456.2 = add i32 %shl.i455.2, %268
  store i32 %add29.i456.2, ptr %data72, align 4
  %add32.i457.2 = add nsw i32 %235, 24
  %269 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %add32.i457.2, ptr %bits_left.i383, align 4
  %add.i458.2 = add i32 %235, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i458.2)
  %cmp17.i459.2 = icmp ult i32 %add.i458.2, 32
  br i1 %cmp17.i459.2, label %land.rhs.i451.3, label %while.body.i460.2.keyspan_load_tester.exit462_crit_edge

while.body.i460.2.keyspan_load_tester.exit462_crit_edge: ; preds = %while.body.i460.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

land.rhs.i451.3:                                  ; preds = %while.body.i460.2
  %270 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %271, i32 %239)
  %cmp22.i450.3 = icmp slt i32 %271, %239
  br i1 %cmp22.i450.3, label %while.body.i460.3, label %land.rhs.i451.3.keyspan_load_tester.exit462_crit_edge

land.rhs.i451.3.keyspan_load_tester.exit462_crit_edge: ; preds = %land.rhs.i451.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

while.body.i460.3:                                ; preds = %land.rhs.i451.3
  %inc.i452.3 = add nsw i32 %271, 1
  %272 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %inc.i452.3, ptr %pos.i385, align 4
  %arrayidx.i453.3 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %271
  %273 = ptrtoint ptr %arrayidx.i453.3 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx.i453.3, align 1
  %conv.i454.3 = zext i8 %274 to i32
  %shl.i455.3 = shl nuw i32 %conv.i454.3, %add32.i457.2
  %275 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %data72, align 4
  %add29.i456.3 = add i32 %shl.i455.3, %276
  store i32 %add29.i456.3, ptr %data72, align 4
  %add32.i457.3 = add nsw i32 %235, 32
  %277 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %add32.i457.3, ptr %bits_left.i383, align 4
  %add.i458.3 = add i32 %235, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i458.3)
  %cmp17.i459.3 = icmp ult i32 %add.i458.3, 32
  br i1 %cmp17.i459.3, label %land.rhs.i451.4, label %while.body.i460.3.keyspan_load_tester.exit462_crit_edge

while.body.i460.3.keyspan_load_tester.exit462_crit_edge: ; preds = %while.body.i460.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

land.rhs.i451.4:                                  ; preds = %while.body.i460.3
  %278 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %239)
  %cmp22.i450.4 = icmp slt i32 %279, %239
  br i1 %cmp22.i450.4, label %while.body.i460.4, label %land.rhs.i451.4.keyspan_load_tester.exit462_crit_edge

land.rhs.i451.4.keyspan_load_tester.exit462_crit_edge: ; preds = %land.rhs.i451.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit462

while.body.i460.4:                                ; preds = %land.rhs.i451.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i452.4 = add nsw i32 %279, 1
  %280 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %inc.i452.4, ptr %pos.i385, align 4
  %arrayidx.i453.4 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %279
  %281 = ptrtoint ptr %arrayidx.i453.4 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx.i453.4, align 1
  %conv.i454.4 = zext i8 %282 to i32
  %shl.i455.4 = shl nuw i32 %conv.i454.4, %add32.i457.3
  %283 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %data72, align 4
  %add29.i456.4 = add i32 %shl.i455.4, %284
  store i32 %add29.i456.4, ptr %data72, align 4
  %add32.i457.4 = add nsw i32 %235, 40
  %285 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %add32.i457.4, ptr %bits_left.i383, align 4
  br label %keyspan_load_tester.exit462

keyspan_load_tester.exit462:                      ; preds = %while.body.i460.4, %land.rhs.i451.4.keyspan_load_tester.exit462_crit_edge, %while.body.i460.3.keyspan_load_tester.exit462_crit_edge, %land.rhs.i451.3.keyspan_load_tester.exit462_crit_edge, %while.body.i460.2.keyspan_load_tester.exit462_crit_edge, %land.rhs.i451.2.keyspan_load_tester.exit462_crit_edge, %while.body.i460.1.keyspan_load_tester.exit462_crit_edge, %land.rhs.i451.1.keyspan_load_tester.exit462_crit_edge, %while.body.i460.keyspan_load_tester.exit462_crit_edge, %land.rhs.i451.keyspan_load_tester.exit462_crit_edge, %if.then7.i449, %do.body.i446, %while.cond.preheader.i445.keyspan_load_tester.exit462_crit_edge, %for.end189.keyspan_load_tester.exit462_crit_edge
  %286 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %data72, align 4
  %and193 = and i32 %287, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and193)
  %cmp194 = icmp eq i32 %and193, 24
  br i1 %cmp194, label %keyspan_load_tester.exit462.if.end229_crit_edge, label %if.else205

keyspan_load_tester.exit462.if.end229_crit_edge:  ; preds = %keyspan_load_tester.exit462
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

if.else205:                                       ; preds = %keyspan_load_tester.exit462
  %and208 = and i32 %287, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and208)
  %cmp209 = icmp eq i32 %and208, 60
  br i1 %cmp209, label %if.else205.if.end229_crit_edge, label %do.end224

if.else205.if.end229_crit_edge:                   ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

do.end224:                                        ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #11
  %288 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %interface.i393, align 4
  %dev226 = getelementptr inbounds %struct.usb_interface, ptr %289, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev226, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20) #13
  %290 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 0, ptr %stage, align 4
  br label %cleanup

if.end229:                                        ; preds = %if.else205.if.end229_crit_edge, %keyspan_load_tester.exit462.if.end229_crit_edge
  %.sink520 = phi i32 [ 5, %keyspan_load_tester.exit462.if.end229_crit_edge ], [ 6, %if.else205.if.end229_crit_edge ]
  %.sink519 = phi i32 [ -5, %keyspan_load_tester.exit462.if.end229_crit_edge ], [ -6, %if.else205.if.end229_crit_edge ]
  %message.sroa.18.0 = phi i32 [ 0, %keyspan_load_tester.exit462.if.end229_crit_edge ], [ 1, %if.else205.if.end229_crit_edge ]
  %shr215 = lshr i32 %287, %.sink520
  %291 = ptrtoint ptr %data72 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %shr215, ptr %data72, align 4
  %292 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %bits_left.i383, align 4
  %sub220 = add i32 %293, %.sink519
  store i32 %sub220, ptr %bits_left.i383, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub220)
  %cmp.not.i465 = icmp slt i32 %sub220, 5
  br i1 %cmp.not.i465, label %if.end.i469, label %if.end229.keyspan_load_tester.exit489_crit_edge

if.end229.keyspan_load_tester.exit489_crit_edge:  ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

if.end.i469:                                      ; preds = %if.end229
  %294 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %pos.i385, align 4
  %296 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %len76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %295, i32 %297)
  %cmp3.not.i468 = icmp slt i32 %295, %297
  br i1 %cmp3.not.i468, label %while.cond.preheader.i472, label %do.body.i473

while.cond.preheader.i472:                        ; preds = %if.end.i469
  %add47.i470 = add nsw i32 %sub220, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add47.i470)
  %cmp1748.i471 = icmp ult i32 %add47.i470, 32
  br i1 %cmp1748.i471, label %land.rhs.i478, label %while.cond.preheader.i472.keyspan_load_tester.exit489_crit_edge

while.cond.preheader.i472.keyspan_load_tester.exit489_crit_edge: ; preds = %while.cond.preheader.i472
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

do.body.i473:                                     ; preds = %if.end.i469
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_load_tester.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_check_data, %if.then7.i476)) #9
          to label %keyspan_load_tester.exit489 [label %if.then7.i476], !srcloc !95

if.then7.i476:                                    ; preds = %do.body.i473
  call void @__sanitizer_cov_trace_pc() #11
  %298 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %interface.i393, align 4
  %dev8.i475 = getelementptr inbounds %struct.usb_interface, ptr %299, i32 0, i32 7
  %300 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %pos.i385, align 4
  %302 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %len76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_load_tester.__UNIQUE_ID_ddebug234, ptr noundef %dev8.i475, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %301, i32 noundef %303) #9
  br label %keyspan_load_tester.exit489

land.rhs.i478:                                    ; preds = %while.cond.preheader.i472
  %304 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %305, i32 %297)
  %cmp22.i477 = icmp slt i32 %305, %297
  br i1 %cmp22.i477, label %while.body.i487, label %land.rhs.i478.keyspan_load_tester.exit489_crit_edge

land.rhs.i478.keyspan_load_tester.exit489_crit_edge: ; preds = %land.rhs.i478
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

while.body.i487:                                  ; preds = %land.rhs.i478
  %inc.i479 = add nsw i32 %305, 1
  %306 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %inc.i479, ptr %pos.i385, align 4
  %arrayidx.i480 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %305
  %307 = ptrtoint ptr %arrayidx.i480 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx.i480, align 1
  %conv.i481 = zext i8 %308 to i32
  %shl.i482 = shl nuw i32 %conv.i481, %sub220
  %309 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %data72, align 4
  %add29.i483 = add i32 %shl.i482, %310
  store i32 %add29.i483, ptr %data72, align 4
  %add32.i484 = add nsw i32 %sub220, 8
  %311 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %add32.i484, ptr %bits_left.i383, align 4
  %add.i485 = add i32 %sub220, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i485)
  %cmp17.i486 = icmp ult i32 %add.i485, 32
  br i1 %cmp17.i486, label %land.rhs.i478.1, label %while.body.i487.keyspan_load_tester.exit489_crit_edge

while.body.i487.keyspan_load_tester.exit489_crit_edge: ; preds = %while.body.i487
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

land.rhs.i478.1:                                  ; preds = %while.body.i487
  %312 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %313, i32 %297)
  %cmp22.i477.1 = icmp slt i32 %313, %297
  br i1 %cmp22.i477.1, label %while.body.i487.1, label %land.rhs.i478.1.keyspan_load_tester.exit489_crit_edge

land.rhs.i478.1.keyspan_load_tester.exit489_crit_edge: ; preds = %land.rhs.i478.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

while.body.i487.1:                                ; preds = %land.rhs.i478.1
  %inc.i479.1 = add nsw i32 %313, 1
  %314 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %inc.i479.1, ptr %pos.i385, align 4
  %arrayidx.i480.1 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %313
  %315 = ptrtoint ptr %arrayidx.i480.1 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx.i480.1, align 1
  %conv.i481.1 = zext i8 %316 to i32
  %shl.i482.1 = shl nuw i32 %conv.i481.1, %add32.i484
  %317 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %data72, align 4
  %add29.i483.1 = add i32 %shl.i482.1, %318
  store i32 %add29.i483.1, ptr %data72, align 4
  %add32.i484.1 = add nsw i32 %sub220, 16
  %319 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %add32.i484.1, ptr %bits_left.i383, align 4
  %add.i485.1 = add i32 %sub220, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i485.1)
  %cmp17.i486.1 = icmp ult i32 %add.i485.1, 32
  br i1 %cmp17.i486.1, label %land.rhs.i478.2, label %while.body.i487.1.keyspan_load_tester.exit489_crit_edge

while.body.i487.1.keyspan_load_tester.exit489_crit_edge: ; preds = %while.body.i487.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

land.rhs.i478.2:                                  ; preds = %while.body.i487.1
  %320 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %321, i32 %297)
  %cmp22.i477.2 = icmp slt i32 %321, %297
  br i1 %cmp22.i477.2, label %while.body.i487.2, label %land.rhs.i478.2.keyspan_load_tester.exit489_crit_edge

land.rhs.i478.2.keyspan_load_tester.exit489_crit_edge: ; preds = %land.rhs.i478.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

while.body.i487.2:                                ; preds = %land.rhs.i478.2
  %inc.i479.2 = add nsw i32 %321, 1
  %322 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %inc.i479.2, ptr %pos.i385, align 4
  %arrayidx.i480.2 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %321
  %323 = ptrtoint ptr %arrayidx.i480.2 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx.i480.2, align 1
  %conv.i481.2 = zext i8 %324 to i32
  %shl.i482.2 = shl nuw i32 %conv.i481.2, %add32.i484.1
  %325 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %data72, align 4
  %add29.i483.2 = add i32 %shl.i482.2, %326
  store i32 %add29.i483.2, ptr %data72, align 4
  %add32.i484.2 = add nsw i32 %sub220, 24
  %327 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %add32.i484.2, ptr %bits_left.i383, align 4
  %add.i485.2 = add i32 %sub220, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i485.2)
  %cmp17.i486.2 = icmp ult i32 %add.i485.2, 32
  br i1 %cmp17.i486.2, label %land.rhs.i478.3, label %while.body.i487.2.keyspan_load_tester.exit489_crit_edge

while.body.i487.2.keyspan_load_tester.exit489_crit_edge: ; preds = %while.body.i487.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

land.rhs.i478.3:                                  ; preds = %while.body.i487.2
  %328 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %329, i32 %297)
  %cmp22.i477.3 = icmp slt i32 %329, %297
  br i1 %cmp22.i477.3, label %while.body.i487.3, label %land.rhs.i478.3.keyspan_load_tester.exit489_crit_edge

land.rhs.i478.3.keyspan_load_tester.exit489_crit_edge: ; preds = %land.rhs.i478.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

while.body.i487.3:                                ; preds = %land.rhs.i478.3
  %inc.i479.3 = add nsw i32 %329, 1
  %330 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %inc.i479.3, ptr %pos.i385, align 4
  %arrayidx.i480.3 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %329
  %331 = ptrtoint ptr %arrayidx.i480.3 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx.i480.3, align 1
  %conv.i481.3 = zext i8 %332 to i32
  %shl.i482.3 = shl nuw i32 %conv.i481.3, %add32.i484.2
  %333 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %data72, align 4
  %add29.i483.3 = add i32 %shl.i482.3, %334
  store i32 %add29.i483.3, ptr %data72, align 4
  %add32.i484.3 = add nsw i32 %sub220, 32
  %335 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %add32.i484.3, ptr %bits_left.i383, align 4
  %add.i485.3 = add i32 %sub220, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i485.3)
  %cmp17.i486.3 = icmp ult i32 %add.i485.3, 32
  br i1 %cmp17.i486.3, label %land.rhs.i478.4, label %while.body.i487.3.keyspan_load_tester.exit489_crit_edge

while.body.i487.3.keyspan_load_tester.exit489_crit_edge: ; preds = %while.body.i487.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

land.rhs.i478.4:                                  ; preds = %while.body.i487.3
  %336 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %pos.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %337, i32 %297)
  %cmp22.i477.4 = icmp slt i32 %337, %297
  br i1 %cmp22.i477.4, label %while.body.i487.4, label %land.rhs.i478.4.keyspan_load_tester.exit489_crit_edge

land.rhs.i478.4.keyspan_load_tester.exit489_crit_edge: ; preds = %land.rhs.i478.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %keyspan_load_tester.exit489

while.body.i487.4:                                ; preds = %land.rhs.i478.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i479.4 = add nsw i32 %337, 1
  %338 = ptrtoint ptr %pos.i385 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %inc.i479.4, ptr %pos.i385, align 4
  %arrayidx.i480.4 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 11, i32 4, i32 %337
  %339 = ptrtoint ptr %arrayidx.i480.4 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx.i480.4, align 1
  %conv.i481.4 = zext i8 %340 to i32
  %shl.i482.4 = shl nuw i32 %conv.i481.4, %add32.i484.3
  %341 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %data72, align 4
  %add29.i483.4 = add i32 %shl.i482.4, %342
  store i32 %add29.i483.4, ptr %data72, align 4
  %add32.i484.4 = add nsw i32 %sub220, 40
  %343 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %add32.i484.4, ptr %bits_left.i383, align 4
  br label %keyspan_load_tester.exit489

keyspan_load_tester.exit489:                      ; preds = %while.body.i487.4, %land.rhs.i478.4.keyspan_load_tester.exit489_crit_edge, %while.body.i487.3.keyspan_load_tester.exit489_crit_edge, %land.rhs.i478.3.keyspan_load_tester.exit489_crit_edge, %while.body.i487.2.keyspan_load_tester.exit489_crit_edge, %land.rhs.i478.2.keyspan_load_tester.exit489_crit_edge, %while.body.i487.1.keyspan_load_tester.exit489_crit_edge, %land.rhs.i478.1.keyspan_load_tester.exit489_crit_edge, %while.body.i487.keyspan_load_tester.exit489_crit_edge, %land.rhs.i478.keyspan_load_tester.exit489_crit_edge, %if.then7.i476, %do.body.i473, %while.cond.preheader.i472.keyspan_load_tester.exit489_crit_edge, %if.end229.keyspan_load_tester.exit489_crit_edge
  %344 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %data72, align 4
  %and233 = and i32 %345, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %cmp234 = icmp eq i32 %and233, 0
  br i1 %cmp234, label %if.then236, label %do.end248

if.then236:                                       ; preds = %keyspan_load_tester.exit489
  call void @__sanitizer_cov_trace_pc() #11
  %shr239 = lshr i32 %345, 5
  %346 = ptrtoint ptr %data72 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %shr239, ptr %data72, align 4
  %347 = ptrtoint ptr %bits_left.i383 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %bits_left.i383, align 4
  %sub244 = add i32 %348, -5
  store i32 %sub244, ptr %bits_left.i383, align 4
  br label %do.body252

do.end248:                                        ; preds = %keyspan_load_tester.exit489
  call void @__sanitizer_cov_trace_pc() #11
  %349 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %interface.i393, align 4
  %dev250 = getelementptr inbounds %struct.usb_interface, ptr %350, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev250, ptr noundef nonnull @.str.28) #13
  br label %do.body252

do.body252:                                       ; preds = %do.end248, %if.then236
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_check_data.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_check_data, %if.then258)) #9
          to label %do.end269 [label %if.then258], !srcloc !95

if.then258:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #11
  %351 = ptrtoint ptr %interface.i393 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %interface.i393, align 4
  %dev260 = getelementptr inbounds %struct.usb_interface, ptr %352, i32 0, i32 7
  %conv262 = zext i16 %message.sroa.0.1 to i32
  %conv264 = zext i8 %message.sroa.9.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_check_data.__UNIQUE_ID_ddebug235, ptr noundef %dev260, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.20, i32 noundef %conv262, i32 noundef %conv264, i32 noundef %message.sroa.18.0) #9
  br label %do.end269

do.end269:                                        ; preds = %if.then258, %do.body252
  %toggle272 = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 13
  %353 = ptrtoint ptr %toggle272 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %toggle272, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %message.sroa.18.0, i32 %354)
  %cmp273.not = icmp eq i32 %message.sroa.18.0, %354
  br i1 %cmp273.not, label %do.end269.if.end283_crit_edge, label %if.then275

do.end269.if.end283_crit_edge:                    ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283

if.then275:                                       ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #11
  %conv277 = zext i8 %message.sroa.9.1 to i32
  %input1.i = getelementptr inbounds %struct.usb_keyspan, ptr %remote, i32 0, i32 4
  %355 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %input1.i, align 4
  tail call void @input_event(ptr noundef %356, i32 noundef 4, i32 noundef 4, i32 noundef %conv277) #9
  %arrayidx.i490 = getelementptr %struct.usb_keyspan, ptr %remote, i32 0, i32 2, i32 %conv277
  %357 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %arrayidx.i490, align 2
  %conv.i491 = zext i16 %358 to i32
  tail call void @input_event(ptr noundef %356, i32 noundef 1, i32 noundef %conv.i491, i32 noundef 1) #9
  tail call void @input_event(ptr noundef %356, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %359 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %input1.i, align 4
  tail call void @input_event(ptr noundef %360, i32 noundef 4, i32 noundef 4, i32 noundef %conv277) #9
  %361 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %arrayidx.i490, align 2
  %conv.i494 = zext i16 %362 to i32
  tail call void @input_event(ptr noundef %360, i32 noundef 1, i32 noundef %conv.i494, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %360, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %363 = ptrtoint ptr %toggle272 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %message.sroa.18.0, ptr %toggle272, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then275, %do.end269.if.end283_crit_edge
  %364 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %stage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end283, %do.end224, %do.end181, %do.end, %if.else68, %if.then64, %if.then38, %if.then.critedge, %for.cond.6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

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

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/keyspan_remote.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype232, !1, !"__UNIQUE_ID_debugtype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug233, !4, !"__UNIQUE_ID_debug233", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/keyspan_remote.c", i32 20, i32 1}
!5 = !{ptr @__initcall__kmod_keyspan_remote__240_585_keyspan_driver_init6, !6, !"__initcall__kmod_keyspan_remote__240_585_keyspan_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/keyspan_remote.c", i32 585, i32 1}
!7 = !{ptr @__exitcall_keyspan_driver_exit, !6, !"__exitcall_keyspan_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author241, !9, !"__UNIQUE_ID_author241", i1 false, i1 false}
!9 = !{!"../drivers/input/misc/keyspan_remote.c", i32 588, i32 1}
!10 = !{ptr @__UNIQUE_ID_description242, !11, !"__UNIQUE_ID_description242", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/keyspan_remote.c", i32 589, i32 1}
!12 = !{ptr @__UNIQUE_ID_file243, !13, !"__UNIQUE_ID_file243", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/keyspan_remote.c", i32 590, i32 1}
!14 = !{ptr @__UNIQUE_ID_license244, !13, !"__UNIQUE_ID_license244", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/input/misc/keyspan_remote.c", i32 18, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @keyspan_driver, !20, !"keyspan_driver", i1 false, i1 false}
!20 = !{!"../drivers/input/misc/keyspan_remote.c", i32 577, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/keyspan_remote.c", i32 492, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/misc/keyspan_remote.c", i32 498, i32 5}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/keyspan_remote.c", i32 503, i32 24}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/keyspan_remote.c", i32 342, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @keyspan_setup.__UNIQUE_ID_ddebug236, !28, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/keyspan_remote.c", i32 351, i32 3}
!34 = !{ptr @keyspan_setup.__UNIQUE_ID_ddebug237, !33, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/keyspan_remote.c", i32 360, i32 3}
!37 = !{ptr @keyspan_setup.__UNIQUE_ID_ddebug238, !36, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/keyspan_remote.c", i32 365, i32 2}
!40 = !{ptr @keyspan_setup.__UNIQUE_ID_ddebug239, !39, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/usb.h", i32 912, i32 31}
!43 = !{ptr @keyspan_key_table, !44, !"keyspan_key_table", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/keyspan_remote.c", i32 44, i32 29}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/keyspan_remote.c", i32 400, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @keyspan_irq_recv._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @keyspan_irq_recv._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/keyspan_remote.c", i32 132, i32 30}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/keyspan_remote.c", i32 134, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @keyspan_print._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @keyspan_print._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/keyspan_remote.c", i32 261, i32 5}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @keyspan_check_data._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @keyspan_check_data._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/misc/keyspan_remote.c", i32 282, i32 5}
!67 = !{ptr @keyspan_check_data._entry.21, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @keyspan_check_data._entry_ptr.23, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/keyspan_remote.c", i32 300, i32 4}
!71 = !{ptr @keyspan_check_data._entry.24, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @keyspan_check_data._entry_ptr.26, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/keyspan_remote.c", i32 312, i32 4}
!75 = !{ptr @keyspan_check_data._entry.27, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @keyspan_check_data._entry_ptr.29, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/misc/keyspan_remote.c", i32 316, i32 3}
!79 = !{ptr @keyspan_check_data.__UNIQUE_ID_ddebug235, !78, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/misc/keyspan_remote.c", i32 151, i32 3}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @keyspan_load_tester.__UNIQUE_ID_ddebug234, !81, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!84 = !{ptr @keyspan_table, !85, !"keyspan_table", i1 false, i1 false}
!85 = !{!"../drivers/input/misc/keyspan_remote.c", i32 80, i32 35}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148704963, i64 2148704968, i64 2148704981, i64 2148705025, i64 2148705059, i64 2148705080}
