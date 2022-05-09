; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-thrustmaster.c_pt.bc'
source_filename = "../drivers/hid/hid-thrustmaster.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tm_wheel_info = type { i16, i16, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.tm_wheel = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tm_wheel_response = type { i16, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_hid_thrustmaster__232_383_thrustmaster_driver_init6 = internal global ptr @thrustmaster_driver_init, section ".initcall6.init", align 4
@thrustmaster_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @thrustmaster_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @thrustmaster_probe, ptr @thrustmaster_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_thrustmaster_driver_exit = internal global ptr @thrustmaster_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [73 x i8] c"hid_thrustmaster.author=Dario Pagani <dario.pagani.146+linuxk@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [51 x i8] c"hid_thrustmaster.file=drivers/hid/hid-thrustmaster\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [29 x i8] c"hid_thrustmaster.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [98 x i8] c"hid_thrustmaster.description=Driver to initialize some steering wheel joysticks from Thrustmaster\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hid_thrustmaster\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hid-thrustmaster\00", [47 x i8] zeroinitializer }, align 32
@thrustmaster_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46685, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@thrustmaster_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parse failed with error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"thrustmaster_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hid/hid-thrustmaster.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@thrustmaster_probe._entry_ptr = internal global ptr @thrustmaster_probe._entry, section ".printk_index", align 4
@thrustmaster_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hw start failed with error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@thrustmaster_probe._entry_ptr.9 = internal global ptr @thrustmaster_probe._entry.7, section ".printk_index", align 4
@model_request = internal constant { %struct.usb_ctrlrequest, [24 x i8] } { %struct.usb_ctrlrequest { i8 -63, i8 73, i16 0, i16 0, i16 4096 }, [24 x i8] zeroinitializer }, align 32
@change_request = internal constant { %struct.usb_ctrlrequest, [24 x i8] } { %struct.usb_ctrlrequest { i8 65, i8 83, i16 0, i16 0, i16 0 }, [24 x i8] zeroinitializer }, align 32
@thrustmaster_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Error %d while submitting the URB. I am unable to initialize this wheel...\0A\00", [52 x i8] zeroinitializer }, align 32
@thrustmaster_probe._entry_ptr.12 = internal global ptr @thrustmaster_probe._entry.10, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@thrustmaster_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed allocating send buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"thrustmaster_interrupts\00", [40 x i8] zeroinitializer }, align 32
@thrustmaster_interrupts._entry_ptr = internal global ptr @thrustmaster_interrupts._entry, section ".printk_index", align 4
@thrustmaster_interrupts._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wrong number of endpoints?\0A\00", [36 x i8] zeroinitializer }, align 32
@thrustmaster_interrupts._entry_ptr.17 = internal global ptr @thrustmaster_interrupts._entry.15, section ".printk_index", align 4
@thrustmaster_interrupts._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.4, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"setup data couldn't be sent\0A\00", [35 x i8] zeroinitializer }, align 32
@thrustmaster_interrupts._entry_ptr.20 = internal global ptr @thrustmaster_interrupts._entry.18, section ".printk_index", align 4
@setup_0 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"B\01\00\00\00\00\00\00\00", [23 x i8] zeroinitializer }, align 32
@thrustmaster_model_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"URB to get model id failed with error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"thrustmaster_model_handler\00", [37 x i8] zeroinitializer }, align 32
@thrustmaster_model_handler._entry_ptr = internal global ptr @thrustmaster_model_handler._entry, section ".printk_index", align 4
@thrustmaster_model_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Unknown packet type 0x%x, unable to proceed further with wheel init\0A\00", [59 x i8] zeroinitializer }, align 32
@thrustmaster_model_handler._entry_ptr.25 = internal global ptr @thrustmaster_model_handler._entry.23, section ".printk_index", align 4
@tm_wheels_infos = internal constant { [6 x %struct.tm_wheel_info], [48 x i8] } { [6 x %struct.tm_wheel_info] [%struct.tm_wheel_info { i16 774, i16 6, ptr @.str.36 }, %struct.tm_wheel_info { i16 512, i16 5, ptr @.str.37 }, %struct.tm_wheel_info { i16 518, i16 5, ptr @.str.38 }, %struct.tm_wheel_info { i16 521, i16 5, ptr @.str.39 }, %struct.tm_wheel_info { i16 516, i16 5, ptr @.str.40 }, %struct.tm_wheel_info { i16 2, i16 2, ptr @.str.41 }], [48 x i8] zeroinitializer }, align 32
@thrustmaster_model_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 237, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wheel with model id 0x%x is a %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@thrustmaster_model_handler._entry_ptr.29 = internal global ptr @thrustmaster_model_handler._entry.26, section ".printk_index", align 4
@thrustmaster_model_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.4, i32 239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Unknown wheel's model id 0x%x, unable to proceed further with wheel init\0A\00", [54 x i8] zeroinitializer }, align 32
@thrustmaster_model_handler._entry_ptr.32 = internal global ptr @thrustmaster_model_handler._entry.30, section ".printk_index", align 4
@thrustmaster_model_handler._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.22, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Error %d while submitting the change URB. I am unable to initialize this wheel...\0A\00", [45 x i8] zeroinitializer }, align 32
@thrustmaster_model_handler._entry_ptr.35 = internal global ptr @thrustmaster_model_handler._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Thrustmaster T150RS\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Thrustmaster T300RS (Missing Attachment)\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Thrustmaster T300RS\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Thrustmaster T300RS (Open Wheel Attachment)\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Thrustmaster T300 Ferrari Alcantara Edition\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Thrustmaster T500RS\00", [44 x i8] zeroinitializer }, align 32
@thrustmaster_change_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 198, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Success?! The wheel should have been initialized!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"thrustmaster_change_handler\00", [36 x i8] zeroinitializer }, align 32
@thrustmaster_change_handler._entry_ptr = internal global ptr @thrustmaster_change_handler._entry, section ".printk_index", align 4
@thrustmaster_change_handler._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 200, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"URB to change wheel mode seems to have failed with error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@thrustmaster_change_handler._entry_ptr.47 = internal global ptr @thrustmaster_change_handler._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 18176, i64 18688]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967225, i64 4294967264]
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"thrustmaster_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 376, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 383, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 377, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"thrustmaster_devices\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 369, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 290, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 296, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"model_request\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 128, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"change_request\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 136, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 353, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 159, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 165, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 183, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [8 x i8] c"setup_0\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 26, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 219, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 228, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"tm_wheels_infos\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 65, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 237, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 239, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 256, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 66, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 67, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 68, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 69, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 70, i32 19 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 71, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 198, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [34 x i8] c"../drivers/hid/hid-thrustmaster.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 200, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_thrustmaster_driver_exit, ptr @__initcall__kmod_hid_thrustmaster__232_383_thrustmaster_driver_init6, ptr @thrustmaster_change_handler._entry, ptr @thrustmaster_change_handler._entry.44, ptr @thrustmaster_change_handler._entry_ptr, ptr @thrustmaster_change_handler._entry_ptr.47, ptr @thrustmaster_driver_exit, ptr @thrustmaster_interrupts._entry, ptr @thrustmaster_interrupts._entry.15, ptr @thrustmaster_interrupts._entry.18, ptr @thrustmaster_interrupts._entry_ptr, ptr @thrustmaster_interrupts._entry_ptr.17, ptr @thrustmaster_interrupts._entry_ptr.20, ptr @thrustmaster_model_handler._entry, ptr @thrustmaster_model_handler._entry.23, ptr @thrustmaster_model_handler._entry.26, ptr @thrustmaster_model_handler._entry.30, ptr @thrustmaster_model_handler._entry.33, ptr @thrustmaster_model_handler._entry_ptr, ptr @thrustmaster_model_handler._entry_ptr.25, ptr @thrustmaster_model_handler._entry_ptr.29, ptr @thrustmaster_model_handler._entry_ptr.32, ptr @thrustmaster_model_handler._entry_ptr.35, ptr @thrustmaster_probe._entry, ptr @thrustmaster_probe._entry.10, ptr @thrustmaster_probe._entry.7, ptr @thrustmaster_probe._entry_ptr, ptr @thrustmaster_probe._entry_ptr.12, ptr @thrustmaster_probe._entry_ptr.9, ptr @thrustmaster_driver, ptr @.str, ptr @.str.1, ptr @thrustmaster_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @model_request, ptr @change_request, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @setup_0, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @tm_wheels_infos, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_request to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @change_request to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_interrupts._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_interrupts._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_0 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_model_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_model_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_wheels_infos to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_model_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_model_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_model_handler._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_change_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thrustmaster_change_handler._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @thrustmaster_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @thrustmaster_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @thrustmaster_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hid_unregister_driver(ptr noundef nonnull @thrustmaster_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thrustmaster_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %trans.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.8, i32 noundef %call4) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #11
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.error1_crit_edge, label %if.end15

