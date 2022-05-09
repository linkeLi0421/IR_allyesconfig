; ModuleID = '/llk/IR_all_yes/drivers/input/misc/powermate.c_pt.bc'
source_filename = "../drivers/input/misc/powermate.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.powermate_device = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_powermate__234_452_powermate_driver_init6 = internal global ptr @powermate_driver_init, section ".initcall6.init", align 4
@powermate_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @powermate_probe, ptr @powermate_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @powermate_devices, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_powermate_driver_exit = internal global ptr @powermate_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [38 x i8] c"powermate.author=William R Sowerbutts\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [63 x i8] c"powermate.description=Griffin Technology, Inc PowerMate driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [44 x i8] c"powermate.file=drivers/input/misc/powermate\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"powermate.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powermate\00", [22 x i8] zeroinitializer }, align 32
@powermate_devices = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1917, i16 1040, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1917, i16 1194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1523, i16 576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@powermate_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pm->lock\00", [22 x i8] zeroinitializer }, align 32
@pm_name_powermate = internal global { [18 x i8], [46 x i8] } { [18 x i8] c"Griffin PowerMate\00", [46 x i8] zeroinitializer }, align 32
@pm_name_soundknob = internal global { [18 x i8], [46 x i8] } { [18 x i8] c"Griffin SoundKnob\00", [46 x i8] zeroinitializer }, align 32
@powermate_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014powermate: unknown product id %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"powermate_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/misc/powermate.c\00", [33 x i8] zeroinitializer }, align 32
@powermate_probe._entry_ptr = internal global ptr @powermate_probe._entry, section ".printk_index", align 4
@powermate_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014powermate: Expected payload of %d--%d bytes, found %d bytes!\0A\00", [32 x i8] zeroinitializer }, align 32
@powermate_probe._entry_ptr.8 = internal global ptr @powermate_probe._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@powermate_irq.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"powermate_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@powermate_irq.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.5, ptr @.str.13, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@powermate_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.5, i32 118, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - usb_submit_urb failed with result: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@powermate_irq._entry_ptr = internal global ptr @powermate_irq._entry, section ".printk_index", align 4
@powermate_sync_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013powermate: unknown update required\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"powermate_sync_state\00", [43 x i8] zeroinitializer }, align 32
@powermate_sync_state._entry_ptr = internal global ptr @powermate_sync_state._entry, section ".printk_index", align 4
@powermate_sync_state._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013powermate: usb_submit_urb(config) failed\00", [53 x i8] zeroinitializer }, align 32
@powermate_sync_state._entry_ptr.21 = internal global ptr @powermate_sync_state._entry.19, section ".printk_index", align 4
@powermate_config_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013powermate: config urb returned %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"powermate_config_complete\00", [38 x i8] zeroinitializer }, align 32
@powermate_config_complete._entry_ptr = internal global ptr @powermate_config_complete._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1040, i64 1194]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"powermate_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 445, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 452, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"powermate_devices\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 436, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 344, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 346, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"pm_name_powermate\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 80, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"pm_name_soundknob\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 81, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 357, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 380, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 912, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 100, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 104, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 117, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 174, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 190, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [34 x i8] c"../drivers/input/misc/powermate.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 200, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_powermate_driver_exit, ptr @__initcall__kmod_powermate__234_452_powermate_driver_init6, ptr @powermate_config_complete._entry, ptr @powermate_config_complete._entry_ptr, ptr @powermate_driver_exit, ptr @powermate_irq._entry, ptr @powermate_irq._entry_ptr, ptr @powermate_probe._entry, ptr @powermate_probe._entry.6, ptr @powermate_probe._entry_ptr, ptr @powermate_probe._entry_ptr.8, ptr @powermate_sync_state._entry, ptr @powermate_sync_state._entry.19, ptr @powermate_sync_state._entry_ptr, ptr @powermate_sync_state._entry_ptr.21, ptr @powermate_driver, ptr @.str, ptr @powermate_devices, ptr @.str.1, ptr @powermate_probe.__key, ptr @.str.2, ptr @pm_name_powermate, ptr @pm_name_soundknob, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_devices to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_name_powermate to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_name_soundknob to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_sync_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_sync_state._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powermate_config_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @powermate_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @powermate_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @powermate_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @powermate_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powermate_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint2, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.cleanup_crit_edge, label %if.end6

