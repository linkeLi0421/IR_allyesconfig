; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-asus.c_pt.bc'
source_filename = "../drivers/hid/hid-asus.c"
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
%struct.asus_touchpad_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.asus_drvdata = type { i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.power_supply_desc, i32, i32, i8, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asus_kbd_leds = type { %struct.led_classdev, ptr, %struct.work_struct, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_mt = type { i32, i32, i32, i32, i32, ptr, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [57 x i8] c"hid_asus.author=Yusuke Fujimaki <usk.fujimaki@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [61 x i8] c"hid_asus.author=Brendan McGrath <redmcg@redmandi.dyndns.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [63 x i8] c"hid_asus.author=Victor Vlasenko <victor.vlasenko@sysgears.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [70 x i8] c"hid_asus.author=Frederik Wenigwieser <frederik.wenigwieser@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [52 x i8] c"hid_asus.description=Asus HID Keyboard and TouchPad\00", section ".modinfo", align 1
@__initcall__kmod_hid_asus__238_1278_asus_driver_init6 = internal global ptr @asus_driver_init, section ".initcall6.init", align 4
@asus_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @asus_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @asus_probe, ptr @asus_remove, ptr null, ptr @asus_raw_event, ptr null, ptr @asus_event, ptr null, ptr @asus_report_fixup, ptr @asus_input_mapping, ptr null, ptr @asus_input_configured, ptr null, ptr null, ptr null, ptr @asus_reset_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asus_driver_exit = internal global ptr @asus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [35 x i8] c"hid_asus.file=drivers/hid/hid-asus\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"hid_asus.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_asus\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"asus\00", [27 x i8] zeroinitializer }, align 32
@asus_devices = internal constant { [18 x %struct.hid_device_id], [64 x i8] } { [18 x %struct.hid_device_id] [%struct.hid_device_id { i16 24, i16 0, i32 2821, i32 34181, i32 19 }, %struct.hid_device_id { i16 24, i16 0, i32 2821, i32 257, i32 14 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6228, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6199, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6178, i32 256 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6249, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6246, i32 2080 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6582, i32 2080 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6507, i32 4096 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6112, i32 80 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6151, i32 80 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4389, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1578, i32 20752, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3141, i32 20754, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 2821, i32 34050, i32 128 }, %struct.hid_device_id { i16 3, i16 0, i32 1165, i32 52816, i32 1024 }, %struct.hid_device_id { i16 3, i16 1, i32 2821, i32 6205, i32 0 }, %struct.hid_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@asus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1011, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't alloc Asus descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"asus_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-asus.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asus_probe._entry_ptr = internal global ptr @asus_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"T90CHI\00", [25 x i8] zeroinitializer }, align 32
@asus_i2c_tp = internal constant { %struct.asus_touchpad_info, [36 x i8] } { %struct.asus_touchpad_info { i32 2794, i32 1758, i32 0, i32 0, i32 5, i32 5, i32 28 }, [36 x i8] zeroinitializer }, align 32
@asus_t100ta_tp = internal constant { %struct.asus_touchpad_info, [36 x i8] } { %struct.asus_touchpad_info { i32 2240, i32 1120, i32 30, i32 27, i32 5, i32 5, i32 28 }, [36 x i8] zeroinitializer }, align 32
@asus_t100chi_tp = internal constant { %struct.asus_touchpad_info, [36 x i8] } { %struct.asus_touchpad_info { i32 2640, i32 1320, i32 31, i32 29, i32 3, i32 4, i32 15 }, [36 x i8] zeroinitializer }, align 32
@medion_e1239t_tp = internal constant { %struct.asus_touchpad_info, [36 x i8] } { %struct.asus_touchpad_info { i32 2640, i32 1380, i32 29, i32 28, i32 5, i32 5, i32 32 }, [36 x i8] zeroinitializer }, align 32
@asus_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1080, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Asus hid battery_probe failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@asus_probe._entry_ptr.12 = internal global ptr @asus_probe._entry.10, section ".printk_index", align 4
@asus_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1087, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Asus hid parse failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@asus_probe._entry_ptr.15 = internal global ptr @asus_probe._entry.13, section ".printk_index", align 4
@asus_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1093, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Asus hw start failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@asus_probe._entry_ptr.18 = internal global ptr @asus_probe._entry.16, section ".printk_index", align 4
@asus_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1098, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Asus input not registered\0A\00", [37 x i8] zeroinitializer }, align 32
@asus_probe._entry_ptr.21 = internal global ptr @asus_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Asus TouchPad\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Asus Keyboard\00", [18 x i8] zeroinitializer }, align 32
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@asus_battery_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 3, i32 47, i32 66, i32 73], [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asus-keyboard-%s-battery\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@asus_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to register battery device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"asus_battery_probe\00", [45 x i8] zeroinitializer }, align 32
@asus_battery_probe._entry_ptr = internal global ptr @asus_battery_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@asus_start_multitouch.buf = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0D\00\03\01\00", [27 x i8] zeroinitializer }, align 32
@asus_start_multitouch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Asus failed to alloc dma buf: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asus_start_multitouch\00", [42 x i8] zeroinitializer }, align 32
@asus_start_multitouch._entry_ptr = internal global ptr @asus_start_multitouch._entry, section ".printk_index", align 4
@asus_start_multitouch._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 987, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Asus failed to start multitouch: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@asus_start_multitouch._entry_ptr.31 = internal global ptr @asus_start_multitouch._entry.29, section ".printk_index", align 4
@asus_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 318, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unmapped Asus vendor usagepage code 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"asus_event\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@asus_event._entry_ptr = internal global ptr @asus_event._entry, section ".printk_index", align 4
@asus_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 1145, ptr @.str.37, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Fixing up Asus notebook report descriptor\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asus_report_fixup\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@asus_report_fixup._entry_ptr = internal global ptr @asus_report_fixup._entry, section ".printk_index", align 4
@asus_report_fixup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.4, i32 1152, ptr @.str.37, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fixing up Asus T100 keyb report descriptor\0A\00", [52 x i8] zeroinitializer }, align 32
@asus_report_fixup._entry_ptr.40 = internal global ptr @asus_report_fixup._entry.38, section ".printk_index", align 4
@asus_report_fixup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.4, i32 1183, ptr @.str.37, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fixing up %s keyb report descriptor\0A\00", [59 x i8] zeroinitializer }, align 32
@asus_report_fixup._entry_ptr.43 = internal global ptr @asus_report_fixup._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"T100CHI\00", [24 x i8] zeroinitializer }, align 32
@asus_report_fixup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.36, ptr @.str.4, i32 1203, ptr @.str.37, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fixing up Asus G752 keyb report descriptor\0A\00", [52 x i8] zeroinitializer }, align 32
@asus_report_fixup._entry_ptr.47 = internal global ptr @asus_report_fixup._entry.45, section ".printk_index", align 4
@asus_g752_fixed_rdesc = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\19\00*\FF\00", [27 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.hid_map_usage, ptr @.str.50, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Asus Touchpad Keys\00", [45 x i8] zeroinitializer }, align 32
@asus_input_configured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 808, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Asus input mt init slots failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asus_input_configured\00", [42 x i8] zeroinitializer }, align 32
@asus_input_configured._entry_ptr = internal global ptr @asus_input_configured._entry, section ".printk_index", align 4
@asus_input_configured._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 818, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize backlight.\0A\00", [63 x i8] zeroinitializer }, align 32
@asus_input_configured._entry_ptr.56 = internal global ptr @asus_input_configured._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asus::kbd_backlight\00", [44 x i8] zeroinitializer }, align 32
@asus_kbd_register_leds.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&drvdata->kbd_backlight->work)\00", [47 x i8] zeroinitializer }, align 32
@__const.rog_nkey_led_init.buf_init2 = private unnamed_addr constant [16 x i8] c"]ASUS Tech.Inc.\00", align 1
@__const.rog_nkey_led_init.buf_init3 = private unnamed_addr constant [6 x i8] c"]\05 1\00\08", align 1
@rog_nkey_led_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 459, ptr @.str.37, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Asus initialise N-KEY Device\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rog_nkey_led_init\00", [46 x i8] zeroinitializer }, align 32
@rog_nkey_led_init._entry_ptr = internal global ptr @rog_nkey_led_init._entry, section ".printk_index", align 4
@rog_nkey_led_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 463, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Asus failed to send init start command: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rog_nkey_led_init._entry_ptr.63 = internal global ptr @rog_nkey_led_init._entry.61, section ".printk_index", align 4
@rog_nkey_led_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.4, i32 469, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Asus failed to send init command 1.0: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rog_nkey_led_init._entry_ptr.66 = internal global ptr @rog_nkey_led_init._entry.64, section ".printk_index", align 4
@rog_nkey_led_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.4, i32 475, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Asus failed to send init command 1.1: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rog_nkey_led_init._entry_ptr.69 = internal global ptr @rog_nkey_led_init._entry.67, section ".printk_index", align 4
@rog_nkey_led_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.4, i32 485, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Asus failed to send init command 2.0: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rog_nkey_led_init._entry_ptr.72 = internal global ptr @rog_nkey_led_init._entry.70, section ".printk_index", align 4
@rog_nkey_led_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.4, i32 490, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Asus failed to send init command 2.1: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rog_nkey_led_init._entry_ptr.75 = internal global ptr @rog_nkey_led_init._entry.73, section ".printk_index", align 4
@__const.asus_kbd_init.buf = private unnamed_addr constant [16 x i8] c"ZASUS Tech.Inc.\00", align 1
@asus_kbd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 413, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Asus failed to send init command: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asus_kbd_init\00", [18 x i8] zeroinitializer }, align 32
@asus_kbd_init._entry_ptr = internal global ptr @asus_kbd_init._entry, section ".printk_index", align 4
@__const.asus_kbd_get_functions.buf = private unnamed_addr constant [6 x i8] c"Z\05 1\00\08", align 1
@asus_kbd_get_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Asus failed to send configuration command: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"asus_kbd_get_functions\00", [41 x i8] zeroinitializer }, align 32
@asus_kbd_get_functions._entry_ptr = internal global ptr @asus_kbd_get_functions._entry, section ".printk_index", align 4
@asus_kbd_get_functions._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 439, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Asus failed to request functions: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@asus_kbd_get_functions._entry_ptr.82 = internal global ptr @asus_kbd_get_functions._entry.80, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@asus_kbd_backlight_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.4, i32 525, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Asus failed to set keyboard backlight: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"asus_kbd_backlight_work\00", [40 x i8] zeroinitializer }, align 32
@asus_kbd_backlight_work._entry_ptr = internal global ptr @asus_kbd_backlight_work._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 93, i64 94]
@__sancov_gen_cov_switch_values.85 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 138, i64 158, i64 234, i64 236]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 76, i64 101]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 65538, i64 65664]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 4278190080, i64 4281401344]
@__sancov_gen_cov_switch_values.90 = internal global [21 x i64] [i64 19, i64 16, i64 16, i64 32, i64 53, i64 56, i64 92, i64 107, i64 108, i64 124, i64 130, i64 136, i64 146, i64 153, i64 174, i64 178, i64 179, i64 181, i64 186, i64 196, i64 197]
@__sancov_gen_cov_switch_values.91 = internal global [19 x i64] [i64 17, i64 16, i64 241, i64 242, i64 243, i64 244, i64 247, i64 248, i64 65281, i64 65282, i64 65283, i64 65284, i64 65285, i64 65286, i64 65287, i64 65288, i64 65289, i64 65290, i64 65291]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 16, i64 226, i64 233, i64 234]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 93]
@__sancov_gen_cov_switch_values.94 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 47, i64 66, i64 73]
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"asus_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1264, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1278, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1265, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"asus_devices\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1218, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1011, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1023, i32 25 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"asus_i2c_tp\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 132, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"asus_t100ta_tp\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 140, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"asus_t100chi_tp\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 170, i32 40 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"medion_e1239t_tp\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 180, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1079, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1087, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1093, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1098, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1104, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1106, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"asus_battery_props\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 670, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 735, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 748, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 970, i32 29 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 977, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 987, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 317, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1145, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1152, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1181, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1203, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [22 x i8] c"asus_g752_fixed_rdesc\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1133, i32 19 }
@___asan_gen_.258 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1036, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 772, i32 18 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 808, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 818, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 584, i32 38 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 588, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 459, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 463, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 469, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 475, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 485, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 490, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 413, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 427, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 439, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.357 = private constant [26 x i8] c"../drivers/hid/hid-asus.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 525, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_asus_driver_exit, ptr @__initcall__kmod_hid_asus__238_1278_asus_driver_init6, ptr @asus_battery_probe._entry, ptr @asus_battery_probe._entry_ptr, ptr @asus_driver_exit, ptr @asus_event._entry, ptr @asus_event._entry_ptr, ptr @asus_input_configured._entry, ptr @asus_input_configured._entry.54, ptr @asus_input_configured._entry_ptr, ptr @asus_input_configured._entry_ptr.56, ptr @asus_kbd_backlight_work._entry, ptr @asus_kbd_backlight_work._entry_ptr, ptr @asus_kbd_get_functions._entry, ptr @asus_kbd_get_functions._entry.80, ptr @asus_kbd_get_functions._entry_ptr, ptr @asus_kbd_get_functions._entry_ptr.82, ptr @asus_kbd_init._entry, ptr @asus_kbd_init._entry_ptr, ptr @asus_probe._entry, ptr @asus_probe._entry.10, ptr @asus_probe._entry.13, ptr @asus_probe._entry.16, ptr @asus_probe._entry.19, ptr @asus_probe._entry_ptr, ptr @asus_probe._entry_ptr.12, ptr @asus_probe._entry_ptr.15, ptr @asus_probe._entry_ptr.18, ptr @asus_probe._entry_ptr.21, ptr @asus_report_fixup._entry, ptr @asus_report_fixup._entry.38, ptr @asus_report_fixup._entry.41, ptr @asus_report_fixup._entry.45, ptr @asus_report_fixup._entry_ptr, ptr @asus_report_fixup._entry_ptr.40, ptr @asus_report_fixup._entry_ptr.43, ptr @asus_report_fixup._entry_ptr.47, ptr @asus_start_multitouch._entry, ptr @asus_start_multitouch._entry.29, ptr @asus_start_multitouch._entry_ptr, ptr @asus_start_multitouch._entry_ptr.31, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @rog_nkey_led_init._entry, ptr @rog_nkey_led_init._entry.61, ptr @rog_nkey_led_init._entry.64, ptr @rog_nkey_led_init._entry.67, ptr @rog_nkey_led_init._entry.70, ptr @rog_nkey_led_init._entry.73, ptr @rog_nkey_led_init._entry_ptr, ptr @rog_nkey_led_init._entry_ptr.63, ptr @rog_nkey_led_init._entry_ptr.66, ptr @rog_nkey_led_init._entry_ptr.69, ptr @rog_nkey_led_init._entry_ptr.72, ptr @rog_nkey_led_init._entry_ptr.75, ptr @asus_driver, ptr @.str, ptr @.str.1, ptr @asus_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @asus_i2c_tp, ptr @asus_t100ta_tp, ptr @asus_t100chi_tp, ptr @medion_e1239t_tp, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @asus_battery_props, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @asus_start_multitouch.buf, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @asus_g752_fixed_rdesc, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @asus_kbd_register_leds.__key, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_devices to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_i2c_tp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_t100ta_tp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_t100chi_tp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @medion_e1239t_tp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_battery_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_start_multitouch.buf to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_start_multitouch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_start_multitouch._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_report_fixup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_report_fixup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_report_fixup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_g752_fixed_rdesc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_input_configured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_input_configured._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_kbd_register_leds.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rog_nkey_led_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rog_nkey_led_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rog_nkey_led_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rog_nkey_led_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rog_nkey_led_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rog_nkey_led_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_kbd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_kbd_get_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_kbd_get_functions._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_kbd_backlight_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @asus_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @asus_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %pscfg.i = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %call2 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.7)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %2, -641
  %or = or i32 %and, 512
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %call.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  %and8 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %tp = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @asus_i2c_tp, ptr %tp, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %and13 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end33_crit_edge, label %land.lhs.true

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end11
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %8 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %9, @usb_hid_driver
  br i1 %cmp.i.i, label %if.then16, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then16:                                        ; preds = %land.lhs.true
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -32
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp18 = icmp eq i8 %15, 2
  br i1 %cmp18, label %if.then20, label %if.then16.if.end33_crit_edge

