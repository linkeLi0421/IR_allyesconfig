; ModuleID = '/llk/IR_all_yes/drivers/watchdog/pcwd_usb.c_pt.bc'
source_filename = "../drivers/watchdog/pcwd_usb.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_pcwd_private = type { ptr, ptr, i32, ptr, i32, i32, ptr, i8, i8, i8, %struct.atomic_t, i32, %struct.mutex }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [49 x i8] c"pcwd_usb.author=Wim Van Sebroeck <wim@iguana.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [54 x i8] c"pcwd_usb.description=Berkshire USB-PC Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [40 x i8] c"pcwd_usb.file=drivers/watchdog/pcwd_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"pcwd_usb.license=GPL\00", section ".modinfo", align 1
@__param_str_heartbeat = internal constant [19 x i8] c"pcwd_usb.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype236 = internal constant [32 x i8] c"pcwd_usb.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat237 = internal constant [120 x i8] c"pcwd_usb.parm=heartbeat:Watchdog heartbeat in seconds. (0<heartbeat<65536 or 0=delay-time from dip-switches, default=0)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [18 x i8] c"pcwd_usb.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype238 = internal constant [32 x i8] c"pcwd_usb.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout239 = internal constant [75 x i8] c"pcwd_usb.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_pcwd_usb__245_805_usb_pcwd_driver_init6 = internal global ptr @usb_pcwd_driver_init, section ".initcall6.init", align 4
@usb_pcwd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usb_pcwd_probe, ptr @usb_pcwd_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_pcwd_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_pcwd_driver_exit = internal global ptr @usb_pcwd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcwd_usb\00", [23 x i8] zeroinitializer }, align 32
@usb_pcwd_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3224, i16 4416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@usb_pcwd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013pcwd_usb: This driver only supports 1 device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_pcwd_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/watchdog/pcwd_usb.c\00", [36 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr = internal global ptr @usb_pcwd_probe._entry, section ".printk_index", align 4
@usb_pcwd_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013pcwd_usb: The device isn't a Human Interface Device\0A\00", [41 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.6 = internal global ptr @usb_pcwd_probe._entry.4, section ".printk_index", align 4
@usb_pcwd_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013pcwd_usb: Couldn't find an INTR & IN endpoint\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.9 = internal global ptr @usb_pcwd_probe._entry.7, section ".printk_index", align 4
@usb_pcwd_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@usb_pcwd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&usb_pcwd->mtx\00", [17 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013pcwd_usb: Out of memory\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.13 = internal global ptr @usb_pcwd_probe._entry.11, section ".printk_index", align 4
@usb_pcwd_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pcwd_usb: Problem registering interrupt URB\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.16 = internal global ptr @usb_pcwd_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u.%02u\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<card no answer>\00", [47 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016pcwd_usb: Found card (Firmware: %s) with temp option\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.21 = internal global ptr @usb_pcwd_probe._entry.19, section ".printk_index", align 4
@usb_pcwd_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016pcwd_usb: Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.24 = internal global ptr @usb_pcwd_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@heartbeat_tbl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 5, i32 10, i32 30, i32 60, i32 300, i32 600, i32 1800, i32 3600], [32 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016pcwd_usb: heartbeat value must be 0<heartbeat<65536, using %d\0A\00", [63 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.29 = internal global ptr @usb_pcwd_probe._entry.27, section ".printk_index", align 4
@usb_pcwd_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @usb_pcwd_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013pcwd_usb: cannot register reboot notifier (err=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.32 = internal global ptr @usb_pcwd_probe._entry.30, section ".printk_index", align 4
@usb_pcwd_temperature_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 131, ptr @.str.51, ptr @usb_pcwd_temperature_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013pcwd_usb: cannot register miscdev on minor=%d (err=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.35 = internal global ptr @usb_pcwd_probe._entry.33, section ".printk_index", align 4
@usb_pcwd_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.55, ptr @usb_pcwd_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.37 = internal global ptr @usb_pcwd_probe._entry.36, section ".printk_index", align 4
@usb_pcwd_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016pcwd_usb: initialized. heartbeat=%d sec (nowayout=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@usb_pcwd_probe._entry_ptr.40 = internal global ptr @usb_pcwd_probe._entry.38, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb_pcwd_intr_done.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb_pcwd_intr_done\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - urb shutting down with status: %d\00", [57 x i8] zeroinitializer }, align 32
@usb_pcwd_intr_done.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - nonzero urb status received: %d\00", [59 x i8] zeroinitializer }, align 32
@usb_pcwd_intr_done.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.44, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"received following data cmd=0x%02x msb=0x%02x lsb=0x%02x\00", [39 x i8] zeroinitializer }, align 32
@usb_pcwd_intr_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.41, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013pcwd_usb: can't resubmit intr, usb_submit_urb failed with result %d\0A\00", [57 x i8] zeroinitializer }, align 32
@usb_pcwd_intr_done._entry_ptr = internal global ptr @usb_pcwd_intr_done._entry, section ".printk_index", align 4
@usb_pcwd_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013pcwd_usb: Card did not acknowledge disable attempt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_pcwd_stop\00", [18 x i8] zeroinitializer }, align 32
@usb_pcwd_stop._entry_ptr = internal global ptr @usb_pcwd_stop._entry, section ".printk_index", align 4
@usb_pcwd_send_command.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_pcwd_send_command\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\00", [40 x i8] zeroinitializer }, align 32
@usb_pcwd_send_command.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.50, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"usb_pcwd_send_command: error in usb_control_msg for cmd 0x%x 0x%x 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@usb_pcwd_temperature_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @usb_pcwd_temperature_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @usb_pcwd_temperature_open, ptr null, ptr @usb_pcwd_temperature_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@usb_pcwd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @usb_pcwd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_pcwd_ioctl, ptr null, ptr null, i32 0, ptr @usb_pcwd_open, ptr null, ptr @usb_pcwd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@expect_release = internal global { i1, [31 x i8] } zeroinitializer, align 32
@usb_pcwd_ioctl.ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"pcwd_usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@usb_pcwd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013pcwd_usb: Card did not acknowledge enable attempt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_pcwd_start\00", [17 x i8] zeroinitializer }, align 32
@usb_pcwd_start._entry_ptr = internal global ptr @usb_pcwd_start._entry, section ".printk_index", align 4
@is_active = internal global { i32, [28 x i8] } zeroinitializer, align 32
@usb_pcwd_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012pcwd_usb: Unexpected close, not stopping watchdog!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_pcwd_release\00", [47 x i8] zeroinitializer }, align 32
@usb_pcwd_release._entry_ptr = internal global ptr @usb_pcwd_release._entry, section ".printk_index", align 4
@disconnect_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @disconnect_mutex, i64 52), ptr getelementptr (i8, ptr @disconnect_mutex, i64 52) }, ptr @disconnect_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@usb_pcwd_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016pcwd_usb: USB PC Watchdog disconnected\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_pcwd_disconnect\00", [44 x i8] zeroinitializer }, align 32
@usb_pcwd_disconnect._entry_ptr = internal global ptr @usb_pcwd_disconnect._entry, section ".printk_index", align 4
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disconnect_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disconnect_mutex\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.64 = internal global [11 x i64] [i64 9, i64 32, i64 2147768065, i64 2147768066, i64 2147768067, i64 2147768068, i64 2147768069, i64 2147768071, i64 2147768074, i64 2150127360, i64 3221509894]
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 56, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 62, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"usb_pcwd_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 157, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 805, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"usb_pcwd_table\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 72, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 107, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 615, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 624, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 636, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"usb_pcwd_device\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 146, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 650, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 661, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 679, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 694, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 696, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 698, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 704, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"heartbeat_tbl\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 95, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 717, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"usb_pcwd_notifier\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 578, i32 30 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 723, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [29 x i8] c"usb_pcwd_temperature_miscdev\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 572, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 729, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"usb_pcwd_miscdev\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 558, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 736, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 744, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 180, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 185, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 190, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 203, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 293, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 229, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 239, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 574, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant [26 x i8] c"usb_pcwd_temperature_fops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 564, i32 37 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 174, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 560, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant [14 x i8] c"usb_pcwd_fops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 548, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"expect_release\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 393, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 275, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [10 x i8] c"is_active\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 110, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 495, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"disconnect_mutex\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 802, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [31 x i8] c"../drivers/watchdog/pcwd_usb.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 149, i32 8 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_heartbeat237, ptr @__UNIQUE_ID_heartbeattype236, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_nowayout239, ptr @__UNIQUE_ID_nowayouttype238, ptr @__exitcall_usb_pcwd_driver_exit, ptr @__initcall__kmod_pcwd_usb__245_805_usb_pcwd_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @usb_pcwd_disconnect._entry, ptr @usb_pcwd_disconnect._entry_ptr, ptr @usb_pcwd_driver_exit, ptr @usb_pcwd_intr_done._entry, ptr @usb_pcwd_intr_done._entry_ptr, ptr @usb_pcwd_probe._entry, ptr @usb_pcwd_probe._entry.11, ptr @usb_pcwd_probe._entry.14, ptr @usb_pcwd_probe._entry.19, ptr @usb_pcwd_probe._entry.22, ptr @usb_pcwd_probe._entry.27, ptr @usb_pcwd_probe._entry.30, ptr @usb_pcwd_probe._entry.33, ptr @usb_pcwd_probe._entry.36, ptr @usb_pcwd_probe._entry.38, ptr @usb_pcwd_probe._entry.4, ptr @usb_pcwd_probe._entry.7, ptr @usb_pcwd_probe._entry_ptr, ptr @usb_pcwd_probe._entry_ptr.13, ptr @usb_pcwd_probe._entry_ptr.16, ptr @usb_pcwd_probe._entry_ptr.21, ptr @usb_pcwd_probe._entry_ptr.24, ptr @usb_pcwd_probe._entry_ptr.29, ptr @usb_pcwd_probe._entry_ptr.32, ptr @usb_pcwd_probe._entry_ptr.35, ptr @usb_pcwd_probe._entry_ptr.37, ptr @usb_pcwd_probe._entry_ptr.40, ptr @usb_pcwd_probe._entry_ptr.6, ptr @usb_pcwd_probe._entry_ptr.9, ptr @usb_pcwd_release._entry, ptr @usb_pcwd_release._entry_ptr, ptr @usb_pcwd_start._entry, ptr @usb_pcwd_start._entry_ptr, ptr @usb_pcwd_stop._entry, ptr @usb_pcwd_stop._entry_ptr, ptr @heartbeat, ptr @nowayout, ptr @usb_pcwd_driver, ptr @.str, ptr @usb_pcwd_table, ptr @cards_found, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @usb_pcwd_device, ptr @usb_pcwd_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @heartbeat_tbl, ptr @.str.28, ptr @usb_pcwd_notifier, ptr @.str.31, ptr @usb_pcwd_temperature_miscdev, ptr @.str.34, ptr @usb_pcwd_miscdev, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @usb_pcwd_temperature_fops, ptr @.str.54, ptr @.str.55, ptr @usb_pcwd_fops, ptr @expect_release, ptr @usb_pcwd_ioctl.ident, ptr @.str.56, ptr @.str.57, ptr @is_active, ptr @.str.58, ptr @.str.59, ptr @disconnect_mutex, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_temperature_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_intr_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_temperature_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_release to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_ioctl.ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_active to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcwd_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_pcwd_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_pcwd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @usb_pcwd_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %fw_rev_major = alloca i8, align 1
  %fw_rev_minor = alloca i8, align 1
  %fw_ver_str = alloca [20 x i8], align 1
  %option_switches = alloca i8, align 1
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_rev_major) #10
  %2 = ptrtoint ptr %fw_rev_major to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %fw_rev_major, align 1, !annotation !177
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_rev_minor) #10
  %3 = ptrtoint ptr %fw_rev_minor to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %fw_rev_minor, align 1, !annotation !177
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fw_ver_str) #10
  %4 = call ptr @memset(ptr %fw_ver_str, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %option_switches) #10
  %5 = ptrtoint ptr %option_switches to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %option_switches, align 1, !annotation !177
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #10
  %6 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %dummy, align 1, !annotation !177
  %7 = load i32, ptr @cards_found, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @cards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %8 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp3 = icmp eq i8 %11, 3
  br i1 %cmp3, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp14 = icmp eq i8 %13, 0
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %endpoint18 = getelementptr inbounds %struct.usb_host_interface, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %endpoint18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %endpoint18, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i.i, align 1
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp.i.not.i = icmp eq i8 %18, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end17.do.end24_crit_edge

