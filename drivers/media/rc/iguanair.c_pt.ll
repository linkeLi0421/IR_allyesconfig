; ModuleID = '/llk/IR_all_yes/drivers/media/rc/iguanair.c_pt.bc'
source_filename = "../drivers/media/rc/iguanair.c"
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
%struct.iguanair = type { ptr, ptr, ptr, i16, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.completion, i8, i32, ptr, [64 x i8], [64 x i8] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
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
%struct.send_packet = type { %struct.packet, i8, i8, i8, i8, [0 x i8] }
%struct.packet = type { i16, i8, i8 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@__initcall__kmod_iguanair__241_562_iguanair_driver_init6 = internal global ptr @iguanair_driver_init, section ".initcall6.init", align 4
@iguanair_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @iguanair_probe, ptr @iguanair_disconnect, ptr null, ptr @iguanair_suspend, ptr @iguanair_resume, ptr @iguanair_resume, ptr null, ptr null, ptr @iguanair_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 16 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_iguanair_driver_exit = internal global ptr @iguanair_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [52 x i8] c"iguanair.description=IguanaWorks USB IR Transceiver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [43 x i8] c"iguanair.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [40 x i8] c"iguanair.file=drivers/media/rc/iguanair\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [21 x i8] c"iguanair.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iguanair\00", [23 x i8] zeroinitializer }, align 32
@iguanair_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6017, i16 2360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@iguanair_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to submit urb: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iguanair_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/rc/iguanair.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iguanair_probe._entry_ptr = internal global ptr @iguanair_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IguanaWorks USB IR Transceiver version 0x%04x\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-rc6-mce\00", [21 x i8] zeroinitializer }, align 32
@iguanair_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 473, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register rc device %d\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@iguanair_probe._entry_ptr.11 = internal global ptr @iguanair_probe._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@iguanair_irq_out.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iguanair_irq_out\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error: out urb status = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iguanair_rx.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iguanair_rx\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error: urb status = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@iguanair_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to resubmit urb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iguanair_rx._entry_ptr = internal global ptr @iguanair_rx._entry, section ".printk_index", align 4
@process_ir_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 111, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"receive overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"process_ir_data\00", [16 x i8] zeroinitializer }, align 32
@process_ir_data._entry_ptr = internal global ptr @process_ir_data._entry, section ".printk_index", align 4
@process_ir_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"control code %02x received\0A\00", [36 x i8] zeroinitializer }, align 32
@process_ir_data._entry_ptr.22 = internal global ptr @process_ir_data._entry.20, section ".printk_index", align 4
@iguanair_get_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 223, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get version\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iguanair_get_features\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@iguanair_get_features._entry_ptr = internal global ptr @iguanair_get_features._entry, section ".printk_index", align 4
@iguanair_get_features._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.3, i32 228, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware 0x%04x is too old\0A\00", [36 x i8] zeroinitializer }, align 32
@iguanair_get_features._entry_ptr.28 = internal global ptr @iguanair_get_features._entry.26, section ".printk_index", align 4
@iguanair_get_features._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.3, i32 240, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get buffer size\0A\00", [37 x i8] zeroinitializer }, align 32
@iguanair_get_features._entry_ptr.31 = internal global ptr @iguanair_get_features._entry.29, section ".printk_index", align 4
@iguanair_get_features._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.3, i32 246, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"buffer size %u larger than expected\0A\00", [59 x i8] zeroinitializer }, align 32
@iguanair_get_features._entry_ptr.34 = internal global ptr @iguanair_get_features._entry.32, section ".printk_index", align 4
@iguanair_get_features._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.3, i32 254, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get features\0A\00", [40 x i8] zeroinitializer }, align 32
@iguanair_get_features._entry_ptr.37 = internal global ptr @iguanair_get_features._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@iguanair_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable receiver: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iguanair_close\00", [17 x i8] zeroinitializer }, align 32
@iguanair_close._entry_ptr = internal global ptr @iguanair_close._entry, section ".printk_index", align 4
@iguanair_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to disable receiver for suspend\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iguanair_suspend\00", [47 x i8] zeroinitializer }, align 32
@iguanair_suspend._entry_ptr = internal global ptr @iguanair_suspend._entry, section ".printk_index", align 4
@iguanair_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.43, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iguanair_resume\00", [16 x i8] zeroinitializer }, align 32
@iguanair_resume._entry_ptr = internal global ptr @iguanair_resume._entry, section ".printk_index", align 4
@iguanair_resume._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to enable receiver after resume\0A\00", [56 x i8] zeroinitializer }, align 32
@iguanair_resume._entry_ptr.46 = internal global ptr @iguanair_resume._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.47 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 16, i64 17, i64 18, i64 20, i64 21, i64 49, i64 50]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"iguanair_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 551, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 562, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"iguanair_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 546, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 437, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 446, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 462, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 473, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 87, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 182, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 168, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 174, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 111, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 115, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 223, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 228, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 240, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 245, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 254, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 912, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 380, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 519, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 535, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [31 x i8] c"../drivers/media/rc/iguanair.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 540, i32 4 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_iguanair_driver_exit, ptr @__initcall__kmod_iguanair__241_562_iguanair_driver_init6, ptr @iguanair_close._entry, ptr @iguanair_close._entry_ptr, ptr @iguanair_driver_exit, ptr @iguanair_get_features._entry, ptr @iguanair_get_features._entry.26, ptr @iguanair_get_features._entry.29, ptr @iguanair_get_features._entry.32, ptr @iguanair_get_features._entry.35, ptr @iguanair_get_features._entry_ptr, ptr @iguanair_get_features._entry_ptr.28, ptr @iguanair_get_features._entry_ptr.31, ptr @iguanair_get_features._entry_ptr.34, ptr @iguanair_get_features._entry_ptr.37, ptr @iguanair_probe._entry, ptr @iguanair_probe._entry.8, ptr @iguanair_probe._entry_ptr, ptr @iguanair_probe._entry_ptr.11, ptr @iguanair_resume._entry, ptr @iguanair_resume._entry.44, ptr @iguanair_resume._entry_ptr, ptr @iguanair_resume._entry_ptr.46, ptr @iguanair_rx._entry, ptr @iguanair_rx._entry_ptr, ptr @iguanair_suspend._entry, ptr @iguanair_suspend._entry_ptr, ptr @process_ir_data._entry, ptr @process_ir_data._entry.20, ptr @process_ir_data._entry_ptr, ptr @process_ir_data._entry_ptr.22, ptr @iguanair_driver, ptr @.str, ptr @iguanair_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_ir_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_ir_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_get_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_get_features._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_get_features._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_get_features._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_get_features._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iguanair_resume._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iguanair_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @iguanair_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iguanair_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @iguanair_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iguanair_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 236) #13
  %call3 = tail call ptr @rc_allocate_device(i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %if.end
  %dma_in = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 7
  %call7 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef 3264, ptr noundef %dma_in) #10
  %buf_in = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %buf_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %buf_in, align 4
  %dma_out = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 8
  %call8 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 160, i32 noundef 3264, ptr noundef %dma_out) #10
  %packet = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %packet, align 8
  %call9 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %urb_in = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %urb_in to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %urb_in, align 8
  %call10 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %urb_out = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %urb_out to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %urb_out, align 4
  %11 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf_in, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end6.out_crit_edge, label %lor.lhs.false13

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false13:                                  ; preds = %if.end6
  %13 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %packet, align 8
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %lor.lhs.false13.out_crit_edge, label %lor.lhs.false16