if.then16.if.end33_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %call.i, align 4
  %tp29 = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %tp29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @asus_t100ta_tp, ptr %tp29, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %if.then16.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.end11.if.end33_crit_edge
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  %and35 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end41_crit_edge, label %if.then37

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %quirks38 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %20 = ptrtoint ptr %quirks38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks38, align 8
  %or39 = or i32 %21, 64
  store i32 %or39, ptr %quirks38, align 8
  %tp40 = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %tp40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @asus_t100chi_tp, ptr %tp40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end33.if.end41_crit_edge
  %and43 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end67_crit_edge, label %land.lhs.true45

if.end41.if.end67_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true45:                                  ; preds = %if.end41
  %ll_driver.i.i184 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %23 = ptrtoint ptr %ll_driver.i.i184 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ll_driver.i.i184, align 4
  %cmp.i.i185 = icmp eq ptr %24, @usb_hid_driver
  br i1 %cmp.i.i185, label %if.then48, label %land.lhs.true45.if.end67_crit_edge

land.lhs.true45.if.end67_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then48:                                        ; preds = %land.lhs.true45
  %parent51 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %parent51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent51, align 8
  %add.ptr53 = getelementptr i8, ptr %26, i32 -32
  %27 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr53, align 8
  %bInterfaceNumber56 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %bInterfaceNumber56 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterfaceNumber56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp58 = icmp eq i8 %30, 1
  br i1 %cmp58, label %if.then60, label %if.then48.if.end67_crit_edge

if.then48.if.end67_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then60:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %quirks61 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %31 = ptrtoint ptr %quirks61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quirks61, align 8
  %or62 = or i32 %32, 64
  store i32 %or62, ptr %quirks61, align 8
  %or64 = or i32 %19, 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or64, ptr %call.i, align 4
  %tp65 = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %tp65 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @medion_e1239t_tp, ptr %tp65, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.then48.if.end67_crit_edge, %land.lhs.true45.if.end67_crit_edge, %if.end41.if.end67_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i, align 4
  %and69 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end74_crit_edge, label %if.then71

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %quirks72 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %37 = ptrtoint ptr %quirks72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quirks72, align 8
  %or73 = or i32 %38, 536870912
  store i32 %or73, ptr %quirks72, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end67.if.end74_crit_edge
  %hdev75 = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %hdev75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hdev, ptr %hdev75, align 4
  %and77 = and i32 %36, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end74.if.end88_crit_edge, label %if.then79

if.end74.if.end88_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then79:                                        ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pscfg.i) #8
  %40 = getelementptr inbounds %struct.power_supply_config, ptr %pscfg.i, i32 0, i32 2
  %41 = call ptr @memset(ptr %pscfg.i, i32 0, i32 24)
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %40, align 4
  %battery_capacity.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %battery_capacity.i, align 4
  %battery_stat.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 10
  %44 = ptrtoint ptr %battery_stat.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %battery_stat.i, align 4
  %battery_in_query.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 11
  %45 = ptrtoint ptr %battery_in_query.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %battery_in_query.i, align 4
  %battery_desc.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 8
  %properties.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 8, i32 4
  %46 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @asus_battery_props, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 8, i32 5
  %47 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 8, i32 6
  %48 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @asus_battery_get_property, ptr %get_property.i, align 4
  %type.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type.i, align 4
  %use_for_apm.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 8, i32 12
  %50 = ptrtoint ptr %use_for_apm.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %use_for_apm.i, align 4
  %uniq.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 41
  %51 = ptrtoint ptr %uniq.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %char0.i = load i8, ptr %uniq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.then79.cond.end.i_crit_edge

if.then79.cond.end.i_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then79
  %init_name.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 3
  %52 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.false.i.cond.end.i_crit_edge

cond.false.i.cond.end.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end.i.i:                                       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i.i, %cond.false.i.cond.end.i_crit_edge, %if.then79.cond.end.i_crit_edge
  %cond.i = phi ptr [ %uniq.i, %if.then79.cond.end.i_crit_edge ], [ %55, %if.end.i.i ], [ %53, %cond.false.i.cond.end.i_crit_edge ]
  %call10.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef %cond.i) #8
  %56 = ptrtoint ptr %battery_desc.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call10.i, ptr %battery_desc.i, align 4
  %tobool14.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool14.not.i, label %asus_battery_probe.exit.thread195, label %if.end.i

asus_battery_probe.exit.thread195:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pscfg.i) #8
  br label %do.end85

if.end.i:                                         ; preds = %cond.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %battery_next_query.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 12
  %58 = ptrtoint ptr %battery_next_query.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %battery_next_query.i, align 4
  %call17.i = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %battery_desc.i, ptr noundef nonnull %pscfg.i) #8
  %battery.i = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 7
  %59 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call17.i, ptr %battery.i, align 4
  %cmp.i.i186 = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i186, label %asus_battery_probe.exit, label %asus_battery_probe.exit.thread

asus_battery_probe.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = call i32 @power_supply_powers(ptr noundef %call17.i, ptr noundef %dev) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pscfg.i) #8
  br label %if.end88

asus_battery_probe.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call17.i to i32
  %61 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %battery.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pscfg.i) #8
  br label %do.end85

do.end85:                                         ; preds = %asus_battery_probe.exit, %asus_battery_probe.exit.thread195
  %retval.0.i198 = phi i32 [ -12, %asus_battery_probe.exit.thread195 ], [ %60, %asus_battery_probe.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i198) #11
  br label %cleanup

if.end88:                                         ; preds = %asus_battery_probe.exit.thread, %if.end74.if.end88_crit_edge
  %call.i187 = call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool90.not = icmp eq i32 %call.i187, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call.i187) #11
  br label %cleanup

if.end96:                                         ; preds = %if.end88
  %call97 = call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call97) #11
  br label %cleanup

if.end104:                                        ; preds = %if.end96
  %input = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 2
  %62 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input, align 4
  %tobool105.not = icmp eq ptr %63, null
  br i1 %tobool105.not, label %do.end109, label %if.end111

do.end109:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  br label %err_stop_hw

if.end111:                                        ; preds = %if.end104
  %tp112 = getelementptr inbounds %struct.asus_drvdata, ptr %call.i, i32 0, i32 5
  %64 = ptrtoint ptr %tp112 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tp112, align 4
  %tobool113.not = icmp eq ptr %65, null
  %.str.23..str.22 = select i1 %tobool113.not, ptr @.str.23, ptr @.str.22
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %.str.23..str.22, ptr %63, align 8
  %67 = load ptr, ptr %tp112, align 4
  %tobool122.not = icmp eq ptr %67, null
  br i1 %tobool122.not, label %if.end111.cleanup_crit_edge, label %if.then123

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then123:                                       ; preds = %if.end111
  %call.i188 = call ptr @kmemdup(ptr noundef nonnull @asus_start_multitouch.buf, i32 noundef 5, i32 noundef 3264) #8
  %tobool.not.i189 = icmp eq ptr %call.i188, null
  br i1 %tobool.not.i189, label %asus_start_multitouch.exit.thread201, label %if.end.i191

asus_start_multitouch.exit.thread201:             ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef -12) #11
  br label %err_stop_hw

if.end.i191:                                      ; preds = %if.then123
  %68 = ptrtoint ptr %call.i188 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %call.i188, align 1
  %call1.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %69, ptr noundef nonnull %call.i188, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i188) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 5
  br i1 %cmp.not.i, label %if.end.i191.cleanup_crit_edge, label %asus_start_multitouch.exit

if.end.i191.cleanup_crit_edge:                    ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

asus_start_multitouch.exit:                       ; preds = %if.end.i191
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool125.not = icmp eq i32 %call1.i, 0
  br i1 %tobool125.not, label %asus_start_multitouch.exit.cleanup_crit_edge, label %asus_start_multitouch.exit.err_stop_hw_crit_edge

asus_start_multitouch.exit.err_stop_hw_crit_edge: ; preds = %asus_start_multitouch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_stop_hw

asus_start_multitouch.exit.cleanup_crit_edge:     ; preds = %asus_start_multitouch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_stop_hw:                                      ; preds = %asus_start_multitouch.exit.err_stop_hw_crit_edge, %asus_start_multitouch.exit.thread201, %do.end109
  %ret.0 = phi i32 [ %call1.i, %asus_start_multitouch.exit.err_stop_hw_crit_edge ], [ -12, %do.end109 ], [ -12, %asus_start_multitouch.exit.thread201 ]
  call void @hid_hw_stop(ptr noundef %hdev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_stop_hw, %asus_start_multitouch.exit.cleanup_crit_edge, %if.end.i191.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end102, %do.end94, %do.end85, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %retval.0.i198, %do.end85 ], [ %call.i187, %do.end94 ], [ %call97, %do.end102 ], [ %ret.0, %err_stop_hw ], [ 0, %asus_start_multitouch.exit.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ], [ 0, %if.end.i191.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asus_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %kbd_backlight = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %kbd_backlight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kbd_backlight, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %removed = getelementptr inbounds %struct.asus_kbd_leds, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %removed, align 4
  %5 = ptrtoint ptr %kbd_backlight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kbd_backlight, align 4
  %work = getelementptr inbounds %struct.asus_kbd_leds, ptr %6, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %battery = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %battery, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %battery_in_query.i = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %battery_in_query.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %battery_in_query.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %cmp2.i = icmp eq i32 %size, 9
  %or.cond.i = and i1 %cmp2.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @power_supply_changed(ptr noundef nonnull %3) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tp = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %land.lhs.true4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true4:                                   ; preds = %if.end
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %11)
  %cmp7 = icmp eq i8 %11, 93
  br i1 %cmp7, label %if.then9, label %land.lhs.true4.if.end11_crit_edge

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true4
  %report_size.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %report_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %size)
  %cmp.not.i = icmp eq i32 %13, %size
  br i1 %cmp.not.i, label %if.end.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  %max_contacts54.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %max_contacts54.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_contacts54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp255.i = icmp sgt i32 %15, 0
  br i1 %cmp255.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %data, i32 2
  %arrayidx.i = getelementptr i8, ptr %data, i32 1
  %input.i = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %16 = phi ptr [ %9, %for.body.lr.ph.i ], [ %59, %if.end20.i.for.body.i_crit_edge ]
  %contactData.058.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %contactData.1.i, %if.end20.i.for.body.i_crit_edge ]
  %toolType.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %toolType.1.i, %if.end20.i.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end20.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %18 to i32
  %shl.i = shl i32 8, %i.056.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %contact_size.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %contact_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %contact_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp5.i = icmp sgt i32 %20, 4
  br i1 %cmp5.i, label %if.then7.i, label %for.body.i.if.end12.i_crit_edge

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i = getelementptr i8, ptr %contactData.058.i, i32 3
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.i, align 1
  %23 = lshr i8 %22, 6
  %24 = and i8 %23, 2
  %25 = zext i8 %24 to i32
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %for.body.i.if.end12.i_crit_edge
  %toolType.1.i = phi i32 [ %25, %if.then7.i ], [ %toolType.057.i, %for.body.i.if.end12.i_crit_edge ]
  %26 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 47, i32 noundef %i.056.i) #8
  %28 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input.i, align 4
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %29, i32 noundef %toolType.1.i, i1 noundef zeroext %tobool.i) #8
  br i1 %tobool.i, label %if.then16.i, label %if.end12.i.if.end20.i_crit_edge

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end12.i
  %30 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input.i, align 4
  %32 = ptrtoint ptr %contactData.058.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %contactData.058.i, align 1
  %conv.i.i = zext i8 %33 to i32
  %and.i.i = shl nuw nsw i32 %conv.i.i, 4
  %shl.i.i = and i32 %and.i.i, 3840
  %arrayidx2.i.i = getelementptr i8, ptr %contactData.058.i, i32 1
  %34 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %35 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  %36 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tp, align 4
  %max_y.i.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_y.i.i, align 4
  %and6.i.i = shl nuw nsw i32 %conv.i.i, 8
  %shl7.i.i = and i32 %and6.i.i, 3840
  %arrayidx8.i.i = getelementptr i8, ptr %contactData.058.i, i32 2
  %40 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %41 to i32
  %42 = or i32 %shl7.i.i, %conv9.i.i
  %sub.i.i = sub i32 %39, %42
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 53, i32 noundef %or.i.i) #8
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 54, i32 noundef %sub.i.i) #8
  %43 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tp, align 4
  %contact_size.i.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %contact_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %contact_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp.i.i = icmp slt i32 %46, 5
  br i1 %cmp.i.i, label %if.then16.i.asus_report_contact_down.exit.i_crit_edge, label %if.end.i.i