if.end17.do.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

usb_endpoint_is_int_in.exit:                      ; preds = %if.end17
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool.not = icmp sgt i8 %20, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.do.end24_crit_edge, label %if.end27

usb_endpoint_is_int_in.exit.do.end24_crit_edge:   ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end24:                                         ; preds = %usb_endpoint_is_int_in.exit.do.end24_crit_edge, %if.end17.do.end24_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end27:                                         ; preds = %usb_endpoint_is_int_in.exit
  %21 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv28 = zext i8 %22 to i32
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %24, 8
  %shl1.i = shl nuw nsw i32 %conv28, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or30 = or i32 %or.i, 1073741952
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 132) #14
  %cmp32 = icmp eq ptr %call7.i.i, null
  br i1 %cmp32, label %if.end27.if.end169_crit_edge, label %if.end35

if.end27.if.end169_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.end35:                                         ; preds = %if.end27
  store ptr %call7.i.i, ptr @usb_pcwd_device, align 4
  %mtx = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.10, ptr noundef nonnull @usb_pcwd_probe.__key) #10
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %interface40 = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %interface40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %interface, ptr %interface40, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %28 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bInterfaceNumber, align 2
  %conv42 = zext i8 %29 to i32
  %interface_number = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %interface_number to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv42, ptr %interface_number, align 8
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 4
  %31 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %wMaxPacketSize, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %34 = tail call i16 @llvm.umax.i16(i16 %33, i16 8)
  %spec.select = zext i16 %34 to i32
  %intr_size = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %intr_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select, ptr %intr_size, align 4
  %intr_dma = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 4
  %call49 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %spec.select, i32 noundef 3264, ptr noundef %intr_dma) #10
  %intr_buffer = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %intr_buffer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call49, ptr %intr_buffer, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %if.then168