lor.lhs.false13.out_crit_edge:                    ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %15 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb_in, align 8
  %tobool18.not = icmp eq ptr %16, null
  %tobool21.not = icmp eq ptr %call10, null
  %or.cond206 = select i1 %tobool18.not, i1 true, i1 %tobool21.not
  br i1 %or.cond206, label %lor.lhs.false16.out_crit_edge, label %lor.lhs.false22

lor.lhs.false16.out_crit_edge:                    ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i.i, align 1
  %21 = and i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp.i.not.i = icmp eq i8 %21, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %lor.lhs.false22.out_crit_edge

lor.lhs.false22.out_crit_edge:                    ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

usb_endpoint_is_int_in.exit:                      ; preds = %lor.lhs.false22
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool25.not = icmp sgt i8 %23, -1
  br i1 %tobool25.not, label %usb_endpoint_is_int_in.exit.out_crit_edge, label %lor.lhs.false26

usb_endpoint_is_int_in.exit.out_crit_edge:        ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false26:                                  ; preds = %usb_endpoint_is_int_in.exit
  %bmAttributes.i.i207 = getelementptr %struct.usb_host_endpoint, ptr %18, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i.i207 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i.i207, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp.i.not.i208 = icmp eq i8 %26, 3
  br i1 %cmp.i.not.i208, label %usb_endpoint_is_int_out.exit, label %lor.lhs.false26.out_crit_edge

lor.lhs.false26.out_crit_edge:                    ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

usb_endpoint_is_int_out.exit:                     ; preds = %lor.lhs.false26
  %bEndpointAddress.i.i209 = getelementptr %struct.usb_host_endpoint, ptr %18, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i.i209 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i.i209, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool31.not = icmp slt i8 %28, 0
  br i1 %tobool31.not, label %usb_endpoint_is_int_out.exit.out_crit_edge, label %if.end33

usb_endpoint_is_int_out.exit.out_crit_edge:       ; preds = %usb_endpoint_is_int_out.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end33:                                         ; preds = %usb_endpoint_is_int_out.exit
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call3, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev35 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %dev35, align 4
  %udev36 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %udev36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %udev36, align 8
  %completion = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 12
  %32 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %completion, align 8
  %wait.i = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #10
  %33 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %34, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress, align 2
  %conv40 = zext i8 %36 to i32
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %38, 8
  %shl1.i = shl nuw nsw i32 %conv40, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, 1073741824
  %39 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %urb_out, align 4
  %41 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %packet, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 10
  %44 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  %45 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 19
  %46 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 160, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 28
  %47 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @iguanair_irq_out, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 27
  %48 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %49 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 25
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %49, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 23
  %51 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %start_frame.i, align 4
  %52 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_out, align 8
  %54 = load ptr, ptr %urb_out, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %transfer_dma, align 4
  %56 = load ptr, ptr %urb_out, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 13
  %57 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %transfer_flags, align 4
  %or47 = or i32 %58, 4
  store i32 %or47, ptr %transfer_flags, align 4
  %59 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress51 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %bEndpointAddress51 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bEndpointAddress51, align 2
  %conv52 = zext i8 %61 to i32
  %62 = load i32, ptr %add.ptr.i, align 8
  %shl.i211 = shl i32 %62, 8
  %shl1.i212 = shl nuw nsw i32 %conv52, 15
  %or.i213 = or i32 %shl1.i212, %shl.i211
  %or55 = or i32 %or.i213, 1073741952
  %63 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %urb_in, align 8
  %65 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf_in, align 4
  %dev1.i214 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 8
  %67 = ptrtoint ptr %dev1.i214 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i, ptr %dev1.i214, align 4
  %pipe2.i215 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 10
  %68 = ptrtoint ptr %pipe2.i215 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or55, ptr %pipe2.i215, align 4
  %transfer_buffer3.i216 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 14
  %69 = ptrtoint ptr %transfer_buffer3.i216 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %transfer_buffer3.i216, align 4
  %transfer_buffer_length.i217 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 19
  %70 = ptrtoint ptr %transfer_buffer_length.i217 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %transfer_buffer_length.i217, align 4
  %complete.i218 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 28
  %71 = ptrtoint ptr %complete.i218 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @iguanair_rx, ptr %complete.i218, align 4
  %context4.i219 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 27
  %72 = ptrtoint ptr %context4.i219 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %context4.i219, align 4
  %73 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 25
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %73, align 4
  %start_frame.i220 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 23
  %75 = ptrtoint ptr %start_frame.i220 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %start_frame.i220, align 4
  %76 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_in, align 4
  %78 = load ptr, ptr %urb_in, align 8
  %transfer_dma60 = getelementptr inbounds %struct.urb, ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %transfer_dma60 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %77, ptr %transfer_dma60, align 4
  %80 = load ptr, ptr %urb_in, align 8
  %transfer_flags62 = getelementptr inbounds %struct.urb, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %transfer_flags62 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %transfer_flags62, align 4
  %or63 = or i32 %82, 4
  store i32 %or63, ptr %transfer_flags62, align 4
  %83 = load ptr, ptr %urb_in, align 8
  %call65 = tail call i32 @usb_submit_urb(ptr noundef %83, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end69, label %do.end

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call65) #14
  br label %out