if.then16.i.asus_report_contact_down.exit.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %asus_report_contact_down.exit.i

if.end.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %toolType.1.i)
  %cmp13.i.i = icmp eq i32 %toolType.1.i, 2
  br i1 %cmp13.i.i, label %if.end.i.i.if.end22.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end22.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.i.i = getelementptr i8, ptr %contactData.058.i, i32 3
  %47 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx16.i.i, align 1
  %49 = lshr i8 %48, 4
  %50 = and i8 %49, 7
  %and18.i.i = zext i8 %50 to i32
  %arrayidx19.i.i = getelementptr i8, ptr %contactData.058.i, i32 4
  %51 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx19.i.i, align 1
  %53 = and i8 %52, 127
  %and21.i.i = zext i8 %53 to i32
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else.i.i, %if.end.i.i.if.end22.i.i_crit_edge
  %pressure.0.i.i = phi i32 [ %and21.i.i, %if.else.i.i ], [ 128, %if.end.i.i.if.end22.i.i_crit_edge ]
  %touch_major.0.i.i = phi i32 [ %and18.i.i, %if.else.i.i ], [ 8, %if.end.i.i.if.end22.i.i_crit_edge ]
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 48, i32 noundef %touch_major.0.i.i) #8
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 58, i32 noundef %pressure.0.i.i) #8
  br label %asus_report_contact_down.exit.i

asus_report_contact_down.exit.i:                  ; preds = %if.end22.i.i, %if.then16.i.asus_report_contact_down.exit.i_crit_edge
  %54 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tp, align 4
  %contact_size18.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %contact_size18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %contact_size18.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %contactData.058.i, i32 %57
  br label %if.end20.i

if.end20.i:                                       ; preds = %asus_report_contact_down.exit.i, %if.end12.i.if.end20.i_crit_edge
  %contactData.1.i = phi ptr [ %add.ptr19.i, %asus_report_contact_down.exit.i ], [ %contactData.058.i, %if.end12.i.if.end20.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %58 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tp, align 4
  %max_contacts.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %max_contacts.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_contacts.i, align 4
  %cmp2.i120 = icmp slt i32 %inc.i, %61
  br i1 %cmp2.i120, label %if.end20.i.for.body.i_crit_edge, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end20.i.for.body.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end20.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %input21.i = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %input21.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input21.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %data, i32 1
  %64 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx22.i, align 1
  %66 = and i8 %65, 1
  %67 = zext i8 %66 to i32
  tail call void @input_event(ptr noundef %63, i32 noundef 1, i32 noundef 272, i32 noundef %67) #8
  %68 = ptrtoint ptr %input21.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %input21.i, align 4
  %mt1.i.i = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 25
  %70 = ptrtoint ptr %mt1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mt1.i.i, align 4
  %72 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tp, align 4
  %contact_size.i49.i = getelementptr inbounds %struct.asus_touchpad_info, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %contact_size.i49.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %contact_size.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %75)
  %cmp.i50.i = icmp slt i32 %75, 5
  br i1 %cmp.i50.i, label %for.end.i.asus_report_tool_width.exit.i_crit_edge, label %if.end.i51.i

for.end.i.asus_report_tool_width.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %asus_report_tool_width.exit.i

if.end.i51.i:                                     ; preds = %for.end.i
  %num_slots.i.i = getelementptr inbounds %struct.input_mt, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp233.i.i = icmp sgt i32 %77, 0
  br i1 %cmp233.i.i, label %for.body.preheader.i.i, label %if.end.i51.i.asus_report_tool_width.exit.i_crit_edge

if.end.i51.i.asus_report_tool_width.exit.i_crit_edge: ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %asus_report_tool_width.exit.i

for.body.preheader.i.i:                           ; preds = %if.end.i51.i
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %71, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.037.i.i = phi i32 [ %inc9.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %oldid.035.i.i = phi i32 [ %oldid.2.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %79, %for.body.preheader.i.i ]
  %oldest.034.i.i = phi ptr [ %oldest.2.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ null, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.input_mt, ptr %71, i32 0, i32 6, i32 %i.037.i.i
  %arrayidx.i.i.i = getelementptr [14 x i32], ptr %arrayidx.i.i, i32 0, i32 9
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp3.i.i = icmp slt i32 %81, 0
  br i1 %cmp3.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end5.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i52.i = sub i32 %81, %oldid.035.i.i
  %and.i53.i = and i32 %sub.i52.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool.not.i.i = icmp eq i32 %and.i53.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %oldest.034.i.i, ptr %arrayidx.i.i
  %spec.select32.i.i = select i1 %tobool.not.i.i, i32 %oldid.035.i.i, i32 %81
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end5.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %oldest.2.i.i = phi ptr [ %spec.select.i.i, %if.end5.i.i ], [ %oldest.034.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  %oldid.2.i.i = phi i32 [ %spec.select32.i.i, %if.end5.i.i ], [ %oldid.035.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  %inc9.i.i = add nuw nsw i32 %i.037.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc9.i.i, %77
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i
  %tobool10.not.i.i = icmp eq ptr %oldest.2.i.i, null
  br i1 %tobool10.not.i.i, label %for.end.i.i.asus_report_tool_width.exit.i_crit_edge, label %if.then11.i.i

for.end.i.i.asus_report_tool_width.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %asus_report_tool_width.exit.i

if.then11.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %oldest.2.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %oldest.2.i.i, align 4
  tail call void @input_event(ptr noundef %69, i32 noundef 3, i32 noundef 28, i32 noundef %83) #8
  br label %asus_report_tool_width.exit.i

asus_report_tool_width.exit.i:                    ; preds = %if.then11.i.i, %for.end.i.i.asus_report_tool_width.exit.i_crit_edge, %if.end.i51.i.asus_report_tool_width.exit.i_crit_edge, %for.end.i.asus_report_tool_width.exit.i_crit_edge
  %84 = ptrtoint ptr %input21.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input21.i, align 4
  tail call void @input_mt_sync_frame(ptr noundef %85) #8
  %86 = ptrtoint ptr %input21.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %input21.i, align 4
  tail call void @input_event(ptr noundef %87, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %1, align 4
  %and = and i32 %89, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp.not.i121 = icmp eq i32 %size, 3
  br i1 %cmp.not.i121, label %if.end.i123, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i123:                                      ; preds = %if.then13
  br i1 %tobool3.not, label %land.lhs.true.i, label %if.end.i123.if.end17.i_crit_edge

if.end.i123.if.end17.i_crit_edge:                 ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end.i123
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp1.i = icmp eq i8 %91, 2
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr i8, ptr %data, i32 1
  %92 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -30, i8 %93)
  %cmp6.i = icmp eq i8 %93, -30
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true3.i.if.end17.i_crit_edge

land.lhs.true3.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true3.i
  %arrayidx9.i = getelementptr i8, ptr %data, i32 2
  %94 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp11.i = icmp eq i8 %95, 0
  br i1 %cmp11.i, label %if.then13.i, label %land.lhs.true8.i.if.end17.i_crit_edge

land.lhs.true8.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then13.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  %input.i124 = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %input.i124 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %input.i124, align 4
  tail call void @input_event(ptr noundef %97, i32 noundef 1, i32 noundef 113, i32 noundef 1) #8
  br label %return.sink.split.i

if.end17.i:                                       ; preds = %land.lhs.true8.i.if.end17.i_crit_edge, %land.lhs.true3.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %if.end.i123.if.end17.i_crit_edge
  %tp_kbd_input.i = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 3
  %98 = ptrtoint ptr %tp_kbd_input.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tp_kbd_input.i, align 4
  %tobool18.not.i = icmp eq ptr %99, null
  br i1 %tobool18.not.i, label %if.end17.i.cleanup_crit_edge, label %land.lhs.true19.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true19.i:                                ; preds = %if.end17.i
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %101)
  %cmp22.i = icmp eq i8 %101, 5
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true19.i.cleanup_crit_edge

land.lhs.true19.i.cleanup_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true24.i:                                ; preds = %land.lhs.true19.i
  %arrayidx25.i = getelementptr i8, ptr %data, i32 1
  %102 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp27.i = icmp eq i8 %103, 2
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true24.i.cleanup_crit_edge

land.lhs.true24.i.cleanup_crit_edge:              ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true29.i:                                ; preds = %land.lhs.true24.i
  %arrayidx30.i = getelementptr i8, ptr %data, i32 2
  %104 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %105)
  %cmp32.i = icmp eq i8 %105, 40
  br i1 %cmp32.i, label %if.then34.i, label %land.lhs.true29.i.cleanup_crit_edge

land.lhs.true29.i.cleanup_crit_edge:              ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef nonnull %99, i32 noundef 1, i32 noundef 191, i32 noundef 1) #8
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then34.i, %if.then13.i
  %tp_kbd_input.sink56.i = phi ptr [ %tp_kbd_input.i, %if.then34.i ], [ %input.i124, %if.then13.i ]
  %.sink54.i = phi i32 [ 191, %if.then34.i ], [ 113, %if.then13.i ]
  %106 = ptrtoint ptr %tp_kbd_input.sink56.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tp_kbd_input.sink56.i, align 4
  tail call void @input_event(ptr noundef %107, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %108 = ptrtoint ptr %tp_kbd_input.sink56.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tp_kbd_input.sink56.i, align 4
  tail call void @input_event(ptr noundef %109, i32 noundef 1, i32 noundef %.sink54.i, i32 noundef 0) #8
  %110 = ptrtoint ptr %tp_kbd_input.sink56.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tp_kbd_input.sink56.i, align 4
  tail call void @input_event(ptr noundef %111, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %and17 = and i32 %89, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end74_crit_edge, label %if.then19

if.end15.if.end74_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then19:                                        ; preds = %if.end15
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %112 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values)
  switch i32 %113, label %if.then19.if.end57_crit_edge [
    i32 93, label %if.then19.cleanup_crit_edge
    i32 94, label %if.then19.cleanup_crit_edge126
    i32 90, label %if.then29
  ]

if.then19.cleanup_crit_edge126:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19.if.end57_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then29:                                        ; preds = %if.then19
  %arrayidx30 = getelementptr i8, ptr %data, i32 1
  %115 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx30, align 1
  %117 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %116, label %if.then29.if.end57_crit_edge [
    i8 -22, label %if.then29.cleanup_crit_edge
    i8 -20, label %if.then29.cleanup_crit_edge127
    i8 2, label %if.then29.cleanup_crit_edge128
    i8 -118, label %if.then29.cleanup_crit_edge129
    i8 -98, label %if.then29.cleanup_crit_edge130
  ]

if.then29.cleanup_crit_edge130:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29.cleanup_crit_edge129:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29.cleanup_crit_edge128:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29.cleanup_crit_edge127:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29.if.end57_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end57:                                         ; preds = %if.then29.if.end57_crit_edge, %if.then19.if.end57_crit_edge
  %and59 = and i32 %89, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end74_crit_edge, label %if.then61

if.end57.if.end74_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then61:                                        ; preds = %if.end57
  %118 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %119)
  %cmp64 = icmp eq i8 %119, 2
  br i1 %cmp64, label %land.lhs.true66, label %if.then61.if.end74_crit_edge

if.then61.if.end74_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true66:                                  ; preds = %if.then61
  %arrayidx67 = getelementptr i8, ptr %data, i32 1
  %120 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %121)
  %cmp69 = icmp eq i8 %121, 48
  br i1 %cmp69, label %land.lhs.true66.cleanup_crit_edge, label %land.lhs.true66.if.end74_crit_edge

land.lhs.true66.if.end74_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %land.lhs.true66.if.end74_crit_edge, %if.then61.if.end74_crit_edge, %if.end57.if.end74_crit_edge, %if.end15.if.end74_crit_edge
  %and76 = and i32 %89, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp ne i32 %and76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp79 = icmp eq i32 %size, 2
  %or.cond = and i1 %cmp79, %tobool77.not
  br i1 %or.cond, label %land.lhs.true81, label %if.end74.if.end93_crit_edge

if.end74.if.end93_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true81:                                  ; preds = %if.end74
  %122 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp84 = icmp eq i8 %123, 2
  br i1 %cmp84, label %land.lhs.true86, label %land.lhs.true81.if.end93_crit_edge

land.lhs.true81.if.end93_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true86:                                  ; preds = %land.lhs.true81
  %arrayidx87 = getelementptr i8, ptr %data, i32 1
  %124 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp89 = icmp eq i8 %125, 0
  br i1 %cmp89, label %land.lhs.true86.cleanup_crit_edge, label %land.lhs.true86.if.end93_crit_edge