if.end58:                                         ; preds = %if.end35
  %call59 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %intr_urb = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %intr_urb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call59, ptr %intr_urb, align 8
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %if.end58.if.then168_crit_edge, label %if.end63

if.end58.if.then168_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then168

if.end63:                                         ; preds = %if.end58
  %38 = ptrtoint ptr %intr_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intr_buffer, align 4
  %40 = ptrtoint ptr %intr_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intr_size, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 5
  %42 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bInterval, align 1
  %conv67 = zext i8 %43 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 8
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 10
  %45 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or30, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 14
  %46 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %39, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %41, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 28
  %48 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @usb_pcwd_intr_done, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 27
  %49 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %50 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp.i = icmp eq i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp6.i = icmp ugt i32 %51, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end63.usb_fill_int_urb.exit_crit_edge

if.end63.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %52 = tail call i32 @llvm.smax.i32(i32 %conv67, i32 1) #10
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 16) #10
  %sub.i = add nsw i32 %53, -1
  %shl.i229 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end63.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i229, %if.then.i ], [ %conv67, %if.end63.usb_fill_int_urb.exit_crit_edge ]
  %54 = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 25
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %interval.sink.i, ptr %54, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 23
  %56 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %start_frame.i, align 4
  %57 = ptrtoint ptr %intr_dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %intr_dma, align 8
  %59 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %intr_urb, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %transfer_dma, align 4
  %62 = load ptr, ptr %intr_urb, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %transfer_flags, align 4
  %or71 = or i32 %64, 4
  store i32 %or71, ptr %transfer_flags, align 4
  %65 = load ptr, ptr %intr_urb, align 8
  %call73 = tail call i32 @usb_submit_urb(ptr noundef %65, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end81, label %do.end78

do.end78:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  br label %if.then168

if.end81:                                         ; preds = %usb_fill_int_urb.exit
  %exists = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 11
  %66 = ptrtoint ptr %exists to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %exists, align 4
  tail call fastcc void @usb_pcwd_stop(ptr noundef nonnull %call7.i.i)
  %call83 = call fastcc i32 @usb_pcwd_send_command(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 8, ptr noundef nonnull %fw_rev_major, ptr noundef nonnull %fw_rev_minor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %fw_rev_major to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fw_rev_major, align 1
  %conv86 = zext i8 %68 to i32
  %69 = ptrtoint ptr %fw_rev_minor to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fw_rev_minor, align 1
  %conv87 = zext i8 %70 to i32
  %call88 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_ver_str, ptr noundef nonnull @.str.17, i32 noundef %conv86, i32 noundef %conv87)
  br label %do.end94

if.else:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %71 = call ptr @memcpy(ptr %fw_ver_str, ptr @.str.18, i32 17)
  br label %do.end94

do.end94:                                         ; preds = %if.else, %if.then85
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %fw_ver_str) #13
  %call98 = call fastcc i32 @usb_pcwd_send_command(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 12, ptr noundef nonnull %dummy, ptr noundef nonnull %option_switches)
  %72 = ptrtoint ptr %option_switches to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %option_switches, align 1
  %conv103 = zext i8 %73 to i32
  %and = and i32 %conv103, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  %cond106 = select i1 %tobool105.not, ptr @.str.26, ptr @.str.25
  %and108 = and i32 %conv103, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  %cond110 = select i1 %tobool109.not, ptr @.str.26, ptr @.str.25
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv103, ptr noundef nonnull %cond106, ptr noundef nonnull %cond110) #13
  %74 = load i32, ptr @heartbeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp112 = icmp eq i32 %74, 0
  br i1 %cmp112, label %if.then114, label %do.end94.if.end118_crit_edge

do.end94.if.end118_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then114:                                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  %75 = and i8 %73, 7
  %and116 = zext i8 %75 to i32
  %arrayidx117 = getelementptr [8 x i32], ptr @heartbeat_tbl, i32 0, i32 %and116
  %76 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx117, align 4
  store i32 %77, ptr @heartbeat, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %do.end94.if.end118_crit_edge
  %78 = load i32, ptr @heartbeat, align 4
  %call119 = call fastcc i32 @usb_pcwd_set_heartbeat(ptr noundef nonnull %call7.i.i, i32 noundef %78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end118.if.end128_crit_edge, label %if.then121

if.end118.if.end128_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef 0) #13
  br label %if.end128

if.end128:                                        ; preds = %if.then121, %if.end118.if.end128_crit_edge
  %call129 = call i32 @register_reboot_notifier(ptr noundef nonnull @usb_pcwd_notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130.not = icmp eq i32 %call129, 0
  br i1 %cmp130.not, label %if.end138, label %do.end135

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call129) #13
  br label %if.then168

if.end138:                                        ; preds = %if.end128
  %call139 = call i32 @misc_register(ptr noundef nonnull @usb_pcwd_temperature_miscdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140.not = icmp eq i32 %call139, 0
  br i1 %cmp140.not, label %if.end148, label %do.end145

do.end145:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 131, i32 noundef %call139) #13
  br label %err_out_unregister_reboot

if.end148:                                        ; preds = %if.end138
  %call149 = call i32 @misc_register(ptr noundef nonnull @usb_pcwd_miscdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150.not = icmp eq i32 %call149, 0
  br i1 %cmp150.not, label %if.end158, label %do.end155

do.end155:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 130, i32 noundef %call149) #13
  call void @misc_deregister(ptr noundef nonnull @usb_pcwd_temperature_miscdev) #10
  br label %err_out_unregister_reboot

if.end158:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %80 = load i32, ptr @heartbeat, align 4
  %81 = load i8, ptr @nowayout, align 1, !range !178
  %82 = zext i8 %81 to i32
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %80, i32 noundef %82) #13
  br label %cleanup

err_out_unregister_reboot:                        ; preds = %do.end155, %do.end145
  %retval1.0 = phi i32 [ %call139, %do.end145 ], [ %call149, %do.end155 ]
  %call166 = call i32 @unregister_reboot_notifier(ptr noundef nonnull @usb_pcwd_notifier) #10
  br label %if.then168