usb_endpoint_is_int_in.exit.cleanup_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %usb_endpoint_is_int_in.exit
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %14, 8
  %or = or i32 %shl.i, -2147483648
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceNumber, align 2
  %conv9 = zext i8 %16 to i16
  %call10 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 164) #11
  %call12 = tail call ptr @input_allocate_device() #8
  %tobool13.not = icmp eq ptr %call7.i.i, null
  %tobool14.not = icmp eq ptr %call12, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end6.fail1_crit_edge, label %if.end16

if.end6.fail1_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end16:                                         ; preds = %if.end6
  %data_dma.i = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 6, i32 noundef 3264, ptr noundef %data_dma.i) #8
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end16.fail2_crit_edge, label %if.end.i

if.end16.fail2_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end.i:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i171 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 8) #11
  %configcr.i = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %configcr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i171, ptr %configcr.i, align 8
  %tobool4.not.i = icmp eq ptr %call7.i.i171, null
  br i1 %tobool4.not.i, label %if.end.i.fail2_crit_edge, label %if.end20

if.end.i.fail2_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end20:                                         ; preds = %if.end.i
  %call21 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %irq = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call21, ptr %irq, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end20.fail2_crit_edge, label %if.end25

if.end20.fail2_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end25:                                         ; preds = %if.end20
  %call26 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %config = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26, ptr %config, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end25.fail3_crit_edge, label %if.end30

if.end25.fail3_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail3

if.end30:                                         ; preds = %if.end25
  %udev31 = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %udev31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %udev31, align 4
  %intf32 = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %intf32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %intf, ptr %intf32, align 8
  %input = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call12, ptr %input, align 4
  %phys = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 15
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i172 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef %29, ptr noundef %devpath.i) #8
  %call36 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.1, i32 noundef 64) #8
  %lock = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @powermate_probe.__key, i16 noundef signext 3) #8
  %idProduct = getelementptr i8, ptr %1, i32 938
  %30 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %idProduct, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i16 %32, label %sw.default [
    i16 1040, label %sw.bb
    i16 1194, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pm_name_powermate, ptr %call12, align 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pm_name_soundknob, ptr %call12, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pm_name_soundknob, ptr %call12, align 8
  %37 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %idProduct, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv47 = zext i16 %39 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv47) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb39, %sw.bb
  %phys51 = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 1
  %40 = ptrtoint ptr %phys51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %phys, ptr %phys51, align 4
  %id52 = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3
  %41 = ptrtoint ptr %id52 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 3, ptr %id52, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %42 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %idVendor.i, align 8
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #8
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %vendor.i, align 2
  %46 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %idProduct, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #8
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %50 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bcdDevice.i, align 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %version.i, align 2
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 40, i32 1
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 40, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %event = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 34
  %56 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @powermate_input_event, ptr %event, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 5
  %57 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 22, ptr %evbit, align 8
  %arrayidx55 = getelementptr %struct.input_dev, ptr %call12, i32 0, i32 6, i32 8
  %58 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %arrayidx55, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 7
  %59 = ptrtoint ptr %relbit to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %relbit, align 4
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 9
  %60 = ptrtoint ptr %mscbit to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %mscbit, align 8
  %61 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv58 = zext i8 %62 to i32
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i, align 8
  %shl.i173 = shl i32 %64, 8
  %shl1.i = shl nuw nsw i32 %conv58, 15
  %or.i = or i32 %shl.i173, %shl1.i
  %or61 = or i32 %or.i, 1073741952
  %65 = lshr i32 %or.i, 15
  %and.i = and i32 %65, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr.i, i32 0, i32 21, i32 %and.i
  %66 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %67, null
  br i1 %tobool59.not.i, label %sw.epilog.do.end73_crit_edge, label %usb_maxpacket.exit

sw.epilog.do.end73_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

usb_maxpacket.exit:                               ; preds = %sw.epilog
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %70 = and i16 %69, -249
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #8
  %conv64 = zext i16 %71 to i32
  %72 = add nsw i16 %71, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %72)
  %73 = icmp ult i16 %72, -4
  br i1 %73, label %usb_maxpacket.exit.do.end73_crit_edge, label %usb_maxpacket.exit.if.end76_crit_edge

usb_maxpacket.exit.if.end76_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

usb_maxpacket.exit.do.end73_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