land.lhs.true86.if.end93_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true86.cleanup_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %land.lhs.true86.if.end93_crit_edge, %land.lhs.true81.if.end93_crit_edge, %if.end74.if.end93_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %land.lhs.true86.cleanup_crit_edge, %land.lhs.true66.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then29.cleanup_crit_edge127, %if.then29.cleanup_crit_edge128, %if.then29.cleanup_crit_edge129, %if.then29.cleanup_crit_edge130, %if.then19.cleanup_crit_edge, %if.then19.cleanup_crit_edge126, %return.sink.split.i, %land.lhs.true29.i.cleanup_crit_edge, %land.lhs.true24.i.cleanup_crit_edge, %land.lhs.true19.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %asus_report_tool_width.exit.i, %if.then9.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end93 ], [ -1, %if.then19.cleanup_crit_edge ], [ -1, %if.then19.cleanup_crit_edge126 ], [ -1, %if.then29.cleanup_crit_edge ], [ -1, %if.then29.cleanup_crit_edge127 ], [ -1, %if.then29.cleanup_crit_edge128 ], [ -1, %if.then29.cleanup_crit_edge129 ], [ -1, %if.then29.cleanup_crit_edge130 ], [ -1, %land.lhs.true66.cleanup_crit_edge ], [ -1, %land.lhs.true86.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ], [ 1, %asus_report_tool_width.exit.i ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %land.lhs.true29.i.cleanup_crit_edge ], [ 0, %land.lhs.true24.i.cleanup_crit_edge ], [ 0, %land.lhs.true19.i.cleanup_crit_edge ], [ 0, %if.end17.i.cleanup_crit_edge ], [ 1, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_event(ptr noundef %hdev, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %and = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13565952, i32 %and)
  %cmp = icmp eq i32 %and, -13565952
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and2 = and i32 %1, 65535
  %trunc = trunc i32 %1 to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %trunc, label %land.lhs.true8 [
    i16 0, label %land.lhs.true.if.end_crit_edge
    i16 255, label %land.lhs.true.if.end_crit_edge15
  ]

land.lhs.true.if.end_crit_edge15:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %and2) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true8.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge15, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @asus_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %5)
  %cmp = icmp ugt i32 %5, 55
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %rdesc, i32 54
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %7)
  %cmp2 = icmp eq i8 %7, 37
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %arrayidx5 = getelementptr i8, ptr %rdesc, i32 55
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %9)
  %cmp7 = icmp eq i8 %9, 101
  br i1 %cmp7, label %do.end, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -35, ptr %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true4.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %and11 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end37_crit_edge, label %land.lhs.true13

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true13:                                  ; preds = %if.end
  %13 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rsize, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %14, label %land.lhs.true13.if.end37_crit_edge [
    i32 76, label %land.lhs.true13.land.lhs.true18_crit_edge
    i32 101, label %land.lhs.true13.land.lhs.true18_crit_edge189
  ]

land.lhs.true13.land.lhs.true18_crit_edge189:     ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true18

land.lhs.true13.land.lhs.true18_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true18

land.lhs.true13.if.end37_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true18:                                  ; preds = %land.lhs.true13.land.lhs.true18_crit_edge, %land.lhs.true13.land.lhs.true18_crit_edge189
  %arrayidx19 = getelementptr i8, ptr %rdesc, i32 73
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %17)
  %cmp21 = icmp eq i8 %17, -127
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true18.if.end37_crit_edge

land.lhs.true18.if.end37_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %arrayidx24 = getelementptr i8, ptr %rdesc, i32 74
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp26 = icmp eq i8 %19, 1
  br i1 %cmp26, label %do.end31, label %land.lhs.true23.if.end37_crit_edge

land.lhs.true23.if.end37_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end31:                                         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.39) #11
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24, align 1
  %22 = and i8 %21, -2
  store i8 %22, ptr %arrayidx24, align 1
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %land.lhs.true23.if.end37_crit_edge, %land.lhs.true18.if.end37_crit_edge, %land.lhs.true13.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %and39 = and i32 %24, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end86_crit_edge, label %if.then41

if.end37.if.end86_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then41:                                        ; preds = %if.end37
  %and43 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %. = select i1 %tobool44.not, i32 306, i32 403
  %.184 = select i1 %tobool44.not, i32 291, i32 388
  %25 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %.)
  %cmp47 = icmp eq i32 %26, %.
  br i1 %cmp47, label %land.lhs.true49, label %if.then41.if.end86_crit_edge

if.then41.if.end86_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true49:                                  ; preds = %if.then41
  %arrayidx50 = getelementptr i8, ptr %rdesc, i32 %.184
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %28)
  %cmp52 = icmp eq i8 %28, 9
  br i1 %cmp52, label %land.lhs.true54, label %land.lhs.true49.if.end86_crit_edge

land.lhs.true49.if.end86_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %add = add nuw nsw i32 %.184, 1
  %arrayidx55 = getelementptr i8, ptr %rdesc, i32 %add
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %30)
  %cmp57 = icmp eq i8 %30, 118
  br i1 %cmp57, label %if.then59, label %land.lhs.true54.if.end86_crit_edge

land.lhs.true54.if.end86_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then59:                                        ; preds = %land.lhs.true54
  %add60 = add nuw nsw i32 %., 1
  %31 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add60, ptr %rsize, align 4
  %call61 = tail call ptr @kmemdup(ptr noundef %rdesc, i32 noundef %add60, i32 noundef 3264) #8
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then59.cleanup124_crit_edge, label %do.end67

if.then59.cleanup124_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

do.end67:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %dev68 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %and70 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %cond = select i1 %tobool71.not, ptr @.str.7, ptr @.str.44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond) #11
  %add.ptr = getelementptr i8, ptr %call61, i32 %.184
  %add.ptr72 = getelementptr i8, ptr %add.ptr, i32 4
  %add.ptr74 = getelementptr i8, ptr %add.ptr, i32 2
  %34 = call ptr @memmove(ptr %add.ptr72, ptr %add.ptr74, i32 12)
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 25, ptr %add.ptr, align 1
  %arrayidx77 = getelementptr i8, ptr %call61, i32 %add
  %36 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx77, align 1
  %add78 = add nuw nsw i32 %.184, 2
  %arrayidx79 = getelementptr i8, ptr %call61, i32 %add78
  %37 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 41, ptr %arrayidx79, align 1
  %add80 = add nuw nsw i32 %.184, 3
  %arrayidx81 = getelementptr i8, ptr %call61, i32 %add80
  %38 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %arrayidx81, align 1
  %add82 = add nuw nsw i32 %.184, 14
  %arrayidx83 = getelementptr i8, ptr %call61, i32 %add82
  %39 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx83, align 1
  br label %if.end86

if.end86:                                         ; preds = %do.end67, %land.lhs.true54.if.end86_crit_edge, %land.lhs.true49.if.end86_crit_edge, %if.then41.if.end86_crit_edge, %if.end37.if.end86_crit_edge
  %rdesc.addr.2 = phi ptr [ %rdesc, %if.end37.if.end86_crit_edge ], [ %rdesc, %if.then41.if.end86_crit_edge ], [ %rdesc, %land.lhs.true49.if.end86_crit_edge ], [ %rdesc, %land.lhs.true54.if.end86_crit_edge ], [ %call61, %do.end67 ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %and88 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end86.cleanup124_crit_edge, label %land.lhs.true90

if.end86.cleanup124_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

land.lhs.true90:                                  ; preds = %if.end86
  %42 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %43)
  %cmp91 = icmp eq i32 %43, 75
  br i1 %cmp91, label %land.lhs.true93, label %land.lhs.true90.cleanup124_crit_edge

land.lhs.true90.cleanup124_crit_edge:             ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

land.lhs.true93:                                  ; preds = %land.lhs.true90
  %arrayidx94 = getelementptr i8, ptr %rdesc.addr.2, i32 61
  %44 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %45)
  %cmp96 = icmp eq i8 %45, 21
  br i1 %cmp96, label %land.lhs.true98, label %land.lhs.true93.cleanup124_crit_edge

land.lhs.true93.cleanup124_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %arrayidx99 = getelementptr i8, ptr %rdesc.addr.2, i32 62
  %46 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp101 = icmp eq i8 %47, 0
  br i1 %cmp101, label %if.then103, label %land.lhs.true98.cleanup124_crit_edge

land.lhs.true98.cleanup124_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

if.then103:                                       ; preds = %land.lhs.true98
  %dev105 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev105, i32 noundef 80, i32 noundef 3520) #8
  %cmp107 = icmp eq ptr %call.i, null
  br i1 %cmp107, label %if.then103.cleanup124_crit_edge, label %cleanup119

if.then103.cleanup124_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

cleanup119:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev105, ptr noundef nonnull @.str.46) #11
  %48 = call ptr @memcpy(ptr %call.i, ptr %rdesc.addr.2, i32 61)
  %add.ptr115 = getelementptr i8, ptr %call.i, i32 61
  %49 = call ptr @memcpy(ptr %add.ptr115, ptr @asus_g752_fixed_rdesc, i32 5)
  %add.ptr117 = getelementptr i8, ptr %call.i, i32 66
  %50 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rsize, align 4
  %sub = add i32 %51, -61
  %52 = call ptr @memcpy(ptr %add.ptr117, ptr %arrayidx94, i32 %sub)
  store i32 80, ptr %rsize, align 4
  br label %cleanup124