if.then168:                                       ; preds = %err_out_unregister_reboot, %do.end135, %do.end78, %if.end58.if.then168_crit_edge, %do.end55
  %retval1.1.ph = phi i32 [ -12, %do.end55 ], [ -12, %if.end58.if.then168_crit_edge ], [ %retval1.0, %err_out_unregister_reboot ], [ %call129, %do.end135 ], [ -5, %do.end78 ]
  %intr_urb.i = getelementptr inbounds %struct.usb_pcwd_private, ptr %call7.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %intr_urb.i, align 8
  call void @usb_free_urb(ptr noundef %84) #10
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i, align 8
  %87 = ptrtoint ptr %intr_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %intr_size, align 4
  %89 = ptrtoint ptr %intr_buffer to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %intr_buffer, align 4
  %91 = ptrtoint ptr %intr_dma to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %intr_dma, align 8
  call void @usb_free_coherent(ptr noundef %86, i32 noundef %88, ptr noundef %90, i32 noundef %92) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end27.if.end169_crit_edge
  %retval1.1233 = phi i32 [ %retval1.1.ph, %if.then168 ], [ -12, %if.end27.if.end169_crit_edge ]
  store ptr null, ptr @usb_pcwd_device, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end169, %if.end158, %do.end24, %if.end11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %retval1.1233, %if.end169 ], [ 0, %if.end158 ], [ -19, %do.end24 ], [ -19, %do.end8 ], [ -19, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %option_switches) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fw_ver_str) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_rev_minor) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_rev_major) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_pcwd_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @disconnect_mutex, i32 noundef 0) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %mtx = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %2 = load i8, ptr @nowayout, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %3 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -91, ptr %msb.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %4 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -61, ptr %lsb.i, align 1
  %call.i = call fastcc i32 @usb_pcwd_send_command(ptr noundef %1, i8 noundef zeroext 48, ptr noundef nonnull %msb.i, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.do.end.i_crit_edge, label %lor.lhs.false.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then
  %5 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lsb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp2.not.i = icmp eq i8 %6, 0
  br i1 %cmp2.not.i, label %lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_pcwd_stop.exit

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %usb_pcwd_stop.exit

usb_pcwd_stop.exit:                               ; preds = %do.end.i, %lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  br label %if.end

if.end:                                           ; preds = %usb_pcwd_stop.exit, %entry.if.end_crit_edge
  %exists = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %exists to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %exists, align 4
  tail call void @misc_deregister(ptr noundef nonnull @usb_pcwd_miscdev) #10
  tail call void @misc_deregister(ptr noundef nonnull @usb_pcwd_temperature_miscdev) #10
  %call2 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @usb_pcwd_notifier) #10
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  %intr_urb.i = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intr_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %9) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %intr_size.i = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %intr_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_size.i, align 4
  %intr_buffer.i = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %intr_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intr_buffer.i, align 4
  %intr_dma.i = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %intr_dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17) #10
  tail call void @kfree(ptr noundef %1) #10
  %18 = load i32, ptr @cards_found, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr @cards_found, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @disconnect_mutex) #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_pcwd_intr_done(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intr_buffer = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intr_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_buffer, align 4
  %interface = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body5 [
    i32 0, label %do.body22
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge83
    i32 -108, label %entry.do.body_crit_edge84
  ]

entry.do.body_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge83, %entry.do.body_crit_edge84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_pcwd_intr_done.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_pcwd_intr_done, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !179

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_pcwd_intr_done.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %10) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_pcwd_intr_done.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_pcwd_intr_done, %if.then17)) #10
          to label %resubmit [label %if.then17], !srcloc !179

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_pcwd_intr_done.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %12) #10
  br label %resubmit

do.body22:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_pcwd_intr_done.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_pcwd_intr_done, %if.then34)) #10
          to label %do.end41 [label %if.then34], !srcloc !179

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %conv = zext i8 %14 to i32
  %arrayidx35 = getelementptr i8, ptr %3, i32 1
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %16 to i32
  %arrayidx37 = getelementptr i8, ptr %3, i32 2
  %17 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_pcwd_intr_done.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %conv36, i32 noundef %conv38) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then34, %do.body22
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %cmd_command = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %cmd_command to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %cmd_command, align 4
  %arrayidx43 = getelementptr i8, ptr %3, i32 1
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx43, align 1
  %cmd_data_msb = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %cmd_data_msb to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %cmd_data_msb, align 1
  %arrayidx44 = getelementptr i8, ptr %3, i32 2
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx44, align 1
  %cmd_data_lsb = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %cmd_data_lsb to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %cmd_data_lsb, align 2
  %cmd_received = getelementptr inbounds %struct.usb_pcwd_private, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_received, i32 noundef 4) #10
  %28 = ptrtoint ptr %cmd_received to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %cmd_received, align 4
  br label %resubmit

resubmit:                                         ; preds = %do.end41, %if.then17, %do.body5
  %call45 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %resubmit.cleanup_crit_edge, label %do.end50

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end50:                                         ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call45) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %resubmit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_pcwd_stop(ptr noundef %usb_pcwd) unnamed_addr #2 align 64 {
entry:
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb) #10
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -91, ptr %msb, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb) #10
  %1 = ptrtoint ptr %lsb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -61, ptr %lsb, align 1
  %call = call fastcc i32 @usb_pcwd_send_command(ptr noundef %usb_pcwd, i8 noundef zeroext 48, ptr noundef nonnull %msb, ptr noundef nonnull %lsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lsb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not = icmp eq i8 %3, 0
  br i1 %cmp2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_pcwd_send_command(ptr noundef %usb_pcwd, i8 noundef zeroext %cmd, ptr nocapture noundef %msb, ptr nocapture noundef %lsb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usb_pcwd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %exists = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 11
  %0 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 6) #14
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cmd, ptr %call7.i, align 8
  %4 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msb, align 1
  %arrayidx4 = getelementptr i8, ptr %call7.i, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx4, align 1
  %7 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lsb, align 1
  %arrayidx5 = getelementptr i8, ptr %call7.i, i32 2
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr i8, ptr %call7.i, i32 5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 4
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx8, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_pcwd_send_command.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_pcwd_send_command, %if.then13)) #10
          to label %do.end [label %if.then13], !srcloc !179