do.end73:                                         ; preds = %usb_maxpacket.exit.do.end73_crit_edge, %sw.epilog.do.end73_crit_edge
  %conv64188 = phi i32 [ %conv64, %usb_maxpacket.exit.do.end73_crit_edge ], [ 0, %sw.epilog.do.end73_crit_edge ]
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 6, i32 noundef %conv64188) #12
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %usb_maxpacket.exit.if.end76_crit_edge
  %maxp.0 = phi i32 [ 6, %do.end73 ], [ %conv64, %usb_maxpacket.exit.if.end76_crit_edge ]
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %irq, align 8
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call7.i.i, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %78 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bInterval, align 1
  %conv78 = zext i8 %79 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 8
  %80 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 10
  %81 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or61, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 14
  %82 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %77, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 19
  %83 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %maxp.0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 28
  %84 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @powermate_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 27
  %85 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %86 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp.i = icmp eq i32 %87, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp6.i = icmp ugt i32 %87, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end76.usb_fill_int_urb.exit_crit_edge

if.end76.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %88 = tail call i32 @llvm.smax.i32(i32 %conv78, i32 1) #8
  %89 = tail call i32 @llvm.umin.i32(i32 %88, i32 16) #8
  %sub.i = add nsw i32 %89, -1
  %shl.i175 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end76.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i175, %if.then.i ], [ %conv78, %if.end76.usb_fill_int_urb.exit_crit_edge ]
  %90 = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 25
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %interval.sink.i, ptr %90, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 23
  %92 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %start_frame.i, align 4
  %93 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_dma.i, align 4
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %irq, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 15
  %97 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %94, ptr %transfer_dma, align 4
  %98 = load ptr, ptr %irq, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %transfer_flags, align 4
  %or81 = or i32 %100, 4
  store i32 %or81, ptr %transfer_flags, align 4
  %101 = load ptr, ptr %irq, align 8
  %call83 = tail call i32 @usb_submit_urb(ptr noundef %101, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %usb_fill_int_urb.exit.fail4_crit_edge

usb_fill_int_urb.exit.fail4_crit_edge:            ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail4

if.end86:                                         ; preds = %usb_fill_int_urb.exit
  %102 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %input, align 4
  %call88 = tail call i32 @input_register_device(ptr noundef %103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %fail5

if.end91:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %requires_update = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 14
  %104 = ptrtoint ptr %requires_update to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 15, ptr %requires_update, align 8
  tail call fastcc void @powermate_pulse_led(ptr noundef nonnull %call7.i.i, i32 noundef 128, i32 noundef 255, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %driver_data.i.i177 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %105 = ptrtoint ptr %driver_data.i.i177 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call7.i.i, ptr %driver_data.i.i177, align 4
  br label %cleanup

fail5:                                            ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %irq, align 8
  tail call void @usb_kill_urb(ptr noundef %107) #8
  br label %fail4

fail4:                                            ; preds = %fail5, %usb_fill_int_urb.exit.fail4_crit_edge
  %error.0 = phi i32 [ %call88, %fail5 ], [ -5, %usb_fill_int_urb.exit.fail4_crit_edge ]
  %108 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %config, align 4
  tail call void @usb_free_urb(ptr noundef %109) #8
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end25.fail3_crit_edge
  %error.1 = phi i32 [ %error.0, %fail4 ], [ -12, %if.end25.fail3_crit_edge ]
  %110 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %irq, align 8
  tail call void @usb_free_urb(ptr noundef %111) #8
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end20.fail2_crit_edge, %if.end.i.fail2_crit_edge, %if.end16.fail2_crit_edge
  %error.2 = phi i32 [ %error.1, %fail3 ], [ -12, %if.end20.fail2_crit_edge ], [ -12, %if.end16.fail2_crit_edge ], [ -12, %if.end.i.fail2_crit_edge ]
  %112 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call7.i.i, align 8
  %114 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %data_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 6, ptr noundef %113, i32 noundef %115) #8
  %configcr.i179 = getelementptr inbounds %struct.powermate_device, ptr %call7.i.i, i32 0, i32 4
  %116 = ptrtoint ptr %configcr.i179 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %configcr.i179, align 8
  tail call void @kfree(ptr noundef %117) #8
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end6.fail1_crit_edge
  %error.3 = phi i32 [ %error.2, %fail2 ], [ -12, %if.end6.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call12) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end91, %usb_endpoint_is_int_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %fail1 ], [ 0, %if.end91 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %usb_endpoint_is_int_in.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @powermate_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %requires_update = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %requires_update to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %requires_update, align 4
  %irq = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #8
  %input = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %6) #8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %8) #8
  %config = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  tail call void @usb_free_urb(ptr noundef %10) #8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 -128
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %data_dma.i = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 6, ptr noundef %14, i32 noundef %16) #8
  %configcr.i = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %configcr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %configcr.i, align 4
  tail call void @kfree(ptr noundef %18) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powermate_input_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %_value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp = icmp eq i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %code)
  %cmp1 = icmp eq i32 %code, 1
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %_value, 255
  %shr = lshr i32 %_value, 8
  %and2 = and i32 %shr, 511
  %shr3 = lshr i32 %_value, 17
  %and4 = and i32 %shr3, 3
  %shr5 = lshr i32 %_value, 19
  %and6 = and i32 %shr5, 1
  %shr7 = lshr i32 %_value, 20
  %and8 = and i32 %shr7, 1
  tail call fastcc void @powermate_pulse_led(ptr noundef %1, i32 noundef %and, i32 noundef %and2, i32 noundef %and4, i32 noundef %and6, i32 noundef %and8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @powermate_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %do.body5 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge54
    i32 -108, label %entry.do.body_crit_edge55
  ]