cleanup124:                                       ; preds = %cleanup119, %if.then103.cleanup124_crit_edge, %land.lhs.true98.cleanup124_crit_edge, %land.lhs.true93.cleanup124_crit_edge, %land.lhs.true90.cleanup124_crit_edge, %if.end86.cleanup124_crit_edge, %if.then59.cleanup124_crit_edge
  %retval.3 = phi ptr [ null, %if.then59.cleanup124_crit_edge ], [ %call.i, %cleanup119 ], [ %rdesc.addr.2, %land.lhs.true98.cleanup124_crit_edge ], [ %rdesc.addr.2, %land.lhs.true93.cleanup124_crit_edge ], [ %rdesc.addr.2, %land.lhs.true90.cleanup124_crit_edge ], [ %rdesc.addr.2, %if.end86.cleanup124_crit_edge ], [ %rdesc.addr.2, %if.then103.cleanup124_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_input_mapping(ptr nocapture noundef readonly %hdev, ptr noundef readonly %hi, ptr nocapture noundef readonly %field, ptr noundef %usage, ptr noundef writeonly %bit, ptr noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end15thread-pre-split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %4 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %application, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %5, label %lor.lhs.false6 [
    i32 65664, label %land.lhs.true.cleanup_crit_edge
    i32 65538, label %land.lhs.true.cleanup_crit_edge437
  ]

land.lhs.true.cleanup_crit_edge437:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %land.lhs.true
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usage, align 4
  %.off = add i32 %8, -393252
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false6.if.end15_crit_edge

lor.lhs.false6.if.end15_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %usage, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %lor.lhs.false6.if.end15_crit_edge
  %10 = phi i32 [ %.pr, %if.end15thread-pre-split ], [ %8, %lor.lhs.false6.if.end15_crit_edge ]
  %and17 = and i32 %10, -65536
  %11 = zext i32 %and17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %and17, label %if.end74 [
    i32 -13565952, label %if.then19
    i32 -16777216, label %if.then49
  ]

if.then19:                                        ; preds = %if.end15
  %trunc258 = trunc i32 %10 to i16
  %12 = zext i16 %trunc258 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %trunc258, label %if.then19.cleanup_crit_edge [
    i16 16, label %sw.bb
    i16 32, label %sw.bb22
    i16 53, label %sw.bb23
    i16 108, label %sw.bb24
    i16 124, label %sw.bb25
    i16 130, label %sw.bb26
    i16 136, label %sw.bb27
    i16 181, label %sw.bb28
    i16 196, label %sw.bb29
    i16 197, label %sw.bb30
    i16 107, label %sw.bb31
    i16 56, label %sw.bb32
    i16 186, label %sw.bb33
    i16 92, label %sw.bb34
    i16 153, label %sw.bb35
    i16 174, label %sw.bb36
    i16 146, label %sw.bb37
    i16 178, label %sw.bb38
    i16 179, label %sw.bb39
  ]

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %13 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input1.i.i, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %15 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %16 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 224, ptr %code.i.i, align 2
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i259 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %17 = ptrtoint ptr %input1.i.i259 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input1.i.i259, align 4
  %keybit.i.i260 = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 6
  %type19.i.i261 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %19 = ptrtoint ptr %type19.i.i261 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %type19.i.i261, align 4
  %code.i.i262 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %20 = ptrtoint ptr %code.i.i262 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 225, ptr %code.i.i262, align 2
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i264 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %21 = ptrtoint ptr %input1.i.i264 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input1.i.i264, align 4
  %keybit.i.i265 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 6
  %type19.i.i266 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %23 = ptrtoint ptr %type19.i.i266 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %type19.i.i266, align 4
  %code.i.i267 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %24 = ptrtoint ptr %code.i.i267 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 245, ptr %code.i.i267, align 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i269 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %25 = ptrtoint ptr %input1.i.i269 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input1.i.i269, align 4
  %keybit.i.i270 = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 6
  %type19.i.i271 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %27 = ptrtoint ptr %type19.i.i271 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %type19.i.i271, align 4
  %code.i.i272 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %28 = ptrtoint ptr %code.i.i272 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 142, ptr %code.i.i272, align 2
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i274 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %29 = ptrtoint ptr %input1.i.i274 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input1.i.i274, align 4
  %keybit.i.i275 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 6
  %type19.i.i276 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %31 = ptrtoint ptr %type19.i.i276 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %type19.i.i276, align 4
  %code.i.i277 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %32 = ptrtoint ptr %code.i.i277 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 248, ptr %code.i.i277, align 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i279 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %33 = ptrtoint ptr %input1.i.i279 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input1.i.i279, align 4
  %keybit.i.i280 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 6
  %type19.i.i281 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %35 = ptrtoint ptr %type19.i.i281 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %type19.i.i281, align 4
  %code.i.i282 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %36 = ptrtoint ptr %code.i.i282 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 212, ptr %code.i.i282, align 2
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i284 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %37 = ptrtoint ptr %input1.i.i284 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input1.i.i284, align 4
  %keybit.i.i285 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 6
  %type19.i.i286 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %39 = ptrtoint ptr %type19.i.i286 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %type19.i.i286, align 4
  %code.i.i287 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %40 = ptrtoint ptr %code.i.i287 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 247, ptr %code.i.i287, align 2
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i289 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %41 = ptrtoint ptr %input1.i.i289 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input1.i.i289, align 4
  %keybit.i.i290 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 6
  %type19.i.i291 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %43 = ptrtoint ptr %type19.i.i291 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %type19.i.i291, align 4
  %code.i.i292 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %44 = ptrtoint ptr %code.i.i292 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 140, ptr %code.i.i292, align 2
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i294 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %45 = ptrtoint ptr %input1.i.i294 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input1.i.i294, align 4
  %keybit.i.i295 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 6
  %type19.i.i296 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %47 = ptrtoint ptr %type19.i.i296 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %type19.i.i296, align 4
  %code.i.i297 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %48 = ptrtoint ptr %code.i.i297 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 230, ptr %code.i.i297, align 2
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i299 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %49 = ptrtoint ptr %input1.i.i299 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input1.i.i299, align 4
  %keybit.i.i300 = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 6
  %type19.i.i301 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %51 = ptrtoint ptr %type19.i.i301 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %type19.i.i301, align 4
  %code.i.i302 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %52 = ptrtoint ptr %code.i.i302 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 229, ptr %code.i.i302, align 2
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i304 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %53 = ptrtoint ptr %input1.i.i304 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input1.i.i304, align 4
  %keybit.i.i305 = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 6
  %type19.i.i306 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %55 = ptrtoint ptr %type19.i.i306 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %type19.i.i306, align 4
  %code.i.i307 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %56 = ptrtoint ptr %code.i.i307 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 191, ptr %code.i.i307, align 2
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i309 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %57 = ptrtoint ptr %input1.i.i309 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input1.i.i309, align 4
  %keybit.i.i310 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6
  %type19.i.i311 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %59 = ptrtoint ptr %type19.i.i311 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %type19.i.i311, align 4
  %code.i.i312 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %60 = ptrtoint ptr %code.i.i312 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 148, ptr %code.i.i312, align 2
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i314 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %61 = ptrtoint ptr %input1.i.i314 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %input1.i.i314, align 4
  %keybit.i.i315 = getelementptr inbounds %struct.input_dev, ptr %62, i32 0, i32 6
  %type19.i.i316 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %63 = ptrtoint ptr %type19.i.i316 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %type19.i.i316, align 4
  %code.i.i317 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %64 = ptrtoint ptr %code.i.i317 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 149, ptr %code.i.i317, align 2
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i319 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %65 = ptrtoint ptr %input1.i.i319 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input1.i.i319, align 4
  %keybit.i.i320 = getelementptr inbounds %struct.input_dev, ptr %66, i32 0, i32 6
  %type19.i.i321 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %67 = ptrtoint ptr %type19.i.i321 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %type19.i.i321, align 4
  %code.i.i322 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %68 = ptrtoint ptr %code.i.i322 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 202, ptr %code.i.i322, align 2
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i324 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %69 = ptrtoint ptr %input1.i.i324 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %input1.i.i324, align 4
  %keybit.i.i325 = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 6
  %type19.i.i326 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %71 = ptrtoint ptr %type19.i.i326 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %type19.i.i326, align 4
  %code.i.i327 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %72 = ptrtoint ptr %code.i.i327 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 203, ptr %code.i.i327, align 2
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i329 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %73 = ptrtoint ptr %input1.i.i329 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %input1.i.i329, align 4
  %keybit.i.i330 = getelementptr inbounds %struct.input_dev, ptr %74, i32 0, i32 6
  %type19.i.i331 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %75 = ptrtoint ptr %type19.i.i331 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %type19.i.i331, align 4
  %code.i.i332 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %76 = ptrtoint ptr %code.i.i332 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 203, ptr %code.i.i332, align 2
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i334 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %77 = ptrtoint ptr %input1.i.i334 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %input1.i.i334, align 4
  %keybit.i.i335 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 6
  %type19.i.i336 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %79 = ptrtoint ptr %type19.i.i336 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %type19.i.i336, align 4
  %code.i.i337 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %80 = ptrtoint ptr %code.i.i337 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 140, ptr %code.i.i337, align 2
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i339 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %81 = ptrtoint ptr %input1.i.i339 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %input1.i.i339, align 4
  %keybit.i.i340 = getelementptr inbounds %struct.input_dev, ptr %82, i32 0, i32 6
  %type19.i.i341 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %83 = ptrtoint ptr %type19.i.i341 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %type19.i.i341, align 4
  %code.i.i342 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %84 = ptrtoint ptr %code.i.i342 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 149, ptr %code.i.i342, align 2
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i344 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %85 = ptrtoint ptr %input1.i.i344 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %input1.i.i344, align 4
  %keybit.i.i345 = getelementptr inbounds %struct.input_dev, ptr %86, i32 0, i32 6
  %type19.i.i346 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %87 = ptrtoint ptr %type19.i.i346 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %type19.i.i346, align 4
  %code.i.i347 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %88 = ptrtoint ptr %code.i.i347 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 202, ptr %code.i.i347, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb
  %keybit.i.i345.sink435 = phi ptr [ %keybit.i.i345, %sw.bb39 ], [ %keybit.i.i340, %sw.bb38 ], [ %keybit.i.i335, %sw.bb37 ], [ %keybit.i.i330, %sw.bb36 ], [ %keybit.i.i325, %sw.bb35 ], [ %keybit.i.i320, %sw.bb34 ], [ %keybit.i.i315, %sw.bb33 ], [ %keybit.i.i310, %sw.bb32 ], [ %keybit.i.i305, %sw.bb31 ], [ %keybit.i.i300, %sw.bb30 ], [ %keybit.i.i295, %sw.bb29 ], [ %keybit.i.i290, %sw.bb28 ], [ %keybit.i.i285, %sw.bb27 ], [ %keybit.i.i280, %sw.bb26 ], [ %keybit.i.i275, %sw.bb25 ], [ %keybit.i.i270, %sw.bb24 ], [ %keybit.i.i265, %sw.bb23 ], [ %keybit.i.i260, %sw.bb22 ], [ %keybit.i.i, %sw.bb ]
  %code.i.i347.sink = phi ptr [ %code.i.i347, %sw.bb39 ], [ %code.i.i342, %sw.bb38 ], [ %code.i.i337, %sw.bb37 ], [ %code.i.i332, %sw.bb36 ], [ %code.i.i327, %sw.bb35 ], [ %code.i.i322, %sw.bb34 ], [ %code.i.i317, %sw.bb33 ], [ %code.i.i312, %sw.bb32 ], [ %code.i.i307, %sw.bb31 ], [ %code.i.i302, %sw.bb30 ], [ %code.i.i297, %sw.bb29 ], [ %code.i.i292, %sw.bb28 ], [ %code.i.i287, %sw.bb27 ], [ %code.i.i282, %sw.bb26 ], [ %code.i.i277, %sw.bb25 ], [ %code.i.i272, %sw.bb24 ], [ %code.i.i267, %sw.bb23 ], [ %code.i.i262, %sw.bb22 ], [ %code.i.i, %sw.bb ]
  %89 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 767, ptr %max, align 4
  %90 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %keybit.i.i345.sink435, ptr %bit, align 4
  %91 = ptrtoint ptr %code.i.i347.sink to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %code.i.i347.sink, align 2
  %conv1.i348 = zext i16 %92 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i348, ptr noundef nonnull %keybit.i.i345.sink435) #8
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %1, align 4
  %and41 = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %sw.epilog.if.end44_crit_edge, label %if.then43

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %enable_backlight = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 6
  %95 = ptrtoint ptr %enable_backlight to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %enable_backlight, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %sw.epilog.if.end44_crit_edge
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %96 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %97, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit) #8
  br label %cleanup

if.then49:                                        ; preds = %if.end15
  %trunc257 = trunc i32 %10 to i16
  %98 = zext i16 %trunc257 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %trunc257, label %if.then49.cleanup_crit_edge [
    i16 -255, label %sw.bb52
    i16 -254, label %sw.bb53
    i16 -253, label %sw.bb54
    i16 -252, label %sw.bb55
    i16 -251, label %sw.bb56
    i16 -250, label %sw.bb57
    i16 -249, label %sw.bb58
    i16 -248, label %sw.bb59
    i16 -247, label %sw.bb60
    i16 -246, label %sw.bb61
    i16 -245, label %sw.bb62
    i16 241, label %sw.bb63
    i16 242, label %sw.bb64
    i16 243, label %sw.bb65
    i16 244, label %sw.bb66
    i16 247, label %sw.bb67
    i16 248, label %sw.bb68
  ]

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb52:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i349 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %99 = ptrtoint ptr %input1.i.i349 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %input1.i.i349, align 4
  %keybit.i.i350 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 6
  %type19.i.i351 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %101 = ptrtoint ptr %type19.i.i351 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %type19.i.i351, align 4
  %code.i.i352 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %102 = ptrtoint ptr %code.i.i352 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 257, ptr %code.i.i352, align 2
  br label %sw.epilog70

sw.bb53:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i354 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %103 = ptrtoint ptr %input1.i.i354 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %input1.i.i354, align 4
  %keybit.i.i355 = getelementptr inbounds %struct.input_dev, ptr %104, i32 0, i32 6
  %type19.i.i356 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %105 = ptrtoint ptr %type19.i.i356 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %type19.i.i356, align 4
  %code.i.i357 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %106 = ptrtoint ptr %code.i.i357 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 258, ptr %code.i.i357, align 2
  br label %sw.epilog70

sw.bb54:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i359 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %107 = ptrtoint ptr %input1.i.i359 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %input1.i.i359, align 4
  %keybit.i.i360 = getelementptr inbounds %struct.input_dev, ptr %108, i32 0, i32 6
  %type19.i.i361 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %109 = ptrtoint ptr %type19.i.i361 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %type19.i.i361, align 4
  %code.i.i362 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %110 = ptrtoint ptr %code.i.i362 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 259, ptr %code.i.i362, align 2
  br label %sw.epilog70

sw.bb55:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i364 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %111 = ptrtoint ptr %input1.i.i364 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %input1.i.i364, align 4
  %keybit.i.i365 = getelementptr inbounds %struct.input_dev, ptr %112, i32 0, i32 6
  %type19.i.i366 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %113 = ptrtoint ptr %type19.i.i366 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %type19.i.i366, align 4
  %code.i.i367 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %114 = ptrtoint ptr %code.i.i367 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 260, ptr %code.i.i367, align 2
  br label %sw.epilog70

sw.bb56:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i369 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %115 = ptrtoint ptr %input1.i.i369 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %input1.i.i369, align 4
  %keybit.i.i370 = getelementptr inbounds %struct.input_dev, ptr %116, i32 0, i32 6
  %type19.i.i371 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %117 = ptrtoint ptr %type19.i.i371 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %type19.i.i371, align 4
  %code.i.i372 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %118 = ptrtoint ptr %code.i.i372 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 261, ptr %code.i.i372, align 2
  br label %sw.epilog70

sw.bb57:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i374 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %119 = ptrtoint ptr %input1.i.i374 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %input1.i.i374, align 4
  %keybit.i.i375 = getelementptr inbounds %struct.input_dev, ptr %120, i32 0, i32 6
  %type19.i.i376 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %121 = ptrtoint ptr %type19.i.i376 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %type19.i.i376, align 4
  %code.i.i377 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %122 = ptrtoint ptr %code.i.i377 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 262, ptr %code.i.i377, align 2
  br label %sw.epilog70

sw.bb58:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i379 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %123 = ptrtoint ptr %input1.i.i379 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %input1.i.i379, align 4
  %keybit.i.i380 = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 6
  %type19.i.i381 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %125 = ptrtoint ptr %type19.i.i381 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %type19.i.i381, align 4
  %code.i.i382 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %126 = ptrtoint ptr %code.i.i382 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 263, ptr %code.i.i382, align 2
  br label %sw.epilog70

sw.bb59:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i384 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %127 = ptrtoint ptr %input1.i.i384 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %input1.i.i384, align 4
  %keybit.i.i385 = getelementptr inbounds %struct.input_dev, ptr %128, i32 0, i32 6
  %type19.i.i386 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %129 = ptrtoint ptr %type19.i.i386 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %type19.i.i386, align 4
  %code.i.i387 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %130 = ptrtoint ptr %code.i.i387 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 264, ptr %code.i.i387, align 2
  br label %sw.epilog70

sw.bb60:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i389 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %131 = ptrtoint ptr %input1.i.i389 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %input1.i.i389, align 4
  %keybit.i.i390 = getelementptr inbounds %struct.input_dev, ptr %132, i32 0, i32 6
  %type19.i.i391 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %133 = ptrtoint ptr %type19.i.i391 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %type19.i.i391, align 4
  %code.i.i392 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %134 = ptrtoint ptr %code.i.i392 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 265, ptr %code.i.i392, align 2
  br label %sw.epilog70

sw.bb61:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i394 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %135 = ptrtoint ptr %input1.i.i394 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %input1.i.i394, align 4
  %keybit.i.i395 = getelementptr inbounds %struct.input_dev, ptr %136, i32 0, i32 6
  %type19.i.i396 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %137 = ptrtoint ptr %type19.i.i396 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %type19.i.i396, align 4
  %code.i.i397 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %138 = ptrtoint ptr %code.i.i397 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 304, ptr %code.i.i397, align 2
  br label %sw.epilog70