if.end11.error1_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %error1

if.end15:                                         ; preds = %if.end11
  %call16 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #7
  %urb = getelementptr inbounds %struct.tm_wheel, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call16, ptr %urb, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end15.error2_crit_edge, label %if.end20

if.end15.error2_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %error2

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @kmemdup(ptr noundef nonnull @model_request, i32 noundef 8, i32 noundef 3264) #7
  %model_request = getelementptr inbounds %struct.tm_wheel, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %model_request to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call21, ptr %model_request, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end20.error3_crit_edge, label %if.end25

if.end20.error3_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %error3

if.end25:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i97 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #11
  %response = getelementptr inbounds %struct.tm_wheel, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i97, ptr %response, align 4
  %tobool28.not = icmp eq ptr %call7.i.i97, null
  br i1 %tobool28.not, label %if.end25.error4_crit_edge, label %if.end30

if.end25.error4_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %error4

if.end30:                                         ; preds = %if.end25
  %call31 = tail call ptr @kmemdup(ptr noundef nonnull @change_request, i32 noundef 8, i32 noundef 3264) #7
  %change_request = getelementptr inbounds %struct.tm_wheel, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %change_request to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call31, ptr %change_request, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end30.error5_crit_edge, label %if.end35

if.end30.error5_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %error5