if.end69:                                         ; preds = %if.end33
  %call70 = tail call fastcc i32 @iguanair_get_features(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.out2_crit_edge

if.end69.out2_crit_edge:                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.end73:                                         ; preds = %if.end69
  %name = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 16
  %version = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %version, align 4
  %conv74 = zext i16 %85 to i32
  %call75 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.6, i32 noundef %conv74)
  %86 = ptrtoint ptr %udev36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %udev36, align 8
  %phys = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 17
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.38, ptr noundef %91, ptr noundef %devpath.i) #10
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 3
  %92 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %name, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 4
  %93 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %phys, ptr %input_phys, align 4
  %94 = ptrtoint ptr %udev36 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %udev36, align 8
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 5
  %96 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %95, i32 0, i32 16, i32 7
  %97 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %idVendor.i, align 8
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #10
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %95, i32 0, i32 16, i32 8
  %101 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %idProduct.i, align 2
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #10
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 5, i32 2
  %104 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %95, i32 0, i32 16, i32 9
  %105 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %bcdDevice.i, align 4
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #10
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 5, i32 3
  %108 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %version.i, align 2
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %109 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %dev, ptr %parent, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 16
  %110 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 130023420, ptr %allowed_protocols, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 24
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call7.i.i, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 48
  %112 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @iguanair_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 49
  %113 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @iguanair_close, ptr %close, align 4
  %s_tx_mask = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 50
  %114 = ptrtoint ptr %s_tx_mask to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @iguanair_set_tx_mask, ptr %s_tx_mask, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 51
  %115 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @iguanair_set_tx_carrier, ptr %s_tx_carrier, align 4
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 54
  %116 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @iguanair_tx, ptr %tx_ir, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 6
  %117 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 7
  %118 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.7, ptr %map_name, align 4
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 35
  %119 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %min_timeout, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 34
  %120 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 125000, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 36
  %121 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1250000, ptr %max_timeout, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call3, i32 0, i32 37
  %122 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 21, ptr %rx_resolution, align 8
  %call86 = tail call i32 @iguanair_set_tx_carrier(ptr noundef nonnull %call3, i32 noundef 38000)
  %123 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv, align 4
  %packet.i = getelementptr inbounds %struct.iguanair, ptr %124, i32 0, i32 15
  %125 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %packet.i, align 4
  %channels.i = getelementptr inbounds %struct.send_packet, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %channels.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %channels.i, align 1
  %call88 = tail call i32 @rc_register_device(ptr noundef nonnull %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end94, label %if.end96

do.end94:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call88) #14
  br label %out2

if.end96:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %128 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out2:                                             ; preds = %do.end94, %if.end69.out2_crit_edge
  %ret.0 = phi i32 [ %call70, %if.end69.out2_crit_edge ], [ %call88, %do.end94 ]
  %129 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %urb_in, align 8
  tail call void @usb_kill_urb(ptr noundef %130) #10
  %131 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %urb_out, align 4
  tail call void @usb_kill_urb(ptr noundef %132) #10
  br label %out

out:                                              ; preds = %out2, %do.end, %usb_endpoint_is_int_out.exit.out_crit_edge, %lor.lhs.false26.out_crit_edge, %usb_endpoint_is_int_in.exit.out_crit_edge, %lor.lhs.false22.out_crit_edge, %lor.lhs.false16.out_crit_edge, %lor.lhs.false13.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %call65, %do.end ], [ %ret.0, %out2 ], [ -12, %if.end.out_crit_edge ], [ -12, %usb_endpoint_is_int_out.exit.out_crit_edge ], [ -12, %usb_endpoint_is_int_in.exit.out_crit_edge ], [ -12, %lor.lhs.false16.out_crit_edge ], [ -12, %lor.lhs.false13.out_crit_edge ], [ -12, %if.end6.out_crit_edge ], [ -12, %lor.lhs.false22.out_crit_edge ], [ -12, %lor.lhs.false26.out_crit_edge ]
  br i1 %tobool.not, label %out.if.end107_crit_edge, label %if.then100

out.if.end107_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then100:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %urb_in101 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 10
  %133 = ptrtoint ptr %urb_in101 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %urb_in101, align 8
  tail call void @usb_free_urb(ptr noundef %134) #10
  %urb_out102 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 11
  %135 = ptrtoint ptr %urb_out102 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %urb_out102, align 4
  tail call void @usb_free_urb(ptr noundef %136) #10
  %buf_in103 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 9
  %137 = ptrtoint ptr %buf_in103 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %buf_in103, align 4
  %dma_in104 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 7
  %139 = ptrtoint ptr %dma_in104 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dma_in104, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef %138, i32 noundef %140) #10
  %packet105 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 15
  %141 = ptrtoint ptr %packet105 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %packet105, align 8
  %dma_out106 = getelementptr inbounds %struct.iguanair, ptr %call7.i.i, i32 0, i32 8
  %143 = ptrtoint ptr %dma_out106 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dma_out106, align 8
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 160, ptr noundef %142, i32 noundef %144) #10
  br label %if.end107