sw.bb62:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i399 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %139 = ptrtoint ptr %input1.i.i399 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %input1.i.i399, align 4
  %keybit.i.i400 = getelementptr inbounds %struct.input_dev, ptr %140, i32 0, i32 6
  %type19.i.i401 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %141 = ptrtoint ptr %type19.i.i401 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %type19.i.i401, align 4
  %code.i.i402 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %142 = ptrtoint ptr %code.i.i402 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 305, ptr %code.i.i402, align 2
  br label %sw.epilog70

sw.bb63:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i404 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %143 = ptrtoint ptr %input1.i.i404 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %input1.i.i404, align 4
  %keybit.i.i405 = getelementptr inbounds %struct.input_dev, ptr %144, i32 0, i32 6
  %type19.i.i406 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %145 = ptrtoint ptr %type19.i.i406 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %type19.i.i406, align 4
  %code.i.i407 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %146 = ptrtoint ptr %code.i.i407 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 238, ptr %code.i.i407, align 2
  br label %sw.epilog70

sw.bb64:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i409 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %147 = ptrtoint ptr %input1.i.i409 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %input1.i.i409, align 4
  %keybit.i.i410 = getelementptr inbounds %struct.input_dev, ptr %148, i32 0, i32 6
  %type19.i.i411 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %149 = ptrtoint ptr %type19.i.i411 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %type19.i.i411, align 4
  %code.i.i412 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %150 = ptrtoint ptr %code.i.i412 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 224, ptr %code.i.i412, align 2
  br label %sw.epilog70

sw.bb65:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i414 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %151 = ptrtoint ptr %input1.i.i414 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %input1.i.i414, align 4
  %keybit.i.i415 = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 6
  %type19.i.i416 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %153 = ptrtoint ptr %type19.i.i416 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %type19.i.i416, align 4
  %code.i.i417 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %154 = ptrtoint ptr %code.i.i417 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 225, ptr %code.i.i417, align 2
  br label %sw.epilog70

sw.bb66:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i419 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %155 = ptrtoint ptr %input1.i.i419 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %input1.i.i419, align 4
  %keybit.i.i420 = getelementptr inbounds %struct.input_dev, ptr %156, i32 0, i32 6
  %type19.i.i421 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %157 = ptrtoint ptr %type19.i.i421 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %type19.i.i421, align 4
  %code.i.i422 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %158 = ptrtoint ptr %code.i.i422 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 245, ptr %code.i.i422, align 2
  br label %sw.epilog70

sw.bb67:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i424 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %159 = ptrtoint ptr %input1.i.i424 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %input1.i.i424, align 4
  %keybit.i.i425 = getelementptr inbounds %struct.input_dev, ptr %160, i32 0, i32 6
  %type19.i.i426 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %161 = ptrtoint ptr %type19.i.i426 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %type19.i.i426, align 4
  %code.i.i427 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %162 = ptrtoint ptr %code.i.i427 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 212, ptr %code.i.i427, align 2
  br label %sw.epilog70

sw.bb68:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %input1.i.i429 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %163 = ptrtoint ptr %input1.i.i429 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %input1.i.i429, align 4
  %keybit.i.i430 = getelementptr inbounds %struct.input_dev, ptr %164, i32 0, i32 6
  %type19.i.i431 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %165 = ptrtoint ptr %type19.i.i431 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %type19.i.i431, align 4
  %code.i.i432 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %166 = ptrtoint ptr %code.i.i432 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 148, ptr %code.i.i432, align 2
  br label %sw.epilog70

sw.epilog70:                                      ; preds = %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52
  %keybit.i.i430.sink436 = phi ptr [ %keybit.i.i430, %sw.bb68 ], [ %keybit.i.i425, %sw.bb67 ], [ %keybit.i.i420, %sw.bb66 ], [ %keybit.i.i415, %sw.bb65 ], [ %keybit.i.i410, %sw.bb64 ], [ %keybit.i.i405, %sw.bb63 ], [ %keybit.i.i400, %sw.bb62 ], [ %keybit.i.i395, %sw.bb61 ], [ %keybit.i.i390, %sw.bb60 ], [ %keybit.i.i385, %sw.bb59 ], [ %keybit.i.i380, %sw.bb58 ], [ %keybit.i.i375, %sw.bb57 ], [ %keybit.i.i370, %sw.bb56 ], [ %keybit.i.i365, %sw.bb55 ], [ %keybit.i.i360, %sw.bb54 ], [ %keybit.i.i355, %sw.bb53 ], [ %keybit.i.i350, %sw.bb52 ]
  %code.i.i432.sink = phi ptr [ %code.i.i432, %sw.bb68 ], [ %code.i.i427, %sw.bb67 ], [ %code.i.i422, %sw.bb66 ], [ %code.i.i417, %sw.bb65 ], [ %code.i.i412, %sw.bb64 ], [ %code.i.i407, %sw.bb63 ], [ %code.i.i402, %sw.bb62 ], [ %code.i.i397, %sw.bb61 ], [ %code.i.i392, %sw.bb60 ], [ %code.i.i387, %sw.bb59 ], [ %code.i.i382, %sw.bb58 ], [ %code.i.i377, %sw.bb57 ], [ %code.i.i372, %sw.bb56 ], [ %code.i.i367, %sw.bb55 ], [ %code.i.i362, %sw.bb54 ], [ %code.i.i357, %sw.bb53 ], [ %code.i.i352, %sw.bb52 ]
  %167 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 767, ptr %max, align 4
  %168 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %keybit.i.i430.sink436, ptr %bit, align 4
  %169 = ptrtoint ptr %code.i.i432.sink to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %code.i.i432.sink, align 2
  %conv1.i433 = zext i16 %170 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i433, ptr noundef nonnull %keybit.i.i430.sink436) #8
  %input71 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %171 = ptrtoint ptr %input71 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %input71, align 4
  %evbit72 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit72) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end15
  %and76 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp ne i32 %and76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and17)
  %cmp81 = icmp eq i32 %and17, 786432
  %or.cond = select i1 %tobool77.not, i1 %cmp81, i1 false
  br i1 %or.cond, label %if.then82, label %if.end87

if.then82:                                        ; preds = %if.end74
  %trunc = trunc i32 %10 to i16
  %173 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %trunc, label %sw.default86 [
    i16 226, label %if.then82.cleanup_crit_edge
    i16 233, label %if.then82.cleanup_crit_edge438
    i16 234, label %if.then82.cleanup_crit_edge439
  ]

if.then82.cleanup_crit_edge439:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then82.cleanup_crit_edge438:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default86:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end87:                                         ; preds = %if.end74
  %and89 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp ne i32 %and89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 786658, i32 %10)
  %cmp93 = icmp eq i32 %10, 786658
  %or.cond434 = select i1 %tobool90.not, i1 %cmp93, i1 false
  br i1 %or.cond434, label %if.then94, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then94:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %input95 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %174 = ptrtoint ptr %input95 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %input95, align 4
  tail call void @input_set_capability(ptr noundef %175, i32 noundef 1, i32 noundef 113) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %if.end87.cleanup_crit_edge, %sw.default86, %if.then82.cleanup_crit_edge, %if.then82.cleanup_crit_edge438, %if.then82.cleanup_crit_edge439, %sw.epilog70, %if.then49.cleanup_crit_edge, %if.end44, %if.then19.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge437, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end44 ], [ 1, %sw.epilog70 ], [ -1, %sw.default86 ], [ -1, %if.then94 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false6.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge437 ], [ -1, %if.then19.cleanup_crit_edge ], [ 0, %if.then49.cleanup_crit_edge ], [ 0, %if.then82.cleanup_crit_edge ], [ 0, %if.then82.cleanup_crit_edge438 ], [ 0, %if.then82.cleanup_crit_edge439 ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_input_configured(ptr noundef %hdev, ptr nocapture noundef readonly %hi) #2 align 64 {
entry:
  %buf.i91.i = alloca [6 x i8], align 1
  %buf.i.i = alloca [16 x i8], align 1
  %buf_init_start.i.i = alloca [2 x i8], align 2
  %buf_init2.i.i = alloca [16 x i8], align 1
  %buf_init3.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %report = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 1
  %6 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %report, align 4
  %id = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.not = icmp eq i32 %9, 6
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup42_crit_edge

land.lhs.true.cleanup42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tp = getelementptr inbounds %struct.asus_drvdata, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end28_crit_edge, label %land.lhs.true3

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true3:                                   ; preds = %if.end
  %and5 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true3.if.then13_crit_edge, label %if.then7

land.lhs.true3.if.then13_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then7:                                         ; preds = %land.lhs.true3
  %report8 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 1
  %12 = ptrtoint ptr %report8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %report8, align 4
  %id9 = getelementptr inbounds %struct.hid_report, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id9, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %15, label %if.then7.cleanup42_crit_edge [
    i32 5, label %sw.bb
    i32 93, label %if.then7.if.then13_crit_edge
  ]

if.then7.if.then13_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then7.cleanup42_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

sw.bb:                                            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_set_capability(ptr noundef %1, i32 noundef 1, i32 noundef 191) #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.51, ptr %1, align 8
  %tp_kbd_input = getelementptr inbounds %struct.asus_drvdata, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %tp_kbd_input to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %tp_kbd_input, align 4
  br label %cleanup42

if.then13:                                        ; preds = %if.then7.if.then13_crit_edge, %land.lhs.true3.if.then13_crit_edge
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %11, align 4
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 53, i32 noundef 0, i32 noundef %20, i32 noundef 0, i32 noundef 0) #8
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  %max_y = getelementptr inbounds %struct.asus_touchpad_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_y, align 4
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 54, i32 noundef 0, i32 noundef %24, i32 noundef 0, i32 noundef 0) #8
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  %res_x = getelementptr inbounds %struct.asus_touchpad_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %res_x to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %res_x, align 4
  tail call void @input_alloc_absinfo(ptr noundef %1) #8
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then13.input_abs_set_res.exit_crit_edge, label %if.then.i

if.then13.input_abs_set_res.exit_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i = getelementptr %struct.input_absinfo, ptr %30, i32 53, i32 5
  %31 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.then13.input_abs_set_res.exit_crit_edge
  %32 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tp, align 4
  %res_y = getelementptr inbounds %struct.asus_touchpad_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %res_y to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %res_y, align 4
  tail call void @input_alloc_absinfo(ptr noundef %1) #8
  %36 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i79 = icmp eq ptr %37, null
  br i1 %tobool.not.i79, label %input_abs_set_res.exit.input_abs_set_res.exit82_crit_edge, label %if.then.i81

input_abs_set_res.exit.input_abs_set_res.exit82_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit82

if.then.i81:                                      ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i80 = getelementptr %struct.input_absinfo, ptr %37, i32 54, i32 5
  %38 = ptrtoint ptr %resolution.i80 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %resolution.i80, align 4
  br label %input_abs_set_res.exit82

input_abs_set_res.exit82:                         ; preds = %if.then.i81, %input_abs_set_res.exit.input_abs_set_res.exit82_crit_edge
  %39 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tp, align 4
  %contact_size = getelementptr inbounds %struct.asus_touchpad_info, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %contact_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %contact_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp19 = icmp sgt i32 %42, 4
  br i1 %cmp19, label %if.then20, label %input_abs_set_res.exit82.if.end21_crit_edge

input_abs_set_res.exit82.if.end21_crit_edge:      ; preds = %input_abs_set_res.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %input_abs_set_res.exit82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 28, i32 noundef 0, i32 noundef 8, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 48, i32 noundef 0, i32 noundef 8, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 58, i32 noundef 0, i32 noundef 128, i32 noundef 0, i32 noundef 0) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %input_abs_set_res.exit82.if.end21_crit_edge
  %add.ptr.i = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 8
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %44, 65536
  store i32 %or.i, ptr %add.ptr.i, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %propbit, align 4
  %or.i77 = or i32 %46, 4
  store i32 %or.i77, ptr %propbit, align 4
  %47 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tp, align 4
  %max_contacts = getelementptr inbounds %struct.asus_touchpad_info, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %max_contacts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_contacts, align 4
  %call24 = tail call i32 @input_mt_init_slots(ptr noundef %1, i32 noundef %50, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end21.if.end28_crit_edge, label %do.end

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call24) #11
  br label %cleanup42

if.end28:                                         ; preds = %if.end21.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %input29 = getelementptr inbounds %struct.asus_drvdata, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %input29 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %1, ptr %input29, align 4
  %enable_backlight = getelementptr inbounds %struct.asus_drvdata, ptr %3, i32 0, i32 6
  %52 = ptrtoint ptr %enable_backlight to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable_backlight, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool30.not = icmp eq i8 %53, 0
  br i1 %tobool30.not, label %if.end28.cleanup42_crit_edge, label %land.lhs.true31

if.end28.cleanup42_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

land.lhs.true31:                                  ; preds = %if.end28
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %and.i = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i83 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i83, label %if.else.i, label %if.then.i84

if.then.i84:                                      ; preds = %land.lhs.true31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_init_start.i.i) #8
  %58 = ptrtoint ptr %buf_init_start.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 23993, ptr %buf_init_start.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_init2.i.i) #8
  %59 = call ptr @memcpy(ptr %buf_init2.i.i, ptr @__const.rog_nkey_led_init.buf_init2, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf_init3.i.i) #8
  %60 = call ptr @memcpy(ptr %buf_init3.i.i, ptr @__const.rog_nkey_led_init.buf_init3, i32 6)
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.59) #11
  %call.i.i.i = call ptr @kmemdup(ptr noundef nonnull %buf_init_start.i.i, i32 noundef 2, i32 noundef 3264) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i84.do.end3.i.i_crit_edge, label %asus_kbd_set_report.exit.i.i

if.then.i84.do.end3.i.i_crit_edge:                ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

asus_kbd_set_report.exit.i.i:                     ; preds = %if.then.i84
  %61 = ptrtoint ptr %buf_init_start.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buf_init_start.i.i, align 2
  %call1.i.i.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %62, ptr noundef nonnull %call.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i, label %asus_kbd_set_report.exit.i.i.do.end3.i.i_crit_edge, label %if.end.i.i