if.end35:                                         ; preds = %if.end30
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -128
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trans.i) #7
  %14 = ptrtoint ptr %trans.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %trans.i, align 4, !annotation !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i98 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 256) #11
  %dev1.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %parent.i.i = getelementptr i8, ptr %17, i32 136
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -128
  %tobool.not.i = icmp eq ptr %call7.i.i98, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.13) #10
  br label %thrustmaster_interrupts.exit

if.end.i:                                         ; preds = %if.end35
  %cur_altsetting.i = getelementptr i8, ptr %17, i32 -28
  %20 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.i = icmp ult i8 %23, 2
  br i1 %cmp.i, label %if.then5.i, label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i98) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.16) #10
  br label %thrustmaster_interrupts.exit

if.end10.i:                                       ; preds = %if.end.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint.i, align 4
  %bEndpointAddress.i = getelementptr %struct.usb_host_endpoint, ptr %25, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress.i, align 2
  %conv13.i = zext i8 %27 to i32
  %shl1.i.i = shl nuw nsw i32 %conv13.i, 15
  %28 = call ptr @memcpy(ptr %call7.i.i98, ptr @setup_0, i32 9)
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %30, 8
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, 1073741824
  %call20.i = call i32 @usb_interrupt_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i, ptr noundef nonnull %call7.i.i98, i32 noundef 9, ptr noundef nonnull %trans.i, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %for.cond.i, label %if.end10.i.do.end25.i_crit_edge

if.end10.i.do.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

for.cond.i:                                       ; preds = %if.end10.i
  %31 = ptrtoint ptr %call7.i.i98 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 721860182845423616, ptr %call7.i.i98, align 8
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.1.i = shl i32 %33, 8
  %or.i.1.i = or i32 %shl1.i.i, %shl.i.1.i
  %or.1.i = or i32 %or.i.1.i, 1073741824
  %call20.1.i = call i32 @usb_interrupt_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.1.i, ptr noundef nonnull %call7.i.i98, i32 noundef 8, ptr noundef nonnull %trans.i, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1.i)
  %tobool21.not.1.i = icmp eq i32 %call20.1.i, 0
  br i1 %tobool21.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end25.i_crit_edge

for.cond.i.do.end25.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %34 = ptrtoint ptr %call7.i.i98 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 721701891825729536, ptr %call7.i.i98, align 8
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.2.i = shl i32 %36, 8
  %or.i.2.i = or i32 %shl1.i.i, %shl.i.2.i
  %or.2.i = or i32 %or.i.2.i, 1073741824
  %call20.2.i = call i32 @usb_interrupt_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.2.i, ptr noundef nonnull %call7.i.i98, i32 noundef 8, ptr noundef nonnull %trans.i, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2.i)
  %tobool21.not.2.i = icmp eq i32 %call20.2.i, 0
  br i1 %tobool21.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end25.i_crit_edge