entry.do.body_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge54, %entry.do.body_crit_edge55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @powermate_irq.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powermate_irq, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !74

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @powermate_irq.__UNIQUE_ID_ddebug232, ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %8) #8
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @powermate_irq.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powermate_irq, %if.then17)) #8
          to label %exit [label %if.then17], !srcloc !74

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @powermate_irq.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %10) #8
  br label %exit

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %input = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i32
  tail call void @input_event(ptr noundef %12, i32 noundef 1, i32 noundef 256, i32 noundef %18) #8
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %arrayidx24 = getelementptr i8, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  tail call void @input_event(ptr noundef %20, i32 noundef 2, i32 noundef 7, i32 noundef %conv25) #8
  %25 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.then17, %do.body5
  %call27 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %exit.cleanup_crit_edge, label %do.end32

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end32:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %call27) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @powermate_pulse_led(ptr noundef %pm, i32 noundef %static_brightness, i32 noundef %pulse_speed, i32 noundef %pulse_table, i32 noundef %pulse_asleep, i32 noundef %pulse_awake) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smin.i32(i32 %pulse_speed, i32 510)
  %1 = tail call i32 @llvm.smin.i32(i32 %pulse_table, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pulse_asleep)
  %tobool = icmp ne i32 %pulse_asleep, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pulse_awake)
  %tobool11 = icmp ne i32 %pulse_awake, 0
  %lnot.ext15 = zext i1 %tobool11 to i32
  %lock = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 8
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %static_brightness21 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 9
  %2 = ptrtoint ptr %static_brightness21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %static_brightness21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %static_brightness)
  %cmp22.not = icmp eq i32 %3, %static_brightness
  br i1 %cmp22.not, label %entry.if.end26_crit_edge, label %if.then24

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %static_brightness21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %static_brightness, ptr %static_brightness21, align 4
  %requires_update = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 14
  %5 = ptrtoint ptr %requires_update to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %requires_update, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %requires_update, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %entry.if.end26_crit_edge
  %pulse_asleep27 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 12
  %7 = ptrtoint ptr %pulse_asleep27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pulse_asleep27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %lnot.ext)
  %cmp28.not = icmp eq i32 %8, %lnot.ext
  br i1 %cmp28.not, label %if.end26.if.end34_crit_edge, label %if.then30

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pulse_asleep27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lnot.ext, ptr %pulse_asleep27, align 4
  %requires_update32 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 14
  %10 = ptrtoint ptr %requires_update32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %requires_update32, align 4
  %or33 = or i32 %11, 3
  store i32 %or33, ptr %requires_update32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26.if.end34_crit_edge
  %pulse_awake35 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 13
  %12 = ptrtoint ptr %pulse_awake35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pulse_awake35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %lnot.ext15)
  %cmp36.not = icmp eq i32 %13, %lnot.ext15
  br i1 %cmp36.not, label %if.end34.if.end42_crit_edge, label %if.then38

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %pulse_awake35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %lnot.ext15, ptr %pulse_awake35, align 4
  %requires_update40 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 14
  %15 = ptrtoint ptr %requires_update40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %requires_update40, align 4
  %or41 = or i32 %16, 5
  store i32 %or41, ptr %requires_update40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end34.if.end42_crit_edge
  %pulse_speed43 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 10
  %17 = ptrtoint ptr %pulse_speed43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pulse_speed43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %18)
  %cmp44.not = icmp eq i32 %0, %18
  br i1 %cmp44.not, label %lor.lhs.false, label %if.end42.if.then49_crit_edge