if.end107:                                        ; preds = %if.then100, %out.if.end107_crit_edge
  tail call void @rc_free_device(ptr noundef %call3) #10
  tail call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.end96, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end107 ], [ 0, %if.end96 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iguanair_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @rc_unregister_device(ptr noundef %3) #10
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %urb_in = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb_in, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #10
  %urb_out = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb_out, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #10
  %9 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb_in, align 4
  tail call void @usb_free_urb(ptr noundef %10) #10
  %11 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb_out, align 4
  tail call void @usb_free_urb(ptr noundef %12) #10
  %udev = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %buf_in = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_in, align 4
  %dma_in = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_in, align 4
  tail call void @usb_free_coherent(ptr noundef %14, i32 noundef 8, ptr noundef %16, i32 noundef %18) #10
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 4
  %packet = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %packet, align 4
  %dma_out = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_out, align 4
  tail call void @usb_free_coherent(ptr noundef %20, i32 noundef 160, ptr noundef %22, i32 noundef %24) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iguanair_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %receiver_on = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %receiver_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %receiver_on, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %packet.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %packet.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %5, align 2
  %7 = load ptr, ptr %packet.i, align 4
  %direction.i = getelementptr inbounds %struct.packet, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %direction.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -51, ptr %direction.i, align 2
  %9 = load ptr, ptr %packet.i, align 4
  %cmd.i = getelementptr inbounds %struct.packet, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 20, ptr %cmd.i, align 1
  %completion.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completion.i.i, align 4
  %urb_out.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %urb_out.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb_out.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %transfer_buffer_length.i.i, align 4
  %15 = load ptr, ptr %urb_out.i.i, align 4
  %call.i.i = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.i:                                       ; preds = %if.then
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.do.end_crit_edge, label %if.end.i.i.if.end4_crit_edge

if.end.i.i.if.end4_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.i.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i, %if.then.do.end_crit_edge ], [ -110, %if.end.i.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.41) #14
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.i.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %rc.0 = phi i32 [ %retval.0.i.i.ph, %do.end ], [ 0, %entry.if.end4_crit_edge ], [ 0, %if.end.i.i.if.end4_crit_edge ]
  %urb_in = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb_in, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #10
  %urb_out = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %urb_out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb_out, align 4
  tail call void @usb_kill_urb(ptr noundef %21) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iguanair_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb_in = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_in, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call1) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %receiver_on = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %receiver_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %receiver_on, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %packet.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %packet.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %7, align 2
  %9 = load ptr, ptr %packet.i, align 4
  %direction.i = getelementptr inbounds %struct.packet, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %direction.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -51, ptr %direction.i, align 2
  %11 = load ptr, ptr %packet.i, align 4
  %cmd.i = getelementptr inbounds %struct.packet, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 18, ptr %cmd.i, align 1
  %completion.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion.i.i, align 4
  %urb_out.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %urb_out.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb_out.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %transfer_buffer_length.i.i, align 4
  %17 = load ptr, ptr %urb_out.i.i, align 4
  %call.i.i = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.do.end9_crit_edge

if.then3.do.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end.i.i:                                       ; preds = %if.then3
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.do.end9_crit_edge, label %if.end.i.i.if.end12_crit_edge

if.end.i.i.if.end12_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.i.i.do.end9_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end9:                                          ; preds = %if.end.i.i.do.end9_crit_edge, %if.then3.do.end9_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i, %if.then3.do.end9_crit_edge ], [ -110, %if.end.i.i.do.end9_crit_edge ]
  %dev10 = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.45) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.i.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %rc.0 = phi i32 [ %retval.0.i.i.ph, %do.end9 ], [ %call1, %if.end.if.end12_crit_edge ], [ 0, %if.end.i.i.if.end12_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iguanair_irq_out(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iguanair_irq_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iguanair_irq_out, %if.then4)) #10
          to label %if.end6 [label %if.then4], !srcloc !108

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iguanair_irq_out.__UNIQUE_ID_ddebug238, ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %7) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body, %entry.if.end6_crit_edge
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %packet = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %packet, align 4
  %cmd = getelementptr inbounds %struct.packet, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp8 = icmp eq i8 %13, 0
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %completion = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  tail call void @complete(ptr noundef %completion) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iguanair_rx(ptr noundef %urb) #2 align 64 {
entry:
  %rawir.i = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @usb_unlink_urb(ptr noundef nonnull %urb) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 0, label %sw.bb
    i32 -104, label %if.end3.sw.bb4_crit_edge
    i32 -2, label %if.end3.sw.bb4_crit_edge36
    i32 -108, label %if.end3.sw.bb4_crit_edge37
  ]

if.end3.sw.bb4_crit_edge37:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end3.sw.bb4_crit_edge36:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end3.sw.bb4_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

sw.bb:                                            ; preds = %if.end3
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp ugt i32 %6, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb
  %buf_in.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %buf_in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_in.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp1.i = icmp eq i8 %10, 0
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %arrayidx5.i = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp7.i = icmp eq i8 %12, 0
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true3.i.if.else.i_crit_edge

land.lhs.true3.i.if.else.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  %arrayidx10.i = getelementptr i8, ptr %8, i32 3
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %14, label %do.end43.i [
    i8 1, label %sw.bb.i
    i8 17, label %sw.bb22.i
    i8 16, label %sw.bb30.i
    i8 50, label %sw.bb38.i
    i8 20, label %if.then.i.sw.bb39.i_crit_edge
    i8 18, label %if.then.i.sw.bb39.i_crit_edge38
    i8 21, label %if.then.i.sw.bb39.i_crit_edge39
    i8 49, label %do.end.i
  ]

if.then.i.sw.bb39.i_crit_edge39:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39.i

if.then.i.sw.bb39.i_crit_edge38:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39.i