if.then13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %interface = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 1
  %13 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4, align 1
  %conv16 = zext i8 %18 to i32
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5, align 2
  %conv18 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_pcwd_send_command.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv18) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end3
  %cmd_received = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_received, i32 noundef 4) #10
  %21 = ptrtoint ptr %cmd_received to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %cmd_received, align 4
  %22 = ptrtoint ptr %usb_pcwd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_pcwd, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i = shl i32 %25, 8
  %or = or i32 %shl.i, -2147483648
  %interface_number = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 2
  %26 = ptrtoint ptr %interface_number to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interface_number, align 4
  %conv22 = trunc i32 %27 to i16
  %call23 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 512, i16 noundef zeroext %conv22, ptr noundef nonnull %call7.i, i16 noundef zeroext 6, i32 noundef 250) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 6
  br i1 %cmp24.not, label %do.end.for.body_crit_edge, label %do.body27

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_pcwd_send_command.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_pcwd_send_command, %if.then39)) #10
          to label %for.body [label %if.then39], !srcloc !179

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %interface40 = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 1
  %28 = ptrtoint ptr %interface40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %interface40, align 4
  %dev41 = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  %conv42 = zext i8 %cmd to i32
  %30 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msb, align 1
  %conv43 = zext i8 %31 to i32
  %32 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lsb, align 1
  %conv44 = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_pcwd_send_command.__UNIQUE_ID_ddebug244, ptr noundef %dev41, ptr noundef nonnull @.str.50, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv44) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then39, %do.body27, %do.end.for.body_crit_edge
  %count.0105 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body27 ], [ 0, %if.then39 ], [ 0, %do.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #10
  %call.i.i102 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_received, i32 noundef 4) #10
  %35 = ptrtoint ptr %cmd_received to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cmd_received, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool56.not = icmp eq i32 %36, 0
  %inc = add nuw nsw i32 %count.0105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %count.0105)
  %cmp49 = icmp ult i32 %count.0105, 249
  %or.cond = select i1 %cmp49, i1 %tobool56.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %not.tobool56.not.le = xor i1 %tobool56.not, true
  %spec.select.le = zext i1 %not.tobool56.not.le to i32
  br i1 %tobool56.not, label %for.end.if.end65_crit_edge, label %land.lhs.true

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true:                                    ; preds = %for.end
  %cmd_command = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 7
  %37 = ptrtoint ptr %cmd_command to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cmd_command, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %cmd)
  %cmp62 = icmp eq i8 %38, %cmd
  br i1 %cmp62, label %if.then64, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_data_msb = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 8
  %39 = ptrtoint ptr %cmd_data_msb to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmd_data_msb, align 1
  %41 = ptrtoint ptr %msb to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %msb, align 1
  %cmd_data_lsb = getelementptr inbounds %struct.usb_pcwd_private, ptr %usb_pcwd, i32 0, i32 9
  %42 = ptrtoint ptr %cmd_data_lsb to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cmd_data_lsb, align 2
  %44 = ptrtoint ptr %lsb to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %lsb, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true.if.end65_crit_edge, %for.end.if.end65_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.le, %if.end65 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_pcwd_set_heartbeat(ptr noundef %usb_pcwd, i32 noundef %t) unnamed_addr #2 align 64 {
entry:
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb) #10
  %div = sdiv i32 %t, 256
  %conv = trunc i32 %div to i8
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %msb, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb) #10
  %conv1 = trunc i32 %t to i8
  %1 = ptrtoint ptr %lsb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %lsb, align 1
  %2 = add i32 %t, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %2)
  %3 = icmp ult i32 %2, -65535
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call fastcc i32 @usb_pcwd_send_command(ptr noundef %usb_pcwd, i8 noundef zeroext 25, ptr noundef nonnull %msb, ptr noundef nonnull %lsb)
  store i32 %t, ptr @heartbeat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %1 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -91, ptr %msb.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %2 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -61, ptr %lsb.i, align 1
  %call.i = call fastcc i32 @usb_pcwd_send_command(ptr noundef %0, i8 noundef zeroext 48, ptr noundef nonnull %msb.i, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.do.end.i_crit_edge, label %lor.lhs.false.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lsb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2.not.i = icmp eq i8 %4, 0
  br i1 %cmp2.not.i, label %lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_pcwd_stop.exit

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %usb_pcwd_stop.exit

usb_pcwd_stop.exit:                               ; preds = %do.end.i, %lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  br label %if.end

if.end:                                           ; preds = %usb_pcwd_stop.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_temperature_read(ptr nocapture noundef readnone %file, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %0 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %1 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %msb.i, align 1, !annotation !177
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %2 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %lsb.i, align 1, !annotation !177
  %call.i = call fastcc i32 @usb_pcwd_send_command(ptr noundef %0, i8 noundef zeroext 2, ptr noundef nonnull %msb.i, ptr noundef nonnull %lsb.i) #10
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lsb.i, align 1
  %conv.i = zext i8 %4 to i16
  %mul.i = mul nuw nsw i16 %conv.i, 9
  %div1.i = udiv i16 %mul.i, 5
  %narrow.i = add nuw nsw i16 %div1.i, 32
  %add.i = zext i16 %narrow.i to i32
  %5 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %temperature, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 1, i32 -1226833920) #15, !srcloc !180
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %temperature, i32 noundef 1) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %temperature, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool2.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool2.not, i32 1, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %7 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_temperature_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb_pcwd_temperature_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_write(ptr nocapture noundef readnone %file, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %dummy.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.body.preheader:                               ; preds = %if.then
  store i1 false, ptr @expect_release, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 375) #10
  %add.ptr = getelementptr i8, ptr %data, i32 %i.025
  %1 = tail call i32 @llvm.read_register.i32(metadata !167) #10
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !181
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #10, !srcloc !184
  %asmresult = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.end, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %for.body
  %asmresult3 = extractvalue { i32, i32 } %4, 1
  %conv7 = and i32 %asmresult3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 86
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @expect_release, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.025, 1
  %cmp.not = icmp eq i32 %inc, %len
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %5 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #10
  %6 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %dummy.i, align 1, !annotation !177
  %call.i = call fastcc i32 @usb_pcwd_send_command(ptr noundef %5, i8 noundef zeroext 2, ptr noundef nonnull %dummy.i, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #10
  br label %return

return:                                           ; preds = %if.end15, %for.body.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ %len, %if.end15 ], [ 0, %entry.return_crit_edge ], [ -14, %for.body.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %msb.i146 = alloca i8, align 1
  %lsb.i147 = alloca i8, align 1
  %dummy.i144 = alloca i8, align 1
  %msb.i140 = alloca i8, align 1
  %lsb.i141 = alloca i8, align 1
  %dummy.i = alloca i8, align 1
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %cmd, label %entry.cleanup109_crit_edge [
    i32 -2144839936, label %if.end59.i.i
    i32 -2147199231, label %entry.sw.bb1_crit_edge
    i32 -2147199230, label %entry.sw.bb1_crit_edge158
    i32 -2147199229, label %sw.bb4
    i32 -2147199228, label %sw.bb22
    i32 -2147199227, label %sw.bb48
    i32 -1073457402, label %sw.bb50
    i32 -2147199225, label %entry.sw.bb72_crit_edge
    i32 -2147199222, label %sw.bb88
  ]

entry.sw.bb72_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb72

entry.sw.bb1_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.cleanup109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end59.i.i.cleanup109_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup109_crit_edge:                ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end.i.i:                                       ; preds = %if.end59.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #15, !srcloc !180
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup109_crit_edge

if.end.i.i.cleanup109_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @usb_pcwd_ioctl.ident, i32 noundef 40) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @usb_pcwd_ioctl.ident, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup109

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge158
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 407) #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !167) #10
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !181
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #10, !srcloc !185
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  br label %cleanup109

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %8 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %msb.i, align 1, !annotation !177
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %9 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %lsb.i, align 1, !annotation !177
  %call.i = call fastcc i32 @usb_pcwd_send_command(ptr noundef %7, i8 noundef zeroext 2, ptr noundef nonnull %msb.i, ptr noundef nonnull %lsb.i) #10
  %10 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lsb.i, align 1
  %conv.i = zext i8 %11 to i16
  %mul.i = mul nuw nsw i16 %conv.i, 9
  %div1.i = udiv i16 %mul.i, 5
  %narrow.i = add nuw nsw i16 %div1.i, 32
  %add.i = zext i16 %narrow.i to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 416) #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !167) #10
  %and.i.i.i119 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i119 to ptr
  %cpu_domain.i.i120 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i120) #9, !srcloc !181
  %and.i121 = and i32 %14, -13
  %or.i122 = or i32 %and.i121, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i122) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %add.i, i32 -1226833921) #10, !srcloc !186
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  br label %cleanup109