if.end42.if.then49_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

lor.lhs.false:                                    ; preds = %if.end42
  %pulse_table46 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 11
  %19 = ptrtoint ptr %pulse_table46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pulse_table46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %20)
  %cmp47.not = icmp eq i32 %1, %20
  br i1 %cmp47.not, label %lor.lhs.false.if.end54_crit_edge, label %lor.lhs.false.if.then49_crit_edge

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %if.end42.if.then49_crit_edge
  %21 = ptrtoint ptr %pulse_speed43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %0, ptr %pulse_speed43, align 4
  %pulse_table51 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 11
  %22 = ptrtoint ptr %pulse_table51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %1, ptr %pulse_table51, align 4
  %requires_update52 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 14
  %23 = ptrtoint ptr %requires_update52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %requires_update52, align 4
  %or53 = or i32 %24, 8
  store i32 %or53, ptr %requires_update52, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %lor.lhs.false.if.end54_crit_edge
  tail call fastcc void @powermate_sync_state(ptr noundef %pm)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @powermate_sync_state(ptr noundef %pm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %requires_update = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 14
  %0 = ptrtoint ptr %requires_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requires_update, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end86_crit_edge, label %if.end

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %status = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %5)
  %cmp1 = icmp eq i32 %5, -115
  br i1 %cmp1, label %if.end.if.end86_crit_edge, label %if.end3

if.end.if.end86_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end3:                                          ; preds = %if.end
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %configcr = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 4
  %6 = ptrtoint ptr %configcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %configcr, align 4
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %wValue, align 1
  %pulse_asleep = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 12
  %9 = ptrtoint ptr %pulse_asleep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pulse_asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.not = icmp eq i32 %10, 0
  %11 = select i1 %tobool6.not.not, i16 0, i16 256
  br label %if.end69

if.else:                                          ; preds = %if.end3
  %and11 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else23, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %configcr14 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 4
  %12 = ptrtoint ptr %configcr14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %configcr14, align 4
  %wValue15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %wValue15 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 768, ptr %wValue15, align 1
  %pulse_awake = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 13
  %15 = ptrtoint ptr %pulse_awake to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pulse_awake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not.not = icmp eq i32 %16, 0
  %17 = select i1 %tobool16.not.not, i16 0, i16 256
  br label %if.end69

if.else23:                                        ; preds = %if.else
  %and25 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else52, label %if.then27

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  %pulse_speed = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 10
  %18 = ptrtoint ptr %pulse_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pulse_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp28 = icmp slt i32 %19, 255
  %sub = sub i32 255, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp34.not = icmp eq i32 %19, 255
  %sub38 = add i32 %19, 1
  %spec.select123 = select i1 %cmp34.not, i32 1, i32 2
  %arg.0 = select i1 %cmp28, i32 %sub, i32 %sub38
  %op.0 = select i1 %cmp28, i32 0, i32 %spec.select123
  %pulse_table = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 11
  %20 = ptrtoint ptr %pulse_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pulse_table, align 4
  %.tr = trunc i32 %21 to i16
  %22 = shl i16 %.tr, 8
  %conv42 = or i16 %22, 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv42)
  %configcr43 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 4
  %24 = ptrtoint ptr %configcr43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %configcr43, align 4
  %wValue44 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %wValue44 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %23, ptr %wValue44, align 1
  %shl45 = shl i32 %arg.0, 8
  %or46 = or i32 %shl45, %op.0
  %conv47 = trunc i32 %or46 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv47)
  br label %if.end69

if.else52:                                        ; preds = %if.else23
  %and54 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.end, label %if.then56

if.then56:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  %configcr57 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 4
  %28 = ptrtoint ptr %configcr57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %configcr57, align 4
  %wValue58 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %wValue58 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 256, ptr %wValue58, align 1
  %static_brightness = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 9
  %31 = ptrtoint ptr %static_brightness to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %static_brightness, align 4
  %conv59 = trunc i32 %32 to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv59)
  br label %if.end69