if.then.i.sw.bb39.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp12.i = icmp eq i32 %6, 6
  br i1 %cmp12.i, label %if.then14.i, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then14.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i = getelementptr i8, ptr %8, i32 5
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %17 to i16
  %shl.i = shl nuw i16 %conv17.i, 8
  %arrayidx19.i = getelementptr i8, ptr %8, i32 4
  %18 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %19 to i16
  %or.i = or i16 %shl.i, %conv20.i
  %version.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or.i, ptr %version.i, align 4
  %completion.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  tail call void @complete(ptr noundef %completion.i) #10
  br label %sw.epilog

sw.bb22.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp23.i = icmp ugt i32 %6, 4
  br i1 %cmp23.i, label %if.then25.i, label %sw.bb22.i.sw.epilog_crit_edge

sw.bb22.i.sw.epilog_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then25.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27.i = getelementptr i8, ptr %8, i32 4
  %21 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx27.i, align 1
  %bufsize.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %bufsize.i, align 2
  %completion28.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  tail call void @complete(ptr noundef %completion28.i) #10
  br label %sw.epilog

sw.bb30.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp31.i = icmp ugt i32 %6, 5
  br i1 %cmp31.i, label %if.then33.i, label %sw.bb30.i.sw.epilog_crit_edge

sw.bb30.i.sw.epilog_crit_edge:                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then33.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr i8, ptr %8, i32 5
  %24 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35.i, align 1
  %cycle_overhead.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %cycle_overhead.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cycle_overhead.i, align 1
  %completion36.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  tail call void @complete(ptr noundef %completion36.i) #10
  br label %sw.epilog

sw.bb38.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_overflow.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %tx_overflow.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %tx_overflow.i, align 4
  br label %sw.bb39.i

sw.bb39.i:                                        ; preds = %sw.bb38.i, %if.then.i.sw.bb39.i_crit_edge, %if.then.i.sw.bb39.i_crit_edge38, %if.then.i.sw.bb39.i_crit_edge39
  %completion40.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  tail call void @complete(ptr noundef %completion40.i) #10
  br label %sw.epilog

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.18) #14
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call fastcc void @ir_raw_event_reset(ptr noundef %31) #10
  br label %sw.epilog

do.end43.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv11.i = zext i8 %14 to i32
  %dev44.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev44.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.21, i32 noundef %conv11.i) #14
  br label %sw.epilog

if.else.i:                                        ; preds = %land.lhs.true3.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp48.i = icmp ugt i32 %6, 6
  br i1 %cmp48.i, label %if.then50.i, label %if.else.i.sw.epilog_crit_edge

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then50.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i) #10
  %34 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %rawir.i, align 8
  %pulse65.i = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end73.i.for.body.i_crit_edge, %if.then50.i
  %event.0.off0117.i = phi i1 [ false, %if.then50.i ], [ %spec.select.i, %if.end73.i.for.body.i_crit_edge ]
  %i.0116.i = phi i32 [ 0, %if.then50.i ], [ %inc.i, %if.end73.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %buf_in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf_in.i, align 4
  %arrayidx54.i = getelementptr i8, ptr %36, i32 %i.0116.i
  %37 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx54.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %38)
  %cmp56.i = icmp eq i8 %38, -128
  br i1 %cmp56.i, label %if.then58.i, label %if.else59.i

if.then58.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %pulse65.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %pulse65.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %pulse65.i, align 1
  br label %if.end73.i

if.else59.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = and i8 %38, -128
  %41 = ptrtoint ptr %pulse65.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load66.i = load i8, ptr %pulse65.i, align 1
  %bf.clear67.i = and i8 %bf.load66.i, 127
  %42 = or i8 %bf.clear67.i, %40
  %bf.set68.i = xor i8 %42, -128
  store i8 %bf.set68.i, ptr %pulse65.i, align 1
  %43 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx54.i, align 1
  %45 = and i8 %44, 127
  %narrow.i = add nuw i8 %45, 1
  %add.i = zext i8 %narrow.i to i32
  %mul.i = mul nuw nsw i32 %add.i, 21
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else59.i, %if.then58.i
  %storemerge.i = phi i32 [ 21845, %if.then58.i ], [ %mul.i, %if.else59.i ]
  %46 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge.i, ptr %rawir.i, align 8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %48, ptr noundef nonnull %rawir.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %event.0.off0117.i
  %inc.i = add nuw nsw i32 %i.0116.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %if.end73.i.for.body.i_crit_edge

if.end73.i.for.body.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end73.i
  br i1 %spec.select.i, label %if.then78.i, label %for.end.i.if.end80.i_crit_edge

for.end.i.if.end80.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.then78.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  call void @ir_raw_event_handle(ptr noundef %50) #10
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then78.i, %for.end.i.if.end80.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3.sw.bb4_crit_edge, %if.end3.sw.bb4_crit_edge36, %if.end3.sw.bb4_crit_edge37
  %call5 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %urb) #10
  br label %cleanup

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iguanair_rx.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iguanair_rx, %if.then11)) #10
          to label %sw.epilog [label %if.then11], !srcloc !108

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iguanair_rx.__UNIQUE_ID_ddebug237, ptr noundef %52, ptr noundef nonnull @.str.16, i32 noundef %54) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %do.body, %if.end80.i, %if.else.i.sw.epilog_crit_edge, %do.end43.i, %do.end.i, %sw.bb39.i, %if.then33.i, %sw.bb30.i.sw.epilog_crit_edge, %if.then25.i, %sw.bb22.i.sw.epilog_crit_edge, %if.then14.i, %sw.bb.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call14 = call i32 @usb_submit_urb(ptr noundef nonnull %urb, i32 noundef 2592) #10
  %55 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call14, label %do.end19 [
    i32 0, label %sw.epilog.cleanup_crit_edge
    i32 -19, label %sw.epilog.cleanup_crit_edge40
  ]