asus_kbd_set_report.exit.i.i.do.end3.i.i_crit_edge: ; preds = %asus_kbd_set_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %asus_kbd_set_report.exit.i.i.do.end3.i.i_crit_edge, %if.then.i84.do.end3.i.i_crit_edge
  %retval.0.i95.i.i = phi i32 [ %call1.i.i.i, %asus_kbd_set_report.exit.i.i.do.end3.i.i_crit_edge ], [ -12, %if.then.i84.do.end3.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i95.i.i) #11
  br label %rog_nkey_led_init.exit.thread.i

if.end.i.i:                                       ; preds = %asus_kbd_set_report.exit.i.i
  %call.i69.i.i = call ptr @kmemdup(ptr noundef nonnull %buf_init2.i.i, i32 noundef 16, i32 noundef 3264) #8
  %tobool.not.i70.i.i = icmp eq ptr %call.i69.i.i, null
  br i1 %tobool.not.i70.i.i, label %if.end.i.i.do.end11.i.i_crit_edge, label %asus_kbd_set_report.exit74.i.i

if.end.i.i.do.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i.i

asus_kbd_set_report.exit74.i.i:                   ; preds = %if.end.i.i
  %63 = ptrtoint ptr %buf_init2.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %buf_init2.i.i, align 1
  %call1.i71.i.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %64, ptr noundef nonnull %call.i69.i.i, i32 noundef 16, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i69.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71.i.i)
  %cmp7.i.i = icmp slt i32 %call1.i71.i.i, 0
  br i1 %cmp7.i.i, label %asus_kbd_set_report.exit74.i.i.do.end11.i.i_crit_edge, label %if.end13.i.i

asus_kbd_set_report.exit74.i.i.do.end11.i.i_crit_edge: ; preds = %asus_kbd_set_report.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %asus_kbd_set_report.exit74.i.i.do.end11.i.i_crit_edge, %if.end.i.i.do.end11.i.i_crit_edge
  %retval.0.i7398.i.i = phi i32 [ %call1.i71.i.i, %asus_kbd_set_report.exit74.i.i.do.end11.i.i_crit_edge ], [ -12, %if.end.i.i.do.end11.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.65, i32 noundef %retval.0.i7398.i.i) #11
  br label %rog_nkey_led_init.exit.thread.i

if.end13.i.i:                                     ; preds = %asus_kbd_set_report.exit74.i.i
  %call.i75.i.i = call ptr @kmemdup(ptr noundef nonnull %buf_init3.i.i, i32 noundef 6, i32 noundef 3264) #8
  %tobool.not.i76.i.i = icmp eq ptr %call.i75.i.i, null
  br i1 %tobool.not.i76.i.i, label %if.end13.i.i.do.end20.i.i_crit_edge, label %asus_kbd_set_report.exit80.i.i

if.end13.i.i.do.end20.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i.i

asus_kbd_set_report.exit80.i.i:                   ; preds = %if.end13.i.i
  %65 = ptrtoint ptr %buf_init3.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %buf_init3.i.i, align 1
  %call1.i77.i.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %66, ptr noundef nonnull %call.i75.i.i, i32 noundef 6, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i75.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77.i.i)
  %cmp16.i.i = icmp slt i32 %call1.i77.i.i, 0
  br i1 %cmp16.i.i, label %asus_kbd_set_report.exit80.i.i.do.end20.i.i_crit_edge, label %if.end22.i.i

asus_kbd_set_report.exit80.i.i.do.end20.i.i_crit_edge: ; preds = %asus_kbd_set_report.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %asus_kbd_set_report.exit80.i.i.do.end20.i.i_crit_edge, %if.end13.i.i.do.end20.i.i_crit_edge
  %retval.0.i79101.i.i = phi i32 [ %call1.i77.i.i, %asus_kbd_set_report.exit80.i.i.do.end20.i.i_crit_edge ], [ -12, %if.end13.i.i.do.end20.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.68, i32 noundef %retval.0.i79101.i.i) #11
  br label %rog_nkey_led_init.exit.thread.i

if.end22.i.i:                                     ; preds = %asus_kbd_set_report.exit80.i.i
  %67 = ptrtoint ptr %buf_init2.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 94, ptr %buf_init2.i.i, align 1
  %68 = ptrtoint ptr %buf_init3.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 94, ptr %buf_init3.i.i, align 1
  %call.i81.i.i = call ptr @kmemdup(ptr noundef nonnull %buf_init2.i.i, i32 noundef 16, i32 noundef 3264) #8
  %tobool.not.i82.i.i = icmp eq ptr %call.i81.i.i, null
  br i1 %tobool.not.i82.i.i, label %if.end22.i.i.do.end30.i.i_crit_edge, label %asus_kbd_set_report.exit86.i.i

if.end22.i.i.do.end30.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i.i

asus_kbd_set_report.exit86.i.i:                   ; preds = %if.end22.i.i
  %69 = ptrtoint ptr %buf_init2.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %buf_init2.i.i, align 1
  %call1.i83.i.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %70, ptr noundef nonnull %call.i81.i.i, i32 noundef 16, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i81.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83.i.i)
  %cmp26.i.i = icmp slt i32 %call1.i83.i.i, 0
  br i1 %cmp26.i.i, label %asus_kbd_set_report.exit86.i.i.do.end30.i.i_crit_edge, label %if.end32.i.i

asus_kbd_set_report.exit86.i.i.do.end30.i.i_crit_edge: ; preds = %asus_kbd_set_report.exit86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %asus_kbd_set_report.exit86.i.i.do.end30.i.i_crit_edge, %if.end22.i.i.do.end30.i.i_crit_edge
  %retval.0.i85104.i.i = phi i32 [ %call1.i83.i.i, %asus_kbd_set_report.exit86.i.i.do.end30.i.i_crit_edge ], [ -12, %if.end22.i.i.do.end30.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.71, i32 noundef %retval.0.i85104.i.i) #11
  br label %rog_nkey_led_init.exit.thread.i

if.end32.i.i:                                     ; preds = %asus_kbd_set_report.exit86.i.i
  %call.i87.i.i = call ptr @kmemdup(ptr noundef nonnull %buf_init3.i.i, i32 noundef 6, i32 noundef 3264) #8
  %tobool.not.i88.i.i = icmp eq ptr %call.i87.i.i, null
  br i1 %tobool.not.i88.i.i, label %if.end32.i.i.do.end39.i.i_crit_edge, label %asus_kbd_set_report.exit92.i.i

if.end32.i.i.do.end39.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

asus_kbd_set_report.exit92.i.i:                   ; preds = %if.end32.i.i
  %71 = ptrtoint ptr %buf_init3.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buf_init3.i.i, align 1
  %call1.i89.i.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %72, ptr noundef nonnull %call.i87.i.i, i32 noundef 6, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i87.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89.i.i)
  %cmp35.i.i = icmp slt i32 %call1.i89.i.i, 0
  br i1 %cmp35.i.i, label %asus_kbd_set_report.exit92.i.i.do.end39.i.i_crit_edge, label %rog_nkey_led_init.exit.i

asus_kbd_set_report.exit92.i.i.do.end39.i.i_crit_edge: ; preds = %asus_kbd_set_report.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %asus_kbd_set_report.exit92.i.i.do.end39.i.i_crit_edge, %if.end32.i.i.do.end39.i.i_crit_edge
  %retval.0.i91107.i.i = phi i32 [ %call1.i89.i.i, %asus_kbd_set_report.exit92.i.i.do.end39.i.i_crit_edge ], [ -12, %if.end32.i.i.do.end39.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.74, i32 noundef %retval.0.i91107.i.i) #11
  br label %rog_nkey_led_init.exit.thread.i

rog_nkey_led_init.exit.thread.i:                  ; preds = %do.end39.i.i, %do.end30.i.i, %do.end20.i.i, %do.end11.i.i, %do.end3.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf_init3.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_init2.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_init_start.i.i) #8
  br label %do.end39

rog_nkey_led_init.exit.i:                         ; preds = %asus_kbd_set_report.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf_init3.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_init2.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_init_start.i.i) #8
  br label %if.end15.i

if.else.i:                                        ; preds = %land.lhs.true31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i.i) #8
  %73 = call ptr @memcpy(ptr %buf.i.i, ptr @__const.asus_kbd_init.buf, i32 16)
  %call.i.i84.i = call ptr @kmemdup(ptr noundef nonnull %buf.i.i, i32 noundef 16, i32 noundef 3264) #8
  %tobool.not.i.i85.i = icmp eq ptr %call.i.i84.i, null
  br i1 %tobool.not.i.i85.i, label %if.else.i.asus_kbd_init.exit.thread.i_crit_edge, label %asus_kbd_set_report.exit.i88.i

if.else.i.asus_kbd_init.exit.thread.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %asus_kbd_init.exit.thread.i

asus_kbd_set_report.exit.i88.i:                   ; preds = %if.else.i
  %74 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %buf.i.i, align 1
  %call1.i.i86.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %75, ptr noundef nonnull %call.i.i84.i, i32 noundef 16, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i.i84.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i86.i)
  %cmp.i87.i = icmp slt i32 %call1.i.i86.i, 0
  br i1 %cmp.i87.i, label %asus_kbd_set_report.exit.i88.i.asus_kbd_init.exit.thread.i_crit_edge, label %if.end6.i

asus_kbd_set_report.exit.i88.i.asus_kbd_init.exit.thread.i_crit_edge: ; preds = %asus_kbd_set_report.exit.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %asus_kbd_init.exit.thread.i

asus_kbd_init.exit.thread.i:                      ; preds = %asus_kbd_set_report.exit.i88.i.asus_kbd_init.exit.thread.i_crit_edge, %if.else.i.asus_kbd_init.exit.thread.i_crit_edge
  %retval.0.i6.i.i = phi i32 [ %call1.i.i86.i, %asus_kbd_set_report.exit.i88.i.asus_kbd_init.exit.thread.i_crit_edge ], [ -12, %if.else.i.asus_kbd_init.exit.thread.i_crit_edge ]
  %dev.i89.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i89.i, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i6.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i) #8
  br label %do.end39

if.end6.i:                                        ; preds = %asus_kbd_set_report.exit.i88.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i91.i) #8
  %76 = call ptr @memcpy(ptr %buf.i91.i, ptr @__const.asus_kbd_get_functions.buf, i32 6)
  %call.i.i92.i = call ptr @kmemdup(ptr noundef nonnull %buf.i91.i, i32 noundef 6, i32 noundef 3264) #8
  %tobool.not.i.i93.i = icmp eq ptr %call.i.i92.i, null
  br i1 %tobool.not.i.i93.i, label %if.end6.i.do.end.i98.i_crit_edge, label %asus_kbd_set_report.exit.i96.i

if.end6.i.do.end.i98.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i98.i

asus_kbd_set_report.exit.i96.i:                   ; preds = %if.end6.i
  %77 = ptrtoint ptr %buf.i91.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %buf.i91.i, align 1
  %call1.i.i94.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %78, ptr noundef nonnull %call.i.i92.i, i32 noundef 6, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i.i92.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i94.i)
  %cmp.i95.i = icmp slt i32 %call1.i.i94.i, 0
  br i1 %cmp.i95.i, label %asus_kbd_set_report.exit.i96.i.do.end.i98.i_crit_edge, label %if.end.i99.i

asus_kbd_set_report.exit.i96.i.do.end.i98.i_crit_edge: ; preds = %asus_kbd_set_report.exit.i96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i98.i

do.end.i98.i:                                     ; preds = %asus_kbd_set_report.exit.i96.i.do.end.i98.i_crit_edge, %if.end6.i.do.end.i98.i_crit_edge
  %retval.0.i29.i.i = phi i32 [ %call1.i.i94.i, %asus_kbd_set_report.exit.i96.i.do.end.i98.i_crit_edge ], [ -12, %if.end6.i.do.end.i98.i_crit_edge ]
  %dev.i97.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i97.i, ptr noundef nonnull @.str.78, i32 noundef %retval.0.i29.i.i) #11
  br label %asus_kbd_get_functions.exit.thread.i

if.end.i99.i:                                     ; preds = %asus_kbd_set_report.exit.i96.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i99.i.asus_kbd_get_functions.exit.thread.i_crit_edge, label %if.end3.i.i

if.end.i99.i.asus_kbd_get_functions.exit.thread.i_crit_edge: ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %asus_kbd_get_functions.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end.i99.i
  %call4.i.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 90, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 16, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end9.i.i, label %if.end10.i

do.end9.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull @.str.81, i32 noundef %call4.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %asus_kbd_get_functions.exit.thread.i

asus_kbd_get_functions.exit.thread.i:             ; preds = %do.end9.i.i, %if.end.i99.i.asus_kbd_get_functions.exit.thread.i_crit_edge, %do.end.i98.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i91.i) #8
  br label %do.end39

if.end10.i:                                       ; preds = %if.end3.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 6
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i91.i) #8
  %82 = and i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool12.not.i = icmp eq i8 %82, 0
  br i1 %tobool12.not.i, label %if.end10.i.do.end39_crit_edge, label %if.end10.i.if.end15.i_crit_edge

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end10.i.do.end39_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.end15.i:                                       ; preds = %if.end10.i.if.end15.i_crit_edge, %rog_nkey_led_init.exit.i
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 456, i32 noundef 3520) #8
  %kbd_backlight.i = getelementptr inbounds %struct.asus_drvdata, ptr %55, i32 0, i32 4
  %83 = ptrtoint ptr %kbd_backlight.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i.i, ptr %kbd_backlight.i, align 4
  %tobool18.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i, label %if.end15.i.do.end39_crit_edge, label %if.end20.i