for.cond.1.i.do.end25.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %37 = ptrtoint ptr %call7.i.i98 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 721721700214898688, ptr %call7.i.i98, align 8
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.3.i = shl i32 %39, 8
  %or.i.3.i = or i32 %shl1.i.i, %shl.i.3.i
  %or.3.i = or i32 %or.i.3.i, 1073741824
  %call20.3.i = call i32 @usb_interrupt_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.3.i, ptr noundef nonnull %call7.i.i98, i32 noundef 8, ptr noundef nonnull %trans.i, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.3.i)
  %tobool21.not.3.i = icmp eq i32 %call20.3.i, 0
  br i1 %tobool21.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.end25.i_crit_edge

for.cond.2.i.do.end25.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %40 = ptrtoint ptr %call7.i.i98 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 721701866055925760, ptr %call7.i.i98, align 8
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.4.i = shl i32 %42, 8
  %or.i.4.i = or i32 %shl1.i.i, %shl.i.4.i
  %or.4.i = or i32 %or.i.4.i, 1073741824
  %call20.4.i = call i32 @usb_interrupt_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.4.i, ptr noundef nonnull %call7.i.i98, i32 noundef 8, ptr noundef nonnull %trans.i, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.4.i)
  %tobool21.not.4.i = icmp eq i32 %call20.4.i, 0
  br i1 %tobool21.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.end25.i_crit_edge

for.cond.3.i.do.end25.i_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i98) #7
  br label %thrustmaster_interrupts.exit

do.end25.i:                                       ; preds = %for.cond.3.i.do.end25.i_crit_edge, %for.cond.2.i.do.end25.i_crit_edge, %for.cond.1.i.do.end25.i_crit_edge, %for.cond.i.do.end25.i_crit_edge, %if.end10.i.do.end25.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.19) #10
  call void @kfree(ptr noundef nonnull %call7.i.i98) #7
  br label %thrustmaster_interrupts.exit

thrustmaster_interrupts.exit:                     ; preds = %do.end25.i, %for.cond.4.i, %if.then5.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trans.i) #7
  %43 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %urb, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i = shl i32 %48, 8
  %or42 = or i32 %shl.i, -2147483520
  %49 = ptrtoint ptr %model_request to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %model_request, align 8
  %51 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %response, align 4
  %dev1.i100 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 8
  %53 = ptrtoint ptr %dev1.i100 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %46, ptr %dev1.i100, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 10
  %54 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or42, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 21
  %55 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %50, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 14
  %56 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %52, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 19
  %57 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 28
  %58 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @thrustmaster_model_handler, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 27
  %59 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %hdev, ptr %context5.i, align 4
  %60 = load ptr, ptr %urb, align 4
  %call46 = call i32 @usb_submit_urb(ptr noundef %60, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %thrustmaster_interrupts.exit.cleanup_crit_edge, label %do.end51

thrustmaster_interrupts.exit.cleanup_crit_edge:   ; preds = %thrustmaster_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end51:                                         ; preds = %thrustmaster_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.11, i32 noundef %call46) #10
  %61 = ptrtoint ptr %change_request to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %change_request, align 8
  call void @kfree(ptr noundef %62) #7
  br label %error5

error5:                                           ; preds = %do.end51, %if.end30.error5_crit_edge
  %ret.0 = phi i32 [ %call46, %do.end51 ], [ -12, %if.end30.error5_crit_edge ]
  %63 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %response, align 4
  call void @kfree(ptr noundef %64) #7
  br label %error4

error4:                                           ; preds = %error5, %if.end25.error4_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error5 ], [ -12, %if.end25.error4_crit_edge ]
  %65 = ptrtoint ptr %model_request to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %model_request, align 8
  call void @kfree(ptr noundef %66) #7
  br label %error3

error3:                                           ; preds = %error4, %if.end20.error3_crit_edge
  %ret.2 = phi i32 [ %ret.1, %error4 ], [ -12, %if.end20.error3_crit_edge ]
  %67 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %urb, align 4
  call void @usb_free_urb(ptr noundef %68) #7
  br label %error2