do.end:                                           ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  %34 = ptrtoint ptr %requires_update to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %requires_update, align 4
  br label %if.end86

if.end69:                                         ; preds = %if.then56, %if.then27, %if.then13, %if.then5
  %configcr14.sink = phi ptr [ %configcr14, %if.then13 ], [ %configcr57, %if.then56 ], [ %configcr43, %if.then27 ], [ %configcr, %if.then5 ]
  %.sink = phi i16 [ %17, %if.then13 ], [ %33, %if.then56 ], [ %27, %if.then27 ], [ %11, %if.then5 ]
  %.sink124 = phi i32 [ -5, %if.then13 ], [ -2, %if.then56 ], [ -9, %if.then27 ], [ -3, %if.then5 ]
  %35 = ptrtoint ptr %configcr14.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %configcr14.sink, align 4
  %wIndex20 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %wIndex20 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %.sink, ptr %wIndex20, align 1
  %38 = ptrtoint ptr %requires_update to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %requires_update, align 4
  %and22 = and i32 %39, %.sink124
  store i32 %and22, ptr %requires_update, align 4
  %configcr70 = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 4
  %40 = ptrtoint ptr %configcr70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %configcr70, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 65, ptr %41, align 1
  %43 = load ptr, ptr %configcr70, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %bRequest, align 1
  %45 = load ptr, ptr %configcr70, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 0, ptr %wLength, align 1
  %47 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config, align 4
  %udev = getelementptr inbounds %struct.powermate_device, ptr %pm, i32 0, i32 5
  %49 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i = shl i32 %52, 8
  %or76 = or i32 %shl.i, -2147483648
  %53 = load ptr, ptr %configcr70, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 8
  %54 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %50, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 10
  %55 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or76, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 21
  %56 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  %57 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 19
  %58 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 28
  %59 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @powermate_config_complete, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 27
  %60 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pm, ptr %context5.i, align 4
  %61 = load ptr, ptr %config, align 4
  %call79 = tail call i32 @usb_submit_urb(ptr noundef %61, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end69.if.end86_crit_edge, label %do.end83

if.end69.if.end86_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end83:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %if.end86

if.end86:                                         ; preds = %do.end83, %if.end69.if.end86_crit_edge, %do.end, %if.end.if.end86_crit_edge, %entry.if.end86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @powermate_config_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %3) #12
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.powermate_device, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call fastcc void @powermate_sync_state(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_powermate__234_452_powermate_driver_init6, !1, !"__initcall__kmod_powermate__234_452_powermate_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/powermate.c", i32 452, i32 1}
!2 = !{ptr @__exitcall_powermate_driver_exit, !1, !"__exitcall_powermate_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/powermate.c", i32 454, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/powermate.c", i32 455, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/powermate.c", i32 456, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @powermate_driver, !12, !"powermate_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/misc/powermate.c", i32 445, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/misc/powermate.c", i32 344, i32 20}
!15 = !{ptr @powermate_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/input/misc/powermate.c", i32 346, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/misc/powermate.c", i32 357, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @powermate_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @powermate_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/powermate.c", i32 380, i32 3}
!26 = !{ptr @powermate_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @powermate_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/usb.h", i32 912, i32 31}
!30 = !{ptr @pm_name_powermate, !31, !"pm_name_powermate", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/powermate.c", i32 80, i32 13}
!32 = !{ptr @pm_name_soundknob, !33, !"pm_name_soundknob", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/powermate.c", i32 81, i32 13}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/powermate.c", i32 100, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @powermate_irq.__UNIQUE_ID_ddebug232, !37, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/powermate.c", i32 104, i32 3}
!42 = !{ptr @powermate_irq.__UNIQUE_ID_ddebug233, !41, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/powermate.c", i32 117, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @powermate_irq._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @powermate_irq._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/misc/powermate.c", i32 174, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @powermate_sync_state._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @powermate_sync_state._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/powermate.c", i32 190, i32 3}
!56 = !{ptr @powermate_sync_state._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @powermate_sync_state._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/powermate.c", i32 200, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @powermate_config_complete._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @powermate_config_complete._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @powermate_devices, !64, !"powermate_devices", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/powermate.c", i32 436, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148704602, i64 2148704607, i64 2148704620, i64 2148704664, i64 2148704698, i64 2148704719}