if.end15.i.do.end39_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.end20.i:                                       ; preds = %if.end15.i
  %removed.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %call.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %removed.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %removed.i, align 4
  %85 = ptrtoint ptr %kbd_backlight.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %kbd_backlight.i, align 4
  %brightness.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %brightness.i, align 4
  %88 = load ptr, ptr %kbd_backlight.i, align 4
  %hdev24.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %hdev24.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %hdev, ptr %hdev24.i, align 4
  %90 = load ptr, ptr %kbd_backlight.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.57, ptr %90, align 4
  %92 = load ptr, ptr %kbd_backlight.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3, ptr %max_brightness.i, align 4
  %94 = load ptr, ptr %kbd_backlight.i, align 4
  %brightness_set.i = getelementptr inbounds %struct.led_classdev, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @asus_kbd_backlight_set, ptr %brightness_set.i, align 4
  %96 = load ptr, ptr %kbd_backlight.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.led_classdev, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @asus_kbd_backlight_get, ptr %brightness_get.i, align 4
  %98 = load ptr, ptr %kbd_backlight.i, align 4
  %work.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %98, i32 0, i32 2
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %99 = ptrtoint ptr %kbd_backlight.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %kbd_backlight.i, align 4
  %work34.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %work34.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -64, ptr %work34.i, align 4
  %102 = load ptr, ptr %kbd_backlight.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %102, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @asus_kbd_register_leds.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %103 = ptrtoint ptr %kbd_backlight.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %kbd_backlight.i, align 4
  %entry39.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %104, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %entry39.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %entry39.i, ptr %entry39.i, align 4
  %prev.i.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %104, i32 0, i32 2, i32 1, i32 1
  %106 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %entry39.i, ptr %prev.i.i, align 4
  %107 = load ptr, ptr %kbd_backlight.i, align 4
  %func.i = getelementptr inbounds %struct.asus_kbd_leds, ptr %107, i32 0, i32 2, i32 2
  %108 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @asus_kbd_backlight_work, ptr %func.i, align 4
  %109 = load ptr, ptr %kbd_backlight.i, align 4
  %call.i101.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev.i, ptr noundef %109, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %cmp46.i = icmp slt i32 %call.i101.i, 0
  br i1 %cmp46.i, label %if.then48.i, label %asus_kbd_register_leds.exit

if.then48.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %kbd_backlight.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %kbd_backlight.i, align 4
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef %111) #8
  br label %do.end39

asus_kbd_register_leds.exit:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool35.not = icmp eq i32 %call.i101.i, 0
  br i1 %tobool35.not, label %asus_kbd_register_leds.exit.cleanup42_crit_edge, label %asus_kbd_register_leds.exit.do.end39_crit_edge

asus_kbd_register_leds.exit.do.end39_crit_edge:   ; preds = %asus_kbd_register_leds.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

asus_kbd_register_leds.exit.cleanup42_crit_edge:  ; preds = %asus_kbd_register_leds.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

do.end39:                                         ; preds = %asus_kbd_register_leds.exit.do.end39_crit_edge, %if.then48.i, %if.end15.i.do.end39_crit_edge, %if.end10.i.do.end39_crit_edge, %asus_kbd_get_functions.exit.thread.i, %asus_kbd_init.exit.thread.i, %rog_nkey_led_init.exit.thread.i
  %dev40 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40, ptr noundef nonnull @.str.55) #11
  br label %cleanup42

cleanup42:                                        ; preds = %do.end39, %asus_kbd_register_leds.exit.cleanup42_crit_edge, %if.end28.cleanup42_crit_edge, %do.end, %sw.bb, %if.then7.cleanup42_crit_edge, %land.lhs.true.cleanup42_crit_edge
  %retval.1 = phi i32 [ 0, %sw.bb ], [ 0, %land.lhs.true.cleanup42_crit_edge ], [ 0, %if.then7.cleanup42_crit_edge ], [ %call24, %do.end ], [ 0, %do.end39 ], [ 0, %asus_kbd_register_leds.exit.cleanup42_crit_edge ], [ 0, %if.end28.cleanup42_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_reset_resume(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tp = getelementptr inbounds %struct.asus_drvdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @asus_start_multitouch.buf, i32 noundef 5, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef -12) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call.i, align 1
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %5, ptr noundef nonnull %call.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #8
  tail call void @kfree(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 5
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %do.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev6.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.30, i32 noundef %call1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end5.i, %if.end.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %do.end5.i ], [ -12, %if.then.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asus_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 47, label %entry.sw.bb_crit_edge29
    i32 3, label %sw.bb8
    i32 66, label %sw.bb9
    i32 73, label %sw.bb10
  ]

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29
  %battery_next_query = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %battery_next_query to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %battery_next_query, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %sw.bb.if.end4_crit_edge

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 6000
  %5 = ptrtoint ptr %battery_next_query to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %battery_next_query, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 9) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %battery_in_query.i = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %battery_in_query.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %battery_in_query.i, align 4
  %hdev.i = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev.i, align 4
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %9, i8 noundef zeroext 3, ptr noundef nonnull %call7.i.i, i32 noundef 9, i8 noundef zeroext 0, i32 noundef 1) #8
  %10 = ptrtoint ptr %battery_in_query.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %battery_in_query.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 9
  br i1 %cmp.i, label %asus_battery_query.exit.thread26, label %asus_battery_query.exit

asus_battery_query.exit.thread26:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call7.i.i, i32 8
  %13 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.i.i, align 8
  %conv.i.i = zext i8 %12 to i16
  %mul.i.i = mul nuw nsw i16 %conv.i.i, 100
  %div3.i.i = udiv i16 %mul.i.i, 255
  %div.zext.i.i = zext i16 %div3.i.i to i32
  %battery_capacity.i.i = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 9
  %15 = ptrtoint ptr %battery_capacity.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div.zext.i.i, ptr %battery_capacity.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %switch.selectcmp.i.i = icmp eq i8 %14, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %switch.selectcmp1.i.i = icmp eq i8 %14, 1
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 1, i32 %switch.select.i.i
  %battery_stat.i.i = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 10
  %16 = ptrtoint ptr %battery_stat.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.select2.i.i, ptr %battery_stat.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.end4

asus_battery_query.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end4:                                          ; preds = %asus_battery_query.exit.thread26, %sw.bb.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psp)
  %cmp5 = icmp eq i32 %psp, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %battery_stat = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 10
  %17 = ptrtoint ptr %battery_stat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %battery_stat, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %battery_capacity = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 9
  %20 = ptrtoint ptr %battery_capacity to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %battery_capacity, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.asus_drvdata, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 39
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %if.else, %if.then6, %asus_battery_query.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %asus_battery_query.exit ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %if.then6 ], [ 0, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asus_kbd_backlight_set(ptr noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness1 = getelementptr inbounds %struct.asus_kbd_leds, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %brightness1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %brightness, ptr %brightness1, align 4
  %work = getelementptr inbounds %struct.asus_kbd_leds, ptr %led_cdev, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @asus_kbd_backlight_get(ptr nocapture noundef readonly %led_cdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr inbounds %struct.asus_kbd_leds, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asus_kbd_backlight_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1522189764, ptr %buf, align 4
  %removed = getelementptr i8, ptr %work, i32 48
  %1 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %removed, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %brightness = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brightness, align 4
  %conv = trunc i32 %4 to i8
  %arrayidx = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 4
  %hdev = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef 5, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %asus_kbd_set_report.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

asus_kbd_set_report.exit:                         ; preds = %if.end
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 4
  %call1.i = call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %9, ptr noundef nonnull %call.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %asus_kbd_set_report.exit.do.end_crit_edge, label %asus_kbd_set_report.exit.cleanup_crit_edge

asus_kbd_set_report.exit.cleanup_crit_edge:       ; preds = %asus_kbd_set_report.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

asus_kbd_set_report.exit.do.end_crit_edge:        ; preds = %asus_kbd_set_report.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %asus_kbd_set_report.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i13 = phi i32 [ %call1.i, %asus_kbd_set_report.exit.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ]
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %retval.0.i13) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %asus_kbd_set_report.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !121, !122, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-asus.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_author233, !3, !"__UNIQUE_ID_author233", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-asus.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_author234, !5, !"__UNIQUE_ID_author234", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-asus.c", i32 38, i32 1}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-asus.c", i32 39, i32 1}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-asus.c", i32 40, i32 1}
!10 = !{ptr @__initcall__kmod_hid_asus__238_1278_asus_driver_init6, !11, !"__initcall__kmod_hid_asus__238_1278_asus_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-asus.c", i32 1278, i32 1}
!12 = !{ptr @__exitcall_asus_driver_exit, !11, !"__exitcall_asus_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file239, !14, !"__UNIQUE_ID_file239", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-asus.c", i32 1280, i32 1}
!15 = !{ptr @__UNIQUE_ID_license240, !14, !"__UNIQUE_ID_license240", i1 false, i1 false}
!16 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-asus.c", i32 1265, i32 12}
!19 = !{ptr @asus_driver, !20, !"asus_driver", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-asus.c", i32 1264, i32 26}
!21 = !{ptr @asus_devices, !22, !"asus_devices", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-asus.c", i32 1218, i32 35}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-asus.c", i32 1011, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @asus_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @asus_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-asus.c", i32 1023, i32 25}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-asus.c", i32 1041, i32 36}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-asus.c", i32 1043, i32 41}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-asus.c", i32 1079, i32 4}
!39 = !{ptr @asus_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @asus_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-asus.c", i32 1087, i32 3}
!43 = !{ptr @asus_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @asus_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-asus.c", i32 1093, i32 3}
!47 = !{ptr @asus_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @asus_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-asus.c", i32 1098, i32 3}
!51 = !{ptr @asus_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @asus_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-asus.c", i32 1104, i32 26}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-asus.c", i32 1106, i32 26}
!57 = !{ptr @asus_i2c_tp, !58, !"asus_i2c_tp", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-asus.c", i32 132, i32 40}
!59 = distinct !{null, !60, !"asus_t100ha_tp", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-asus.c", i32 150, i32 40}
!61 = distinct !{null, !62, !"asus_t200ta_tp", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-asus.c", i32 160, i32 40}
!63 = !{ptr @asus_t100ta_tp, !64, !"asus_t100ta_tp", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-asus.c", i32 140, i32 40}
!65 = !{ptr @asus_t100chi_tp, !66, !"asus_t100chi_tp", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-asus.c", i32 170, i32 40}
!67 = !{ptr @medion_e1239t_tp, !68, !"medion_e1239t_tp", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-asus.c", i32 180, i32 40}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-asus.c", i32 735, i32 6}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-asus.c", i32 748, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @asus_battery_probe._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @asus_battery_probe._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @asus_battery_props, !77, !"asus_battery_props", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-asus.c", i32 670, i32 35}
!78 = !{ptr @asus_start_multitouch.buf, !79, !"buf", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-asus.c", i32 970, i32 29}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-asus.c", i32 977, i32 3}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @asus_start_multitouch._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @asus_start_multitouch._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hid/hid-asus.c", i32 987, i32 3}
!87 = !{ptr @asus_start_multitouch._entry.29, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @asus_start_multitouch._entry_ptr.31, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-asus.c", i32 317, i32 3}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @asus_event._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @asus_event._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-asus.c", i32 1145, i32 3}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @asus_report_fixup._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @asus_report_fixup._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-asus.c", i32 1152, i32 3}
!103 = !{ptr @asus_report_fixup._entry.38, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @asus_report_fixup._entry_ptr.40, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-asus.c", i32 1181, i32 4}
!107 = !{ptr @asus_report_fixup._entry.41, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @asus_report_fixup._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-asus.c", i32 1203, i32 3}
!112 = !{ptr @asus_report_fixup._entry.45, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @asus_report_fixup._entry_ptr.47, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @asus_g752_fixed_rdesc, !115, !"asus_g752_fixed_rdesc", i1 false, i1 false}
!115 = !{!"../drivers/hid/hid-asus.c", i32 1133, i32 19}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!118 = distinct !{null, !117, !"_rs", i1 false, i1 false}
!119 = !{ptr @__func__.hid_map_usage, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hid_map_usage._entry, !117, !"_entry", i1 false, i1 false}
!123 = !{ptr @hid_map_usage._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hid/hid-asus.c", i32 772, i32 18}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hid/hid-asus.c", i32 808, i32 4}
!128 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @asus_input_configured._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @asus_input_configured._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-asus.c", i32 818, i32 3}
!133 = !{ptr @asus_input_configured._entry.54, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @asus_input_configured._entry_ptr.56, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-asus.c", i32 584, i32 38}
!137 = !{ptr @asus_kbd_register_leds.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/hid/hid-asus.c", i32 588, i32 2}
!139 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hid/hid-asus.c", i32 459, i32 2}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @rog_nkey_led_init._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @rog_nkey_led_init._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hid/hid-asus.c", i32 463, i32 3}
!147 = !{ptr @rog_nkey_led_init._entry.61, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @rog_nkey_led_init._entry_ptr.63, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hid/hid-asus.c", i32 469, i32 3}
!151 = !{ptr @rog_nkey_led_init._entry.64, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @rog_nkey_led_init._entry_ptr.66, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hid/hid-asus.c", i32 475, i32 3}
!155 = !{ptr @rog_nkey_led_init._entry.67, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @rog_nkey_led_init._entry_ptr.69, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hid/hid-asus.c", i32 485, i32 3}
!159 = !{ptr @rog_nkey_led_init._entry.70, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @rog_nkey_led_init._entry_ptr.72, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hid/hid-asus.c", i32 490, i32 3}
!163 = !{ptr @rog_nkey_led_init._entry.73, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @rog_nkey_led_init._entry_ptr.75, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hid/hid-asus.c", i32 413, i32 3}
!167 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @asus_kbd_init._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @asus_kbd_init._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-asus.c", i32 427, i32 3}
!172 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @asus_kbd_get_functions._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @asus_kbd_get_functions._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hid/hid-asus.c", i32 439, i32 3}
!177 = !{ptr @asus_kbd_get_functions._entry.80, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @asus_kbd_get_functions._entry_ptr.82, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hid/hid-asus.c", i32 525, i32 3}
!181 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @asus_kbd_backlight_work._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @asus_kbd_backlight_work._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i8 0, i8 2}