error2:                                           ; preds = %error3, %if.end15.error2_crit_edge
  %ret.3 = phi i32 [ %ret.2, %error3 ], [ -12, %if.end15.error2_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %error1

error1:                                           ; preds = %error2, %if.end11.error1_crit_edge
  %ret.4 = phi i32 [ %ret.3, %error2 ], [ -12, %if.end11.error1_crit_edge ]
  call void @hid_hw_stop(ptr noundef %hdev) #7
  br label %cleanup

cleanup:                                          ; preds = %error1, %thrustmaster_interrupts.exit.cleanup_crit_edge, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %thrustmaster_interrupts.exit.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call4, %do.end9 ], [ %ret.4, %error1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @thrustmaster_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.tm_wheel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #7
  %change_request = getelementptr inbounds %struct.tm_wheel, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %change_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %change_request, align 4
  tail call void @kfree(ptr noundef %5) #7
  %response = getelementptr inbounds %struct.tm_wheel, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %response, align 4
  tail call void @kfree(ptr noundef %7) #7
  %model_request = getelementptr inbounds %struct.tm_wheel, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %model_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %model_request, align 4
  tail call void @kfree(ptr noundef %9) #7
  %10 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %1) #7
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @thrustmaster_model_handler(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %response = getelementptr inbounds %struct.tm_wheel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %response, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %7, align 1
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %do.end18 [
    i16 18688, label %if.end.if.end24_crit_edge
    i16 18176, label %if.end.if.end24_crit_edge95
  ]

if.end.if.end24_crit_edge95:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %9 to i32
  %dev19 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.24, i32 noundef %conv) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end.if.end24_crit_edge, %if.end.if.end24_crit_edge95
  %model14 = getelementptr inbounds %struct.tm_wheel_response, ptr %7, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %model14 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %model14, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1539, i16 %12)
  %cmp30 = icmp eq i16 %12, 1539
  %spec.select = select i1 %cmp30, ptr @tm_wheels_infos, ptr null
  br i1 %cmp30, label %if.end24.for.end_crit_edge, label %for.body.1

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp30.1 = icmp eq i16 %12, 2
  %spec.select.1 = select i1 %cmp30.1, ptr getelementptr inbounds ([6 x %struct.tm_wheel_info], ptr @tm_wheels_infos, i32 0, i32 1), ptr null
  br i1 %cmp30.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1538, i16 %12)
  %cmp30.2 = icmp eq i16 %12, 1538
  %spec.select.2 = select i1 %cmp30.2, ptr getelementptr inbounds ([6 x %struct.tm_wheel_info], ptr @tm_wheels_infos, i32 0, i32 2), ptr null
  br i1 %cmp30.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2306, i16 %12)
  %cmp30.3 = icmp eq i16 %12, 2306
  %spec.select.3 = select i1 %cmp30.3, ptr getelementptr inbounds ([6 x %struct.tm_wheel_info], ptr @tm_wheels_infos, i32 0, i32 3), ptr null
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %if.end24.for.end_crit_edge
  %spec.select.lcssa = phi ptr [ %spec.select, %if.end24.for.end_crit_edge ], [ %spec.select.1, %for.body.1.for.end_crit_edge ], [ %spec.select.2, %for.body.2.for.end_crit_edge ], [ %spec.select.3, %for.body.3 ]
  %tobool27.not.lcssa.in = phi i1 [ %cmp30, %if.end24.for.end_crit_edge ], [ %cmp30.1, %for.body.1.for.end_crit_edge ], [ %cmp30.2, %for.body.2.for.end_crit_edge ], [ %cmp30.3, %for.body.3 ]
  %dev45 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %conv46 = zext i16 %13 to i32
  br i1 %tobool27.not.lcssa.in, label %do.end38, label %do.end44

do.end38:                                         ; preds = %for.end
  %wheel_name = getelementptr inbounds %struct.tm_wheel_info, ptr %spec.select.lcssa, i32 0, i32 2
  %14 = ptrtoint ptr %wheel_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wheel_name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45, ptr noundef nonnull @.str.27, i32 noundef %conv46, ptr noundef %15) #10
  %switch_value = getelementptr inbounds %struct.tm_wheel_info, ptr %spec.select.lcssa, i32 0, i32 1
  %16 = ptrtoint ptr %switch_value to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %switch_value, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %change_request = getelementptr inbounds %struct.tm_wheel, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %change_request to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %change_request, align 4
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %18, ptr %wValue, align 1
  %urb48 = getelementptr inbounds %struct.tm_wheel, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %urb48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb48, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i = shl i32 %27, 8
  %or = or i32 %shl.i, -2147483648
  %28 = load ptr, ptr %change_request, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 21
  %31 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 14
  %32 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %33 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 28
  %34 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @thrustmaster_change_handler, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 27
  %35 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %1, ptr %context5.i, align 4
  %36 = load ptr, ptr %urb48, align 4
  %call53 = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end38.cleanup_crit_edge, label %do.end58

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end44:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.31, i32 noundef %conv46) #10
  br label %cleanup