sw.bb22:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 423) #10
  %16 = tail call i32 @llvm.read_register.i32(metadata !167) #10
  %and.i.i.i123 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i123 to ptr
  %cpu_domain.i.i124 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i124) #9, !srcloc !181
  %and.i125 = and i32 %18, -13
  %or.i126 = or i32 %and.i125, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i126) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #10, !srcloc !187
  %asmresult = extractvalue { i32, i32 } %19, 0
  %asmresult32 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool34.not = icmp eq i32 %asmresult, 0
  br i1 %tobool34.not, label %if.end36, label %sw.bb22.cleanup109_crit_edge

sw.bb22.cleanup109_crit_edge:                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end36:                                         ; preds = %sw.bb22
  %and = and i32 %asmresult32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %20 = load ptr, ptr @usb_pcwd_device, align 4
  tail call fastcc void @usb_pcwd_stop(ptr noundef %20)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %retval23.0 = phi i32 [ 0, %if.then38 ], [ -22, %if.end36.if.end40_crit_edge ]
  %and41 = and i32 %asmresult32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.cleanup109_crit_edge, label %if.then43

if.end40.cleanup109_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %21 = load ptr, ptr @usb_pcwd_device, align 4
  tail call fastcc void @usb_pcwd_start(ptr noundef %21)
  br label %cleanup109

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %22 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #10
  %23 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %dummy.i, align 1, !annotation !177
  %call.i139 = call fastcc i32 @usb_pcwd_send_command(ptr noundef %22, i8 noundef zeroext 2, ptr noundef nonnull %dummy.i, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #10
  br label %cleanup109

sw.bb50:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 447) #10
  %24 = tail call i32 @llvm.read_register.i32(metadata !167) #10
  %and.i.i.i127 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i127 to ptr
  %cpu_domain.i.i128 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i128) #9, !srcloc !181
  %and.i129 = and i32 %26, -13
  %or.i130 = or i32 %and.i129, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i130) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #10, !srcloc !188
  %asmresult60 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult60)
  %tobool63.not = icmp eq i32 %asmresult60, 0
  br i1 %tobool63.not, label %if.end65, label %sw.bb50.cleanup109_crit_edge

sw.bb50.cleanup109_crit_edge:                     ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end65:                                         ; preds = %sw.bb50
  %asmresult61 = extractvalue { i32, i32 } %27, 1
  %28 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i140) #10
  %div.i = sdiv i32 %asmresult61, 256
  %conv.i142 = trunc i32 %div.i to i8
  %29 = ptrtoint ptr %msb.i140 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i142, ptr %msb.i140, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i141) #10
  %conv1.i = trunc i32 %asmresult61 to i8
  %30 = ptrtoint ptr %lsb.i141 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv1.i, ptr %lsb.i141, align 1
  %31 = add i32 %asmresult61, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %31)
  %32 = icmp ult i32 %31, -65535
  br i1 %32, label %usb_pcwd_set_heartbeat.exit, label %cleanup71

usb_pcwd_set_heartbeat.exit:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i141) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i140) #10
  br label %cleanup109

cleanup71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call.i143 = call fastcc i32 @usb_pcwd_send_command(ptr noundef %28, i8 noundef zeroext 25, ptr noundef nonnull %msb.i140, ptr noundef nonnull %lsb.i141) #10
  store i32 %asmresult61, ptr @heartbeat, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i141) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i140) #10
  %33 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i144) #10
  %34 = ptrtoint ptr %dummy.i144 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %dummy.i144, align 1, !annotation !177
  %call.i145 = call fastcc i32 @usb_pcwd_send_command(ptr noundef %33, i8 noundef zeroext 2, ptr noundef nonnull %dummy.i144, ptr noundef nonnull %dummy.i144) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i144) #10
  br label %sw.bb72

sw.bb72:                                          ; preds = %cleanup71, %entry.sw.bb72_crit_edge
  %35 = load i32, ptr @heartbeat, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 458) #10
  %36 = tail call i32 @llvm.read_register.i32(metadata !167) #10
  %and.i.i.i131 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i131 to ptr
  %cpu_domain.i.i132 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i132) #9, !srcloc !181
  %and.i133 = and i32 %38, -13
  %or.i134 = or i32 %and.i133, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i134) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %35, i32 -1226833921) #10, !srcloc !189
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  br label %cleanup109

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %40 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i146) #10
  %41 = ptrtoint ptr %msb.i146 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %msb.i146, align 1, !annotation !177
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i147) #10
  %42 = ptrtoint ptr %lsb.i147 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %lsb.i147, align 1, !annotation !177
  %call.i148 = call fastcc i32 @usb_pcwd_send_command(ptr noundef %40, i8 noundef zeroext 24, ptr noundef nonnull %msb.i146, ptr noundef nonnull %lsb.i147) #10
  %43 = ptrtoint ptr %msb.i146 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %msb.i146, align 1
  %conv.i149 = zext i8 %44 to i32
  %shl.i = shl nuw nsw i32 %conv.i149, 8
  %45 = ptrtoint ptr %lsb.i147 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lsb.i147, align 1
  %conv1.i150 = zext i8 %46 to i32
  %add.i151 = or i32 %shl.i, %conv1.i150
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i147) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i146) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 467) #10
  %47 = tail call i32 @llvm.read_register.i32(metadata !167) #10
  %and.i.i.i135 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i135 to ptr
  %cpu_domain.i.i136 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i136) #9, !srcloc !181
  %and.i137 = and i32 %49, -13
  %or.i138 = or i32 %and.i137, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i138) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %add.i151, i32 -1226833921) #10, !srcloc !190
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #10, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  br label %cleanup109