sw.epilog.cleanup_crit_edge40:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev20, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.17, i32 noundef %call14) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge40, %sw.bb4, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iguanair_get_features(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %packet = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 15
  %0 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %packet, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %1, align 2
  %3 = load ptr, ptr %packet, align 4
  %direction = getelementptr inbounds %struct.packet, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -51, ptr %direction, align 2
  %5 = load ptr, ptr %packet, align 4
  %cmd = getelementptr inbounds %struct.packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cmd, align 1
  %completion.i = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 12
  %7 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %completion.i, align 4
  %urb_out.i = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 11
  %8 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %transfer_buffer_length.i, align 4
  %11 = load ptr, ptr %urb_out.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.iguanair_send.exit_crit_edge

entry.iguanair_send.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iguanair_send.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 1000) #10
  br label %iguanair_send.exit

iguanair_send.exit:                               ; preds = %if.end.i, %entry.iguanair_send.exit_crit_edge
  %12 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %packet, align 4
  %cmd7 = getelementptr inbounds %struct.packet, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %cmd7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %cmd7, align 1
  %15 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %completion.i, align 4
  %16 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i79 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i79 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %transfer_buffer_length.i79, align 4
  %19 = load ptr, ptr %urb_out.i, align 4
  %call.i80 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end.i85, label %iguanair_send.exit.do.end_crit_edge

iguanair_send.exit.do.end_crit_edge:              ; preds = %iguanair_send.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i85:                                       ; preds = %iguanair_send.exit
  %call3.i82 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i82)
  %cmp.i83 = icmp eq i32 %call3.i82, 0
  br i1 %cmp.i83, label %if.end.i85.do.end_crit_edge, label %if.end

if.end.i85.do.end_crit_edge:                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.i85.do.end_crit_edge, %iguanair_send.exit.do.end_crit_edge
  %retval.0.i86.ph = phi i32 [ %call.i80, %iguanair_send.exit.do.end_crit_edge ], [ -110, %if.end.i85.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.23) #14
  br label %out

if.end:                                           ; preds = %if.end.i85
  %version = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 3
  %22 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 517, i16 %23)
  %cmp = icmp ult i16 %23, 517
  br i1 %cmp, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %23 to i32
  %dev14 = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 1
  %24 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.27, i32 noundef %conv) #14
  br label %out

if.end17:                                         ; preds = %if.end
  %bufsize = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 4
  %26 = ptrtoint ptr %bufsize to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -106, ptr %bufsize, align 2
  %cycle_overhead = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 5
  %27 = ptrtoint ptr %cycle_overhead to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 65, ptr %cycle_overhead, align 1
  %28 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %packet, align 4
  %cmd20 = getelementptr inbounds %struct.packet, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %cmd20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 17, ptr %cmd20, align 1
  %31 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %completion.i, align 4
  %32 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i90 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %transfer_buffer_length.i90, align 4
  %35 = load ptr, ptr %urb_out.i, align 4
  %call.i91 = tail call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end.i96, label %if.end17.do.end26_crit_edge

if.end17.do.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

if.end.i96:                                       ; preds = %if.end17
  %call3.i93 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i93)
  %cmp.i94 = icmp eq i32 %call3.i93, 0
  br i1 %cmp.i94, label %if.end.i96.do.end26_crit_edge, label %if.end28

if.end.i96.do.end26_crit_edge:                    ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end26:                                         ; preds = %if.end.i96.do.end26_crit_edge, %if.end17.do.end26_crit_edge
  %retval.0.i97.ph = phi i32 [ %call.i91, %if.end17.do.end26_crit_edge ], [ -110, %if.end.i96.do.end26_crit_edge ]
  %dev27 = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 1
  %36 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.30) #14
  br label %out

if.end28:                                         ; preds = %if.end.i96
  %38 = ptrtoint ptr %bufsize to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bufsize, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -104, i8 %39)
  %cmp31 = icmp ugt i8 %39, -104
  br i1 %cmp31, label %do.end36, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %conv30 = zext i8 %39 to i32
  %dev37 = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 1
  %40 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.33, i32 noundef %conv30) #14
  %42 = ptrtoint ptr %bufsize to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -104, ptr %bufsize, align 2
  br label %if.end41

if.end41:                                         ; preds = %do.end36, %if.end28.if.end41_crit_edge
  %43 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %packet, align 4
  %cmd44 = getelementptr inbounds %struct.packet, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %cmd44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 16, ptr %cmd44, align 1
  %46 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %completion.i, align 4
  %47 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i101 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %transfer_buffer_length.i101 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %transfer_buffer_length.i101, align 4
  %50 = load ptr, ptr %urb_out.i, align 4
  %call.i102 = tail call i32 @usb_submit_urb(ptr noundef %50, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %if.end.i107, label %if.end41.do.end50_crit_edge

if.end41.do.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

if.end.i107:                                      ; preds = %if.end41
  %call3.i104 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i104)
  %cmp.i105 = icmp eq i32 %call3.i104, 0
  br i1 %cmp.i105, label %if.end.i107.do.end50_crit_edge, label %if.end.i107.out_crit_edge

if.end.i107.out_crit_edge:                        ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i107.do.end50_crit_edge:                   ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end50:                                         ; preds = %if.end.i107.do.end50_crit_edge, %if.end41.do.end50_crit_edge
  %retval.0.i108.ph = phi i32 [ %call.i102, %if.end41.do.end50_crit_edge ], [ -110, %if.end.i107.do.end50_crit_edge ]
  %dev51 = getelementptr inbounds %struct.iguanair, ptr %ir, i32 0, i32 1
  %51 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.36) #14
  br label %out