do.end58:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.34, i32 noundef %call53) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %do.end44, %do.end38.cleanup_crit_edge, %do.end18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @thrustmaster_change_handler(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %do.end8 [
    i32 0, label %entry.do.end_crit_edge
    i32 -71, label %entry.do.end_crit_edge16
    i32 -32, label %entry.do.end_crit_edge17
  ]

entry.do.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.do.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge16, %entry.do.end_crit_edge17
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  br label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.45, i32 noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_hid_thrustmaster__232_383_thrustmaster_driver_init6, !1, !"__initcall__kmod_hid_thrustmaster__232_383_thrustmaster_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-thrustmaster.c", i32 383, i32 1}
!2 = !{ptr @__exitcall_thrustmaster_driver_exit, !1, !"__exitcall_thrustmaster_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-thrustmaster.c", i32 385, i32 1}
!5 = !{ptr @__UNIQUE_ID_file234, !6, !"__UNIQUE_ID_file234", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-thrustmaster.c", i32 386, i32 1}
!7 = !{ptr @__UNIQUE_ID_license235, !6, !"__UNIQUE_ID_license235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-thrustmaster.c", i32 387, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-thrustmaster.c", i32 377, i32 10}
!13 = !{ptr @thrustmaster_driver, !14, !"thrustmaster_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-thrustmaster.c", i32 376, i32 26}
!15 = !{ptr @thrustmaster_devices, !16, !"thrustmaster_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-thrustmaster.c", i32 369, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-thrustmaster.c", i32 290, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @thrustmaster_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @thrustmaster_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-thrustmaster.c", i32 296, i32 3}
!27 = !{ptr @thrustmaster_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @thrustmaster_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-thrustmaster.c", i32 353, i32 3}
!31 = !{ptr @thrustmaster_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @thrustmaster_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @model_request, !34, !"model_request", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-thrustmaster.c", i32 128, i32 37}
!35 = !{ptr @change_request, !36, !"change_request", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-thrustmaster.c", i32 136, i32 37}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-thrustmaster.c", i32 159, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @thrustmaster_interrupts._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @thrustmaster_interrupts._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-thrustmaster.c", i32 165, i32 3}
!44 = !{ptr @thrustmaster_interrupts._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @thrustmaster_interrupts._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-thrustmaster.c", i32 183, i32 4}
!48 = !{ptr @thrustmaster_interrupts._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @thrustmaster_interrupts._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"setup_arr", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-thrustmaster.c", i32 31, i32 24}
!52 = !{ptr @setup_0, !53, !"setup_0", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-thrustmaster.c", i32 26, i32 17}
!54 = distinct !{null, !55, !"setup_1", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-thrustmaster.c", i32 27, i32 17}
!56 = distinct !{null, !57, !"setup_2", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-thrustmaster.c", i32 28, i32 17}
!58 = distinct !{null, !59, !"setup_3", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-thrustmaster.c", i32 29, i32 17}
!60 = distinct !{null, !61, !"setup_4", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-thrustmaster.c", i32 30, i32 17}
!62 = distinct !{null, !63, !"setup_arr_sizes", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-thrustmaster.c", i32 32, i32 27}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-thrustmaster.c", i32 219, i32 3}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @thrustmaster_model_handler._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @thrustmaster_model_handler._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-thrustmaster.c", i32 228, i32 3}
!71 = !{ptr @thrustmaster_model_handler._entry.23, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @thrustmaster_model_handler._entry_ptr.25, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-thrustmaster.c", i32 237, i32 3}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @thrustmaster_model_handler._entry.26, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @thrustmaster_model_handler._entry_ptr.29, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-thrustmaster.c", i32 239, i32 3}
!80 = !{ptr @thrustmaster_model_handler._entry.30, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @thrustmaster_model_handler._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-thrustmaster.c", i32 256, i32 3}
!84 = !{ptr @thrustmaster_model_handler._entry.33, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @thrustmaster_model_handler._entry_ptr.35, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-thrustmaster.c", i32 66, i32 19}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-thrustmaster.c", i32 67, i32 19}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-thrustmaster.c", i32 68, i32 19}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-thrustmaster.c", i32 69, i32 19}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-thrustmaster.c", i32 70, i32 19}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-thrustmaster.c", i32 71, i32 19}
!98 = !{ptr @tm_wheels_infos, !99, !"tm_wheels_infos", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-thrustmaster.c", i32 65, i32 35}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-thrustmaster.c", i32 198, i32 3}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @thrustmaster_change_handler._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @thrustmaster_change_handler._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-thrustmaster.c", i32 200, i32 3}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @thrustmaster_change_handler._entry.44, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @thrustmaster_change_handler._entry_ptr.47, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