cleanup109:                                       ; preds = %sw.bb88, %sw.bb72, %usb_pcwd_set_heartbeat.exit, %sw.bb50.cleanup109_crit_edge, %sw.bb48, %if.then43, %if.end40.cleanup109_crit_edge, %sw.bb22.cleanup109_crit_edge, %sw.bb4, %sw.bb1, %copy_to_user.exit, %if.end.i.i.cleanup109_crit_edge, %if.end59.i.i.cleanup109_crit_edge, %entry.cleanup109_crit_edge
  %retval.4 = phi i32 [ %50, %sw.bb88 ], [ %39, %sw.bb72 ], [ 0, %sw.bb48 ], [ %15, %sw.bb4 ], [ %6, %sw.bb1 ], [ -14, %sw.bb22.cleanup109_crit_edge ], [ 0, %if.then43 ], [ %retval23.0, %if.end40.cleanup109_crit_edge ], [ -25, %entry.cleanup109_crit_edge ], [ -14, %if.end59.i.i.cleanup109_crit_edge ], [ -14, %if.end.i.i.cleanup109_crit_edge ], [ -22, %usb_pcwd_set_heartbeat.exit ], [ -14, %sw.bb50.cleanup109_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  %dummy.i = alloca i8, align 1
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @is_active) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %1 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %msb.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %2 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lsb.i, align 1
  %call.i = call fastcc i32 @usb_pcwd_send_command(ptr noundef %0, i8 noundef zeroext 48, ptr noundef nonnull %msb.i, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lsb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2.i = icmp eq i8 %4, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.usb_pcwd_start.exit_crit_edge

lor.lhs.false.i.usb_pcwd_start.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_pcwd_start.exit

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #13
  br label %usb_pcwd_start.exit

usb_pcwd_start.exit:                              ; preds = %do.end.i, %lor.lhs.false.i.usb_pcwd_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  %5 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #10
  %6 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %dummy.i, align 1, !annotation !177
  %call.i4 = call fastcc i32 @usb_pcwd_send_command(ptr noundef %5, i8 noundef zeroext 2, ptr noundef nonnull %dummy.i, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #10
  %call3 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #10
  br label %return

return:                                           ; preds = %usb_pcwd_start.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %usb_pcwd_start.exit ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pcwd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  %dummy.i = alloca i8, align 1
  %msb.i = alloca i8, align 1
  %lsb.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @expect_release, align 1
  br i1 %.b, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb.i) #10
  %1 = ptrtoint ptr %msb.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -91, ptr %msb.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb.i) #10
  %2 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -61, ptr %lsb.i, align 1
  %call.i = call fastcc i32 @usb_pcwd_send_command(ptr noundef %0, i8 noundef zeroext 48, ptr noundef nonnull %msb.i, ptr noundef nonnull %lsb.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.do.end.i_crit_edge, label %lor.lhs.false.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then
  %3 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lsb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2.not.i = icmp eq i8 %4, 0
  br i1 %cmp2.not.i, label %lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_pcwd_stop.exit

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %usb_pcwd_stop.exit

usb_pcwd_stop.exit:                               ; preds = %do.end.i, %lor.lhs.false.i.usb_pcwd_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb.i) #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #13
  %5 = load ptr, ptr @usb_pcwd_device, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #10
  %6 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %dummy.i, align 1, !annotation !177
  %call.i4 = call fastcc i32 @usb_pcwd_send_command(ptr noundef %5, i8 noundef zeroext 2, ptr noundef nonnull %dummy.i, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %usb_pcwd_stop.exit
  store i1 false, ptr @expect_release, align 1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @is_active) #10
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_pcwd_start(ptr noundef %usb_pcwd) unnamed_addr #2 align 64 {
entry:
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb) #10
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %msb, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb) #10
  %1 = ptrtoint ptr %lsb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %lsb, align 1
  %call = call fastcc i32 @usb_pcwd_send_command(ptr noundef %usb_pcwd, i8 noundef zeroext 48, ptr noundef nonnull %msb, ptr noundef nonnull %lsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lsb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2 = icmp eq i8 %3, 0
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !121, !123, !125, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165}
!llvm.named.register.sp = !{!167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/pcwd_usb.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/watchdog/pcwd_usb.c", i32 51, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/watchdog/pcwd_usb.c", i32 52, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_heartbeat, !8, !"__param_heartbeat", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/pcwd_usb.c", i32 57, i32 1}
!9 = !{ptr @__UNIQUE_ID_heartbeattype236, !8, !"__UNIQUE_ID_heartbeattype236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_heartbeat237, !11, !"__UNIQUE_ID_heartbeat237", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/pcwd_usb.c", i32 58, i32 1}
!12 = !{ptr @__param_nowayout, !13, !"__param_nowayout", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/pcwd_usb.c", i32 63, i32 1}
!14 = !{ptr @__UNIQUE_ID_nowayouttype238, !13, !"__UNIQUE_ID_nowayouttype238", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_nowayout239, !16, !"__UNIQUE_ID_nowayout239", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/pcwd_usb.c", i32 64, i32 1}
!17 = !{ptr @__initcall__kmod_pcwd_usb__245_805_usb_pcwd_driver_init6, !18, !"__initcall__kmod_pcwd_usb__245_805_usb_pcwd_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/pcwd_usb.c", i32 805, i32 1}
!19 = !{ptr @__exitcall_usb_pcwd_driver_exit, !18, !"__exitcall_usb_pcwd_driver_exit", i1 false, i1 false}
!20 = !{ptr @__param_str_heartbeat, !8, !"__param_str_heartbeat", i1 false, i1 false}
!21 = !{ptr @heartbeat, !22, !"heartbeat", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/pcwd_usb.c", i32 56, i32 12}
!23 = !{ptr @__param_str_nowayout, !13, !"__param_str_nowayout", i1 false, i1 false}
!24 = !{ptr @nowayout, !25, !"nowayout", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/pcwd_usb.c", i32 62, i32 13}
!26 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usb_pcwd_driver, !28, !"usb_pcwd_driver", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/pcwd_usb.c", i32 157, i32 26}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/pcwd_usb.c", i32 615, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @usb_pcwd_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @usb_pcwd_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/watchdog/pcwd_usb.c", i32 624, i32 3}
!37 = !{ptr @usb_pcwd_probe._entry.4, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @usb_pcwd_probe._entry_ptr.6, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/pcwd_usb.c", i32 636, i32 3}
!41 = !{ptr @usb_pcwd_probe._entry.7, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_pcwd_probe._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @usb_pcwd_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/pcwd_usb.c", i32 650, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/pcwd_usb.c", i32 661, i32 3}
!48 = !{ptr @usb_pcwd_probe._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @usb_pcwd_probe._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/pcwd_usb.c", i32 679, i32 3}
!52 = !{ptr @usb_pcwd_probe._entry.14, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @usb_pcwd_probe._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/pcwd_usb.c", i32 694, i32 23}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/pcwd_usb.c", i32 696, i32 23}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/pcwd_usb.c", i32 698, i32 2}
!60 = !{ptr @usb_pcwd_probe._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @usb_pcwd_probe._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/watchdog/pcwd_usb.c", i32 704, i32 2}
!64 = !{ptr @usb_pcwd_probe._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @usb_pcwd_probe._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/watchdog/pcwd_usb.c", i32 717, i32 3}
!70 = !{ptr @usb_pcwd_probe._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @usb_pcwd_probe._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/watchdog/pcwd_usb.c", i32 723, i32 3}
!74 = !{ptr @usb_pcwd_probe._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @usb_pcwd_probe._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/watchdog/pcwd_usb.c", i32 729, i32 3}
!78 = !{ptr @usb_pcwd_probe._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @usb_pcwd_probe._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @usb_pcwd_probe._entry.36, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/watchdog/pcwd_usb.c", i32 736, i32 3}
!82 = !{ptr @usb_pcwd_probe._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/watchdog/pcwd_usb.c", i32 744, i32 2}
!85 = !{ptr @usb_pcwd_probe._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @usb_pcwd_probe._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @cards_found, !88, !"cards_found", i1 false, i1 false}
!88 = !{!"../drivers/watchdog/pcwd_usb.c", i32 107, i32 12}
!89 = !{ptr @usb_pcwd_device, !90, !"usb_pcwd_device", i1 false, i1 false}
!90 = !{!"../drivers/watchdog/pcwd_usb.c", i32 146, i32 33}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/watchdog/pcwd_usb.c", i32 180, i32 3}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @usb_pcwd_intr_done.__UNIQUE_ID_ddebug240, !92, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/watchdog/pcwd_usb.c", i32 185, i32 3}
!97 = !{ptr @usb_pcwd_intr_done.__UNIQUE_ID_ddebug241, !96, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/watchdog/pcwd_usb.c", i32 190, i32 2}
!100 = !{ptr @usb_pcwd_intr_done.__UNIQUE_ID_ddebug242, !99, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/watchdog/pcwd_usb.c", i32 203, i32 3}
!103 = !{ptr @usb_pcwd_intr_done._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @usb_pcwd_intr_done._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/watchdog/pcwd_usb.c", i32 293, i32 3}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @usb_pcwd_stop._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @usb_pcwd_stop._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/watchdog/pcwd_usb.c", i32 229, i32 2}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @usb_pcwd_send_command.__UNIQUE_ID_ddebug243, !111, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/watchdog/pcwd_usb.c", i32 239, i32 3}
!116 = !{ptr @usb_pcwd_send_command.__UNIQUE_ID_ddebug244, !115, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!117 = !{ptr @heartbeat_tbl, !118, !"heartbeat_tbl", i1 false, i1 false}
!118 = !{!"../drivers/watchdog/pcwd_usb.c", i32 95, i32 18}
!119 = !{ptr @usb_pcwd_notifier, !120, !"usb_pcwd_notifier", i1 false, i1 false}
!120 = !{!"../drivers/watchdog/pcwd_usb.c", i32 578, i32 30}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/watchdog/pcwd_usb.c", i32 574, i32 11}
!123 = !{ptr @usb_pcwd_temperature_miscdev, !124, !"usb_pcwd_temperature_miscdev", i1 false, i1 false}
!124 = !{!"../drivers/watchdog/pcwd_usb.c", i32 572, i32 26}
!125 = !{ptr @usb_pcwd_temperature_fops, !126, !"usb_pcwd_temperature_fops", i1 false, i1 false}
!126 = !{!"../drivers/watchdog/pcwd_usb.c", i32 564, i32 37}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!129 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/watchdog/pcwd_usb.c", i32 560, i32 11}
!136 = !{ptr @usb_pcwd_miscdev, !137, !"usb_pcwd_miscdev", i1 false, i1 false}
!137 = !{!"../drivers/watchdog/pcwd_usb.c", i32 558, i32 26}
!138 = !{ptr @usb_pcwd_fops, !139, !"usb_pcwd_fops", i1 false, i1 false}
!139 = !{!"../drivers/watchdog/pcwd_usb.c", i32 548, i32 37}
!140 = distinct !{null, !141, !"expect_release", i1 false, i1 false}
!141 = !{!"../drivers/watchdog/pcwd_usb.c", i32 111, i32 13}
!142 = !{ptr @usb_pcwd_ioctl.ident, !143, !"ident", i1 false, i1 false}
!143 = !{!"../drivers/watchdog/pcwd_usb.c", i32 393, i32 36}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/watchdog/pcwd_usb.c", i32 275, i32 3}
!146 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @usb_pcwd_start._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @usb_pcwd_start._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @is_active, !150, !"is_active", i1 false, i1 false}
!150 = !{!"../drivers/watchdog/pcwd_usb.c", i32 110, i32 22}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/watchdog/pcwd_usb.c", i32 495, i32 3}
!153 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @usb_pcwd_release._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @usb_pcwd_release._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/watchdog/pcwd_usb.c", i32 802, i32 2}
!158 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @usb_pcwd_disconnect._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @usb_pcwd_disconnect._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/watchdog/pcwd_usb.c", i32 149, i32 8}
!163 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @disconnect_mutex, !162, !"disconnect_mutex", i1 false, i1 false}
!165 = !{ptr @usb_pcwd_table, !166, !"usb_pcwd_table", i1 false, i1 false}
!166 = !{!"../drivers/watchdog/pcwd_usb.c", i32 72, i32 35}
!167 = !{!"sp"}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{!"auto-init"}
!178 = !{i8 0, i8 2}
!179 = !{i64 2148972854, i64 2148972859, i64 2148972872, i64 2148972916, i64 2148972950, i64 2148972971}
!180 = !{i64 2152705871, i64 2152705896}
!181 = !{i64 5196684}
!182 = !{i64 5196881}
!183 = !{i64 2152682114}
!184 = !{i64 2154154717, i64 2154154997, i64 2154155331, i64 2154155665}
!185 = !{i64 2154171609, i64 2154171889, i64 2154172223, i64 2154172557}
!186 = !{i64 2154185166, i64 2154185446, i64 2154185780, i64 2154186114}
!187 = !{i64 2154197412, i64 2154197692, i64 2154198026, i64 2154198360}
!188 = !{i64 2154211103, i64 2154211383, i64 2154211717, i64 2154212051}
!189 = !{i64 2154221314, i64 2154221594, i64 2154221928, i64 2154222262}
!190 = !{i64 2154230809, i64 2154231089, i64 2154231423, i64 2154231757}