out:                                              ; preds = %do.end50, %if.end.i107.out_crit_edge, %do.end26, %do.end13, %do.end
  %rc.0 = phi i32 [ %retval.0.i86.ph, %do.end ], [ -19, %do.end13 ], [ %retval.0.i97.ph, %do.end26 ], [ %retval.0.i108.ph, %do.end50 ], [ 0, %if.end.i107.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iguanair_open(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %packet.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %packet.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %3, align 2
  %5 = load ptr, ptr %packet.i, align 4
  %direction.i = getelementptr inbounds %struct.packet, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %direction.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -51, ptr %direction.i, align 2
  %7 = load ptr, ptr %packet.i, align 4
  %cmd.i = getelementptr inbounds %struct.packet, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 18, ptr %cmd.i, align 1
  %completion.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completion.i.i, align 4
  %urb_out.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %urb_out.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb_out.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %transfer_buffer_length.i.i, align 4
  %13 = load ptr, ptr %urb_out.i.i, align 4
  %call.i.i = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.end_crit_edge, label %if.then

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %receiver_on = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %receiver_on to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %receiver_on, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.i5 = phi i32 [ 0, %if.then ], [ %call.i.i, %entry.if.end_crit_edge ], [ -110, %if.end.i.i.if.end_crit_edge ]
  ret i32 %retval.0.i.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iguanair_close(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %packet.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %packet.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %3, align 2
  %5 = load ptr, ptr %packet.i, align 4
  %direction.i = getelementptr inbounds %struct.packet, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %direction.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -51, ptr %direction.i, align 2
  %7 = load ptr, ptr %packet.i, align 4
  %cmd.i = getelementptr inbounds %struct.packet, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %cmd.i, align 1
  %completion.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completion.i.i, align 4
  %urb_out.i.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %urb_out.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb_out.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %transfer_buffer_length.i.i, align 4
  %13 = load ptr, ptr %urb_out.i.i, align 4
  %call.i.i = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %iguanair_receiver.exit

if.end.i.i:                                       ; preds = %entry
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i, 0
  %receiver_on6 = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %receiver_on6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %receiver_on6, align 4
  br i1 %cmp.i.i, label %if.end.i.i.do.end_crit_edge, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

iguanair_receiver.exit:                           ; preds = %entry
  %receiver_on = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %receiver_on to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %receiver_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cond = icmp eq i32 %call.i.i, -19
  br i1 %cond, label %iguanair_receiver.exit.if.end_crit_edge, label %iguanair_receiver.exit.do.end_crit_edge

iguanair_receiver.exit.do.end_crit_edge:          ; preds = %iguanair_receiver.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

iguanair_receiver.exit.if.end_crit_edge:          ; preds = %iguanair_receiver.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %iguanair_receiver.exit.do.end_crit_edge, %if.end.i.i.do.end_crit_edge
  %retval.0.i.i7 = phi i32 [ %call.i.i, %iguanair_receiver.exit.do.end_crit_edge ], [ -110, %if.end.i.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i.i7) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %iguanair_receiver.exit.if.end_crit_edge, %if.end.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iguanair_set_tx_mask(ptr nocapture noundef readonly %dev, i32 noundef %mask) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mask)
  %cmp = icmp ugt i32 %mask, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mask.tr = trunc i32 %mask to i8
  %conv = shl nuw i8 %mask.tr, 4
  %packet = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %packet, align 4
  %channels = getelementptr inbounds %struct.send_packet, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %channels, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iguanair_set_tx_carrier(ptr nocapture noundef readonly %dev, i32 noundef %carrier) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = add i32 %carrier, -150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125001, i32 %2)
  %3 = icmp ult i32 %2, -125001
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %carrier2 = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %carrier2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %carrier2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %carrier)
  %cmp3.not = icmp eq i32 %5, %carrier
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %carrier2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %carrier, ptr %carrier2, align 4
  %mul = shl nuw nsw i32 %carrier, 1
  %add = add nuw nsw i32 %carrier, 24000000
  %div6 = udiv i32 %add, %mul
  %cycle_overhead = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %cycle_overhead to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cycle_overhead, align 1
  %conv = zext i8 %8 to i32
  %sub = sub nsw i32 %div6, %conv
  %sub7 = sub nsw i32 0, %sub
  %and = and i32 %sub7, 3
  %mul8.neg = mul nuw nsw i32 %and, 1017
  %sub9 = add nsw i32 %mul8.neg, %sub
  %div1030 = lshr i32 %sub9, 2
  %9 = trunc i32 %and to i8
  %10 = mul nsw i8 %9, -2
  %conv13 = add nsw i8 %10, 8
  %packet = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %packet, align 4
  %busy7 = getelementptr inbounds %struct.send_packet, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %busy7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13, ptr %busy7, align 2
  %14 = trunc i32 %div1030 to i8
  %conv15 = sub i8 110, %14
  %15 = load ptr, ptr %packet, align 4
  %busy4 = getelementptr inbounds %struct.send_packet, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %busy4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15, ptr %busy4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iguanair_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %txbuf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp65.not = icmp eq i32 %count, 0
  br i1 %cmp65.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %carrier = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 14
  %bufsize = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 4
  %packet = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.inc.for.body_crit_edge ]
  %size.066 = phi i32 [ 0, %for.body.lr.ph ], [ %size.1.lcssa, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %txbuf, i32 %i.067
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %carrier, align 4
  %mul = mul i32 %5, %3
  %add = add i32 %mul, 500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %add)
  %6 = icmp ult i32 %add, 1000000
  br i1 %6, label %for.body.for.inc_crit_edge, label %while.body.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body.lr.ph:                                 ; preds = %for.body
  %div1 = udiv i32 %add, 1000000
  %and = shl i32 %i.067, 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %size.164 = phi i32 [ %size.066, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %periods.063 = phi i32 [ %div1, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %7 = ptrtoint ptr %bufsize to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bufsize, align 2
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size.164, i32 %conv)
  %cmp4.not = icmp ult i32 %size.164, %conv
  br i1 %cmp4.not, label %if.end, label %while.body.out.thread_crit_edge

while.body.out.thread_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end:                                           ; preds = %while.body
  %9 = tail call i32 @llvm.umin.i32(i32 %periods.063, i32 127)
  %or = or i32 %9, %and
  %conv8 = trunc i32 %or to i8
  %10 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %packet, align 4
  %inc = add nuw i32 %size.164, 1
  %arrayidx9 = getelementptr %struct.send_packet, ptr %11, i32 0, i32 5, i32 %size.164
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8, ptr %arrayidx9, align 1
  %sub = sub i32 %periods.063, %9
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %size.1.lcssa = phi i32 [ %size.066, %for.body.for.inc_crit_edge ], [ %inc, %if.end.for.inc_crit_edge ]
  %inc10 = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc10, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %size.1.lcssa, %for.inc.for.end_crit_edge ]
  %packet11 = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %packet11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %packet11, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %14, align 2
  %16 = load ptr, ptr %packet11, align 4
  %direction = getelementptr inbounds %struct.packet, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -51, ptr %direction, align 2
  %18 = load ptr, ptr %packet11, align 4
  %cmd = getelementptr inbounds %struct.packet, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 21, ptr %cmd, align 1
  %conv16 = trunc i32 %size.0.lcssa to i8
  %20 = load ptr, ptr %packet11, align 4
  %length = getelementptr inbounds %struct.send_packet, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv16, ptr %length, align 2
  %tx_overflow = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %tx_overflow to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %tx_overflow, align 4
  %add18 = add i32 %size.0.lcssa, 8
  %completion.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %completion.i, align 4
  %urb_out.i = getelementptr inbounds %struct.iguanair, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %urb_out.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb_out.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add18, ptr %transfer_buffer_length.i, align 4
  %27 = load ptr, ptr %urb_out.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %27, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.out.thread_crit_edge

for.end.out.thread_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end.i:                                         ; preds = %for.end
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.i.out.thread_crit_edge, label %land.lhs.true

if.end.i.out.thread_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

land.lhs.true:                                    ; preds = %if.end.i
  %28 = ptrtoint ptr %tx_overflow to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_overflow, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not = icmp eq i8 %29, 0
  br i1 %tobool22.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.out.thread_crit_edge

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.thread:                                       ; preds = %land.lhs.true.out.thread_crit_edge, %if.end.i.out.thread_crit_edge, %for.end.out.thread_crit_edge, %while.body.out.thread_crit_edge
  %rc.0.ph = phi i32 [ -75, %land.lhs.true.out.thread_crit_edge ], [ %call.i, %for.end.out.thread_crit_edge ], [ -110, %if.end.i.out.thread_crit_edge ], [ -22, %while.body.out.thread_crit_edge ]
  br label %out

out:                                              ; preds = %out.thread, %land.lhs.true.out_crit_edge
  %30 = phi i32 [ %rc.0.ph, %out.thread ], [ %count, %land.lhs.true.out_crit_edge ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ir_raw_event_reset(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  %.compoundliteral = alloca %struct.ir_raw_event, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %.compoundliteral, align 4
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral, i32 0, i32 1
  %1 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %duty_cycle, align 4
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral, i32 0, i32 2
  %2 = ptrtoint ptr %pulse to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %pulse, align 1
  %call = call i32 @ir_raw_event_store(ptr noundef %dev, ptr noundef nonnull %.compoundliteral) #10
  %idle = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %idle, align 8
  call void @ir_raw_event_handle(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_iguanair__241_562_iguanair_driver_init6, !1, !"__initcall__kmod_iguanair__241_562_iguanair_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/iguanair.c", i32 562, i32 1}
!2 = !{ptr @__exitcall_iguanair_driver_exit, !1, !"__exitcall_iguanair_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/iguanair.c", i32 564, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/iguanair.c", i32 565, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/iguanair.c", i32 566, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @iguanair_driver, !12, !"iguanair_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/iguanair.c", i32 551, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/iguanair.c", i32 437, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @iguanair_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @iguanair_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/iguanair.c", i32 446, i32 3}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/iguanair.c", i32 462, i32 17}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/iguanair.c", i32 473, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iguanair_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @iguanair_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @init_completion.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/completion.h", i32 87, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/iguanair.c", i32 182, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @iguanair_irq_out.__UNIQUE_ID_ddebug238, !34, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/iguanair.c", i32 168, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @iguanair_rx.__UNIQUE_ID_ddebug237, !38, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/iguanair.c", i32 174, i32 3}
!43 = !{ptr @iguanair_rx._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @iguanair_rx._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/iguanair.c", i32 111, i32 4}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @process_ir_data._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @process_ir_data._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/rc/iguanair.c", i32 115, i32 4}
!52 = !{ptr @process_ir_data._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @process_ir_data._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/rc/iguanair.c", i32 223, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @iguanair_get_features._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @iguanair_get_features._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/rc/iguanair.c", i32 228, i32 3}
!62 = !{ptr @iguanair_get_features._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @iguanair_get_features._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/rc/iguanair.c", i32 240, i32 3}
!66 = !{ptr @iguanair_get_features._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @iguanair_get_features._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/rc/iguanair.c", i32 245, i32 3}
!70 = !{ptr @iguanair_get_features._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @iguanair_get_features._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/rc/iguanair.c", i32 254, i32 3}
!74 = !{ptr @iguanair_get_features._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @iguanair_get_features._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/usb.h", i32 912, i32 31}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/rc/iguanair.c", i32 380, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @iguanair_close._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @iguanair_close._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/rc/iguanair.c", i32 519, i32 4}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @iguanair_suspend._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @iguanair_suspend._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/rc/iguanair.c", i32 535, i32 3}
!90 = !{ptr @iguanair_resume._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @iguanair_resume._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/rc/iguanair.c", i32 540, i32 4}
!94 = !{ptr @iguanair_resume._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @iguanair_resume._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @iguanair_table, !97, !"iguanair_table", i1 false, i1 false}
!97 = !{!"../drivers/media/rc/iguanair.c", i32 546, i32 35}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
!108 = !{i64 2148288682, i64 2148288687, i64 2148288700, i64 2148288744, i64 2148288778, i64 2148288799}
