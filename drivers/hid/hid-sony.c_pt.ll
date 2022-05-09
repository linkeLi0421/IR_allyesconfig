; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-sony.c_pt.bc'
source_filename = "../drivers/hid/hid-sony.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.anon.70 = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sony_sc = type { %struct.spinlock, %struct.list_head, ptr, ptr, ptr, [4 x ptr], i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.power_supply_desc, i32, i32, i8, i32, i8, ptr, i8, i8, [6 x i8], i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8, i16, i32, i8, i32, [6 x %struct.ds4_calibration_data], ptr, %struct.timer_list }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ds4_calibration_data = type { i32, i16, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.sixaxis_output_report = type { i8, %struct.sixaxis_rumble, [4 x i8], i8, [4 x %struct.sixaxis_led], %struct.sixaxis_led }
%struct.sixaxis_rumble = type { i8, i8, i8, i8, i8 }
%struct.sixaxis_led = type { i8, i8, i8, i8, i8 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.motion_output_report_02 = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@sony_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: Sony:%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sony_exit\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-sony.c\00", [41 x i8] zeroinitializer }, align 32
@sony_exit._entry_ptr = internal global ptr @sony_exit._entry, section ".printk_index", align 4
@sony_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.3, ptr @sony_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @sony_probe, ptr @sony_remove, ptr null, ptr @sony_raw_event, ptr null, ptr null, ptr null, ptr @sony_report_fixup, ptr @sony_mapping, ptr null, ptr @sony_input_configured, ptr null, ptr @sony_suspend, ptr @sony_resume, ptr @sony_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@sony_device_id_allocator = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.156, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_hid_sony__244_3248_sony_init6 = internal global ptr @sony_init, section ".initcall6.init", align 4
@__exitcall_sony_exit = internal global ptr @sony_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file245 = internal constant [35 x i8] c"hid_sony.file=drivers/hid/hid-sony\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [21 x i8] c"hid_sony.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sony\00", [27 x i8] zeroinitializer }, align 32
@sony_devices = internal constant { [26 x %struct.hid_device_id], [96 x i8] } { [26 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1356, i32 616, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 1071, i32 1024 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 1071, i32 2048 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 981, i32 256 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 981, i32 512 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 616, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 587, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 884, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 4096, i32 8 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 774, i32 16 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 774, i32 16 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 774, i32 16 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 1476, i32 32 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 1476, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2508, i32 32 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 2508, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2976, i32 128 }, %struct.hid_device_id { i16 3, i16 0, i32 4933, i32 12296, i32 4098 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 872, i32 16384 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 873, i32 32768 }, %struct.hid_device_id { i16 3, i16 0, i32 4794, i32 1867, i32 393216 }, %struct.hid_device_id { i16 3, i16 0, i32 5168, i32 18252, i32 131072 }, %struct.hid_device_id { i16 3, i16 0, i32 4794, i32 256, i32 131072 }, %struct.hid_device_id { i16 3, i16 0, i32 5168, i32 1979, i32 655360 }, %struct.hid_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FutureMax Dance Mat\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SHANWAN PS3 GamePad\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ShanWan PS(R) Ga`epad\00", [42 x i8] zeroinitializer }, align 32
@sony_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 2994, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't alloc sony descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sony_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sony_probe._entry_ptr = internal global ptr @sony_probe._entry, section ".printk_index", align 4
@sony_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&sc->lock\00", [22 x i8] zeroinitializer }, align 32
@sony_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 3006, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@sony_probe._entry_ptr.14 = internal global ptr @sony_probe._entry.12, section ".printk_index", align 4
@sony_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 3026, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@sony_probe._entry_ptr.17 = internal global ptr @sony_probe._entry.15, section ".printk_index", align 4
@sony_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 3039, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to claim input\0A\00", [41 x i8] zeroinitializer }, align 32
@sony_probe._entry_ptr.20 = internal global ptr @sony_probe._entry.18, section ".printk_index", align 4
@ghl_ps4_magic_data = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0\02\08\0A\00\00\00\00\00", [23 x i8] zeroinitializer }, align 32
@sony_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.2, i32 3065, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error preparing URB\0A\00", [43 x i8] zeroinitializer }, align 32
@sony_probe._entry_ptr.23 = internal global ptr @sony_probe._entry.21, section ".printk_index", align 4
@sony_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&sc->ghl_poke_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@ghl_magic_poke_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 641, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"URB transfer failed : %d\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ghl_magic_poke_cb\00", [46 x i8] zeroinitializer }, align 32
@ghl_magic_poke_cb._entry_ptr = internal global ptr @ghl_magic_poke_cb._entry, section ".printk_index", align 4
@ghl_magic_poke._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 653, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb_submit_urb failed: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ghl_magic_poke\00", [17 x i8] zeroinitializer }, align 32
@ghl_magic_poke._entry_ptr = internal global ptr @ghl_magic_poke._entry, section ".printk_index", align 4
@dev_attr_bt_poll_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds4_show_poll_interval, ptr @ds4_store_poll_interval }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sony_show_firmware_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hardware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sony_show_hardware_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bt_poll_interval\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware_version\00", [47 x i8] zeroinitializer }, align 32
@sony_dev_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sony_dev_list_lock\00", [45 x i8] zeroinitializer }, align 32
@sony_raw_event.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_sony\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sony_raw_event\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"DualShock 4 input report's CRC check failed, received crc 0x%0x != 0x%0x\0A\00", [54 x i8] zeroinitializer }, align 32
@sony_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1398, ptr @.str.40, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DualShock 4 USB dongle: controller connected\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sony_raw_event._entry_ptr = internal global ptr @sony_raw_event._entry, section ".printk_index", align 4
@sony_raw_event._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 1413, ptr @.str.40, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DualShock 4 USB dongle: controller disconnected\0A\00", [47 x i8] zeroinitializer }, align 32
@sony_raw_event._entry_ptr.43 = internal global ptr @sony_raw_event._entry.41, section ".printk_index", align 4
@sixaxis_parse_report.sixaxis_battery_capacity = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\192Kd", [26 x i8] zeroinitializer }, align 32
@ds4_hat_mapping = internal constant { [9 x %struct.anon.70], [56 x i8] } { [9 x %struct.anon.70] [%struct.anon.70 { i32 0, i32 -1 }, %struct.anon.70 { i32 1, i32 -1 }, %struct.anon.70 { i32 1, i32 0 }, %struct.anon.70 { i32 1, i32 1 }, %struct.anon.70 { i32 0, i32 1 }, %struct.anon.70 { i32 -1, i32 1 }, %struct.anon.70 { i32 -1, i32 0 }, %struct.anon.70 { i32 -1, i32 -1 }, %struct.anon.70 zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sony_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 958, ptr @.str.40, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Fixing up Sony RF Receiver report descriptor\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sony_report_fixup\00", [46 x i8] zeroinitializer }, align 32
@sony_report_fixup._entry_ptr = internal global ptr @sony_report_fixup._entry, section ".printk_index", align 4
@sony_report_fixup._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 980, ptr @.str.40, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Fixing up USB dongle report descriptor\0A\00", [56 x i8] zeroinitializer }, align 32
@sony_report_fixup._entry_ptr.48 = internal global ptr @sony_report_fixup._entry.46, section ".printk_index", align 4
@motion_rdesc = internal global { [194 x i8], [62 x i8] } { [194 x i8] c"\05\01\09\04\A1\01\A1\02\85\01u\01\95\15\15\00%\015\00E\01\05\09\19\01)\15\81\02\95\0B\06\00\FF\81\03\15\00&\FF\00\05\01\A1\00u\08\95\015\00F\FF\00\090\81\02\C0\06\00\FFu\08\95\07\81\02\05\01u\10F\FF\FF'\FF\FF\00\00\95\03\093\094\095\81\02\06\00\FF\95\03\81\02\05\01\09\01\95\03\81\02\06\00\FF\95\03\81\02u\0CF\FF\0F&\FF\0F\95\04\81\02u\08F\FF\00&\FF\00\95\06\81\02u\08\950\09\01\91\02u\08\950\09\01\B1\02\C0\A1\02\85\02u\08\950\09\01\B1\02\C0\A1\02\85\EEu\08\950\09\01\B1\02\C0\A1\02\85\EFu\08\950\09\01\B1\02\C0\C0", [62 x i8] zeroinitializer }, align 32
@ps3remote_rdesc = internal global { [67 x i8], [61 x i8] } { [67 x i8] c"\05\01\09\05\A1\01\A1\02u\08\95\01\81\01\05\09\19\01)\18\14%\01u\01\95\18\81\02\C0\A1\02\05\09\18)\FE\14&\FE\00u\08\95\01\80u\08\95\06\81\01\05\06\09 \14%\05u\08\95\01\81\02\C0\C0", [61 x i8] zeroinitializer }, align 32
@buzz_keymap = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 704, i32 705, i32 706, i32 707, i32 708, i32 709, i32 710, i32 711, i32 712, i32 713, i32 714, i32 715, i32 716, i32 717, i32 718, i32 719, i32 720, i32 721, i32 722, i32 723], [44 x i8] zeroinitializer }, align 32
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.hid_map_usage, ptr @.str.51, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@ps3remote_keymap_joypad_buttons = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 353, i32 317, i32 318, i32 315, i32 103, i32 106, i32 108, i32 105, i32 312, i32 313, i32 310, i32 311, i32 357, i32 158, i32 256, i32 375, i32 172, i32 0, i32 0, i32 28], [44 x i8] zeroinitializer }, align 32
@ps3remote_keymap_remote_buttons = internal constant { [132 x i32], [144 x i8] } { [132 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 1, i32 355, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 161, i32 0, i32 0, i32 0, i32 139, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 359, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 412, i32 407, i32 207, i32 168, i32 159, i32 0, i32 0, i32 0, i32 128, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 438, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 436, i32 437, i32 0, i32 370, i32 392, i32 371, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 358, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 401, i32 398, i32 399, i32 400], [144 x i8] zeroinitializer }, align 32
@navigation_keymap = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 0, i32 317, i32 0, i32 0, i32 544, i32 547, i32 545, i32 546, i32 312, i32 0, i32 310, i32 0, i32 307, i32 305, i32 304, i32 308, i32 316], [56 x i8] zeroinitializer }, align 32
@navigation_absmap = internal constant { [52 x i32], [48 x i8] } { [52 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2], [48 x i8] zeroinitializer }, align 32
@sixaxis_keymap = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 314, i32 317, i32 318, i32 315, i32 544, i32 547, i32 545, i32 546, i32 312, i32 313, i32 310, i32 311, i32 307, i32 305, i32 304, i32 308, i32 316], [56 x i8] zeroinitializer }, align 32
@sixaxis_absmap = internal constant { [54 x i32], [40 x i8] } { [54 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 3, i32 0, i32 0, i32 4], [40 x i8] zeroinitializer }, align 32
@ds4_keymap = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 308, i32 304, i32 305, i32 307, i32 310, i32 311, i32 312, i32 313, i32 314, i32 315, i32 317, i32 318, i32 316], [40 x i8] zeroinitializer }, align 32
@ds4_absmap = internal constant { [54 x i32], [40 x i8] } { [54 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 3, i32 2, i32 5, i32 4], [40 x i8] zeroinitializer }, align 32
@sony_input_configured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 2748, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate the device id\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sony_input_configured\00", [42 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr = internal global ptr @sony_input_configured._entry, section ".printk_index", align 4
@sony_input_configured._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 2758, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to allocate the output report buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.56 = internal global ptr @sony_input_configured._entry.54, section ".printk_index", align 4
@sony_input_configured._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 2785, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to set controller into operational mode\0A\00", [48 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.59 = internal global ptr @sony_input_configured._entry.57, section ".printk_index", align 4
@sony_input_configured._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 2799, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.61 = internal global ptr @sony_input_configured._entry.60, section ".printk_index", align 4
@sony_input_configured._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 2817, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.63 = internal global ptr @sony_input_configured._entry.62, section ".printk_index", align 4
@sony_input_configured._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.2, i32 2824, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to initialize motion sensors: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.66 = internal global ptr @sony_input_configured._entry.64, section ".printk_index", align 4
@sony_input_configured._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 2838, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.68 = internal global ptr @sony_input_configured._entry.67, section ".printk_index", align 4
@sony_input_configured._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.2, i32 2845, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.70 = internal global ptr @sony_input_configured._entry.69, section ".printk_index", align 4
@sony_input_configured._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.53, ptr @.str.2, i32 2853, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to get calibration data from Dualshock 4\0A\00", [47 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.73 = internal global ptr @sony_input_configured._entry.71, section ".printk_index", align 4
@sony_input_configured._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.53, ptr @.str.2, i32 2859, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get version data from Dualshock 4\0A\00", [51 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.76 = internal global ptr @sony_input_configured._entry.74, section ".printk_index", align 4
@sony_input_configured._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.53, ptr @.str.2, i32 2865, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"can't create sysfs firmware_version attribute err: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.79 = internal global ptr @sony_input_configured._entry.77, section ".printk_index", align 4
@sony_input_configured._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.53, ptr @.str.2, i32 2872, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"can't create sysfs hardware_version attribute err: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.82 = internal global ptr @sony_input_configured._entry.80, section ".printk_index", align 4
@sony_input_configured._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.53, ptr @.str.2, i32 2885, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to initialize multi-touch slots: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.85 = internal global ptr @sony_input_configured._entry.83, section ".printk_index", align 4
@sony_input_configured._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.2, i32 2892, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.87 = internal global ptr @sony_input_configured._entry.86, section ".printk_index", align 4
@sony_input_configured._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.53, ptr @.str.2, i32 2902, ptr @.str.90, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"can't create sysfs bt_poll_interval attribute err: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.91 = internal global ptr @sony_input_configured._entry.88, section ".printk_index", align 4
@sony_input_configured.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&sc->hotplug_worker)\00", [57 x i8] zeroinitializer }, align 32
@sony_input_configured._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.53, ptr @.str.2, i32 2922, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.94 = internal global ptr @sony_input_configured._entry.93, section ".printk_index", align 4
@sony_input_configured._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.53, ptr @.str.2, i32 2946, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hw open failed\0A\00", [16 x i8] zeroinitializer }, align 32
@sony_input_configured._entry_ptr.97 = internal global ptr @sony_input_configured._entry.95, section ".printk_index", align 4
@sony_check_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 2612, ptr @.str.90, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UNIQ does not contain a MAC address; duplicate check skipped\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sony_check_add\00", [17 x i8] zeroinitializer }, align 32
@sony_check_add._entry_ptr = internal global ptr @sony_check_add._entry, section ".printk_index", align 4
@sony_check_add._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 2630, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"failed to retrieve feature report 0x81 with the DualShock 4 MAC address\0A\00", [55 x i8] zeroinitializer }, align 32
@sony_check_add._entry_ptr.102 = internal global ptr @sony_check_add._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pMR\00", [27 x i8] zeroinitializer }, align 32
@sony_check_add._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.99, ptr @.str.2, i32 2655, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"failed to retrieve feature report 0xf2 with the Sixaxis MAC address\0A\00", [59 x i8] zeroinitializer }, align 32
@sony_check_add._entry_ptr.106 = internal global ptr @sony_check_add._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sony_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sony_device_list, ptr @sony_device_list }, [24 x i8] zeroinitializer }, align 32
@sony_check_add_dev_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 2551, ptr @.str.40, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"controller with MAC address %pMR already connected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sony_check_add_dev_list\00", [40 x i8] zeroinitializer }, align 32
@sony_check_add_dev_list._entry_ptr = internal global ptr @sony_check_add_dev_list._entry, section ".printk_index", align 4
@sixaxis_set_operational_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 1648, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't set operational mode: step 1\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sixaxis_set_operational_usb\00", [36 x i8] zeroinitializer }, align 32
@sixaxis_set_operational_usb._entry_ptr = internal global ptr @sixaxis_set_operational_usb._entry, section ".printk_index", align 4
@sixaxis_set_operational_usb._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 1659, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't set operational mode: step 2\0A\00", [60 x i8] zeroinitializer }, align 32
@sixaxis_set_operational_usb._entry_ptr.114 = internal global ptr @sixaxis_set_operational_usb._entry.112, section ".printk_index", align 4
@sixaxis_set_operational_usb._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.2, i32 1672, ptr @.str.40, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can't set operational mode: step 3, ignoring\0A\00", [50 x i8] zeroinitializer }, align 32
@sixaxis_set_operational_usb._entry_ptr.117 = internal global ptr @sixaxis_set_operational_usb._entry.115, section ".printk_index", align 4
@sony_init_output_report.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&sc->state_worker)\00", [59 x i8] zeroinitializer }, align 32
@sixaxis_send_output_report.default_report = internal constant { { [36 x i8] }, [60 x i8] } { { [36 x i8] } { [36 x i8] c"\01\01\FF\00\FF\00\00\00\00\00\00\FF'\10\002\FF'\10\002\FF'\10\002\FF'\10\002\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@sixaxis_set_operational_bt.report = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\F4B\03\00\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Motion Sensors\00", [46 x i8] zeroinitializer }, align 32
@dualshock4_get_calibration_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 1745, ptr @.str.90, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Retrying DualShock 4 get calibration report (0x02) request\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dualshock4_get_calibration_data\00", [32 x i8] zeroinitializer }, align 32
@dualshock4_get_calibration_data._entry_ptr = internal global ptr @dualshock4_get_calibration_data._entry, section ".printk_index", align 4
@dualshock4_get_calibration_data._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 1779, ptr @.str.90, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"DualShock 4 calibration report's CRC check failed, received crc 0x%0x != 0x%0x\0A\00", [48 x i8] zeroinitializer }, align 32
@dualshock4_get_calibration_data._entry_ptr.124 = internal global ptr @dualshock4_get_calibration_data._entry.122, section ".printk_index", align 4
@dualshock4_get_calibration_data._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 1781, ptr @.str.90, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Retrying DualShock 4 get calibration report request\0A\00", [43 x i8] zeroinitializer }, align 32
@dualshock4_get_calibration_data._entry_ptr.127 = internal global ptr @dualshock4_get_calibration_data._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Touchpad\00", [20 x i8] zeroinitializer }, align 32
@dualshock4_calibration_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1881, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"DualShock 4 USB dongle: calibration failed, disabling device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dualshock4_calibration_work\00", [36 x i8] zeroinitializer }, align 32
@dualshock4_calibration_work._entry_ptr = internal global ptr @dualshock4_calibration_work._entry, section ".printk_index", align 4
@dualshock4_calibration_work._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 1884, ptr @.str.40, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DualShock 4 USB dongle: calibration completed\0A\00", [49 x i8] zeroinitializer }, align 32
@dualshock4_calibration_work._entry_ptr.133 = internal global ptr @dualshock4_calibration_work._entry.131, section ".printk_index", align 4
@sony_leds_init.ds4_name_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"red\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"green\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"blue\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"global\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s::buzz%d\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s::sony%d\00", [21 x i8] zeroinitializer }, align 32
@sony_leds_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 2183, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't allocate memory for LED %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sony_leds_init\00", [17 x i8] zeroinitializer }, align 32
@sony_leds_init._entry_ptr = internal global ptr @sony_leds_init._entry, section ".printk_index", align 4
@sony_leds_init._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 2207, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register LED %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sony_leds_init._entry_ptr.145 = internal global ptr @sony_leds_init._entry.143, section ".printk_index", align 4
@dualshock4_set_leds_from_id.color_code = internal constant { [7 x [3 x i8]], [43 x i8] } { [7 x [3 x i8]] [[3 x i8] c"\00\00@", [3 x i8] c"@\00\00", [3 x i8] c"\00@\00", [3 x i8] c" \00 ", [3 x i8] c"\02\01\00", [3 x i8] c"\00\01\01", [3 x i8] c"\01\01\01"], [43 x i8] zeroinitializer }, align 32
@sixaxis_set_leds_from_id.sixaxis_leds = internal constant { [10 x [4 x i8]], [56 x i8] } { [10 x [4 x i8]] [[4 x i8] c"\01\00\00\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\00\00\01", [4 x i8] c"\01\00\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\01\00\01\01", [4 x i8] c"\00\01\01\01", [4 x i8] c"\01\01\01\01"], [56 x i8] zeroinitializer }, align 32
@sony_led_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 2050, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No device data\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sony_led_get_brightness\00", [40 x i8] zeroinitializer }, align 32
@sony_led_get_brightness._entry_ptr = internal global ptr @sony_led_get_brightness._entry, section ".printk_index", align 4
@sony_led_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.148, ptr @.str.2, i32 2009, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sony_led_set_brightness\00", [40 x i8] zeroinitializer }, align 32
@sony_led_set_brightness._entry_ptr = internal global ptr @sony_led_set_brightness._entry, section ".printk_index", align 4
@sony_led_blink_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.149, ptr @.str.2, i32 2072, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sony_led_blink_set\00", [45 x i8] zeroinitializer }, align 32
@sony_led_blink_set._entry_ptr = internal global ptr @sony_led_blink_set._entry, section ".printk_index", align 4
@.str.150 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sony_controller_battery_%pMR_%i\00", [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sony_controller_battery_%pMR\00", [35 x i8] zeroinitializer }, align 32
@sony_battery_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 47, i32 66, i32 0], [16 x i8] zeroinitializer }, align 32
@sony_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 2505, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to register battery device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sony_battery_probe\00", [45 x i8] zeroinitializer }, align 32
@sony_battery_probe._entry_ptr = internal global ptr @sony_battery_probe._entry, section ".printk_index", align 4
@sony_init_ff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 2423, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sony_init_ff\00", [19 x i8] zeroinitializer }, align 32
@sony_init_ff._entry_ptr = internal global ptr @sony_init_ff._entry, section ".printk_index", align 4
@.str.156 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sony_device_id_allocator.xa_lock\00", [63 x i8] zeroinitializer }, align 32
@sony_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.157, ptr @.str.2, i32 3236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sony_init\00", [22 x i8] zeroinitializer }, align 32
@sony_init._entry_ptr = internal global ptr @sony_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 589824]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 4, i64 10, i64 11]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 47, i64 66]
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3243, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"sony_driver\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3217, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant [25 x i8] c"sony_device_id_allocator\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3218, i32 22 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"sony_devices\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3147, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2985, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2988, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2989, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2994, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2998, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3006, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3026, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3039, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [19 x i8] c"ghl_ps4_magic_data\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 107, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3065, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3069, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 641, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 653, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [26 x i8] c"dev_attr_bt_poll_interval\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [26 x i8] c"dev_attr_hardware_version\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 737, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 710, i32 34 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 750, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 747, i32 34 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 762, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant [19 x i8] c"sony_dev_list_lock\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 538, i32 8 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1367, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1398, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1413, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant [25 x i8] c"sixaxis_battery_capacity\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 991, i32 18 }
@___asan_gen_.325 = private unnamed_addr constant [16 x i8] c"ds4_hat_mapping\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 456, i32 38 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 958, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 980, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [13 x i8] c"motion_rdesc\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 112, i32 11 }
@___asan_gen_.346 = private unnamed_addr constant [16 x i8] c"ps3remote_rdesc\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 208, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant [12 x i8] c"buzz_keymap\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 330, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1036, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [32 x i8] c"ps3remote_keymap_joypad_buttons\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 274, i32 27 }
@___asan_gen_.370 = private unnamed_addr constant [32 x i8] c"ps3remote_keymap_remote_buttons\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 294, i32 27 }
@___asan_gen_.373 = private unnamed_addr constant [18 x i8] c"navigation_keymap\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 384, i32 27 }
@___asan_gen_.376 = private unnamed_addr constant [18 x i8] c"navigation_absmap\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 375, i32 27 }
@___asan_gen_.379 = private unnamed_addr constant [15 x i8] c"sixaxis_keymap\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 411, i32 27 }
@___asan_gen_.382 = private unnamed_addr constant [15 x i8] c"sixaxis_absmap\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 404, i32 27 }
@___asan_gen_.385 = private unnamed_addr constant [11 x i8] c"ds4_keymap\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 440, i32 27 }
@___asan_gen_.388 = private unnamed_addr constant [11 x i8] c"ds4_absmap\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 431, i32 27 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2748, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2758, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2785, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2799, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2817, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2823, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2838, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2844, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2853, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2859, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2865, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2872, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2883, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2891, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2900, i32 5 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2906, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2920, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2946, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2612, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2630, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2638, i32 5 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2655, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2586, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant [17 x i8] c"sony_device_list\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 539, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2549, i32 5 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1648, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1659, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1672, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2720, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant [15 x i8] c"default_report\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2217, i32 46 }
@___asan_gen_.556 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1684, i32 18 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1582, i32 26 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1745, i32 6 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1778, i32 5 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1781, i32 6 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1518, i32 26 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1881, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1884, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant [13 x i8] c"ds4_name_str\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2119, i32 28 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2119, i32 47 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2119, i32 54 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2119, i32 63 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2120, i32 9 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2130, i32 14 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2142, i32 14 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2157, i32 14 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2183, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2207, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant [11 x i8] c"color_code\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1947, i32 18 }
@___asan_gen_.643 = private unnamed_addr constant [13 x i8] c"sixaxis_leds\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 1920, i32 18 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2050, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2009, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2072, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2479, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2480, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant [19 x i8] c"sony_battery_props\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 461, i32 35 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2505, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 2423, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 540, i32 8 }
@___asan_gen_.697 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.700 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.701 = private constant [26 x i8] c"../drivers/hid/hid-sony.c\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 3236, i32 2 }
@llvm.compiler.used = appending global [235 x ptr] [ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_sony_exit, ptr @__initcall__kmod_hid_sony__244_3248_sony_init6, ptr @dualshock4_calibration_work._entry, ptr @dualshock4_calibration_work._entry.131, ptr @dualshock4_calibration_work._entry_ptr, ptr @dualshock4_calibration_work._entry_ptr.133, ptr @dualshock4_get_calibration_data._entry, ptr @dualshock4_get_calibration_data._entry.122, ptr @dualshock4_get_calibration_data._entry.125, ptr @dualshock4_get_calibration_data._entry_ptr, ptr @dualshock4_get_calibration_data._entry_ptr.124, ptr @dualshock4_get_calibration_data._entry_ptr.127, ptr @ghl_magic_poke._entry, ptr @ghl_magic_poke._entry_ptr, ptr @ghl_magic_poke_cb._entry, ptr @ghl_magic_poke_cb._entry_ptr, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @sixaxis_set_operational_usb._entry, ptr @sixaxis_set_operational_usb._entry.112, ptr @sixaxis_set_operational_usb._entry.115, ptr @sixaxis_set_operational_usb._entry_ptr, ptr @sixaxis_set_operational_usb._entry_ptr.114, ptr @sixaxis_set_operational_usb._entry_ptr.117, ptr @sony_battery_probe._entry, ptr @sony_battery_probe._entry_ptr, ptr @sony_check_add._entry, ptr @sony_check_add._entry.100, ptr @sony_check_add._entry.104, ptr @sony_check_add._entry_ptr, ptr @sony_check_add._entry_ptr.102, ptr @sony_check_add._entry_ptr.106, ptr @sony_check_add_dev_list._entry, ptr @sony_check_add_dev_list._entry_ptr, ptr @sony_exit, ptr @sony_exit._entry, ptr @sony_exit._entry_ptr, ptr @sony_init._entry, ptr @sony_init._entry_ptr, ptr @sony_init_ff._entry, ptr @sony_init_ff._entry_ptr, ptr @sony_input_configured._entry, ptr @sony_input_configured._entry.54, ptr @sony_input_configured._entry.57, ptr @sony_input_configured._entry.60, ptr @sony_input_configured._entry.62, ptr @sony_input_configured._entry.64, ptr @sony_input_configured._entry.67, ptr @sony_input_configured._entry.69, ptr @sony_input_configured._entry.71, ptr @sony_input_configured._entry.74, ptr @sony_input_configured._entry.77, ptr @sony_input_configured._entry.80, ptr @sony_input_configured._entry.83, ptr @sony_input_configured._entry.86, ptr @sony_input_configured._entry.88, ptr @sony_input_configured._entry.93, ptr @sony_input_configured._entry.95, ptr @sony_input_configured._entry_ptr, ptr @sony_input_configured._entry_ptr.56, ptr @sony_input_configured._entry_ptr.59, ptr @sony_input_configured._entry_ptr.61, ptr @sony_input_configured._entry_ptr.63, ptr @sony_input_configured._entry_ptr.66, ptr @sony_input_configured._entry_ptr.68, ptr @sony_input_configured._entry_ptr.70, ptr @sony_input_configured._entry_ptr.73, ptr @sony_input_configured._entry_ptr.76, ptr @sony_input_configured._entry_ptr.79, ptr @sony_input_configured._entry_ptr.82, ptr @sony_input_configured._entry_ptr.85, ptr @sony_input_configured._entry_ptr.87, ptr @sony_input_configured._entry_ptr.91, ptr @sony_input_configured._entry_ptr.94, ptr @sony_input_configured._entry_ptr.97, ptr @sony_led_blink_set._entry, ptr @sony_led_blink_set._entry_ptr, ptr @sony_led_get_brightness._entry, ptr @sony_led_get_brightness._entry_ptr, ptr @sony_led_set_brightness._entry, ptr @sony_led_set_brightness._entry_ptr, ptr @sony_leds_init._entry, ptr @sony_leds_init._entry.143, ptr @sony_leds_init._entry_ptr, ptr @sony_leds_init._entry_ptr.145, ptr @sony_probe._entry, ptr @sony_probe._entry.12, ptr @sony_probe._entry.15, ptr @sony_probe._entry.18, ptr @sony_probe._entry.21, ptr @sony_probe._entry_ptr, ptr @sony_probe._entry_ptr.14, ptr @sony_probe._entry_ptr.17, ptr @sony_probe._entry_ptr.20, ptr @sony_probe._entry_ptr.23, ptr @sony_raw_event._entry, ptr @sony_raw_event._entry.41, ptr @sony_raw_event._entry_ptr, ptr @sony_raw_event._entry_ptr.43, ptr @sony_report_fixup._entry, ptr @sony_report_fixup._entry.46, ptr @sony_report_fixup._entry_ptr, ptr @sony_report_fixup._entry_ptr.48, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sony_driver, ptr @sony_device_id_allocator, ptr @.str.3, ptr @sony_devices, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sony_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @ghl_ps4_magic_data, ptr @.str.22, ptr @sony_probe.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @dev_attr_bt_poll_interval, ptr @dev_attr_firmware_version, ptr @dev_attr_hardware_version, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @sony_dev_list_lock, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @sixaxis_parse_report.sixaxis_battery_capacity, ptr @ds4_hat_mapping, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @motion_rdesc, ptr @ps3remote_rdesc, ptr @buzz_keymap, ptr @hid_map_usage._rs, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @ps3remote_keymap_joypad_buttons, ptr @ps3remote_keymap_remote_buttons, ptr @navigation_keymap, ptr @navigation_absmap, ptr @sixaxis_keymap, ptr @sixaxis_absmap, ptr @ds4_keymap, ptr @ds4_absmap, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.65, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.89, ptr @.str.90, ptr @sony_input_configured.__key, ptr @.str.92, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @sony_device_list, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @sony_init_output_report.__key, ptr @.str.118, ptr @sixaxis_send_output_report.default_report, ptr @sixaxis_set_operational_bt.report, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @sony_leds_init.ds4_name_str, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @dualshock4_set_leds_from_id.color_code, ptr @sixaxis_set_leds_from_id.sixaxis_leds, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @sony_battery_props, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_device_id_allocator to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_devices to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ghl_ps4_magic_data to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ghl_magic_poke_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ghl_magic_poke._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bt_poll_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hardware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_dev_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_raw_event._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_parse_report.sixaxis_battery_capacity to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds4_hat_mapping to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_report_fixup._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @motion_rdesc to i32), i32 194, i32 256, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps3remote_rdesc to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buzz_keymap to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps3remote_keymap_joypad_buttons to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps3remote_keymap_remote_buttons to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navigation_keymap to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navigation_absmap to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_keymap to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_absmap to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds4_keymap to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds4_absmap to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_input_configured._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_check_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_check_add._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_check_add._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_check_add_dev_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_set_operational_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_set_operational_usb._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_set_operational_usb._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_init_output_report.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_send_output_report.default_report to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_set_operational_bt.report to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualshock4_get_calibration_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualshock4_get_calibration_data._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualshock4_get_calibration_data._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualshock4_calibration_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualshock4_calibration_work._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_leds_init.ds4_name_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_leds_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_leds_init._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualshock4_set_leds_from_id.color_code to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixaxis_set_leds_from_id.sixaxis_leds to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_led_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_led_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_led_blink_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_battery_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_init_ff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sony_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @hid_unregister_driver(ptr noundef nonnull @sony_driver) #13
  tail call void @ida_destroy(ptr noundef nonnull @sony_device_id_allocator) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.157) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call i32 @__hid_register_driver(ptr noundef nonnull @sony_driver, ptr noundef null, ptr noundef nonnull @.str.36) #13
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %name = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(20) @.str.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or = or i32 %1, 8192
  %spec.select = select i1 %tobool.not, i32 %or, i32 %1
  %call3 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(20) @.str.5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %entry.if.then9_crit_edge, label %lor.lhs.false

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(22) @.str.6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %entry.if.then9_crit_edge
  %or10 = or i32 %spec.select, 65536
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %lor.lhs.false.if.end11_crit_edge
  %quirks.1 = phi i32 [ %spec.select, %lor.lhs.false.if.end11_crit_edge ], [ %or10, %if.then9 ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 448, i32 noundef 3520) #13
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %do.body16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #16
  br label %cleanup

do.body16:                                        ; preds = %if.end11
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @sony_probe.__key, i16 noundef signext 3) #13
  %quirks20 = getelementptr inbounds %struct.sony_sc, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %quirks20 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %quirks.1, ptr %quirks20, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %hdev21 = getelementptr inbounds %struct.sony_sc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %hdev21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %hdev21, align 4
  %call.i153 = tail call i32 @hid_open_report(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool23.not = icmp eq i32 %call.i153, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #16
  br label %cleanup

if.end29:                                         ; preds = %do.body16
  %5 = ptrtoint ptr %quirks20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks20, align 4
  %7 = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %connect_mask.0 = select i1 %8, i32 45, i32 61
  %and42 = and i32 %6, 230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end29.if.end46_crit_edge, label %if.then44

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %version = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  %or45 = or i32 %10, 32768
  store i32 %or45, ptr %version, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end29.if.end46_crit_edge
  %call47 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef %connect_mask.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 33
  %11 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %claimed, align 4
  %and55 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.err.sink.split_crit_edge, label %if.end62

if.end54.err.sink.split_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.sink.split

if.end62:                                         ; preds = %if.end54
  %13 = ptrtoint ptr %quirks20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks20, align 4
  %and64 = and i32 %14, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.cleanup_crit_edge, label %if.then66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then66:                                        ; preds = %if.end62
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %15 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %16, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end69, label %if.then66.err_crit_edge

if.then66.err_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end69:                                         ; preds = %if.then66
  %17 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev21, align 4
  %parent = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %parent72 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %parent72 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent72, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 -128
  %call73 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #13
  %ghl_urb = getelementptr inbounds %struct.sony_sc, ptr %call.i, i32 0, i32 36
  %23 = ptrtoint ptr %ghl_urb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call73, ptr %ghl_urb, align 4
  %tobool75.not = icmp eq ptr %call73, null
  br i1 %tobool75.not, label %if.end69.err_crit_edge, label %if.end77

if.end69.err_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end77:                                         ; preds = %if.end69
  %24 = ptrtoint ptr %quirks20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks20, align 4
  %and79 = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else83, label %if.then81

if.then81:                                        ; preds = %if.end77
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 8
  %28 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev21, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 8, i32 noundef 2848) #13
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.then81.err.sink.split_crit_edge, label %if.end.i

if.then81.err.sink.split_crit_edge:               ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.sink.split

if.end.i:                                         ; preds = %if.then81
  %30 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev21, align 4
  %dev6.i = getelementptr inbounds %struct.hid_device, ptr %31, i32 0, i32 18
  %call.i34.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev6.i, i32 noundef 8, i32 noundef 2848) #13
  %cmp9.i = icmp eq ptr %call.i34.i, null
  br i1 %cmp9.i, label %if.end.i.err.sink.split_crit_edge, label %if.end12.i

if.end.i.err.sink.split_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.sink.split

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 33, ptr %call.i.i, align 1
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 9, ptr %bRequest.i, align 1
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %wValue.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 514, ptr %wValue.i, align 1
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 0, ptr %wIndex.i, align 1
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %wLength.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 2048, ptr %wLength.i, align 1
  %37 = ptrtoint ptr %call.i34.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 146402172261629952, ptr %call.i34.i, align 1
  br label %do.body98.sink.split

if.else83:                                        ; preds = %if.end77
  %and85 = and i32 %25, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else83.do.body98_crit_edge, label %if.then87

if.else83.do.body98_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body98

if.then87:                                        ; preds = %if.else83
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr, align 8
  %40 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdev21, align 4
  %dev.i157 = getelementptr inbounds %struct.hid_device, ptr %41, i32 0, i32 18
  %call.i.i158 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i157, i32 noundef 8, i32 noundef 2848) #13
  %cmp.i159 = icmp eq ptr %call.i.i158, null
  br i1 %cmp.i159, label %if.then87.err.sink.split_crit_edge, label %if.end.i163

if.then87.err.sink.split_crit_edge:               ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.sink.split

if.end.i163:                                      ; preds = %if.then87
  %42 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev21, align 4
  %dev6.i160 = getelementptr inbounds %struct.hid_device, ptr %43, i32 0, i32 18
  %call.i34.i161 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev6.i160, i32 noundef 9, i32 noundef 2848) #13
  %cmp9.i162 = icmp eq ptr %call.i34.i161, null
  br i1 %cmp9.i162, label %if.end.i163.err.sink.split_crit_edge, label %if.end12.i176

if.end.i163.err.sink.split_crit_edge:             ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.sink.split

if.end12.i176:                                    ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %call.i.i158 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 33, ptr %call.i.i158, align 1
  %bRequest.i164 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i158, i32 0, i32 1
  %45 = ptrtoint ptr %bRequest.i164 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 9, ptr %bRequest.i164, align 1
  %wValue.i165 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i158, i32 0, i32 2
  %46 = ptrtoint ptr %wValue.i165 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 12290, ptr %wValue.i165, align 1
  %wIndex.i166 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i158, i32 0, i32 3
  %47 = ptrtoint ptr %wIndex.i166 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 0, ptr %wIndex.i166, align 1
  %wLength.i167 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call.i.i158, i32 0, i32 4
  %48 = ptrtoint ptr %wLength.i167 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 2304, ptr %wLength.i167, align 1
  %49 = call ptr @memcpy(ptr %call.i34.i161, ptr @ghl_ps4_magic_data, i32 9)
  br label %do.body98.sink.split

do.body98.sink.split:                             ; preds = %if.end12.i176, %if.end12.i
  %or2.i.sink.in.in = phi i32 [ %27, %if.end12.i ], [ %39, %if.end12.i176 ]
  %call.i.i.sink = phi ptr [ %call.i.i, %if.end12.i ], [ %call.i.i158, %if.end12.i176 ]
  %call.i34.i.sink = phi ptr [ %call.i34.i, %if.end12.i ], [ %call.i34.i161, %if.end12.i176 ]
  %.sink183 = phi i32 [ 8, %if.end12.i ], [ 9, %if.end12.i176 ]
  %or2.i.sink.in = shl i32 %or2.i.sink.in.in, 8
  %or2.i.sink = or i32 %or2.i.sink.in, -2147483648
  %50 = ptrtoint ptr %ghl_urb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ghl_urb, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 10
  %53 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or2.i.sink, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 21
  %54 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i.sink, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i34.i.sink, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink183, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ghl_magic_poke_cb, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 27
  %58 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %context5.i.i, align 4
  br label %do.body98

do.body98:                                        ; preds = %do.body98.sink.split, %if.else83.do.body98_crit_edge
  %ghl_poke_timer = getelementptr inbounds %struct.sony_sc, ptr %call.i, i32 0, i32 37
  tail call void @init_timer_key(ptr noundef %ghl_poke_timer, ptr noundef nonnull @ghl_magic_poke, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @sony_probe.__key.24) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %59, 800
  %call102 = tail call i32 @mod_timer(ptr noundef %ghl_poke_timer, i32 noundef %add) #13
  br label %cleanup

err.sink.split:                                   ; preds = %if.end.i163.err.sink.split_crit_edge, %if.then87.err.sink.split_crit_edge, %if.end.i.err.sink.split_crit_edge, %if.then81.err.sink.split_crit_edge, %if.end54.err.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %if.end54.err.sink.split_crit_edge ], [ @.str.22, %if.then81.err.sink.split_crit_edge ], [ @.str.22, %if.end.i.err.sink.split_crit_edge ], [ @.str.22, %if.then87.err.sink.split_crit_edge ], [ @.str.22, %if.end.i163.err.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ -19, %if.end54.err.sink.split_crit_edge ], [ -12, %if.then81.err.sink.split_crit_edge ], [ -12, %if.end.i.err.sink.split_crit_edge ], [ -12, %if.then87.err.sink.split_crit_edge ], [ -12, %if.end.i163.err.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.22.sink) #16
  br label %err

err:                                              ; preds = %err.sink.split, %if.end69.err_crit_edge, %if.then66.err_crit_edge
  %ret.2 = phi i32 [ -22, %if.then66.err_crit_edge ], [ -12, %if.end69.err_crit_edge ], [ %ret.2.ph, %err.sink.split ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body98, %if.end62.cleanup_crit_edge, %do.end52, %do.end27, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call.i153, %do.end27 ], [ %call47, %do.end52 ], [ %ret.2, %err ], [ 0, %do.body98 ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sony_remove(ptr noundef %hdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ghl_poke_timer = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 37
  %call1 = tail call i32 @del_timer_sync(ptr noundef %ghl_poke_timer) #13
  %ghl_urb = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %ghl_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ghl_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hid_hw_close(ptr noundef %hdev) #13
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and3 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %hdev6 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %hdev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev6, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_bt_poll_interval) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %fw_version_created = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %fw_version_created to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_version_created, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %hdev10 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %hdev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev10, align 4
  %dev11 = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev11, ptr noundef nonnull @dev_attr_firmware_version) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %hw_version_created = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %hw_version_created to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hw_version_created, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %hdev15 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %hdev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev15, align 4
  %dev16 = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev16, ptr noundef nonnull @dev_attr_hardware_version) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %hotplug_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %hotplug_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hotplug_worker_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end17.if.end.i_crit_edge, label %if.then.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %hotplug_worker.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %hotplug_worker.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end17.if.end.i_crit_edge
  %state_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state_worker_initialized.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.end.i.sony_cancel_work_sync.exit_crit_edge, label %do.body3.i

if.end.i.sony_cancel_work_sync.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_cancel_work_sync.exit

do.body3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %22 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %state_worker_initialized.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5.i) #13
  %state_worker.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  %call10.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %state_worker.i) #13
  br label %sony_cancel_work_sync.exit

sony_cancel_work_sync.exit:                       ; preds = %do.body3.i, %if.end.i.sony_cancel_work_sync.exit_crit_edge
  %list_node.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %list_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list_node.i, align 4
  %tobool.not.i31 = icmp eq ptr %24, null
  br i1 %tobool.not.i31, label %sony_cancel_work_sync.exit.sony_remove_dev_list.exit_crit_edge, label %do.body1.i

sony_cancel_work_sync.exit.sony_remove_dev_list.exit_crit_edge: ; preds = %sony_cancel_work_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_remove_dev_list.exit

do.body1.i:                                       ; preds = %sony_cancel_work_sync.exit
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sony_dev_list_lock) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.list_del.exit.i_crit_edge

do.body1.i.list_del.exit.i_crit_edge:             ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %list_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.body1.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %list_node.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sony_dev_list_lock, i32 noundef %call2.i) #13
  br label %sony_remove_dev_list.exit

sony_remove_dev_list.exit:                        ; preds = %list_del.exit.i, %sony_cancel_work_sync.exit.sony_remove_dev_list.exit_crit_edge
  %device_id.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i = icmp sgt i32 %34, -1
  br i1 %cmp.i, label %if.then.i33, label %sony_remove_dev_list.exit.sony_release_device_id.exit_crit_edge

sony_remove_dev_list.exit.sony_release_device_id.exit_crit_edge: ; preds = %sony_remove_dev_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_release_device_id.exit

if.then.i33:                                      ; preds = %sony_remove_dev_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ida_free(ptr noundef nonnull @sony_device_id_allocator, i32 noundef %34) #13
  %35 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %device_id.i, align 4
  br label %sony_release_device_id.exit

sony_release_device_id.exit:                      ; preds = %if.then.i33, %sony_remove_dev_list.exit.sony_release_device_id.exit_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr noundef %rd, i32 noundef %size) #3 align 64 {
entry:
  %bthdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %size)
  %cmp3 = icmp eq i32 %size, 49
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arrayidx5 = getelementptr i8, ptr %rd, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp7 = icmp eq i8 %7, -1
  br i1 %cmp7, label %if.then.cleanup235_crit_edge, label %do.body

if.then.cleanup235_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup235

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx10 = getelementptr i8, ptr %rd, i32 41
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %rd, i32 42
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  store i8 %11, ptr %arrayidx10, align 1
  store i8 %9, ptr %arrayidx11, align 1
  %arrayidx16 = getelementptr i8, ptr %rd, i32 43
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr i8, ptr %rd, i32 44
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  store i8 %15, ptr %arrayidx16, align 1
  store i8 %13, ptr %arrayidx17, align 1
  %arrayidx24 = getelementptr i8, ptr %rd, i32 45
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %rd, i32 46
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  store i8 %19, ptr %arrayidx24, align 1
  store i8 %17, ptr %arrayidx25, align 1
  %arrayidx32 = getelementptr i8, ptr %rd, i32 47
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %rd, i32 48
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx33, align 1
  store i8 %23, ptr %arrayidx32, align 1
  store i8 %21, ptr %arrayidx33, align 1
  tail call fastcc void @sixaxis_parse_report(ptr noundef %1, ptr noundef %rd)
  br label %if.end230

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and39 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else.if.else50_crit_edge, label %land.lhs.true41

if.else.if.else50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else50

land.lhs.true41:                                  ; preds = %if.else
  %24 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp44 = icmp eq i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %size)
  %cmp47 = icmp eq i32 %size, 49
  %or.cond325 = and i1 %cmp47, %cmp44
  br i1 %or.cond325, label %if.then49, label %land.lhs.true41.if.else50_crit_edge

land.lhs.true41.if.else50_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else50

if.then49:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @sixaxis_parse_report(ptr noundef %1, ptr noundef %rd)
  br label %if.end230

if.else50:                                        ; preds = %land.lhs.true41.if.else50_crit_edge, %if.else.if.else50_crit_edge
  %and52 = and i32 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else50.if.else63_crit_edge, label %land.lhs.true54

if.else50.if.else63_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else63

land.lhs.true54:                                  ; preds = %if.else50
  %26 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp57 = icmp eq i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %size)
  %cmp60 = icmp eq i32 %size, 49
  %or.cond326 = and i1 %cmp60, %cmp57
  br i1 %or.cond326, label %if.then62, label %land.lhs.true54.if.else63_crit_edge

land.lhs.true54.if.else63_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else63

if.then62:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @sixaxis_parse_report(ptr noundef %1, ptr noundef %rd)
  br label %if.end230

if.else63:                                        ; preds = %land.lhs.true54.if.else63_crit_edge, %if.else50.if.else63_crit_edge
  %and65 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else63.if.else76_crit_edge, label %land.lhs.true67

if.else63.if.else76_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else76

land.lhs.true67:                                  ; preds = %if.else63
  %28 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp70 = icmp eq i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp73 = icmp eq i32 %size, 64
  %or.cond327 = and i1 %cmp73, %cmp70
  br i1 %or.cond327, label %if.then75, label %land.lhs.true67.if.else76_crit_edge

land.lhs.true67.if.else76_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else76

if.then75:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dualshock4_parse_report(ptr noundef %1, ptr noundef %rd)
  br label %if.end230

if.else76:                                        ; preds = %land.lhs.true67.if.else76_crit_edge, %if.else63.if.else76_crit_edge
  %and78 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else76.if.else109_crit_edge, label %land.lhs.true80

if.else76.if.else109_crit_edge:                   ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else109

land.lhs.true80:                                  ; preds = %if.else76
  %30 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %31)
  %cmp83 = icmp eq i8 %31, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %size)
  %cmp86 = icmp eq i32 %size, 78
  %or.cond328 = and i1 %cmp86, %cmp83
  br i1 %or.cond328, label %if.then88, label %land.lhs.true80.if.else109_crit_edge

land.lhs.true80.if.else109_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else109

if.then88:                                        ; preds = %land.lhs.true80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bthdr) #13
  %32 = ptrtoint ptr %bthdr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -95, ptr %bthdr, align 1
  %call89 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %bthdr, i32 noundef 1) #18
  %call90 = call i32 @crc32_le(i32 noundef %call89, ptr noundef %rd, i32 noundef 74) #18
  %neg = xor i32 %call90, -1
  %arrayidx91 = getelementptr i8, ptr %rd, i32 74
  %33 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx91, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %neg)
  %cmp93.not = icmp eq i32 %35, %neg
  br i1 %cmp93.not, label %if.end106, label %do.body96

do.body96:                                        ; preds = %if.then88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sony_raw_event.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sony_raw_event, %if.then101)) #13
          to label %cleanup235.critedge [label %if.then101], !srcloc !355

if.then101:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  %hdev102 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %hdev102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdev102, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %37, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sony_raw_event.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %35, i32 noundef %neg) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bthdr) #13
  br label %cleanup235

if.end106:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @dualshock4_parse_report(ptr noundef %1, ptr noundef %rd)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bthdr) #13
  br label %if.end230

if.else109:                                       ; preds = %land.lhs.true80.if.else109_crit_edge, %if.else76.if.else109_crit_edge
  %and111 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else109.if.else214_crit_edge, label %land.lhs.true113

if.else109.if.else214_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else214

land.lhs.true113:                                 ; preds = %if.else109
  %38 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp116 = icmp eq i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp119 = icmp eq i32 %size, 64
  %or.cond330 = and i1 %cmp119, %cmp116
  br i1 %or.cond330, label %if.then121, label %land.lhs.true113.if.else214_crit_edge

land.lhs.true113.if.else214_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else214

if.then121:                                       ; preds = %land.lhs.true113
  %arrayidx122 = getelementptr i8, ptr %rd, i32 31
  %40 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx122, align 1
  %42 = and i8 %41, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool126.not.not = icmp eq i8 %42, 0
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %ds4_dongle_state = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 34
  %43 = ptrtoint ptr %ds4_dongle_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ds4_dongle_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call134) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp140 = icmp eq i32 %44, 0
  %45 = select i1 %cmp140, i1 %tobool126.not.not, i1 false
  br i1 %45, label %do.end148, label %if.else167

do.end148:                                        ; preds = %if.then121
  %hdev149 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %hdev149 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hdev149, align 4
  %dev150 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev150, ptr noundef nonnull @.str.39) #16
  tail call fastcc void @sony_set_leds(ptr noundef %1)
  %call160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %48 = ptrtoint ptr %ds4_dongle_state to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %ds4_dongle_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call160) #13
  %hotplug_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 21
  %49 = ptrtoint ptr %hotplug_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hotplug_worker_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool10.not.i = icmp eq i8 %50, 0
  br i1 %tobool10.not.i, label %do.end148.cleanup235_crit_edge, label %if.then11.i

do.end148.cleanup235_crit_edge:                   ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup235

if.then11.i:                                      ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #15
  %hotplug_worker.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %call.i.i20.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %hotplug_worker.i) #13
  br label %cleanup235

if.else167:                                       ; preds = %if.then121
  %52 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %lor.lhs.false202 [
    i32 2, label %if.else167.land.lhs.true172_crit_edge
    i32 3, label %if.else167.land.lhs.true172_crit_edge336
    i32 1, label %if.else167.cleanup235_crit_edge
  ]

if.else167.cleanup235_crit_edge:                  ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup235

if.else167.land.lhs.true172_crit_edge336:         ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true172

if.else167.land.lhs.true172_crit_edge:            ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true172

land.lhs.true172:                                 ; preds = %if.else167.land.lhs.true172_crit_edge, %if.else167.land.lhs.true172_crit_edge336
  br i1 %tobool126.not.not, label %if.else196, label %do.end177

do.end177:                                        ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #15
  %hdev178 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %hdev178 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdev178, align 4
  %dev179 = getelementptr inbounds %struct.hid_device, ptr %54, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev179, ptr noundef nonnull @.str.42) #16
  %call189 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %55 = ptrtoint ptr %ds4_dongle_state to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %ds4_dongle_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call189) #13
  br label %cleanup235

if.else196:                                       ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cond = icmp eq i32 %44, 3
  br i1 %cond, label %if.else196.cleanup235_crit_edge, label %if.else196.if.end208_crit_edge

if.else196.if.end208_crit_edge:                   ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.else196.cleanup235_crit_edge:                  ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup235

lor.lhs.false202:                                 ; preds = %if.else167
  br i1 %cmp140, label %lor.lhs.false202.cleanup235_crit_edge, label %lor.lhs.false202.if.end208_crit_edge

lor.lhs.false202.if.end208_crit_edge:             ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

lor.lhs.false202.cleanup235_crit_edge:            ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup235

if.end208:                                        ; preds = %lor.lhs.false202.if.end208_crit_edge, %if.else196.if.end208_crit_edge
  tail call fastcc void @dualshock4_parse_report(ptr noundef %1, ptr noundef %rd)
  br label %if.end230

if.else214:                                       ; preds = %land.lhs.true113.if.else214_crit_edge, %if.else109.if.else214_crit_edge
  %and216 = and i32 %3, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.else214.if.end230_crit_edge, label %land.lhs.true218

if.else214.if.end230_crit_edge:                   ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230

land.lhs.true218:                                 ; preds = %if.else214
  %56 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp221 = icmp eq i8 %57, 2
  br i1 %cmp221, label %if.then223, label %land.lhs.true218.if.end230_crit_edge

land.lhs.true218.if.end230_crit_edge:             ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230

if.then223:                                       ; preds = %land.lhs.true218
  %touchpad.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %touchpad.i, align 4
  %arrayidx.i = getelementptr i8, ptr %rd, i32 1
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i, align 1
  %62 = and i8 %61, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i.i = icmp ne i8 %62, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %59, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i.i) #13
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i, align 1
  %65 = lshr i8 %64, 4
  %arrayidx4.i = getelementptr i8, ptr %rd, i32 6
  %66 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = sext i8 %67 to i32
  %arrayidx7.i = getelementptr i8, ptr %rd, i32 11
  %68 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = sext i8 %69 to i32
  %mul.i = sub nsw i32 0, %conv8.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end84.i.for.body.i_crit_edge, %if.then223
  %cmp.i = phi i1 [ true, %if.then223 ], [ false, %if.end84.i.for.body.i_crit_edge ]
  %cmp74.i = phi i1 [ false, %if.then223 ], [ true, %if.end84.i.for.body.i_crit_edge ]
  %n.04.i = phi i32 [ 0, %if.then223 ], [ 1, %if.end84.i.for.body.i_crit_edge ]
  %offset.03.i = phi i32 [ 2, %if.then223 ], [ %add85.i, %if.end84.i.for.body.i_crit_edge ]
  %active.02.i = phi i8 [ %65, %if.then223 ], [ %101, %if.end84.i.for.body.i_crit_edge ]
  %arrayidx10.i = getelementptr i8, ptr %rd, i32 %offset.03.i
  %70 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx10.i, align 1
  %add12.i = add nuw nsw i32 %offset.03.i, 1
  %arrayidx13.i = getelementptr i8, ptr %rd, i32 %add12.i
  %72 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx13.i, align 1
  %add22.i = add nuw nsw i32 %offset.03.i, 2
  %arrayidx23.i = getelementptr i8, ptr %rd, i32 %add22.i
  %74 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx23.i, align 1
  %76 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %touchpad.i, align 4
  tail call void @input_event(ptr noundef %77, i32 noundef 3, i32 noundef 47, i32 noundef %n.04.i) #13
  %78 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %touchpad.i, align 4
  %conv30.i = zext i8 %active.02.i to i32
  %and31.i = and i32 %conv30.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool.i = icmp ne i32 %and31.i, 0
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %79, i32 noundef 0, i1 noundef zeroext %tobool.i) #13
  br i1 %tobool.i, label %if.then.i, label %for.body.i.if.end84.i_crit_edge

for.body.i.if.end84.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

if.then.i:                                        ; preds = %for.body.i
  %conv14.i = zext i8 %73 to i32
  %80 = lshr i32 %conv14.i, 4
  %conv24.i = zext i8 %75 to i32
  %shl25.neg6.i = mul nsw i32 %conv24.i, -16
  %and15.i = shl nuw nsw i32 %conv14.i, 8
  %shl.i = and i32 %and15.i, 3840
  %conv11.i = zext i8 %71 to i32
  %or.i = or i32 %shl.i, %conv11.i
  %add35.i = add nuw nsw i32 %offset.03.i, 3
  %arrayidx36.i = getelementptr i8, ptr %rd, i32 %add35.i
  %81 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx36.i, align 1
  %and38.i = and i8 %82, 15
  %83 = lshr i8 %82, 4
  %84 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %touchpad.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %and38.i, i8 %83)
  %cmp48.i = icmp ugt i8 %and38.i, %83
  %86 = tail call i8 @llvm.umax.i8(i8 %and38.i, i8 %83) #13
  %87 = zext i8 %86 to i32
  tail call void @input_event(ptr noundef %85, i32 noundef 3, i32 noundef 48, i32 noundef %87) #13
  %88 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %touchpad.i, align 4
  %90 = tail call i8 @llvm.umin.i8(i8 %and38.i, i8 %83) #13
  %cond63.i = zext i8 %90 to i32
  tail call void @input_event(ptr noundef %89, i32 noundef 3, i32 noundef 49, i32 noundef %cond63.i) #13
  %91 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %touchpad.i, align 4
  %conv69.i = zext i1 %cmp48.i to i32
  tail call void @input_event(ptr noundef %92, i32 noundef 3, i32 noundef 52, i32 noundef %conv69.i) #13
  %93 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %touchpad.i, align 4
  tail call void @input_event(ptr noundef %94, i32 noundef 3, i32 noundef 53, i32 noundef %or.i) #13
  %95 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %touchpad.i, align 4
  %or26.neg.i = sub nuw nsw i32 1868, %80
  %sub.i = add nsw i32 %or26.neg.i, %shl25.neg6.i
  tail call void @input_event(ptr noundef %96, i32 noundef 3, i32 noundef 54, i32 noundef %sub.i) #13
  %and79.i = and i32 %conv30.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  %or.cond.i = select i1 %cmp74.i, i1 %tobool80.not.i, i1 false
  br i1 %or.cond.i, label %if.then.i.nsg_mrxu_parse_report.exit_crit_edge, label %if.then81.i

if.then.i.nsg_mrxu_parse_report.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nsg_mrxu_parse_report.exit

if.then81.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %touchpad.i, align 4
  tail call void @input_event(ptr noundef %98, i32 noundef 2, i32 noundef 0, i32 noundef %conv5.i) #13
  %99 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %touchpad.i, align 4
  tail call void @input_event(ptr noundef %100, i32 noundef 2, i32 noundef 1, i32 noundef %mul.i) #13
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then81.i, %for.body.i.if.end84.i_crit_edge
  %add85.i = add nuw nsw i32 %offset.03.i, 5
  %101 = lshr i8 %active.02.i, 2
  br i1 %cmp.i, label %if.end84.i.for.body.i_crit_edge, label %if.end84.i.nsg_mrxu_parse_report.exit_crit_edge

if.end84.i.nsg_mrxu_parse_report.exit_crit_edge:  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nsg_mrxu_parse_report.exit

if.end84.i.for.body.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

nsg_mrxu_parse_report.exit:                       ; preds = %if.end84.i.nsg_mrxu_parse_report.exit_crit_edge, %if.then.i.nsg_mrxu_parse_report.exit_crit_edge
  %102 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %touchpad.i, align 4
  tail call void @input_mt_sync_frame(ptr noundef %103) #13
  %104 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %touchpad.i, align 4
  tail call void @input_event(ptr noundef %105, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup235

if.end230:                                        ; preds = %land.lhs.true218.if.end230_crit_edge, %if.else214.if.end230_crit_edge, %if.end208, %if.end106, %if.then75, %if.then62, %if.then49, %do.body
  %defer_initialization = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 23
  %106 = ptrtoint ptr %defer_initialization to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %defer_initialization, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool231.not = icmp eq i8 %107, 0
  br i1 %tobool231.not, label %if.end230.cleanup235_crit_edge, label %if.then232

if.end230.cleanup235_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup235

if.then232:                                       ; preds = %if.end230
  %108 = ptrtoint ptr %defer_initialization to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %defer_initialization, align 2
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %109 = ptrtoint ptr %defer_initialization to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %defer_initialization, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then232.sony_schedule_work.exit333_crit_edge

if.then232.sony_schedule_work.exit333_crit_edge:  ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit333

land.lhs.true.i:                                  ; preds = %if.then232
  %state_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %111 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %state_worker_initialized.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool6.not.i = icmp eq i8 %112, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.sony_schedule_work.exit333_crit_edge, label %if.then.i332

land.lhs.true.i.sony_schedule_work.exit333_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit333

if.then.i332:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %113 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %113, ptr noundef %state_worker.i) #13
  br label %sony_schedule_work.exit333

sony_schedule_work.exit333:                       ; preds = %if.then.i332, %land.lhs.true.i.sony_schedule_work.exit333_crit_edge, %if.then232.sony_schedule_work.exit333_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #13
  br label %cleanup235

cleanup235.critedge:                              ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bthdr) #13
  br label %cleanup235

cleanup235:                                       ; preds = %cleanup235.critedge, %sony_schedule_work.exit333, %if.end230.cleanup235_crit_edge, %nsg_mrxu_parse_report.exit, %lor.lhs.false202.cleanup235_crit_edge, %if.else196.cleanup235_crit_edge, %do.end177, %if.else167.cleanup235_crit_edge, %if.then11.i, %do.end148.cleanup235_crit_edge, %if.then101, %if.then.cleanup235_crit_edge
  %retval.2 = phi i32 [ 1, %nsg_mrxu_parse_report.exit ], [ -22, %if.then.cleanup235_crit_edge ], [ -84, %cleanup235.critedge ], [ -84, %if.then101 ], [ 0, %lor.lhs.false202.cleanup235_crit_edge ], [ 0, %if.else167.cleanup235_crit_edge ], [ 0, %do.end177 ], [ 0, %sony_schedule_work.exit333 ], [ 0, %if.end230.cleanup235_crit_edge ], [ 0, %do.end148.cleanup235_crit_edge ], [ 0, %if.then11.i ], [ 0, %if.else196.cleanup235_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sony_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef %rsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end24_crit_edge, label %land.lhs.true

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %5)
  %cmp = icmp ugt i32 %5, 55
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true4:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %rdesc, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp5 = icmp eq i8 %7, 9
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true4.if.end24_crit_edge

land.lhs.true4.if.end24_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %arrayidx8 = getelementptr i8, ptr %rdesc, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp10 = icmp eq i8 %9, 2
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true7.if.end24_crit_edge

land.lhs.true7.if.end24_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %arrayidx13 = getelementptr i8, ptr %rdesc, i32 54
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %11)
  %cmp15 = icmp eq i8 %11, -127
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.if.end24_crit_edge

land.lhs.true12.if.end24_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %arrayidx18 = getelementptr i8, ptr %rdesc, i32 55
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp20 = icmp eq i8 %13, 7
  br i1 %cmp20, label %do.end, label %land.lhs.true17.if.end24_crit_edge

land.lhs.true17.if.end24_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.end:                                           ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44) #16
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %arrayidx18, align 1
  br label %if.end24

if.end24:                                         ; preds = %do.end, %land.lhs.true17.if.end24_crit_edge, %land.lhs.true12.if.end24_crit_edge, %land.lhs.true7.if.end24_crit_edge, %land.lhs.true4.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks, align 4
  %and26 = and i32 %16, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 194, ptr %rsize, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %and32 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67, ptr %rsize, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %and38 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %land.lhs.true40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.end36
  %19 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %20)
  %cmp41 = icmp ugt i32 %20, 44
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true40.cleanup_crit_edge

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %arrayidx44 = getelementptr i8, ptr %rdesc, i32 23
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %22)
  %cmp46 = icmp eq i8 %22, -107
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %arrayidx49 = getelementptr i8, ptr %rdesc, i32 24
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %24)
  %cmp51 = icmp eq i8 %24, 13
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true48.cleanup_crit_edge

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %arrayidx54 = getelementptr i8, ptr %rdesc, i32 37
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %26)
  %cmp56 = icmp eq i8 %26, 41
  br i1 %cmp56, label %land.lhs.true58, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %arrayidx59 = getelementptr i8, ptr %rdesc, i32 38
  %27 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %28)
  %cmp61 = icmp eq i8 %28, 13
  br i1 %cmp61, label %land.lhs.true63, label %land.lhs.true58.cleanup_crit_edge

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %arrayidx64 = getelementptr i8, ptr %rdesc, i32 43
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %30)
  %cmp66 = icmp eq i8 %30, -107
  br i1 %cmp66, label %land.lhs.true68, label %land.lhs.true63.cleanup_crit_edge

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %arrayidx69 = getelementptr i8, ptr %rdesc, i32 44
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp71 = icmp eq i8 %32, 3
  br i1 %cmp71, label %do.end76, label %land.lhs.true68.cleanup_crit_edge

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end76:                                         ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  %dev77 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77, ptr noundef nonnull @.str.47) #16
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %arrayidx49, align 1
  %34 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %arrayidx59, align 1
  %35 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx69, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %land.lhs.true68.cleanup_crit_edge, %land.lhs.true63.cleanup_crit_edge, %land.lhs.true58.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %land.lhs.true48.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %land.lhs.true40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then34, %if.then28, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @motion_rdesc, %if.then28 ], [ @ps3remote_rdesc, %if.then34 ], [ %rdesc, %entry.cleanup_crit_edge ], [ %rdesc, %do.end76 ], [ %rdesc, %land.lhs.true68.cleanup_crit_edge ], [ %rdesc, %land.lhs.true63.cleanup_crit_edge ], [ %rdesc, %land.lhs.true58.cleanup_crit_edge ], [ %rdesc, %land.lhs.true53.cleanup_crit_edge ], [ %rdesc, %land.lhs.true48.cleanup_crit_edge ], [ %rdesc, %land.lhs.true43.cleanup_crit_edge ], [ %rdesc, %land.lhs.true40.cleanup_crit_edge ], [ %rdesc, %if.end36.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %and1 = and i32 %5, 65535
  %and3 = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and3)
  %cmp.not = icmp eq i32 %and3, 589824
  br i1 %cmp.not, label %if.end, label %if.then.cleanup42_crit_edge

if.then.cleanup42_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end:                                           ; preds = %if.then
  %collection_index = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 1
  %6 = ptrtoint ptr %collection_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %collection_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp ne i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and1)
  %cmp5 = icmp ugt i32 %and1, 20
  %or.cond = select i1 %cond, i1 true, i1 %cmp5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool8.not = icmp eq i32 %and1, 0
  %or.cond83 = select i1 %or.cond, i1 true, i1 %tobool8.not
  br i1 %or.cond83, label %if.end.cleanup42_crit_edge, label %sw.epilog

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

sw.epilog:                                        ; preds = %if.end
  %arrayidx = getelementptr [21 x i32], ptr @buzz_keymap, i32 0, i32 %and1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %conv.i = and i32 %9, 65535
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %10 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input1.i.i, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 6
  %tobool.not.i.i = icmp eq ptr %keybit.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i, !prof !356

if.then.i.i:                                      ; preds = %sw.epilog
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge, label %do.end.i.i

if.then.i.i.hid_map_usage.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_map_usage.exit.thread.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %13, i32 noundef %conv.i, i32 noundef 1) #16
  br label %hid_map_usage.exit.thread.i

hid_map_usage.exit.thread.i:                      ; preds = %do.end.i.i, %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bit, align 4
  br label %cleanup42

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %9 to i16
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %15 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %16 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %code.i.i, align 2
  %17 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 767, ptr %max, align 4
  %18 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %keybit.i.i, ptr %bit, align 4
  %19 = load i16, ptr %code.i.i, align 2
  %conv1.i = zext i16 %19 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i) #13
  br label %cleanup42

if.end11:                                         ; preds = %entry
  %and13 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end11
  %20 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usage, align 4
  %and.i = and i32 %21, 65535
  %and2.i = and i32 %21, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %and2.i, 589824
  br i1 %cmp.not.i, label %if.end.i, label %if.then15.cleanup42_crit_edge

if.then15.cleanup42_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end.i:                                         ; preds = %if.then15
  %collection_index.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 1
  %22 = ptrtoint ptr %collection_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %collection_index.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %23, label %if.end.i.cleanup42_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
  ]

if.end.i.cleanup42_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i)
  %cmp3.i = icmp ugt i32 %and.i, 20
  br i1 %cmp3.i, label %sw.bb.i.cleanup42_crit_edge, label %if.end5.i

sw.bb.i.cleanup42_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end5.i:                                        ; preds = %sw.bb.i
  %arrayidx.i = getelementptr [21 x i32], ptr @ps3remote_keymap_joypad_buttons, i32 0, i32 %and.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %27 = lshr i32 786433, %and.i
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.not.i, label %if.end5.i.sw.epilog.i_crit_edge, label %if.end5.i.cleanup42_crit_edge

if.end5.i.cleanup42_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end5.i.sw.epilog.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %and.i)
  %cmp9.i = icmp ugt i32 %and.i, 131
  br i1 %cmp9.i, label %sw.bb8.i.cleanup42_crit_edge, label %if.end11.i

sw.bb8.i.cleanup42_crit_edge:                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end11.i:                                       ; preds = %sw.bb8.i
  %arrayidx12.i = getelementptr [132 x i32], ptr @ps3remote_keymap_remote_buttons, i32 0, i32 %and.i
  %29 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not.i = icmp eq i32 %30, 0
  br i1 %tobool13.not.i, label %if.end11.i.cleanup42_crit_edge, label %if.end11.i.sw.epilog.i_crit_edge

if.end11.i.sw.epilog.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.end11.i.cleanup42_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

sw.epilog.i:                                      ; preds = %if.end11.i.sw.epilog.i_crit_edge, %if.end5.i.sw.epilog.i_crit_edge
  %key.0.i = phi i32 [ %30, %if.end11.i.sw.epilog.i_crit_edge ], [ %26, %if.end5.i.sw.epilog.i_crit_edge ]
  %conv.i.i = and i32 %key.0.i, 65535
  %input1.i.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %31 = ptrtoint ptr %input1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %conv.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv.i.i, 767
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.i85, !prof !356

if.then.i.i.i:                                    ; preds = %sw.epilog.i
  %call.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.then.i.i.i.hid_map_usage.exit.thread.i.i_crit_edge, label %do.end.i.i.i

if.then.i.i.i.hid_map_usage.exit.thread.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_map_usage.exit.thread.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %call17.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %34, i32 noundef %conv.i.i, i32 noundef 1) #16
  br label %hid_map_usage.exit.thread.i.i

hid_map_usage.exit.thread.i.i:                    ; preds = %do.end.i.i.i, %if.then.i.i.i.hid_map_usage.exit.thread.i.i_crit_edge
  %35 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %bit, align 4
  br label %cleanup42

if.then.i.i85:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %keybit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %conv.i84 = trunc i32 %key.0.i to i16
  %type19.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %36 = ptrtoint ptr %type19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %type19.i.i.i, align 4
  %code.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %37 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i84, ptr %code.i.i.i, align 2
  %38 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 767, ptr %max, align 4
  %39 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %keybit.i.i.i, ptr %bit, align 4
  %40 = load i16, ptr %code.i.i.i, align 2
  %conv1.i.i = zext i16 %40 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i, ptr noundef nonnull %keybit.i.i.i) #13
  br label %cleanup42

if.end17:                                         ; preds = %if.end11
  %and19 = and i32 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end17
  %41 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usage, align 4
  %and.i86 = and i32 %42, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and.i86)
  %cmp.i = icmp eq i32 %and.i86, 589824
  br i1 %cmp.i, label %if.then.i89, label %if.else.i

if.then.i89:                                      ; preds = %if.then21
  %and2.i87 = and i32 %42, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and2.i87)
  %cmp3.i88 = icmp ugt i32 %and2.i87, 17
  br i1 %cmp3.i88, label %if.then.i89.cleanup42_crit_edge, label %if.end.i91

if.then.i89.cleanup42_crit_edge:                  ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end.i91:                                       ; preds = %if.then.i89
  %43 = lshr i32 5147, %and2.i87
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.not.i90 = icmp eq i32 %44, 0
  br i1 %tobool.not.not.i90, label %if.end6.i, label %if.end.i91.cleanup42_crit_edge

if.end.i91.cleanup42_crit_edge:                   ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end6.i:                                        ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i92 = getelementptr [18 x i32], ptr @navigation_keymap, i32 0, i32 %and2.i87
  %45 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i92, align 4
  %input1.i.i.i94 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %47 = ptrtoint ptr %input1.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input1.i.i.i94, align 4
  %keybit.i.i.i95 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %conv.i96 = trunc i32 %46 to i16
  %type19.i.i.i97 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %49 = ptrtoint ptr %type19.i.i.i97 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %type19.i.i.i97, align 4
  %code.i.i.i98 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %50 = ptrtoint ptr %code.i.i.i98 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i96, ptr %code.i.i.i98, align 2
  %51 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 767, ptr %max, align 4
  %52 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %keybit.i.i.i95, ptr %bit, align 4
  %53 = load i16, ptr %code.i.i.i98, align 2
  %conv1.i.i99 = zext i16 %53 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i99, ptr noundef nonnull %keybit.i.i.i95) #13
  br label %cleanup42

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %42)
  %cmp8.i = icmp eq i32 %42, 65537
  br i1 %cmp8.i, label %if.then10.i, label %if.else15.i

if.then10.i:                                      ; preds = %if.else.i
  %usage_index.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %54 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usage_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cond.i = icmp eq i32 %55, 8
  br i1 %cond.i, label %sw.bb.i101, label %if.then10.i.cleanup42_crit_edge

if.then10.i.cleanup42_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

sw.bb.i101:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 65586, ptr %usage, align 4
  %input1.i.i1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %57 = ptrtoint ptr %input1.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input1.i.i1.i, align 4
  %absbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 8
  %type19.i.i9.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %59 = ptrtoint ptr %type19.i.i9.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %type19.i.i9.i, align 4
  %code.i.i10.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %60 = ptrtoint ptr %code.i.i10.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2, ptr %code.i.i10.i, align 2
  %61 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 63, ptr %max, align 4
  %62 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %absbit.i.i.i, ptr %bit, align 4
  %63 = load i16, ptr %code.i.i10.i, align 2
  %conv1.i11.i = zext i16 %63 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i11.i, ptr noundef nonnull %absbit.i.i.i) #13
  br label %cleanup42

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i86)
  %cmp18.i = icmp eq i32 %and.i86, 65536
  br i1 %cmp18.i, label %if.then20.i, label %if.else15.i.cleanup42_crit_edge

if.else15.i.cleanup42_crit_edge:                  ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.then20.i:                                      ; preds = %if.else15.i
  %and22.i = and i32 %42, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %and22.i)
  %cmp23.i = icmp ugt i32 %and22.i, 51
  br i1 %cmp23.i, label %if.then20.i.cleanup42_crit_edge, label %if.end26.i

if.then20.i.cleanup42_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end26.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx27.i = getelementptr [52 x i32], ptr @navigation_absmap, i32 0, i32 %and22.i
  %64 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx27.i, align 4
  %input1.i.i15.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %66 = ptrtoint ptr %input1.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %input1.i.i15.i, align 4
  %absbit.i.i16.i = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 8
  %conv28.i = trunc i32 %65 to i16
  %type19.i.i26.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %68 = ptrtoint ptr %type19.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %type19.i.i26.i, align 4
  %code.i.i27.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %69 = ptrtoint ptr %code.i.i27.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv28.i, ptr %code.i.i27.i, align 2
  %70 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 63, ptr %max, align 4
  %71 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %absbit.i.i16.i, ptr %bit, align 4
  %72 = load i16, ptr %code.i.i27.i, align 2
  %conv1.i28.i = zext i16 %72 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i28.i, ptr noundef nonnull %absbit.i.i16.i) #13
  br label %cleanup42

if.end23:                                         ; preds = %if.end17
  %and25 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  %73 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %usage, align 4
  %and.i102 = and i32 %74, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and.i102)
  %cmp.i103 = icmp eq i32 %and.i102, 589824
  br i1 %cmp.i103, label %if.then.i106, label %if.else.i117

if.then.i106:                                     ; preds = %if.then27
  %and2.i104 = and i32 %74, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and2.i104)
  %cmp3.i105 = icmp ugt i32 %and2.i104, 17
  br i1 %cmp3.i105, label %if.then.i106.cleanup42_crit_edge, label %if.end.i111

if.then.i106.cleanup42_crit_edge:                 ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end.i111:                                      ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i107 = getelementptr [18 x i32], ptr @sixaxis_keymap, i32 0, i32 %and2.i104
  %75 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i107, align 4
  %input1.i.i.i109 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %77 = ptrtoint ptr %input1.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %input1.i.i.i109, align 4
  %keybit.i.i.i110 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 6
  %conv.i112 = trunc i32 %76 to i16
  %type19.i.i.i113 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %79 = ptrtoint ptr %type19.i.i.i113 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %type19.i.i.i113, align 4
  %code.i.i.i114 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %80 = ptrtoint ptr %code.i.i.i114 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i112, ptr %code.i.i.i114, align 2
  %81 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 767, ptr %max, align 4
  %82 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %keybit.i.i.i110, ptr %bit, align 4
  %83 = load i16, ptr %code.i.i.i114, align 2
  %conv1.i.i115 = zext i16 %83 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i115, ptr noundef nonnull %keybit.i.i.i110) #13
  br label %cleanup42

if.else.i117:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %74)
  %cmp6.i = icmp eq i32 %74, 65537
  br i1 %cmp6.i, label %if.then8.i, label %if.else15.i122

if.then8.i:                                       ; preds = %if.else.i117
  %usage_index.i118 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %84 = ptrtoint ptr %usage_index.i118 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %usage_index.i118, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %85, label %if.then8.i.cleanup42_crit_edge [
    i32 8, label %if.then8.i.sw.epilog.i120_crit_edge
    i32 9, label %sw.bb10.i
  ]

if.then8.i.sw.epilog.i120_crit_edge:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i120

if.then8.i.cleanup42_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

sw.bb10.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i120

sw.epilog.i120:                                   ; preds = %sw.bb10.i, %if.then8.i.sw.epilog.i120_crit_edge
  %storemerge.i = phi i32 [ 65589, %sw.bb10.i ], [ 65586, %if.then8.i.sw.epilog.i120_crit_edge ]
  %87 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %storemerge.i, ptr %usage, align 4
  %88 = trunc i32 %storemerge.i to i16
  %conv14.i = and i16 %88, 7
  %input1.i.i2.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %89 = ptrtoint ptr %input1.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %input1.i.i2.i, align 4
  %absbit.i.i.i119 = getelementptr inbounds %struct.input_dev, ptr %90, i32 0, i32 8
  %type19.i.i12.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %91 = ptrtoint ptr %type19.i.i12.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %type19.i.i12.i, align 4
  %code.i.i13.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %92 = ptrtoint ptr %code.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv14.i, ptr %code.i.i13.i, align 2
  %93 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 63, ptr %max, align 4
  %94 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %absbit.i.i.i119, ptr %bit, align 4
  %95 = load i16, ptr %code.i.i13.i, align 2
  %conv1.i14.i = zext i16 %95 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i14.i, ptr noundef nonnull %absbit.i.i.i119) #13
  br label %cleanup42

if.else15.i122:                                   ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i102)
  %cmp18.i121 = icmp eq i32 %and.i102, 65536
  br i1 %cmp18.i121, label %if.then20.i125, label %if.else15.i122.cleanup42_crit_edge

if.else15.i122.cleanup42_crit_edge:               ; preds = %if.else15.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.then20.i125:                                   ; preds = %if.else15.i122
  %and22.i123 = and i32 %74, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %and22.i123)
  %cmp23.i124 = icmp ugt i32 %and22.i123, 53
  br i1 %cmp23.i124, label %if.then20.i125.cleanup42_crit_edge, label %if.end26.i127

if.then20.i125.cleanup42_crit_edge:               ; preds = %if.then20.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end26.i127:                                    ; preds = %if.then20.i125
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx27.i126 = getelementptr [54 x i32], ptr @sixaxis_absmap, i32 0, i32 %and22.i123
  %96 = ptrtoint ptr %arrayidx27.i126 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx27.i126, align 4
  %input1.i.i18.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %98 = ptrtoint ptr %input1.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %input1.i.i18.i, align 4
  %absbit.i.i19.i = getelementptr inbounds %struct.input_dev, ptr %99, i32 0, i32 8
  %conv28.i128 = trunc i32 %97 to i16
  %type19.i.i29.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %100 = ptrtoint ptr %type19.i.i29.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %type19.i.i29.i, align 4
  %code.i.i30.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %101 = ptrtoint ptr %code.i.i30.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv28.i128, ptr %code.i.i30.i, align 2
  %102 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 63, ptr %max, align 4
  %103 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %absbit.i.i19.i, ptr %bit, align 4
  %104 = load i16, ptr %code.i.i30.i, align 2
  %conv1.i31.i = zext i16 %104 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i31.i, ptr noundef nonnull %absbit.i.i19.i) #13
  br label %cleanup42

if.end29:                                         ; preds = %if.end23
  %and31 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end29
  %105 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %usage, align 4
  %and.i130 = and i32 %106, -65536
  %107 = zext i32 %and.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %and.i130, label %if.then33.cleanup42_crit_edge [
    i32 589824, label %if.then.i133
    i32 65536, label %if.then9.i
  ]

if.then33.cleanup42_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.then.i133:                                     ; preds = %if.then33
  %and2.i131 = and i32 %106, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and2.i131)
  %cmp3.i132 = icmp ugt i32 %and2.i131, 13
  br i1 %cmp3.i132, label %if.then.i133.cleanup42_crit_edge, label %if.end.i138

if.then.i133.cleanup42_crit_edge:                 ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end.i138:                                      ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i134 = getelementptr [14 x i32], ptr @ds4_keymap, i32 0, i32 %and2.i131
  %108 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i134, align 4
  %input1.i.i.i136 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %110 = ptrtoint ptr %input1.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %input1.i.i.i136, align 4
  %keybit.i.i.i137 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 6
  %conv.i139 = trunc i32 %109 to i16
  %type19.i.i.i140 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %112 = ptrtoint ptr %type19.i.i.i140 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %type19.i.i.i140, align 4
  %code.i.i.i141 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %113 = ptrtoint ptr %code.i.i.i141 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i139, ptr %code.i.i.i141, align 2
  %114 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 767, ptr %max, align 4
  %115 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %keybit.i.i.i137, ptr %bit, align 4
  %116 = load i16, ptr %code.i.i.i141, align 2
  %conv1.i.i142 = zext i16 %116 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i142, ptr noundef nonnull %keybit.i.i.i137) #13
  br label %cleanup42

if.then9.i:                                       ; preds = %if.then33
  %and11.i = and i32 %106, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65593, i32 %106)
  %cmp13.i = icmp eq i32 %106, 65593
  br i1 %cmp13.i, label %if.then9.i.cleanup42_crit_edge, label %if.end16.i

if.then9.i.cleanup42_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end16.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %and11.i)
  %cmp17.i = icmp ugt i32 %and11.i, 53
  br i1 %cmp17.i, label %if.end16.i.cleanup42_crit_edge, label %if.end20.i

if.end16.i.cleanup42_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21.i = getelementptr [54 x i32], ptr @ds4_absmap, i32 0, i32 %and11.i
  %117 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx21.i, align 4
  %input1.i.i2.i145 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %119 = ptrtoint ptr %input1.i.i2.i145 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %input1.i.i2.i145, align 4
  %absbit.i.i.i146 = getelementptr inbounds %struct.input_dev, ptr %120, i32 0, i32 8
  %conv22.i = trunc i32 %118 to i16
  %type19.i.i12.i147 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %121 = ptrtoint ptr %type19.i.i12.i147 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %type19.i.i12.i147, align 4
  %code.i.i13.i148 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %122 = ptrtoint ptr %code.i.i13.i148 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv22.i, ptr %code.i.i13.i148, align 2
  %123 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 63, ptr %max, align 4
  %124 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %absbit.i.i.i146, ptr %bit, align 4
  %125 = load i16, ptr %code.i.i13.i148, align 2
  %conv1.i14.i149 = zext i16 %125 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i14.i149, ptr noundef nonnull %absbit.i.i.i146) #13
  br label %cleanup42

if.end35:                                         ; preds = %if.end29
  %and37 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.cleanup42_crit_edge, label %if.then39

if.end35.cleanup42_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call fastcc i32 @guitar_mapping(ptr noundef %hi, ptr noundef %usage, ptr noundef %bit, ptr noundef %max)
  br label %cleanup42

cleanup42:                                        ; preds = %if.then39, %if.end35.cleanup42_crit_edge, %if.end20.i, %if.end16.i.cleanup42_crit_edge, %if.then9.i.cleanup42_crit_edge, %if.end.i138, %if.then.i133.cleanup42_crit_edge, %if.then33.cleanup42_crit_edge, %if.end26.i127, %if.then20.i125.cleanup42_crit_edge, %if.else15.i122.cleanup42_crit_edge, %sw.epilog.i120, %if.then8.i.cleanup42_crit_edge, %if.end.i111, %if.then.i106.cleanup42_crit_edge, %if.end26.i, %if.then20.i.cleanup42_crit_edge, %if.else15.i.cleanup42_crit_edge, %sw.bb.i101, %if.then10.i.cleanup42_crit_edge, %if.end6.i, %if.end.i91.cleanup42_crit_edge, %if.then.i89.cleanup42_crit_edge, %if.then.i.i85, %hid_map_usage.exit.thread.i.i, %if.end11.i.cleanup42_crit_edge, %sw.bb8.i.cleanup42_crit_edge, %if.end5.i.cleanup42_crit_edge, %sw.bb.i.cleanup42_crit_edge, %if.end.i.cleanup42_crit_edge, %if.then15.cleanup42_crit_edge, %if.then.i, %hid_map_usage.exit.thread.i, %if.end.cleanup42_crit_edge, %if.then.cleanup42_crit_edge
  %retval.1 = phi i32 [ %call40, %if.then39 ], [ -1, %if.then.cleanup42_crit_edge ], [ -1, %if.end.cleanup42_crit_edge ], [ 0, %if.end35.cleanup42_crit_edge ], [ 1, %hid_map_usage.exit.thread.i ], [ 1, %if.then.i ], [ -1, %if.then15.cleanup42_crit_edge ], [ -1, %sw.bb.i.cleanup42_crit_edge ], [ -1, %if.end5.i.cleanup42_crit_edge ], [ -1, %sw.bb8.i.cleanup42_crit_edge ], [ -1, %if.end11.i.cleanup42_crit_edge ], [ -1, %if.end.i.cleanup42_crit_edge ], [ 1, %hid_map_usage.exit.thread.i.i ], [ 1, %if.then.i.i85 ], [ -1, %if.then.i89.cleanup42_crit_edge ], [ -1, %if.end.i91.cleanup42_crit_edge ], [ -1, %if.then10.i.cleanup42_crit_edge ], [ -1, %if.then20.i.cleanup42_crit_edge ], [ -1, %if.else15.i.cleanup42_crit_edge ], [ 1, %if.end6.i ], [ 1, %sw.bb.i101 ], [ 1, %if.end26.i ], [ -1, %if.then.i106.cleanup42_crit_edge ], [ -1, %if.then8.i.cleanup42_crit_edge ], [ -1, %if.then20.i125.cleanup42_crit_edge ], [ -1, %if.else15.i122.cleanup42_crit_edge ], [ 1, %if.end.i111 ], [ 1, %sw.epilog.i120 ], [ 1, %if.end26.i127 ], [ -1, %if.then.i133.cleanup42_crit_edge ], [ 0, %if.then9.i.cleanup42_crit_edge ], [ -1, %if.end16.i.cleanup42_crit_edge ], [ 0, %if.then33.cleanup42_crit_edge ], [ 1, %if.end.i138 ], [ 1, %if.end20.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_input_configured(ptr noundef %hdev, ptr nocapture noundef readnone %hidinput) #3 align 64 {
entry:
  %psy_cfg.i = alloca %struct.power_supply_config, align 4
  %max_brightness.i = alloca [4 x i8], align 4
  %use_hw_blink.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i, align 4
  %4 = and i32 %3, 230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @sony_device_id_allocator, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %device_id.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 12
  br i1 %cmp.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %device_id.i, align 4
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device_id6.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %device_id6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %device_id6.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %device_id.i, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #16
  br label %err_stop

if.end:                                           ; preds = %if.else.i, %if.end.i
  %9 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks.i, align 4
  %11 = and i32 %10, 2628
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.else.i378, label %if.then.i377

if.then.i377:                                     ; preds = %if.end
  %hdev.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev.i.i, align 4
  %uniq.i.i = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 41
  %call.i.i = tail call i32 @strlen(ptr noundef %uniq.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 17
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i377.do.end.i_crit_edge

if.then.i377.do.end.i_crit_edge:                  ; preds = %if.then.i377
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i377
  %mac_address.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 20
  %arrayidx.i.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 5
  %arrayidx5.i.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 4
  %arrayidx7.i.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 3
  %arrayidx9.i.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 2
  %arrayidx11.i.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 1
  %call14.i.i = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %uniq.i.i, ptr noundef nonnull @.str.107, ptr noundef %arrayidx.i.i, ptr noundef %arrayidx5.i.i, ptr noundef %arrayidx7.i.i, ptr noundef %arrayidx9.i.i, ptr noundef %arrayidx11.i.i, ptr noundef %mac_address.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call14.i.i)
  %cmp15.not.i.i = icmp eq i32 %call14.i.i, 6
  br i1 %cmp15.not.i.i, label %if.end.i.i.if.end78.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i.i.if.end78.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %if.then.i377.do.end.i_crit_edge
  %15 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev.i.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98) #16
  br label %if.end5

if.else.i378:                                     ; preds = %if.end
  %and14.i = and i32 %10, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else37.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.else.i378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 7) #20
  %tobool18.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not.i, label %if.then16.i.err_stop_crit_edge, label %if.end20.i

if.then16.i.err_stop_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end20.i:                                       ; preds = %if.then16.i
  %hdev21.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %hdev21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev21.i, align 4
  %call22.i = tail call i32 @hid_hw_raw_request(ptr noundef %19, i8 noundef zeroext -127, ptr noundef nonnull %call7.i.i, i32 noundef 7, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call22.i)
  %cmp23.not.i = icmp eq i32 %call22.i, 7
  br i1 %cmp23.not.i, label %if.end31.i, label %if.end20.i.sony_check_add.exit.thread492_crit_edge

if.end20.i.sony_check_add.exit.thread492_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_check_add.exit.thread492

if.end31.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %mac_address.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 20
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 1
  %20 = call ptr @memcpy(ptr %mac_address.i, ptr %arrayidx.i, i32 6)
  br label %if.end78.sink.split.i

if.else37.i:                                      ; preds = %if.else.i378
  %21 = and i32 %10, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.else37.i.if.end5_crit_edge, label %if.then45.i

if.else37.i.if.end5_crit_edge:                    ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then45.i:                                      ; preds = %if.else37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i120.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 17) #20
  %tobool47.not.i = icmp eq ptr %call7.i120.i, null
  br i1 %tobool47.not.i, label %if.then45.i.err_stop_crit_edge, label %if.end49.i

if.then45.i.err_stop_crit_edge:                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end49.i:                                       ; preds = %if.then45.i
  %hdev50.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %hdev50.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev50.i, align 4
  %call51.i = tail call i32 @hid_hw_raw_request(ptr noundef %25, i8 noundef zeroext -14, ptr noundef nonnull %call7.i120.i, i32 noundef 17, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call51.i)
  %cmp52.not.i = icmp eq i32 %call51.i, 17
  br i1 %cmp52.not.i, label %for.body.preheader.i, label %if.end49.i.sony_check_add.exit.thread492_crit_edge

if.end49.i.sony_check_add.exit.thread492_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_check_add.exit.thread492

for.body.preheader.i:                             ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx66.i = getelementptr i8, ptr %call7.i120.i, i32 4
  %26 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx66.i, align 4
  %arrayidx68.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 5
  %28 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx68.i, align 1
  %arrayidx66.1.i = getelementptr i8, ptr %call7.i120.i, i32 5
  %29 = ptrtoint ptr %arrayidx66.1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx66.1.i, align 1
  %arrayidx68.1.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 4
  %31 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx68.1.i, align 1
  %arrayidx66.2.i = getelementptr i8, ptr %call7.i120.i, i32 6
  %32 = ptrtoint ptr %arrayidx66.2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx66.2.i, align 2
  %arrayidx68.2.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 3
  %34 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx68.2.i, align 1
  %arrayidx66.3.i = getelementptr i8, ptr %call7.i120.i, i32 7
  %35 = ptrtoint ptr %arrayidx66.3.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx66.3.i, align 1
  %arrayidx68.3.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 2
  %37 = ptrtoint ptr %arrayidx68.3.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx68.3.i, align 1
  %arrayidx66.4.i = getelementptr i8, ptr %call7.i120.i, i32 8
  %38 = ptrtoint ptr %arrayidx66.4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx66.4.i, align 8
  %arrayidx68.4.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 1
  %40 = ptrtoint ptr %arrayidx68.4.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx68.4.i, align 1
  %arrayidx66.5.i = getelementptr i8, ptr %call7.i120.i, i32 9
  %41 = ptrtoint ptr %arrayidx66.5.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx66.5.i, align 1
  %arrayidx68.5.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 20, i32 0
  %43 = ptrtoint ptr %arrayidx68.5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx68.5.i, align 1
  br label %if.end78.sink.split.i

if.end78.sink.split.i:                            ; preds = %for.body.preheader.i, %if.end31.i
  %hdev21.sink.i = phi ptr [ %hdev21.i, %if.end31.i ], [ %hdev50.i, %for.body.preheader.i ]
  %mac_address.sink.i = phi ptr [ %mac_address.i, %if.end31.i ], [ %arrayidx68.5.i, %for.body.preheader.i ]
  %buf.0.ph.i = phi ptr [ %call7.i.i, %if.end31.i ], [ %call7.i120.i, %for.body.preheader.i ]
  %44 = ptrtoint ptr %hdev21.sink.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hdev21.sink.i, align 4
  %uniq.i = getelementptr inbounds %struct.hid_device, ptr %45, i32 0, i32 41
  %call36.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %uniq.i, i32 noundef 64, ptr noundef nonnull @.str.103, ptr noundef %mac_address.sink.i) #13
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end78.sink.split.i, %if.end.i.i.if.end78.i_crit_edge
  %buf.0.i = phi ptr [ null, %if.end.i.i.if.end78.i_crit_edge ], [ %buf.0.ph.i, %if.end78.sink.split.i ]
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sony_dev_list_lock) #13
  %mac_address.i121.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 20
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end78.i
  %.pn.in.i.i = phi ptr [ @sony_device_list, %if.end78.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %46 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, @sony_device_list
  br i1 %cmp7.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_address9.i.i = getelementptr i8, ptr %.pn.i.i, i32 214
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i121.i, ptr noundef dereferenceable(6) %mac_address9.i.i, i32 6) #19
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %47 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %quirks.i, align 4
  %and.i.i.i = and i32 %48, 2628
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %quirks1.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 36
  %49 = ptrtoint ptr %quirks1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %quirks1.i.i.i, align 4
  %and2.i.i.i = and i32 %50, 2628
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %tobool13.not.i.i = xor i1 %tobool.not.i.i.i, %tobool3.not.i.i.i
  br i1 %tobool13.not.i.i, label %if.else.i.i, label %if.then.i.i.sony_check_add.exit_crit_edge

if.then.i.i.sony_check_add.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_check_add.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdev.i122.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %hdev.i122.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdev.i122.i, align 4
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %52, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.108, ptr noundef %mac_address.i121.i) #16
  br label %sony_check_add.exit

for.end.i.i:                                      ; preds = %for.cond.i.i
  %list_node25.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1
  %53 = load ptr, ptr @sony_device_list, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node25.i.i, ptr noundef nonnull @sony_device_list, ptr noundef %53) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.sony_check_add.exit_crit_edge

for.end.i.i.sony_check_add.exit_crit_edge:        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_check_add.exit

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list_node25.i.i, ptr %prev1.i.i.i.i, align 4
  %55 = ptrtoint ptr %list_node25.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %list_node25.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @sony_device_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %list_node25.i.i, ptr @sony_device_list, align 4
  br label %sony_check_add.exit

sony_check_add.exit.thread492:                    ; preds = %if.end49.i.sony_check_add.exit.thread492_crit_edge, %if.end20.i.sony_check_add.exit.thread492_crit_edge
  %hdev50.i.sink = phi ptr [ %hdev21.i, %if.end20.i.sony_check_add.exit.thread492_crit_edge ], [ %hdev50.i, %if.end49.i.sony_check_add.exit.thread492_crit_edge ]
  %.str.105.sink = phi ptr [ @.str.101, %if.end20.i.sony_check_add.exit.thread492_crit_edge ], [ @.str.105, %if.end49.i.sony_check_add.exit.thread492_crit_edge ]
  %call51.i.sink538 = phi i32 [ %call22.i, %if.end20.i.sony_check_add.exit.thread492_crit_edge ], [ %call51.i, %if.end49.i.sony_check_add.exit.thread492_crit_edge ]
  %buf.1.i.ph = phi ptr [ %call7.i.i, %if.end20.i.sony_check_add.exit.thread492_crit_edge ], [ %call7.i120.i, %if.end49.i.sony_check_add.exit.thread492_crit_edge ]
  %57 = ptrtoint ptr %hdev50.i.sink to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hdev50.i.sink, align 4
  %dev58.i = getelementptr inbounds %struct.hid_device, ptr %58, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58.i, ptr noundef nonnull %.str.105.sink) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.sink538)
  %cmp59.i = icmp slt i32 %call51.i.sink538, 0
  %spec.select525 = select i1 %cmp59.i, i32 %call51.i.sink538, i32 -22
  tail call void @kfree(ptr noundef nonnull %buf.1.i.ph) #13
  br label %err_stop

sony_check_add.exit:                              ; preds = %if.end.i.i.i.i, %for.end.i.i.sony_check_add.exit_crit_edge, %if.else.i.i, %if.then.i.i.sony_check_add.exit_crit_edge
  %cmp3 = phi i1 [ false, %if.then.i.i.sony_check_add.exit_crit_edge ], [ true, %if.else.i.i ], [ false, %for.end.i.i.sony_check_add.exit_crit_edge ], [ false, %if.end.i.i.i.i ]
  %ret.0.i.i = phi i32 [ 1, %if.then.i.i.sony_check_add.exit_crit_edge ], [ -17, %if.else.i.i ], [ 0, %for.end.i.i.sony_check_add.exit_crit_edge ], [ 0, %if.end.i.i.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sony_dev_list_lock, i32 noundef %call3.i.i) #13
  tail call void @kfree(ptr noundef %buf.0.i) #13
  br i1 %cmp3, label %sony_check_add.exit.err_stop_crit_edge, label %sony_check_add.exit.if.end5_crit_edge

sony_check_add.exit.if.end5_crit_edge:            ; preds = %sony_check_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

sony_check_add.exit.err_stop_crit_edge:           ; preds = %sony_check_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end5:                                          ; preds = %sony_check_add.exit.if.end5_crit_edge, %if.else37.i.if.end5_crit_edge, %do.end.i
  %retval.0.i379489 = phi i32 [ %ret.0.i.i, %sony_check_add.exit.if.end5_crit_edge ], [ 0, %do.end.i ], [ 0, %if.else37.i.if.end5_crit_edge ]
  %59 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks.i, align 4
  %61 = and i32 %60, 3078
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %if.else.i381, label %if.end5.if.end33.i_crit_edge

if.end5.if.end33.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.else.i381:                                     ; preds = %if.end5
  %and5.i = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else12.i, label %if.else.i381.if.end33.i_crit_edge

if.else.i381.if.end33.i_crit_edge:                ; preds = %if.else.i381
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.else12.i:                                      ; preds = %if.else.i381
  %and14.i382 = and i32 %60, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i382)
  %tobool15.not.i383 = icmp eq i32 %and14.i382, 0
  br i1 %tobool15.not.i383, label %if.else21.i, label %if.else12.i.if.end33.i_crit_edge

if.else12.i.if.end33.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.else21.i:                                      ; preds = %if.else12.i
  %and23.i = and i32 %60, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else21.i.if.end13_crit_edge, label %if.else21.i.if.end33.i_crit_edge

if.else21.i.if.end33.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.else21.i.if.end13_crit_edge:                   ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end33.i:                                       ; preds = %if.else21.i.if.end33.i_crit_edge, %if.else12.i.if.end33.i_crit_edge, %if.else.i381.if.end33.i_crit_edge, %if.end5.if.end33.i_crit_edge
  %.sink.i = phi i32 [ 36, %if.end5.if.end33.i_crit_edge ], [ 78, %if.else.i381.if.end33.i_crit_edge ], [ 32, %if.else12.i.if.end33.i_crit_edge ], [ 49, %if.else21.i.if.end33.i_crit_edge ]
  %hdev8.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %hdev8.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hdev8.i, align 4
  %dev9.i = getelementptr inbounds %struct.hid_device, ptr %64, i32 0, i32 18
  %call10.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev9.i, i32 noundef %.sink.i, i32 noundef 3264) #13
  %output_report_dmabuf11.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 17
  %65 = ptrtoint ptr %output_report_dmabuf11.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call10.i, ptr %output_report_dmabuf11.i, align 4
  %tobool35.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool35.not.i, label %do.end11, label %if.end33.i.if.end13_crit_edge

if.end33.i.if.end13_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.end11:                                         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev12 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.55) #16
  br label %err_stop

if.end13:                                         ; preds = %if.end33.i.if.end13_crit_edge, %if.else21.i.if.end13_crit_edge
  %66 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %quirks.i, align 4
  %and = and i32 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end13
  %quirks15 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %68 = ptrtoint ptr %quirks15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %quirks15, align 8
  %or17 = or i32 %69, 393216
  store i32 %or17, ptr %quirks15, align 8
  %defer_initialization = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 23
  %70 = ptrtoint ptr %defer_initialization to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %defer_initialization, align 2
  %call18 = tail call fastcc i32 @sixaxis_set_operational_usb(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %dev24 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.58) #16
  br label %err_stop

if.end25:                                         ; preds = %if.then14
  %send_output_report1.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 9
  %71 = ptrtoint ptr %send_output_report1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sixaxis_send_output_report, ptr %send_output_report1.i, align 4
  %state_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %72 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %state_worker_initialized.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end25.sony_init_output_report.exit_crit_edge

if.end25.sony_init_output_report.exit_crit_edge:  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_init_output_report.exit

do.body.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  tail call void @__init_work(ptr noundef %state_worker.i, i32 noundef 0) #13
  %74 = ptrtoint ptr %state_worker.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -64, ptr %state_worker.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @sony_init_output_report.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 2
  %77 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @sony_state_worker, ptr %func.i, align 4
  br label %sony_init_output_report.exit

sony_init_output_report.exit:                     ; preds = %do.body.i, %if.end25.sony_init_output_report.exit_crit_edge
  %78 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %state_worker_initialized.i, align 1
  br label %if.end208

if.else:                                          ; preds = %if.end13
  %and27 = and i32 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else40, label %if.then29

if.then29:                                        ; preds = %if.else
  %quirks30 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %79 = ptrtoint ptr %quirks30 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %quirks30, align 8
  %or31 = or i32 %80, 262144
  store i32 %or31, ptr %quirks30, align 8
  %call.i386 = tail call ptr @kmemdup(ptr noundef nonnull @sixaxis_set_operational_bt.report, i32 noundef 5, i32 noundef 3264) #13
  %tobool.not.i387 = icmp eq ptr %call.i386, null
  br i1 %tobool.not.i387, label %if.then29.do.end37_crit_edge, label %sixaxis_set_operational_bt.exit

if.then29.do.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

sixaxis_set_operational_bt.exit:                  ; preds = %if.then29
  %81 = ptrtoint ptr %call.i386 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %call.i386, align 1
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %82, ptr noundef nonnull %call.i386, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #13
  tail call void @kfree(ptr noundef nonnull %call.i386) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp33 = icmp slt i32 %call1.i, 0
  br i1 %cmp33, label %sixaxis_set_operational_bt.exit.do.end37_crit_edge, label %if.end39

sixaxis_set_operational_bt.exit.do.end37_crit_edge: ; preds = %sixaxis_set_operational_bt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

do.end37:                                         ; preds = %sixaxis_set_operational_bt.exit.do.end37_crit_edge, %if.then29.do.end37_crit_edge
  %retval.0.i389501 = phi i32 [ %call1.i, %sixaxis_set_operational_bt.exit.do.end37_crit_edge ], [ -12, %if.then29.do.end37_crit_edge ]
  %dev38 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.58) #16
  br label %err_stop

if.end39:                                         ; preds = %sixaxis_set_operational_bt.exit
  %send_output_report1.i390 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 9
  %83 = ptrtoint ptr %send_output_report1.i390 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @sixaxis_send_output_report, ptr %send_output_report1.i390, align 4
  %state_worker_initialized.i391 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %84 = ptrtoint ptr %state_worker_initialized.i391 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %state_worker_initialized.i391, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i392 = icmp eq i8 %85, 0
  br i1 %tobool.not.i392, label %do.body.i398, label %if.end39.sony_init_output_report.exit400_crit_edge

if.end39.sony_init_output_report.exit400_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_init_output_report.exit400

do.body.i398:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i393 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  tail call void @__init_work(ptr noundef %state_worker.i393, i32 noundef 0) #13
  %86 = ptrtoint ptr %state_worker.i393 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -64, ptr %state_worker.i393, align 4
  %lockdep_map.i394 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i394, ptr noundef nonnull @.str.118, ptr noundef nonnull @sony_init_output_report.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5.i395 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1
  %87 = ptrtoint ptr %entry5.i395 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %entry5.i395, ptr %entry5.i395, align 4
  %prev.i.i396 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1, i32 1
  %88 = ptrtoint ptr %prev.i.i396 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %entry5.i395, ptr %prev.i.i396, align 4
  %func.i397 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 2
  %89 = ptrtoint ptr %func.i397 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @sony_state_worker, ptr %func.i397, align 4
  br label %sony_init_output_report.exit400

sony_init_output_report.exit400:                  ; preds = %do.body.i398, %if.end39.sony_init_output_report.exit400_crit_edge
  %90 = ptrtoint ptr %state_worker_initialized.i391 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %state_worker_initialized.i391, align 1
  br label %if.end208

if.else40:                                        ; preds = %if.else
  %and42 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else67, label %if.then44

if.then44:                                        ; preds = %if.else40
  %quirks45 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %91 = ptrtoint ptr %quirks45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %quirks45, align 8
  %or48 = or i32 %92, 393216
  store i32 %or48, ptr %quirks45, align 8
  %defer_initialization49 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 23
  %93 = ptrtoint ptr %defer_initialization49 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %defer_initialization49, align 2
  %call50 = tail call fastcc i32 @sixaxis_set_operational_usb(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  %dev56 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.58) #16
  br label %err_stop

if.end57:                                         ; preds = %if.then44
  %call58 = tail call fastcc i32 @sony_register_sensors(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end66, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %hdev64 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %hdev64 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hdev64, align 4
  %dev65 = getelementptr inbounds %struct.hid_device, ptr %95, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.65, i32 noundef %call58) #16
  br label %err_stop

if.end66:                                         ; preds = %if.end57
  %send_output_report1.i401 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 9
  %96 = ptrtoint ptr %send_output_report1.i401 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @sixaxis_send_output_report, ptr %send_output_report1.i401, align 4
  %state_worker_initialized.i402 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %97 = ptrtoint ptr %state_worker_initialized.i402 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %state_worker_initialized.i402, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i403 = icmp eq i8 %98, 0
  br i1 %tobool.not.i403, label %do.body.i409, label %if.end66.sony_init_output_report.exit411_crit_edge

if.end66.sony_init_output_report.exit411_crit_edge: ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_init_output_report.exit411

do.body.i409:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i404 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  tail call void @__init_work(ptr noundef %state_worker.i404, i32 noundef 0) #13
  %99 = ptrtoint ptr %state_worker.i404 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %state_worker.i404, align 4
  %lockdep_map.i405 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i405, ptr noundef nonnull @.str.118, ptr noundef nonnull @sony_init_output_report.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5.i406 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1
  %100 = ptrtoint ptr %entry5.i406 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry5.i406, ptr %entry5.i406, align 4
  %prev.i.i407 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1, i32 1
  %101 = ptrtoint ptr %prev.i.i407 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry5.i406, ptr %prev.i.i407, align 4
  %func.i408 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 2
  %102 = ptrtoint ptr %func.i408 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @sony_state_worker, ptr %func.i408, align 4
  br label %sony_init_output_report.exit411

sony_init_output_report.exit411:                  ; preds = %do.body.i409, %if.end66.sony_init_output_report.exit411_crit_edge
  %103 = ptrtoint ptr %state_worker_initialized.i402 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %state_worker_initialized.i402, align 1
  br label %if.end208

if.else67:                                        ; preds = %if.else40
  %and69 = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else91, label %if.then71

if.then71:                                        ; preds = %if.else67
  %quirks72 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %104 = ptrtoint ptr %quirks72 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %quirks72, align 8
  %or73 = or i32 %105, 262144
  store i32 %or73, ptr %quirks72, align 8
  %call.i412 = tail call ptr @kmemdup(ptr noundef nonnull @sixaxis_set_operational_bt.report, i32 noundef 5, i32 noundef 3264) #13
  %tobool.not.i413 = icmp eq ptr %call.i412, null
  br i1 %tobool.not.i413, label %if.then71.do.end79_crit_edge, label %sixaxis_set_operational_bt.exit417

if.then71.do.end79_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

sixaxis_set_operational_bt.exit417:               ; preds = %if.then71
  %106 = ptrtoint ptr %call.i412 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %call.i412, align 1
  %call1.i414 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %107, ptr noundef nonnull %call.i412, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #13
  tail call void @kfree(ptr noundef nonnull %call.i412) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i414)
  %cmp75 = icmp slt i32 %call1.i414, 0
  br i1 %cmp75, label %sixaxis_set_operational_bt.exit417.do.end79_crit_edge, label %if.end81

sixaxis_set_operational_bt.exit417.do.end79_crit_edge: ; preds = %sixaxis_set_operational_bt.exit417
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

do.end79:                                         ; preds = %sixaxis_set_operational_bt.exit417.do.end79_crit_edge, %if.then71.do.end79_crit_edge
  %retval.0.i416504 = phi i32 [ %call1.i414, %sixaxis_set_operational_bt.exit417.do.end79_crit_edge ], [ -12, %if.then71.do.end79_crit_edge ]
  %dev80 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.58) #16
  br label %err_stop

if.end81:                                         ; preds = %sixaxis_set_operational_bt.exit417
  %call82 = tail call fastcc i32 @sony_register_sensors(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end90, label %do.end87

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %hdev88 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %108 = ptrtoint ptr %hdev88 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hdev88, align 4
  %dev89 = getelementptr inbounds %struct.hid_device, ptr %109, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.65, i32 noundef %call82) #16
  br label %err_stop

if.end90:                                         ; preds = %if.end81
  %send_output_report1.i418 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 9
  %110 = ptrtoint ptr %send_output_report1.i418 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @sixaxis_send_output_report, ptr %send_output_report1.i418, align 4
  %state_worker_initialized.i419 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %111 = ptrtoint ptr %state_worker_initialized.i419 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %state_worker_initialized.i419, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i420 = icmp eq i8 %112, 0
  br i1 %tobool.not.i420, label %do.body.i426, label %if.end90.sony_init_output_report.exit428_crit_edge

if.end90.sony_init_output_report.exit428_crit_edge: ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_init_output_report.exit428

do.body.i426:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i421 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  tail call void @__init_work(ptr noundef %state_worker.i421, i32 noundef 0) #13
  %113 = ptrtoint ptr %state_worker.i421 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -64, ptr %state_worker.i421, align 4
  %lockdep_map.i422 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i422, ptr noundef nonnull @.str.118, ptr noundef nonnull @sony_init_output_report.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5.i423 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1
  %114 = ptrtoint ptr %entry5.i423 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %entry5.i423, ptr %entry5.i423, align 4
  %prev.i.i424 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 1, i32 1
  %115 = ptrtoint ptr %prev.i.i424 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %entry5.i423, ptr %prev.i.i424, align 4
  %func.i425 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8, i32 2
  %116 = ptrtoint ptr %func.i425 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @sony_state_worker, ptr %func.i425, align 4
  br label %sony_init_output_report.exit428

sony_init_output_report.exit428:                  ; preds = %do.body.i426, %if.end90.sony_init_output_report.exit428_crit_edge
  %117 = ptrtoint ptr %state_worker_initialized.i419 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %state_worker_initialized.i419, align 1
  br label %if.end208

if.else91:                                        ; preds = %if.else67
  %and93 = and i32 %67, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else182, label %if.then95

if.then95:                                        ; preds = %if.else91
  %call96 = tail call fastcc i32 @dualshock4_get_calibration_data(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end101, label %if.end103

do.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %dev102 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev102, ptr noundef nonnull @.str.72) #16
  br label %err_stop

if.end103:                                        ; preds = %if.then95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %118 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i429 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3264, i32 noundef 49) #20
  %tobool.not.i430 = icmp eq ptr %call7.i.i429, null
  br i1 %tobool.not.i430, label %if.end103.do.end109_crit_edge, label %if.end.i433

if.end103.do.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end109

if.end.i433:                                      ; preds = %if.end103
  %hdev.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %119 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hdev.i, align 4
  %call1.i431 = tail call i32 @hid_hw_raw_request(ptr noundef %120, i8 noundef zeroext -93, ptr noundef nonnull %call7.i.i429, i32 noundef 49, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i431)
  %cmp.i432 = icmp slt i32 %call1.i431, 0
  br i1 %cmp.i432, label %dualshock4_get_version_info.exit.thread508, label %if.end112

dualshock4_get_version_info.exit.thread508:       ; preds = %if.end.i433
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i429) #13
  br label %do.end109

do.end109:                                        ; preds = %dualshock4_get_version_info.exit.thread508, %if.end103.do.end109_crit_edge
  %retval.0.i435507 = phi i32 [ %call1.i431, %dualshock4_get_version_info.exit.thread508 ], [ -12, %if.end103.do.end109_crit_edge ]
  %hdev110 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %121 = ptrtoint ptr %hdev110 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hdev110, align 4
  %dev111 = getelementptr inbounds %struct.hid_device, ptr %122, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.75) #16
  br label %err_stop

if.end112:                                        ; preds = %if.end.i433
  %arrayidx.i434 = getelementptr i8, ptr %call7.i.i429, i32 35
  %123 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %arrayidx.i434, align 1
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #13
  %conv.i = zext i16 %125 to i32
  %hw_version.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 15
  %126 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv.i, ptr %hw_version.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %call7.i.i429, i32 41
  %127 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %arrayidx5.i, align 1
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #13
  %conv7.i = zext i16 %129 to i32
  %fw_version.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 13
  %130 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv7.i, ptr %fw_version.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i429) #13
  %131 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hdev.i, align 4
  %dev114 = getelementptr inbounds %struct.hid_device, ptr %132, i32 0, i32 18
  %call115 = tail call i32 @device_create_file(ptr noundef %dev114, ptr noundef nonnull @dev_attr_firmware_version) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end123, label %do.end120

do.end120:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hdev.i, align 4
  %dev122 = getelementptr inbounds %struct.hid_device, ptr %134, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev122, ptr noundef nonnull @.str.78, i32 noundef %call115) #16
  br label %err_stop

if.end123:                                        ; preds = %if.end112
  %fw_version_created = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 14
  %135 = ptrtoint ptr %fw_version_created to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %fw_version_created, align 4
  %136 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hdev.i, align 4
  %dev125 = getelementptr inbounds %struct.hid_device, ptr %137, i32 0, i32 18
  %call126 = tail call i32 @device_create_file(ptr noundef %dev125, ptr noundef nonnull @dev_attr_hardware_version) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end134, label %do.end131

do.end131:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hdev.i, align 4
  %dev133 = getelementptr inbounds %struct.hid_device, ptr %139, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev133, ptr noundef nonnull @.str.81, i32 noundef %call126) #16
  br label %err_stop

if.end134:                                        ; preds = %if.end123
  %hw_version_created = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 16
  %140 = ptrtoint ptr %hw_version_created to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %hw_version_created, align 4
  %call135 = tail call fastcc i32 @sony_register_touchpad(ptr noundef %1, i32 noundef 1920, i32 noundef 942, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end143, label %do.end140

do.end140:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hdev.i, align 4
  %dev142 = getelementptr inbounds %struct.hid_device, ptr %142, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142, ptr noundef nonnull @.str.84, i32 noundef %call135) #16
  br label %err_stop

if.end143:                                        ; preds = %if.end134
  %call144 = tail call fastcc i32 @sony_register_sensors(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end152, label %do.end149

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hdev.i, align 4
  %dev151 = getelementptr inbounds %struct.hid_device, ptr %144, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev151, ptr noundef nonnull @.str.65, i32 noundef %call144) #16
  br label %err_stop

if.end152:                                        ; preds = %if.end143
  %145 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %quirks.i, align 4
  %and154 = and i32 %146, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end168_crit_edge, label %if.then156

if.end152.if.end168_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end168

if.then156:                                       ; preds = %if.end152
  %ds4_bt_poll_interval = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 33
  %147 = ptrtoint ptr %ds4_bt_poll_interval to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 4, ptr %ds4_bt_poll_interval, align 4
  %148 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hdev.i, align 4
  %dev158 = getelementptr inbounds %struct.hid_device, ptr %149, i32 0, i32 18
  %call159 = tail call i32 @device_create_file(ptr noundef %dev158, ptr noundef nonnull @dev_attr_bt_poll_interval) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then156.if.end168_crit_edge, label %do.end164

if.then156.if.end168_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end168

do.end164:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  %150 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hdev.i, align 4
  %dev166 = getelementptr inbounds %struct.hid_device, ptr %151, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev166, ptr noundef nonnull @.str.89, i32 noundef %call159) #16
  br label %if.end168

if.end168:                                        ; preds = %do.end164, %if.then156.if.end168_crit_edge, %if.end152.if.end168_crit_edge
  %152 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %quirks.i, align 4
  %and170 = and i32 %153, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end168.if.end181_crit_edge, label %do.body173

if.end168.if.end181_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

do.body173:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #15
  %hotplug_worker = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7
  tail call void @__init_work(ptr noundef %hotplug_worker, i32 noundef 0) #13
  %154 = ptrtoint ptr %hotplug_worker to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -64, ptr %hotplug_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.92, ptr noundef nonnull @sony_input_configured.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry177 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7, i32 1
  %155 = ptrtoint ptr %entry177 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %entry177, ptr %entry177, align 4
  %prev.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7, i32 1, i32 1
  %156 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %entry177, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7, i32 2
  %157 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @dualshock4_calibration_work, ptr %func, align 4
  %hotplug_worker_initialized = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 21
  %158 = ptrtoint ptr %hotplug_worker_initialized to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %hotplug_worker_initialized, align 4
  %ds4_dongle_state = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 34
  %159 = ptrtoint ptr %ds4_dongle_state to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %ds4_dongle_state, align 4
  br label %if.end181

if.end181:                                        ; preds = %do.body173, %if.end168.if.end181_crit_edge
  tail call fastcc void @sony_init_output_report(ptr noundef %1, ptr noundef nonnull @dualshock4_send_output_report)
  br label %if.end208

if.else182:                                       ; preds = %if.else91
  %and184 = and i32 %67, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.else196, label %if.then186

if.then186:                                       ; preds = %if.else182
  %call187 = tail call fastcc i32 @sony_register_touchpad(ptr noundef %1, i32 noundef 1667, i32 noundef 1868, i32 noundef 15, i32 noundef 15, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then186.if.end208_crit_edge, label %do.end192

if.then186.if.end208_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

do.end192:                                        ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #15
  %hdev193 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %160 = ptrtoint ptr %hdev193 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hdev193, align 4
  %dev194 = getelementptr inbounds %struct.hid_device, ptr %161, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev194, ptr noundef nonnull @.str.84, i32 noundef %call187) #16
  br label %err_stop

if.else196:                                       ; preds = %if.else182
  %and198 = and i32 %67, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.else196.if.end208_crit_edge, label %if.then200

if.else196.if.end208_crit_edge:                   ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then200:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @sony_init_output_report(ptr noundef %1, ptr noundef nonnull @motion_send_output_report)
  br label %if.end208

if.end208:                                        ; preds = %if.then200, %if.else196.if.end208_crit_edge, %if.then186.if.end208_crit_edge, %if.end181, %sony_init_output_report.exit428, %sony_init_output_report.exit411, %sony_init_output_report.exit400, %sony_init_output_report.exit
  %162 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %quirks.i, align 4
  %and210 = and i32 %163, 4078
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.end208.if.end217_crit_edge, label %do.end10.i

if.end208.if.end217_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217

do.end10.i:                                       ; preds = %if.end208
  %hdev1.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %164 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_brightness.i) #13
  %166 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 16843009, ptr %max_brightness.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %use_hw_blink.i) #13
  %167 = ptrtoint ptr %use_hw_blink.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %use_hw_blink.i, align 4
  %and12.i = and i32 %163, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else.i440, label %if.then14.i

if.then14.i:                                      ; preds = %do.end10.i
  %led_count.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 29
  %168 = ptrtoint ptr %led_count.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 4, ptr %led_count.i, align 4
  %call.i438 = tail call ptr @hid_validate_values(ptr noundef %165, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #13
  %tobool15.not.i439 = icmp eq ptr %call.i438, null
  br i1 %tobool15.not.i439, label %if.then14.i.sony_leds_init.exit.thread_crit_edge, label %if.then14.i.if.end46.i_crit_edge

if.then14.i.if.end46.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

if.then14.i.sony_leds_init.exit.thread_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_leds_init.exit.thread

if.else.i440:                                     ; preds = %do.end10.i
  %and19.i = and i32 %163, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else24.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else.i440
  %device_id.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 12
  %169 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %device_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp.i.i = icmp slt i32 %170, 0
  br i1 %cmp.i.i, label %if.then21.i.dualshock4_set_leds_from_id.exit.i_crit_edge, label %if.end.i.i442

if.then21.i.dualshock4_set_leds_from_id.exit.i_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dualshock4_set_leds_from_id.exit.i

if.end.i.i442:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  %rem5.i.i = urem i32 %170, 7
  %led_state.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 26
  %arrayidx.i.i441 = getelementptr [7 x [3 x i8]], ptr @dualshock4_set_leds_from_id.color_code, i32 0, i32 %rem5.i.i
  %171 = call ptr @memcpy(ptr %led_state.i.i, ptr %arrayidx.i.i441, i32 3)
  br label %dualshock4_set_leds_from_id.exit.i

dualshock4_set_leds_from_id.exit.i:               ; preds = %if.end.i.i442, %if.then21.i.dualshock4_set_leds_from_id.exit.i_crit_edge
  %arrayidx.i443 = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 26, i32 3
  %172 = ptrtoint ptr %arrayidx.i443 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %arrayidx.i443, align 1
  %led_count22.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 29
  %173 = ptrtoint ptr %led_count22.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 4, ptr %led_count22.i, align 4
  %174 = call ptr @memset(ptr %max_brightness.i, i32 255, i32 3)
  %arrayidx23.i = getelementptr inbounds [4 x i8], ptr %use_hw_blink.i, i32 0, i32 3
  %175 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %arrayidx23.i, align 1
  br label %if.end46.i

if.else24.i:                                      ; preds = %if.else.i440
  %and26.i = and i32 %163, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else31.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #15
  %led_count29.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 29
  %176 = ptrtoint ptr %led_count29.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 3, ptr %led_count29.i, align 4
  %177 = call ptr @memset(ptr %max_brightness.i, i32 255, i32 3)
  br label %if.end46.i

if.else31.i:                                      ; preds = %if.else24.i
  %and33.i = and i32 %163, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else40.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #15
  %led_state36.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 26
  %178 = ptrtoint ptr %led_state36.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 16777216, ptr %led_state36.i, align 4
  %led_count38.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 29
  %179 = ptrtoint ptr %led_count38.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %led_count38.i, align 4
  %180 = ptrtoint ptr %use_hw_blink.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 16843009, ptr %use_hw_blink.i, align 4
  br label %if.end46.i

if.else40.i:                                      ; preds = %if.else31.i
  %device_id.i169.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 12
  %181 = ptrtoint ptr %device_id.i169.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %device_id.i169.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp.i170.i = icmp slt i32 %182, 0
  br i1 %cmp.i170.i, label %if.else40.i.sixaxis_set_leds_from_id.exit.i_crit_edge, label %if.end.i174.i

if.else40.i.sixaxis_set_leds_from_id.exit.i_crit_edge: ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sixaxis_set_leds_from_id.exit.i

if.end.i174.i:                                    ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #15
  %rem5.i171.i = urem i32 %182, 10
  %led_state.i172.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 26
  %arrayidx.i173.i = getelementptr [10 x [4 x i8]], ptr @sixaxis_set_leds_from_id.sixaxis_leds, i32 0, i32 %rem5.i171.i
  %183 = ptrtoint ptr %arrayidx.i173.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %arrayidx.i173.i, align 1
  %185 = ptrtoint ptr %led_state.i172.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %led_state.i172.i, align 4
  br label %sixaxis_set_leds_from_id.exit.i

sixaxis_set_leds_from_id.exit.i:                  ; preds = %if.end.i174.i, %if.else40.i.sixaxis_set_leds_from_id.exit.i_crit_edge
  %led_count41.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 29
  %186 = ptrtoint ptr %led_count41.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 4, ptr %led_count41.i, align 4
  %187 = ptrtoint ptr %use_hw_blink.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 16843009, ptr %use_hw_blink.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %sixaxis_set_leds_from_id.exit.i, %if.then35.i, %if.then28.i, %dualshock4_set_leds_from_id.exit.i, %if.then14.i.if.end46.i_crit_edge
  %tobool52.not.i = phi i1 [ false, %dualshock4_set_leds_from_id.exit.i ], [ true, %if.then35.i ], [ true, %sixaxis_set_leds_from_id.exit.i ], [ false, %if.then28.i ], [ true, %if.then14.i.if.end46.i_crit_edge ]
  %name_len.0.i = phi i32 [ 1, %dualshock4_set_leds_from_id.exit.i ], [ 8, %if.then35.i ], [ 8, %sixaxis_set_leds_from_id.exit.i ], [ 1, %if.then28.i ], [ 8, %if.then14.i.if.end46.i_crit_edge ]
  %name_fmt.0.i = phi ptr [ @.str.139, %dualshock4_set_leds_from_id.exit.i ], [ @.str.140, %if.then35.i ], [ @.str.140, %sixaxis_set_leds_from_id.exit.i ], [ @.str.139, %if.then28.i ], [ @.str.138, %if.then14.i.if.end46.i_crit_edge ]
  tail call fastcc void @sony_set_leds(ptr noundef %1) #13
  %dev.i444 = getelementptr inbounds %struct.hid_device, ptr %165, i32 0, i32 18
  %init_name.i.i = getelementptr inbounds %struct.hid_device, ptr %165, i32 0, i32 18, i32 3
  %188 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i445 = icmp eq ptr %189, null
  br i1 %tobool.not.i.i445, label %if.end.i175.i, label %if.end46.i.dev_name.exit.i_crit_edge

if.end46.i.dev_name.exit.i_crit_edge:             ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i175.i:                                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  %190 = ptrtoint ptr %dev.i444 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i444, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i175.i, %if.end46.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %191, %if.end.i175.i ], [ %189, %if.end46.i.dev_name.exit.i_crit_edge ]
  %led_count50.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 29
  %192 = ptrtoint ptr %led_count50.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %led_count50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %cmp195.not.i = icmp eq i8 %193, 0
  br i1 %cmp195.not.i, label %dev_name.exit.i.sony_leds_init.exit.thread514_crit_edge, label %for.body.preheader.i446

dev_name.exit.i.sony_leds_init.exit.thread514_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_leds_init.exit.thread514

for.body.preheader.i446:                          ; preds = %dev_name.exit.i
  %call48.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #19
  %add49.i = add i32 %call48.i, %name_len.0.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i446
  %name_sz.0197.i = phi i32 [ %name_sz.1.i, %for.inc.i.for.body.i_crit_edge ], [ %add49.i, %for.body.preheader.i446 ]
  %n.0196.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i446 ]
  br i1 %tobool52.not.i, label %for.body.i.if.end61.i_crit_edge, label %if.then53.i

for.body.i.if.end61.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i

if.then53.i:                                      ; preds = %for.body.i
  %194 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i177.i = icmp eq ptr %195, null
  br i1 %tobool.not.i177.i, label %if.end.i178.i, label %if.then53.i.dev_name.exit180.i_crit_edge

if.then53.i.dev_name.exit180.i_crit_edge:         ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit180.i

if.end.i178.i:                                    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  %196 = ptrtoint ptr %dev.i444 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev.i444, align 4
  br label %dev_name.exit180.i

dev_name.exit180.i:                               ; preds = %if.end.i178.i, %if.then53.i.dev_name.exit180.i_crit_edge
  %retval.0.i179.i = phi ptr [ %197, %if.end.i178.i ], [ %195, %if.then53.i.dev_name.exit180.i_crit_edge ]
  %call56.i = tail call i32 @strlen(ptr noundef %retval.0.i179.i) #19
  %arrayidx57.i = getelementptr [4 x ptr], ptr @sony_leds_init.ds4_name_str, i32 0, i32 %n.0196.i
  %198 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx57.i, align 4
  %call58.i = tail call i32 @strlen(ptr noundef %199) #19
  %add59.i = add i32 %call56.i, 2
  %add60.i = add i32 %add59.i, %call58.i
  br label %if.end61.i

if.end61.i:                                       ; preds = %dev_name.exit180.i, %for.body.i.if.end61.i_crit_edge
  %name_sz.1.i = phi i32 [ %add60.i, %dev_name.exit180.i ], [ %name_sz.0197.i, %for.body.i.if.end61.i_crit_edge ]
  %add63.i = add i32 %name_sz.1.i, 400
  %call.i.i447 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i444, i32 noundef %add63.i, i32 noundef 3520) #13
  %tobool65.not.i = icmp eq ptr %call.i.i447, null
  br i1 %tobool65.not.i, label %do.end69.i, label %if.end71.i

do.end69.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i444, ptr noundef nonnull @.str.141, i32 noundef %n.0196.i) #16
  br label %sony_leds_init.exit.thread

if.end71.i:                                       ; preds = %if.end61.i
  %arrayidx72.i = getelementptr %struct.led_classdev, ptr %call.i.i447, i32 1
  %200 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i187.i = icmp eq ptr %201, null
  br i1 %tobool52.not.i, label %if.else79.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end71.i
  br i1 %tobool.not.i187.i, label %if.end.i183.i, label %if.then74.i.dev_name.exit185.i_crit_edge

if.then74.i.dev_name.exit185.i_crit_edge:         ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit185.i

if.end.i183.i:                                    ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %dev.i444 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i444, align 4
  br label %dev_name.exit185.i

dev_name.exit185.i:                               ; preds = %if.end.i183.i, %if.then74.i.dev_name.exit185.i_crit_edge
  %retval.0.i184.i = phi ptr [ %203, %if.end.i183.i ], [ %201, %if.then74.i.dev_name.exit185.i_crit_edge ]
  %arrayidx77.i = getelementptr [4 x ptr], ptr @sony_leds_init.ds4_name_str, i32 0, i32 %n.0196.i
  %204 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx77.i, align 4
  %call78.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx72.i, i32 noundef %name_sz.1.i, ptr noundef nonnull %name_fmt.0.i, ptr noundef %retval.0.i184.i, ptr noundef %205) #13
  br label %if.end84.i

if.else79.i:                                      ; preds = %if.end71.i
  br i1 %tobool.not.i187.i, label %if.end.i188.i, label %if.else79.i.dev_name.exit190.i_crit_edge

if.else79.i.dev_name.exit190.i_crit_edge:         ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit190.i

if.end.i188.i:                                    ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #15
  %206 = ptrtoint ptr %dev.i444 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev.i444, align 4
  br label %dev_name.exit190.i

dev_name.exit190.i:                               ; preds = %if.end.i188.i, %if.else79.i.dev_name.exit190.i_crit_edge
  %retval.0.i189.i = phi ptr [ %207, %if.end.i188.i ], [ %201, %if.else79.i.dev_name.exit190.i_crit_edge ]
  %add82.i = add nuw nsw i32 %n.0196.i, 1
  %call83.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx72.i, i32 noundef %name_sz.1.i, ptr noundef nonnull %name_fmt.0.i, ptr noundef %retval.0.i189.i, i32 noundef %add82.i) #13
  br label %if.end84.i

if.end84.i:                                       ; preds = %dev_name.exit190.i, %dev_name.exit185.i
  %208 = ptrtoint ptr %call.i.i447 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %arrayidx72.i, ptr %call.i.i447, align 4
  %arrayidx87.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 26, i32 %n.0196.i
  %209 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx87.i, align 1
  %conv88.i = zext i8 %210 to i32
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %call.i.i447, i32 0, i32 1
  %211 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %conv88.i, ptr %brightness.i, align 4
  %arrayidx89.i = getelementptr [4 x i8], ptr %max_brightness.i, i32 0, i32 %n.0196.i
  %212 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx89.i, align 1
  %conv90.i = zext i8 %213 to i32
  %max_brightness91.i = getelementptr inbounds %struct.led_classdev, ptr %call.i.i447, i32 0, i32 2
  %214 = ptrtoint ptr %max_brightness91.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %conv90.i, ptr %max_brightness91.i, align 4
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %call.i.i447, i32 0, i32 3
  %215 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 65536, ptr %flags.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.led_classdev, ptr %call.i.i447, i32 0, i32 7
  %216 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @sony_led_get_brightness, ptr %brightness_get.i, align 4
  %brightness_set.i = getelementptr inbounds %struct.led_classdev, ptr %call.i.i447, i32 0, i32 5
  %217 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @sony_led_set_brightness, ptr %brightness_set.i, align 4
  %arrayidx92.i = getelementptr [4 x i8], ptr %use_hw_blink.i, i32 0, i32 %n.0196.i
  %218 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx92.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool93.not.i = icmp eq i8 %219, 0
  br i1 %tobool93.not.i, label %if.end84.i.if.end95.i_crit_edge, label %if.then94.i

if.end84.i.if.end95.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95.i

if.then94.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  %blink_set.i = getelementptr inbounds %struct.led_classdev, ptr %call.i.i447, i32 0, i32 8
  %220 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @sony_led_blink_set, ptr %blink_set.i, align 4
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then94.i, %if.end84.i.if.end95.i_crit_edge
  %arrayidx96.i = getelementptr %struct.sony_sc, ptr %1, i32 0, i32 5, i32 %n.0196.i
  %221 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i.i447, ptr %arrayidx96.i, align 4
  %call.i191.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev.i444, ptr noundef nonnull %call.i.i447, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191.i)
  %tobool99.not.i = icmp eq i32 %call.i191.i, 0
  br i1 %tobool99.not.i, label %for.inc.i, label %sony_leds_init.exit

for.inc.i:                                        ; preds = %if.end95.i
  %inc.i = add nuw nsw i32 %n.0196.i, 1
  %222 = ptrtoint ptr %led_count50.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %led_count50.i, align 4
  %conv.i448 = zext i8 %223 to i32
  %cmp.i449 = icmp ult i32 %inc.i, %conv.i448
  br i1 %cmp.i449, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sony_leds_init.exit.thread514_crit_edge

for.inc.i.sony_leds_init.exit.thread514_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_leds_init.exit.thread514

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sony_leds_init.exit.thread:                       ; preds = %do.end69.i, %if.then14.i.sony_leds_init.exit.thread_crit_edge
  %retval.0.i450.ph = phi i32 [ -19, %if.then14.i.sony_leds_init.exit.thread_crit_edge ], [ -12, %do.end69.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %use_hw_blink.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_brightness.i) #13
  br label %err_stop

sony_leds_init.exit.thread514:                    ; preds = %for.inc.i.sony_leds_init.exit.thread514_crit_edge, %dev_name.exit.i.sony_leds_init.exit.thread514_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %use_hw_blink.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_brightness.i) #13
  br label %if.end217

sony_leds_init.exit:                              ; preds = %if.end95.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i444, ptr noundef nonnull @.str.144, i32 noundef %n.0196.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %use_hw_blink.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_brightness.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191.i)
  %cmp214 = icmp slt i32 %call.i191.i, 0
  br i1 %cmp214, label %sony_leds_init.exit.err_stop_crit_edge, label %sony_leds_init.exit.if.end217_crit_edge

sony_leds_init.exit.if.end217_crit_edge:          ; preds = %sony_leds_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217

sony_leds_init.exit.err_stop_crit_edge:           ; preds = %sony_leds_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end217:                                        ; preds = %sony_leds_init.exit.if.end217_crit_edge, %sony_leds_init.exit.thread514, %if.end208.if.end217_crit_edge
  %224 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %quirks.i, align 4
  %and219 = and i32 %225, 3814
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %if.end217.if.end234_crit_edge, label %if.then221

if.end217.if.end234_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

if.then221:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i379489)
  %tobool.not.i451 = icmp eq i32 %retval.0.i379489, 0
  %cond.i = select i1 %tobool.not.i451, ptr @.str.151, ptr @.str.150
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg.i) #13
  %226 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 2
  %227 = call ptr @memset(ptr %psy_cfg.i, i32 0, i32 24)
  %228 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %1, ptr %226, align 4
  %hdev1.i452 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %229 = ptrtoint ptr %hdev1.i452 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hdev1.i452, align 4
  %battery_capacity.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 24
  %231 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 100, ptr %battery_capacity.i, align 1
  %battery_desc.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 11
  %properties.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 11, i32 4
  %232 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @sony_battery_props, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 11, i32 5
  %233 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 4, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 11, i32 6
  %234 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @sony_battery_get_property, ptr %get_property.i, align 4
  %type.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 11, i32 1
  %235 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 1, ptr %type.i, align 4
  %use_for_apm.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 11, i32 12
  %236 = ptrtoint ptr %use_for_apm.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %use_for_apm.i, align 4
  %dev.i453 = getelementptr inbounds %struct.hid_device, ptr %230, i32 0, i32 18
  %mac_address.i454 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 20
  %device_id.i455 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 12
  %237 = ptrtoint ptr %device_id.i455 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %device_id.i455, align 4
  %call.i456 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i453, i32 noundef 3264, ptr noundef nonnull %cond.i, ptr noundef %mac_address.i454, i32 noundef %238) #13
  %239 = ptrtoint ptr %battery_desc.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call.i456, ptr %battery_desc.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i456, null
  br i1 %tobool9.not.i, label %sony_battery_probe.exit.thread, label %if.end.i458

sony_battery_probe.exit.thread:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #13
  br label %err_stop

if.end.i458:                                      ; preds = %if.then221
  %call12.i = call ptr @devm_power_supply_register(ptr noundef %dev.i453, ptr noundef %battery_desc.i, ptr noundef nonnull %psy_cfg.i) #13
  %battery.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 10
  %240 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call12.i, ptr %battery.i, align 4
  %cmp.i.i457 = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i457, label %sony_battery_probe.exit, label %sony_battery_probe.exit.thread519

sony_battery_probe.exit.thread519:                ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #15
  %call22.i459 = call i32 @power_supply_powers(ptr noundef %call12.i, ptr noundef %dev.i453) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #13
  br label %if.end225

sony_battery_probe.exit:                          ; preds = %if.end.i458
  %241 = ptrtoint ptr %call12.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i453, ptr noundef nonnull @.str.152) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #13
  %cmp223 = icmp slt ptr %call12.i, null
  br i1 %cmp223, label %sony_battery_probe.exit.err_stop_crit_edge, label %sony_battery_probe.exit.if.end225_crit_edge

sony_battery_probe.exit.if.end225_crit_edge:      ; preds = %sony_battery_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

sony_battery_probe.exit.err_stop_crit_edge:       ; preds = %sony_battery_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end225:                                        ; preds = %sony_battery_probe.exit.if.end225_crit_edge, %sony_battery_probe.exit.thread519
  %call226 = call i32 @hid_hw_open(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %do.end231, label %if.end225.if.end234_crit_edge

if.end225.if.end234_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

do.end231:                                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  %dev232 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev232, ptr noundef nonnull @.str.96) #16
  br label %err_stop

if.end234:                                        ; preds = %if.end225.if.end234_crit_edge, %if.end217.if.end234_crit_edge
  %242 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %quirks.i, align 4
  %and236 = and i32 %243, 998
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end234.cleanup_crit_edge, label %if.then238

if.end234.cleanup_crit_edge:                      ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then238:                                       ; preds = %if.end234
  %hdev.i461 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %244 = ptrtoint ptr %hdev.i461 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hdev.i461, align 4
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %245, i32 0, i32 36
  %246 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %247, %inputs.i
  br i1 %cmp.i.not.i, label %sony_init_ff.exit.thread, label %sony_init_ff.exit

sony_init_ff.exit.thread:                         ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i462 = getelementptr inbounds %struct.hid_device, ptr %245, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i462, ptr noundef nonnull @.str.154) #16
  br label %err_close

sony_init_ff.exit:                                ; preds = %if.then238
  %input.i = getelementptr inbounds %struct.hid_input, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %249, i32 noundef 21, i32 noundef 80) #13
  %call4.i = call i32 @input_ff_create_memless(ptr noundef %249, ptr noundef null, ptr noundef nonnull @sony_play_effect) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp240 = icmp slt i32 %call4.i, 0
  br i1 %cmp240, label %sony_init_ff.exit.err_close_crit_edge, label %sony_init_ff.exit.cleanup_crit_edge

sony_init_ff.exit.cleanup_crit_edge:              ; preds = %sony_init_ff.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sony_init_ff.exit.err_close_crit_edge:            ; preds = %sony_init_ff.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_close

err_close:                                        ; preds = %sony_init_ff.exit.err_close_crit_edge, %sony_init_ff.exit.thread
  %retval.0.i465524 = phi i32 [ -19, %sony_init_ff.exit.thread ], [ %call4.i, %sony_init_ff.exit.err_close_crit_edge ]
  call void @hid_hw_close(ptr noundef %hdev) #13
  br label %err_stop

err_stop:                                         ; preds = %err_close, %do.end231, %sony_battery_probe.exit.err_stop_crit_edge, %sony_battery_probe.exit.thread, %sony_leds_init.exit.err_stop_crit_edge, %sony_leds_init.exit.thread, %do.end192, %do.end149, %do.end140, %do.end131, %do.end120, %do.end109, %do.end101, %do.end87, %do.end79, %do.end63, %do.end55, %do.end37, %do.end23, %do.end11, %sony_check_add.exit.err_stop_crit_edge, %sony_check_add.exit.thread492, %if.then45.i.err_stop_crit_edge, %if.then16.i.err_stop_crit_edge, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %ret.0.i.i, %sony_check_add.exit.err_stop_crit_edge ], [ -12, %do.end11 ], [ %call18, %do.end23 ], [ %call.i191.i, %sony_leds_init.exit.err_stop_crit_edge ], [ %241, %sony_battery_probe.exit.err_stop_crit_edge ], [ %call226, %do.end231 ], [ %retval.0.i465524, %err_close ], [ %retval.0.i389501, %do.end37 ], [ %call50, %do.end55 ], [ %call58, %do.end63 ], [ %retval.0.i416504, %do.end79 ], [ %call82, %do.end87 ], [ %call96, %do.end101 ], [ %retval.0.i435507, %do.end109 ], [ %call115, %do.end120 ], [ %call126, %do.end131 ], [ %call135, %do.end140 ], [ %call144, %do.end149 ], [ %call187, %do.end192 ], [ %spec.select525, %sony_check_add.exit.thread492 ], [ %retval.0.i450.ph, %sony_leds_init.exit.thread ], [ -12, %sony_battery_probe.exit.thread ], [ -12, %if.then16.i.err_stop_crit_edge ], [ -12, %if.then45.i.err_stop_crit_edge ]
  %ds4_bt_poll_interval244 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 33
  %250 = ptrtoint ptr %ds4_bt_poll_interval244 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %ds4_bt_poll_interval244, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool245.not = icmp eq i8 %251, 0
  br i1 %tobool245.not, label %err_stop.if.end249_crit_edge, label %if.then246

err_stop.if.end249_crit_edge:                     ; preds = %err_stop
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249

if.then246:                                       ; preds = %err_stop
  call void @__sanitizer_cov_trace_pc() #15
  %hdev247 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %252 = ptrtoint ptr %hdev247 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hdev247, align 4
  %dev248 = getelementptr inbounds %struct.hid_device, ptr %253, i32 0, i32 18
  call void @device_remove_file(ptr noundef %dev248, ptr noundef nonnull @dev_attr_bt_poll_interval) #13
  br label %if.end249

if.end249:                                        ; preds = %if.then246, %err_stop.if.end249_crit_edge
  %fw_version_created250 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 14
  %254 = ptrtoint ptr %fw_version_created250 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %fw_version_created250, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool251.not = icmp eq i8 %255, 0
  br i1 %tobool251.not, label %if.end249.if.end255_crit_edge, label %if.then252

if.end249.if.end255_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end255

if.then252:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  %hdev253 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %256 = ptrtoint ptr %hdev253 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %hdev253, align 4
  %dev254 = getelementptr inbounds %struct.hid_device, ptr %257, i32 0, i32 18
  call void @device_remove_file(ptr noundef %dev254, ptr noundef nonnull @dev_attr_firmware_version) #13
  br label %if.end255

if.end255:                                        ; preds = %if.then252, %if.end249.if.end255_crit_edge
  %hw_version_created256 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 16
  %258 = ptrtoint ptr %hw_version_created256 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %hw_version_created256, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool257.not = icmp eq i8 %259, 0
  br i1 %tobool257.not, label %if.end255.if.end261_crit_edge, label %if.then258

if.end255.if.end261_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.then258:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #15
  %hdev259 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %260 = ptrtoint ptr %hdev259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %hdev259, align 4
  %dev260 = getelementptr inbounds %struct.hid_device, ptr %261, i32 0, i32 18
  call void @device_remove_file(ptr noundef %dev260, ptr noundef nonnull @dev_attr_hardware_version) #13
  br label %if.end261

if.end261:                                        ; preds = %if.then258, %if.end255.if.end261_crit_edge
  %hotplug_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 21
  %262 = ptrtoint ptr %hotplug_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %hotplug_worker_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool.not.i466 = icmp eq i8 %263, 0
  br i1 %tobool.not.i466, label %if.end261.if.end.i470_crit_edge, label %if.then.i468

if.end261.if.end.i470_crit_edge:                  ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i470

if.then.i468:                                     ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #15
  %hotplug_worker.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 7
  %call.i467 = call zeroext i1 @cancel_work_sync(ptr noundef %hotplug_worker.i) #13
  br label %if.end.i470

if.end.i470:                                      ; preds = %if.then.i468, %if.end261.if.end.i470_crit_edge
  %state_worker_initialized.i469 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %264 = ptrtoint ptr %state_worker_initialized.i469 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %state_worker_initialized.i469, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool1.not.i = icmp eq i8 %265, 0
  br i1 %tobool1.not.i, label %if.end.i470.sony_cancel_work_sync.exit_crit_edge, label %do.body3.i

if.end.i470.sony_cancel_work_sync.exit_crit_edge: ; preds = %if.end.i470
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_cancel_work_sync.exit

do.body3.i:                                       ; preds = %if.end.i470
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %266 = ptrtoint ptr %state_worker_initialized.i469 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %state_worker_initialized.i469, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5.i) #13
  %state_worker.i471 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  %call10.i472 = call zeroext i1 @cancel_work_sync(ptr noundef %state_worker.i471) #13
  br label %sony_cancel_work_sync.exit

sony_cancel_work_sync.exit:                       ; preds = %do.body3.i, %if.end.i470.sony_cancel_work_sync.exit_crit_edge
  %list_node.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1
  %267 = ptrtoint ptr %list_node.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %list_node.i, align 4
  %tobool.not.i473 = icmp eq ptr %268, null
  br i1 %tobool.not.i473, label %sony_cancel_work_sync.exit.sony_remove_dev_list.exit_crit_edge, label %do.body1.i

sony_cancel_work_sync.exit.sony_remove_dev_list.exit_crit_edge: ; preds = %sony_cancel_work_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_remove_dev_list.exit

do.body1.i:                                       ; preds = %sony_cancel_work_sync.exit
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sony_dev_list_lock) #13
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.list_del.exit.i_crit_edge

do.body1.i.list_del.exit.i_crit_edge:             ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1, i32 1
  %269 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %prev.i.i.i, align 4
  %271 = ptrtoint ptr %list_node.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %list_node.i, align 4
  %prev1.i.i.i.i474 = getelementptr inbounds %struct.list_head, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %prev1.i.i.i.i474 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %270, ptr %prev1.i.i.i.i474, align 4
  %274 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %274)
  store volatile ptr %272, ptr %270, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.body1.i.list_del.exit.i_crit_edge
  %275 = ptrtoint ptr %list_node.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node.i, align 4
  %prev.i.i475 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 1, i32 1
  %276 = ptrtoint ptr %prev.i.i475 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i475, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sony_dev_list_lock, i32 noundef %call2.i) #13
  br label %sony_remove_dev_list.exit

sony_remove_dev_list.exit:                        ; preds = %list_del.exit.i, %sony_cancel_work_sync.exit.sony_remove_dev_list.exit_crit_edge
  %device_id.i477 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 12
  %277 = ptrtoint ptr %device_id.i477 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %device_id.i477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %278)
  %cmp.i478 = icmp sgt i32 %278, -1
  br i1 %cmp.i478, label %if.then.i479, label %sony_remove_dev_list.exit.cleanup_crit_edge

sony_remove_dev_list.exit.cleanup_crit_edge:      ; preds = %sony_remove_dev_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i479:                                     ; preds = %sony_remove_dev_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @ida_free(ptr noundef nonnull @sony_device_id_allocator, i32 noundef %278) #13
  %279 = ptrtoint ptr %device_id.i477 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 -1, ptr %device_id.i477, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i479, %sony_remove_dev_list.exit.cleanup_crit_edge, %sony_init_ff.exit.cleanup_crit_edge, %if.end234.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sony_init_ff.exit.cleanup_crit_edge ], [ 0, %if.end234.cleanup_crit_edge ], [ %ret.0, %sony_remove_dev_list.exit.cleanup_crit_edge ], [ %ret.0, %if.then.i479 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_suspend(ptr nocapture noundef readonly %hdev, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %right = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %right to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %right, align 1
  %left = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %left to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %left, align 4
  %send_output_report.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %send_output_report.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_output_report.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.sony_send_output_report.exit_crit_edge, label %if.then.i

entry.sony_send_output_report.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_send_output_report.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %1) #13
  br label %sony_send_output_report.exit

sony_send_output_report.exit:                     ; preds = %if.then.i, %entry.sony_send_output_report.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_resume(ptr nocapture noundef readonly %hdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %4 = and i32 %3, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hdev4 = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hdev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev4, align 4
  %call5 = tail call fastcc i32 @sixaxis_set_operational_usb(ptr noundef %7)
  %defer_initialization = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %defer_initialization to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %defer_initialization, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ghl_magic_poke(ptr nocapture noundef readonly %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ghl_urb = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %ghl_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ghl_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hdev = getelementptr i8, ptr %t, i32 -348
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ghl_magic_poke_cb(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hdev = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %3) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ghl_poke_timer = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 800
  %call = tail call i32 @mod_timer(ptr noundef %ghl_poke_timer, i32 noundef %add) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds4_show_poll_interval(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ds4_bt_poll_interval = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %ds4_bt_poll_interval to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ds4_bt_poll_interval, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.31, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds4_store_poll_interval(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %interval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %interval) #13
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %interval, align 1, !annotation !357
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %interval) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %interval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %4)
  %cmp = icmp ugt i8 %4, 62
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interval, align 1
  %ds4_bt_poll_interval = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 33
  %7 = ptrtoint ptr %ds4_bt_poll_interval to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ds4_bt_poll_interval, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call10) #13
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %defer_initialization.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %defer_initialization.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %defer_initialization.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body5.sony_schedule_work.exit_crit_edge

do.body5.sony_schedule_work.exit_crit_edge:       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

land.lhs.true.i:                                  ; preds = %do.body5
  %state_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state_worker_initialized.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.sony_schedule_work.exit_crit_edge, label %if.then.i

land.lhs.true.i.sony_schedule_work.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %state_worker.i) #13
  br label %sony_schedule_work.exit

sony_schedule_work.exit:                          ; preds = %if.then.i, %land.lhs.true.i.sony_schedule_work.exit_crit_edge, %do.body5.sony_schedule_work.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %sony_schedule_work.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sony_schedule_work.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %interval) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_show_firmware_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_version = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_show_hardware_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw_version = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_version, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sixaxis_parse_report(ptr noundef %sc, ptr nocapture noundef readonly %rd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 30, i32 12
  %arrayidx = getelementptr i8, ptr %rd, i32 %cond
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -19, i8 %3)
  %cmp = icmp ugt i8 %3, -19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  %cond6 = select i1 %tobool5.not, i32 1, i32 4
  br label %do.body16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = tail call i8 @llvm.umin.i8(i8 %3, i8 5)
  %6 = zext i8 %5 to i32
  %arrayidx15 = getelementptr [6 x i8], ptr @sixaxis_parse_report.sixaxis_battery_capacity, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx15, align 1
  br label %do.body16

do.body16:                                        ; preds = %if.else, %if.then
  %battery_capacity.0 = phi i8 [ 100, %if.then ], [ %8, %if.else ]
  %battery_status.0 = phi i32 [ %cond6, %if.then ], [ 2, %if.else ]
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc) #13
  %battery_capacity22 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 24
  %9 = ptrtoint ptr %battery_capacity22 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %battery_capacity.0, ptr %battery_capacity22, align 1
  %battery_status23 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 25
  %10 = ptrtoint ptr %battery_status23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %battery_status.0, ptr %battery_status23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc, i32 noundef %call19) #13
  %11 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks, align 4
  %and26 = and i32 %12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body16.if.end54_crit_edge, label %if.then28

do.body16.if.end54_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx29 = getelementptr i8, ptr %rd, i32 42
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv30, 8
  %arrayidx31 = getelementptr i8, ptr %rd, i32 41
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %16 to i32
  %or = or i32 %shl, %conv32
  %sub = add nsw i32 %or, -511
  %sensor_dev = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 4
  %17 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_event(ptr noundef %18, i32 noundef 3, i32 noundef 0, i32 noundef %sub) #13
  %arrayidx34 = getelementptr i8, ptr %rd, i32 46
  %19 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %20 to i32
  %shl36 = shl nuw nsw i32 %conv35, 8
  %arrayidx38 = getelementptr i8, ptr %rd, i32 45
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %22 to i32
  %or40 = or i32 %shl36, %conv39
  %sub41 = sub nsw i32 511, %or40
  %23 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_event(ptr noundef %24, i32 noundef 3, i32 noundef 1, i32 noundef %sub41) #13
  %arrayidx44 = getelementptr i8, ptr %rd, i32 44
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %26 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %arrayidx48 = getelementptr i8, ptr %rd, i32 43
  %27 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %28 to i32
  %or50 = or i32 %shl46, %conv49
  %sub51 = sub nsw i32 511, %or50
  %29 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 2, i32 noundef %sub51) #13
  %31 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %if.end54

if.end54:                                         ; preds = %if.then28, %do.body16.if.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dualshock4_parse_report(ptr noundef %sc, ptr nocapture noundef readonly %rd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %inputs = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inputs, align 8
  %input = getelementptr inbounds %struct.hid_input, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and = lshr i32 %7, 5
  %8 = and i32 %and, 2
  %touchpad = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 3
  %9 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %touchpad, align 4
  %add1 = add nuw nsw i32 %8, 7
  %arrayidx = getelementptr i8, ptr %rd, i32 %add1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = lshr i8 %12, 1
  %.lobit = and i8 %13, 1
  %14 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 272, i32 noundef %14) #13
  %15 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %16)
  %cmp = icmp eq i8 %16, 17
  br i1 %cmp, label %if.then, label %entry.if.end85_crit_edge

entry.if.end85_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add6 = or i32 %8, 1
  %arrayidx7 = getelementptr i8, ptr %rd, i32 %add6
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %18 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %conv8) #13
  %add9 = add nuw nsw i32 %8, 2
  %arrayidx10 = getelementptr i8, ptr %rd, i32 %add9
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %20 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %conv11) #13
  %add12 = add nuw nsw i32 %8, 3
  %arrayidx13 = getelementptr i8, ptr %rd, i32 %add12
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %22 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 3, i32 noundef %conv14) #13
  %add15 = or i32 %8, 4
  %arrayidx16 = getelementptr i8, ptr %rd, i32 %add15
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %24 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 4, i32 noundef %conv17) #13
  %add18 = or i32 %8, 5
  %arrayidx19 = getelementptr i8, ptr %rd, i32 %add18
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19, align 1
  %27 = and i8 %26, 15
  %28 = tail call i8 @llvm.umin.i8(i8 %27, i8 8)
  %29 = zext i8 %28 to i32
  %arrayidx25 = getelementptr [9 x %struct.anon.70], ptr @ds4_hat_mapping, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx25, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 16, i32 noundef %31) #13
  %y = getelementptr [9 x %struct.anon.70], ptr @ds4_hat_mapping, i32 0, i32 %29, i32 1
  %32 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %y, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 17, i32 noundef %33) #13
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx19, align 1
  %36 = lshr i8 %35, 4
  %.lobit28 = and i8 %36, 1
  %37 = zext i8 %.lobit28 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 308, i32 noundef %37) #13
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx19, align 1
  %40 = lshr i8 %39, 5
  %.lobit29 = and i8 %40, 1
  %41 = zext i8 %.lobit29 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 304, i32 noundef %41) #13
  %42 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx19, align 1
  %44 = lshr i8 %43, 6
  %.lobit30 = and i8 %44, 1
  %45 = zext i8 %.lobit30 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 305, i32 noundef %45) #13
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx19, align 1
  %.lobit31 = lshr i8 %47, 7
  %48 = zext i8 %.lobit31 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 307, i32 noundef %48) #13
  %add43 = add nuw nsw i32 %8, 6
  %arrayidx44 = getelementptr i8, ptr %rd, i32 %add43
  %49 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx44, align 1
  %51 = and i8 %50, 1
  %52 = zext i8 %51 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 310, i32 noundef %52) #13
  %53 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx44, align 1
  %55 = lshr i8 %54, 1
  %.lobit32 = and i8 %55, 1
  %56 = zext i8 %.lobit32 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 311, i32 noundef %56) #13
  %57 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx44, align 1
  %59 = lshr i8 %58, 2
  %.lobit33 = and i8 %59, 1
  %60 = zext i8 %.lobit33 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 312, i32 noundef %60) #13
  %61 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx44, align 1
  %63 = lshr i8 %62, 3
  %.lobit34 = and i8 %63, 1
  %64 = zext i8 %.lobit34 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 313, i32 noundef %64) #13
  %65 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx44, align 1
  %67 = lshr i8 %66, 4
  %.lobit35 = and i8 %67, 1
  %68 = zext i8 %.lobit35 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 314, i32 noundef %68) #13
  %69 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx44, align 1
  %71 = lshr i8 %70, 5
  %.lobit36 = and i8 %71, 1
  %72 = zext i8 %.lobit36 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 315, i32 noundef %72) #13
  %73 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx44, align 1
  %75 = lshr i8 %74, 6
  %.lobit37 = and i8 %75, 1
  %76 = zext i8 %.lobit37 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 317, i32 noundef %76) #13
  %77 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx44, align 1
  %.lobit38 = lshr i8 %78, 7
  %79 = zext i8 %.lobit38 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 318, i32 noundef %79) #13
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx, align 1
  %82 = and i8 %81, 1
  %83 = zext i8 %82 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 316, i32 noundef %83) #13
  %add79 = or i32 %8, 8
  %arrayidx80 = getelementptr i8, ptr %rd, i32 %add79
  %84 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %85 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 2, i32 noundef %conv81) #13
  %add82 = or i32 %8, 9
  %arrayidx83 = getelementptr i8, ptr %rd, i32 %add82
  %86 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %87 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 5, i32 noundef %conv84) #13
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %if.end85

if.end85:                                         ; preds = %if.then, %entry.if.end85_crit_edge
  %add86 = add nuw nsw i32 %8, 10
  %arrayidx87 = getelementptr i8, ptr %rd, i32 %add86
  %88 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %arrayidx87, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #13
  %timestamp_initialized = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 30
  %91 = ptrtoint ptr %timestamp_initialized to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %timestamp_initialized, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool88.not = icmp eq i8 %92, 0
  br i1 %tobool88.not, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %conv90 = zext i16 %90 to i32
  %mul = shl nuw nsw i32 %conv90, 4
  %div = udiv i32 %mul, 3
  %timestamp_us = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 32
  %93 = ptrtoint ptr %timestamp_us to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div, ptr %timestamp_us, align 4
  %94 = ptrtoint ptr %timestamp_initialized to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %timestamp_initialized, align 1
  br label %if.end115

if.else:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %prev_timestamp = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 31
  %95 = ptrtoint ptr %prev_timestamp to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %prev_timestamp, align 2
  %delta.0 = sub i16 %90, %96
  %conv110 = zext i16 %delta.0 to i32
  %mul111 = shl nuw nsw i32 %conv110, 4
  %div112 = udiv i32 %mul111, 3
  %timestamp_us113 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 32
  %97 = ptrtoint ptr %timestamp_us113 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %timestamp_us113, align 4
  %add114 = add i32 %div112, %98
  store i32 %add114, ptr %timestamp_us113, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.else, %if.then89
  %prev_timestamp116 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 31
  %99 = ptrtoint ptr %prev_timestamp116 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %90, ptr %prev_timestamp116, align 2
  %sensor_dev = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 4
  %100 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sensor_dev, align 4
  %timestamp_us117 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 32
  %102 = ptrtoint ptr %timestamp_us117 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %timestamp_us117, align 4
  tail call void @input_event(ptr noundef %101, i32 noundef 4, i32 noundef 5, i32 noundef %103) #13
  %add118 = or i32 %8, 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end115
  %n.040 = phi i32 [ 0, %if.end115 ], [ %inc, %for.body.for.body_crit_edge ]
  %offset.039 = phi i32 [ %add118, %if.end115 ], [ %add145, %for.body.for.body_crit_edge ]
  %add121 = add nuw nsw i32 %offset.039, 1
  %arrayidx122 = getelementptr i8, ptr %rd, i32 %add121
  %104 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %105 to i16
  %shl = shl nuw i16 %conv123, 8
  %arrayidx124 = getelementptr i8, ptr %rd, i32 %offset.039
  %106 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %107 to i16
  %or = or i16 %shl, %conv125
  %conv127 = sext i16 %or to i32
  %arrayidx128 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 %n.040
  %sens_numer = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 %n.040, i32 2
  %108 = ptrtoint ptr %sens_numer to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sens_numer, align 4
  %sens_denom = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 %n.040, i32 3
  %110 = ptrtoint ptr %sens_denom to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sens_denom, align 4
  %.frozen = freeze i32 %109
  %.frozen46 = freeze i32 %111
  %div129 = sdiv i32 %.frozen, %.frozen46
  %112 = mul i32 %div129, %.frozen46
  %rem132.decomposed = sub i32 %.frozen, %112
  %bias = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 %n.040, i32 1
  %113 = ptrtoint ptr %bias to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %bias, align 4
  %conv134 = sext i16 %114 to i32
  %sub135 = sub nsw i32 %conv127, %conv134
  %mul136 = mul i32 %sub135, %div129
  %mul140 = mul i32 %sub135, %rem132.decomposed
  %div142 = sdiv i32 %mul140, %111
  %add143 = add i32 %mul136, %div142
  %115 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sensor_dev, align 4
  %117 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx128, align 4
  tail call void @input_event(ptr noundef %116, i32 noundef 3, i32 noundef %118, i32 noundef %add143) #13
  %add145 = add nuw nsw i32 %offset.039, 2
  %inc = add nuw nsw i32 %n.040, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %119 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_event(ptr noundef %120, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %add147 = add nuw nsw i32 %8, 30
  %arrayidx148 = getelementptr i8, ptr %rd, i32 %add147
  %121 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx148, align 1
  %123 = and i8 %122, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool152.not = icmp eq i8 %123, 0
  %and184 = and i8 %122, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %and184)
  %cmp187 = icmp ult i8 %and184, 10
  br i1 %tobool152.not, label %if.else180, label %if.then153

if.then153:                                       ; preds = %for.end
  br i1 %cmp187, label %if.then161, label %if.else166

if.then161:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #15
  %narrow1 = mul nuw nsw i8 %and184, 10
  %add164 = add nuw nsw i8 %narrow1, 5
  br label %do.body197

if.else166:                                       ; preds = %if.then153
  %trunc = trunc i8 %122 to i4
  %124 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.161)
  switch i4 %trunc, label %if.else176 [
    i4 -6, label %if.else166.do.body197_crit_edge
    i4 -5, label %if.then175
  ]

if.else166.do.body197_crit_edge:                  ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body197

if.then175:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body197

if.else176:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body197

if.else180:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %narrow = mul nuw i8 %and184, 10
  %add192 = add nuw i8 %narrow, 5
  %battery_capacity.1 = select i1 %cmp187, i8 %add192, i8 100
  br label %do.body197

do.body197:                                       ; preds = %if.else180, %if.else176, %if.then175, %if.else166.do.body197_crit_edge, %if.then161
  %battery_status.1 = phi i32 [ 2, %if.else180 ], [ 1, %if.then161 ], [ 4, %if.then175 ], [ 0, %if.else176 ], [ 1, %if.else166.do.body197_crit_edge ]
  %battery_capacity.2 = phi i8 [ %battery_capacity.1, %if.else180 ], [ %add164, %if.then161 ], [ 100, %if.then175 ], [ 0, %if.else176 ], [ 100, %if.else166.do.body197_crit_edge ]
  %call202 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc) #13
  %battery_capacity205 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 24
  %125 = ptrtoint ptr %battery_capacity205 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %battery_capacity.2, ptr %battery_capacity205, align 1
  %battery_status206 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 25
  %126 = ptrtoint ptr %battery_status206 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %battery_status.1, ptr %battery_status206, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc, i32 noundef %call202) #13
  %add208 = or i32 %8, 33
  %arrayidx213 = getelementptr i8, ptr %rd, i32 %add208
  %127 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx213, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp215.not = icmp eq i8 %128, 0
  br i1 %cmp215.not, label %do.body197.if.else224_crit_edge, label %land.lhs.true

do.body197.if.else224_crit_edge:                  ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else224

land.lhs.true:                                    ; preds = %do.body197
  %conv214 = zext i8 %128 to i32
  %129 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %quirks, align 4
  %and210 = and i32 %130, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  %cond212 = select i1 %tobool211.not, i32 3, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond212, i32 %conv214)
  %cmp219.not = icmp ult i32 %cond212, %conv214
  br i1 %cmp219.not, label %land.lhs.true.if.else224_crit_edge, label %land.lhs.true.if.end225_crit_edge

land.lhs.true.if.end225_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

land.lhs.true.if.else224_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else224

if.else224:                                       ; preds = %land.lhs.true.if.else224_crit_edge, %do.body197.if.else224_crit_edge
  br label %if.end225

if.end225:                                        ; preds = %if.else224, %land.lhs.true.if.end225_crit_edge
  %num_touch_data.0 = phi i32 [ 1, %if.else224 ], [ %conv214, %land.lhs.true.if.end225_crit_edge ]
  %add226 = add nuw nsw i32 %8, 34
  br label %for.body230

for.body230:                                      ; preds = %if.end273.1.for.body230_crit_edge, %if.end225
  %m.044 = phi i32 [ 0, %if.end225 ], [ %inc281, %if.end273.1.for.body230_crit_edge ]
  %offset.143 = phi i32 [ %add226, %if.end225 ], [ %add274.1, %if.end273.1.for.body230_crit_edge ]
  %add231 = add nuw nsw i32 %offset.143, 1
  %add238 = add nuw nsw i32 %offset.143, 2
  %arrayidx239 = getelementptr i8, ptr %rd, i32 %add238
  %131 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx239, align 1
  %add241 = add nuw nsw i32 %offset.143, 3
  %arrayidx242 = getelementptr i8, ptr %rd, i32 %add241
  %133 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx242, align 1
  %add253 = add nuw nsw i32 %offset.143, 4
  %arrayidx254 = getelementptr i8, ptr %rd, i32 %add253
  %135 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx254, align 1
  %arrayidx259 = getelementptr i8, ptr %rd, i32 %add231
  %137 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx259, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %138)
  %tobool262.not = icmp sgt i8 %138, -1
  %139 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %touchpad, align 4
  tail call void @input_event(ptr noundef %140, i32 noundef 3, i32 noundef 47, i32 noundef 0) #13
  %141 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %touchpad, align 4
  %call266 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %142, i32 noundef 0, i1 noundef zeroext %tobool262.not) #13
  br i1 %tobool262.not, label %if.then268, label %for.body230.if.end273_crit_edge

for.body230.if.end273_crit_edge:                  ; preds = %for.body230
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

if.then268:                                       ; preds = %for.body230
  call void @__sanitizer_cov_trace_pc() #15
  %conv243 = zext i8 %134 to i32
  %143 = lshr i32 %conv243, 4
  %conv255 = zext i8 %136 to i32
  %shl256 = shl nuw nsw i32 %conv255, 4
  %or257 = or i32 %shl256, %143
  %and244 = shl nuw nsw i32 %conv243, 8
  %shl245 = and i32 %and244, 3840
  %conv240 = zext i8 %132 to i32
  %or246 = or i32 %shl245, %conv240
  %144 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %touchpad, align 4
  tail call void @input_event(ptr noundef %145, i32 noundef 3, i32 noundef 53, i32 noundef %or246) #13
  %146 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %touchpad, align 4
  tail call void @input_event(ptr noundef %147, i32 noundef 3, i32 noundef 54, i32 noundef %or257) #13
  br label %if.end273

if.end273:                                        ; preds = %if.then268, %for.body230.if.end273_crit_edge
  %add274 = add nuw nsw i32 %offset.143, 5
  %add238.1 = add nuw nsw i32 %offset.143, 6
  %arrayidx239.1 = getelementptr i8, ptr %rd, i32 %add238.1
  %148 = ptrtoint ptr %arrayidx239.1 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx239.1, align 1
  %add241.1 = add nuw nsw i32 %offset.143, 7
  %arrayidx242.1 = getelementptr i8, ptr %rd, i32 %add241.1
  %150 = ptrtoint ptr %arrayidx242.1 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx242.1, align 1
  %add253.1 = add nuw nsw i32 %offset.143, 8
  %arrayidx254.1 = getelementptr i8, ptr %rd, i32 %add253.1
  %152 = ptrtoint ptr %arrayidx254.1 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx254.1, align 1
  %arrayidx259.1 = getelementptr i8, ptr %rd, i32 %add274
  %154 = ptrtoint ptr %arrayidx259.1 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx259.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %155)
  %tobool262.not.1 = icmp sgt i8 %155, -1
  %156 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %touchpad, align 4
  tail call void @input_event(ptr noundef %157, i32 noundef 3, i32 noundef 47, i32 noundef 1) #13
  %158 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %touchpad, align 4
  %call266.1 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %159, i32 noundef 0, i1 noundef zeroext %tobool262.not.1) #13
  br i1 %tobool262.not.1, label %if.then268.1, label %if.end273.if.end273.1_crit_edge

if.end273.if.end273.1_crit_edge:                  ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273.1

if.then268.1:                                     ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  %conv243.1 = zext i8 %151 to i32
  %160 = lshr i32 %conv243.1, 4
  %conv255.1 = zext i8 %153 to i32
  %shl256.1 = shl nuw nsw i32 %conv255.1, 4
  %or257.1 = or i32 %shl256.1, %160
  %and244.1 = shl nuw nsw i32 %conv243.1, 8
  %shl245.1 = and i32 %and244.1, 3840
  %conv240.1 = zext i8 %149 to i32
  %or246.1 = or i32 %shl245.1, %conv240.1
  %161 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %touchpad, align 4
  tail call void @input_event(ptr noundef %162, i32 noundef 3, i32 noundef 53, i32 noundef %or246.1) #13
  %163 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %touchpad, align 4
  tail call void @input_event(ptr noundef %164, i32 noundef 3, i32 noundef 54, i32 noundef %or257.1) #13
  br label %if.end273.1

if.end273.1:                                      ; preds = %if.then268.1, %if.end273.if.end273.1_crit_edge
  %add274.1 = add nuw nsw i32 %offset.143, 9
  %165 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %touchpad, align 4
  tail call void @input_mt_sync_frame(ptr noundef %166) #13
  %167 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %touchpad, align 4
  tail call void @input_event(ptr noundef %168, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %inc281 = add nuw nsw i32 %m.044, 1
  %exitcond45.not = icmp eq i32 %inc281, %num_touch_data.0
  br i1 %exitcond45.not, label %for.end282, label %if.end273.1.for.body230_crit_edge

if.end273.1.for.body230_crit_edge:                ; preds = %if.end273.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body230

for.end282:                                       ; preds = %if.end273.1
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sony_set_leds(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc) #13
  %defer_initialization.i = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 23
  %2 = ptrtoint ptr %defer_initialization.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %defer_initialization.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.sony_schedule_work.exit_crit_edge

if.then.sony_schedule_work.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

land.lhs.true.i:                                  ; preds = %if.then
  %state_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 22
  %4 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state_worker_initialized.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not.i = icmp eq i8 %5, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.sony_schedule_work.exit_crit_edge, label %if.then.i

land.lhs.true.i.sony_schedule_work.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %state_worker.i) #13
  br label %sony_schedule_work.exit

sony_schedule_work.exit:                          ; preds = %if.then.i, %land.lhs.true.i.sony_schedule_work.exit_crit_edge, %if.then.sony_schedule_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc, i32 noundef %call2.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hdev1.i = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %7 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev1.i, align 4
  %report_list2.i = getelementptr %struct.hid_device, ptr %8, i32 0, i32 15, i32 1, i32 1
  %9 = ptrtoint ptr %report_list2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %report_list2.i, align 4
  %field.i = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %field.i, align 4
  %value4.i = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %value4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value4.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %led_state.i = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 26
  %16 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %led_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i3 = icmp eq i8 %17, 0
  %cond.i = select i1 %tobool.not.i3, i32 0, i32 255
  %arrayidx7.i = getelementptr i32, ptr %14, i32 1
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 1
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not.i = icmp eq i8 %20, 0
  %cond12.i = select i1 %tobool11.not.i, i32 0, i32 255
  %arrayidx13.i = getelementptr i32, ptr %14, i32 2
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond12.i, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 2
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not.i = icmp eq i8 %23, 0
  %cond18.i = select i1 %tobool17.not.i, i32 0, i32 255
  %arrayidx19.i = getelementptr i32, ptr %14, i32 3
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond18.i, ptr %arrayidx19.i, align 4
  %arrayidx21.i = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 3
  %25 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool23.not.i = icmp eq i8 %26, 0
  %cond24.i = select i1 %tobool23.not.i, i32 0, i32 255
  %arrayidx25.i = getelementptr i32, ptr %14, i32 4
  %27 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond24.i, ptr %arrayidx25.i, align 4
  %arrayidx26.i = getelementptr i32, ptr %14, i32 5
  %28 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx26.i, align 4
  %arrayidx27.i = getelementptr i32, ptr %14, i32 6
  %29 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx27.i, align 4
  tail call void @hid_hw_request(ptr noundef %8, ptr noundef %10, i32 noundef 9) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %sony_schedule_work.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @guitar_mapping(ptr nocapture noundef readonly %hi, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777172, i32 %1)
  %2 = icmp eq i32 %1, -16777172
  br i1 %2, label %if.then4, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then4:                                         ; preds = %entry
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %3 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input1.i.i, align 4
  %absbit.i.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 8
  %tobool.not.i.i = icmp eq ptr %absbit.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i, !prof !356

if.then.i.i:                                      ; preds = %if.then4
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge, label %do.end.i.i

if.then.i.i.hid_map_usage.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_map_usage.exit.thread.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %6, i32 noundef 4, i32 noundef 3) #16
  br label %hid_map_usage.exit.thread.i

hid_map_usage.exit.thread.i:                      ; preds = %do.end.i.i, %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bit, align 4
  br label %return

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %8 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %9 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %code.i.i, align 2
  %10 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 63, ptr %max, align 4
  %11 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %absbit.i.i, ptr %bit, align 4
  %12 = load i16, ptr %code.i.i, align 2
  %conv1.i = zext i16 %12 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %absbit.i.i) #13
  br label %return

return:                                           ; preds = %if.then.i, %hid_map_usage.exit.thread.i, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.then.i ], [ 1, %hid_map_usage.exit.thread.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sixaxis_set_operational_usb(ptr noundef %hdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 17) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext -14, ptr noundef nonnull %call7.i, i32 noundef 17, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.110) #16
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext -11, ptr noundef nonnull %call7.i, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %dev11 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.113) #16
  br label %out

if.end12:                                         ; preds = %if.end4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks, align 4
  %and = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15:                                         ; preds = %if.end12
  %call16 = tail call i32 @hid_hw_output_report(ptr noundef %hdev, ptr noundef nonnull %call7.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %dev22 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.116) #16
  br label %out

out:                                              ; preds = %do.end21, %if.end15.out_crit_edge, %if.end12.out_crit_edge, %do.end10, %do.end
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call5, %do.end10 ], [ %call5, %if.end12.out_crit_edge ], [ 0, %do.end21 ], [ %call16, %if.end15.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sony_init_output_report(ptr noundef %sc, ptr noundef %send_output_report) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %send_output_report1 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 9
  %0 = ptrtoint ptr %send_output_report1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %send_output_report, ptr %send_output_report1, align 4
  %state_worker_initialized = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 22
  %1 = ptrtoint ptr %state_worker_initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state_worker_initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 8
  tail call void @__init_work(ptr noundef %state_worker, i32 noundef 0) #13
  %3 = ptrtoint ptr %state_worker to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %state_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.118, ptr noundef nonnull @sony_init_output_report.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 8, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sony_state_worker, ptr %func, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %state_worker_initialized to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %state_worker_initialized, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sixaxis_send_output_report(ptr nocapture noundef readonly %sc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %output_report_dmabuf = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 17
  %0 = ptrtoint ptr %output_report_dmabuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output_report_dmabuf, align 4
  %2 = call ptr @memcpy(ptr %1, ptr @sixaxis_send_output_report.default_report, i32 36)
  %right = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 19
  %3 = ptrtoint ptr %right to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %right, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  %conv1 = zext i1 %tobool.not to i8
  %right_motor_on = getelementptr inbounds %struct.sixaxis_output_report, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %right_motor_on to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %right_motor_on, align 1
  %left = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 18
  %6 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %left, align 4
  %left_motor_force = getelementptr inbounds %struct.sixaxis_output_report, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %left_motor_force to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %left_motor_force, align 1
  %led_state = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 26
  %9 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %led_state, align 4
  %shl = shl i8 %10, 1
  %leds_bitmap = getelementptr inbounds %struct.sixaxis_output_report, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %leds_bitmap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %shl, ptr %leds_bitmap, align 1
  %arrayidx7 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %shl9 = shl i8 %13, 2
  %or12 = or i8 %shl9, %shl
  store i8 %or12, ptr %leds_bitmap, align 1
  %arrayidx15 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 2
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 2
  %shl17 = shl i8 %15, 3
  %or20 = or i8 %shl17, %or12
  store i8 %or20, ptr %leds_bitmap, align 1
  %arrayidx23 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 3
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx23, align 1
  %shl25 = shl i8 %17, 4
  %or28 = or i8 %shl25, %or20
  %18 = and i8 %or28, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  %or35 = or i8 %or28, 32
  %spec.select = select i1 %cmp, i8 %or35, i8 %or28
  %19 = ptrtoint ptr %leds_bitmap to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %leds_bitmap, align 1
  %arrayidx39 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 27, i32 0
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool41.not = icmp eq i8 %21, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %entry.if.then45_crit_edge

entry.if.then45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

lor.lhs.false:                                    ; preds = %entry
  %arrayidx42 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 0
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool44.not = icmp eq i8 %23, 0
  br i1 %tobool44.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %entry.if.then45_crit_edge
  %arrayidx47 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 0
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx47, align 1
  %duty_off = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 3, i32 3
  %26 = ptrtoint ptr %duty_off to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %duty_off, align 1
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39, align 1
  %duty_on = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 3, i32 4
  %29 = ptrtoint ptr %duty_on to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %duty_on, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %lor.lhs.false.for.inc_crit_edge
  %arrayidx39.1 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 27, i32 1
  %30 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx39.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool41.not.1 = icmp eq i8 %31, 0
  br i1 %tobool41.not.1, label %lor.lhs.false.1, label %for.inc.if.then45.1_crit_edge

for.inc.if.then45.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %arrayidx42.1 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 1
  %32 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx42.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool44.not.1 = icmp eq i8 %33, 0
  br i1 %tobool44.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %lor.lhs.false.1.if.then45.1_crit_edge

lor.lhs.false.1.if.then45.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then45.1:                                      ; preds = %lor.lhs.false.1.if.then45.1_crit_edge, %for.inc.if.then45.1_crit_edge
  %arrayidx47.1 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 1
  %34 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx47.1, align 1
  %duty_off.1 = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 2, i32 3
  %36 = ptrtoint ptr %duty_off.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %duty_off.1, align 1
  %37 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx39.1, align 1
  %duty_on.1 = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 2, i32 4
  %39 = ptrtoint ptr %duty_on.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %duty_on.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then45.1, %lor.lhs.false.1.for.inc.1_crit_edge
  %arrayidx39.2 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 27, i32 2
  %40 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx39.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool41.not.2 = icmp eq i8 %41, 0
  br i1 %tobool41.not.2, label %lor.lhs.false.2, label %for.inc.1.if.then45.2_crit_edge

for.inc.1.if.then45.2_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %arrayidx42.2 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 2
  %42 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx42.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool44.not.2 = icmp eq i8 %43, 0
  br i1 %tobool44.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %lor.lhs.false.2.if.then45.2_crit_edge

lor.lhs.false.2.if.then45.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then45.2:                                      ; preds = %lor.lhs.false.2.if.then45.2_crit_edge, %for.inc.1.if.then45.2_crit_edge
  %arrayidx47.2 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 2
  %44 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx47.2, align 1
  %duty_off.2 = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 1, i32 3
  %46 = ptrtoint ptr %duty_off.2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %duty_off.2, align 1
  %47 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx39.2, align 1
  %duty_on.2 = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 1, i32 4
  %49 = ptrtoint ptr %duty_on.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %duty_on.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then45.2, %lor.lhs.false.2.for.inc.2_crit_edge
  %arrayidx39.3 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 27, i32 3
  %50 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx39.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool41.not.3 = icmp eq i8 %51, 0
  br i1 %tobool41.not.3, label %lor.lhs.false.3, label %for.inc.2.if.then45.3_crit_edge

for.inc.2.if.then45.3_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %arrayidx42.3 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 3
  %52 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx42.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool44.not.3 = icmp eq i8 %53, 0
  br i1 %tobool44.not.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %lor.lhs.false.3.if.then45.3_crit_edge

lor.lhs.false.3.if.then45.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then45.3:                                      ; preds = %lor.lhs.false.3.if.then45.3_crit_edge, %for.inc.2.if.then45.3_crit_edge
  %arrayidx47.3 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 3
  %54 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx47.3, align 1
  %duty_off.3 = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 0, i32 3
  %56 = ptrtoint ptr %duty_off.3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %duty_off.3, align 1
  %57 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx39.3, align 1
  %duty_on.3 = getelementptr %struct.sixaxis_output_report, ptr %1, i32 0, i32 4, i32 0, i32 4
  %59 = ptrtoint ptr %duty_on.3 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %duty_on.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then45.3, %lor.lhs.false.3.for.inc.3_crit_edge
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %60 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %quirks, align 4
  %and55 = and i32 %61, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %hdev58 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %62 = ptrtoint ptr %hdev58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hdev58, align 4
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @hid_hw_output_report(ptr noundef %63, ptr noundef %1, i32 noundef 36) #13
  br label %if.end60

if.else:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %1, align 1
  %call59 = tail call i32 @hid_hw_raw_request(ptr noundef %63, i8 noundef zeroext %65, ptr noundef %1, i32 noundef 36, i8 noundef zeroext 1, i32 noundef 9) #13
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sony_register_sensors(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #13
  %sensor_dev = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %sensor_dev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sc, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor_dev, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev4, ptr %parent, align 8
  %9 = load ptr, ptr %hdev, align 4
  %phys = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 40
  %10 = load ptr, ptr %sensor_dev, align 4
  %phys9 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %phys9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %phys, ptr %phys9, align 4
  %12 = load ptr, ptr %hdev, align 4
  %uniq = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 41
  %13 = load ptr, ptr %sensor_dev, align 4
  %uniq13 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %uniq13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %uniq, ptr %uniq13, align 8
  %15 = load ptr, ptr %hdev, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bus, align 8
  %18 = load ptr, ptr %sensor_dev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %id, align 4
  %20 = load ptr, ptr %hdev, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %22 to i16
  %23 = load ptr, ptr %sensor_dev, align 4
  %vendor19 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %vendor19 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %vendor19, align 2
  %25 = load ptr, ptr %hdev, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %product, align 8
  %conv21 = trunc i32 %27 to i16
  %28 = load ptr, ptr %sensor_dev, align 4
  %product24 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %product24 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv21, ptr %product24, align 4
  %30 = load ptr, ptr %hdev, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version, align 4
  %conv26 = trunc i32 %32 to i16
  %33 = load ptr, ptr %sensor_dev, align 4
  %version29 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %version29 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv26, ptr %version29, align 2
  %35 = load ptr, ptr %hdev, align 4
  %name31 = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 39
  %call33 = tail call i32 @strlen(ptr noundef %name31) #17
  %add = add i32 %call33, 16
  %dev35 = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev35, i32 noundef %add, i32 noundef 3520) #13
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %if.end.cleanup_crit_edge, label %if.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %36 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdev, align 4
  %name41 = getelementptr inbounds %struct.hid_device, ptr %37, i32 0, i32 39
  %call43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef nonnull @.str.119, ptr noundef %name41)
  %38 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sensor_dev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %39, align 8
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %41 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %quirks, align 4
  %and = and i32 %42, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end39
  %43 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %44, i32 noundef 0, i32 noundef -512, i32 noundef 511, i32 noundef 4, i32 noundef 0) #13
  %45 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %46, i32 noundef 1, i32 noundef -512, i32 noundef 511, i32 noundef 4, i32 noundef 0) #13
  %47 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %48, i32 noundef 2, i32 noundef -512, i32 noundef 511, i32 noundef 4, i32 noundef 0) #13
  %49 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %50) #13
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 26
  %51 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.then47.input_abs_set_res.exit_crit_edge, label %if.then.i

if.then47.input_abs_set_res.exit_crit_edge:       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i = getelementptr %struct.input_absinfo, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 113, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.then47.input_abs_set_res.exit_crit_edge
  %54 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %55) #13
  %absinfo.i154 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 26
  %56 = ptrtoint ptr %absinfo.i154 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %absinfo.i154, align 8
  %tobool.not.i155 = icmp eq ptr %57, null
  br i1 %tobool.not.i155, label %input_abs_set_res.exit.input_abs_set_res.exit158_crit_edge, label %if.then.i157

input_abs_set_res.exit.input_abs_set_res.exit158_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit158

if.then.i157:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i156 = getelementptr %struct.input_absinfo, ptr %57, i32 1, i32 5
  %58 = ptrtoint ptr %resolution.i156 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 113, ptr %resolution.i156, align 4
  br label %input_abs_set_res.exit158

input_abs_set_res.exit158:                        ; preds = %if.then.i157, %input_abs_set_res.exit.input_abs_set_res.exit158_crit_edge
  %59 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %60) #13
  %absinfo.i159 = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 26
  %61 = ptrtoint ptr %absinfo.i159 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %absinfo.i159, align 8
  %tobool.not.i160 = icmp eq ptr %62, null
  br i1 %tobool.not.i160, label %input_abs_set_res.exit158.if.end80_crit_edge, label %if.then.i162

input_abs_set_res.exit158.if.end80_crit_edge:     ; preds = %input_abs_set_res.exit158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then.i162:                                     ; preds = %input_abs_set_res.exit158
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i161 = getelementptr %struct.input_absinfo, ptr %62, i32 2, i32 5
  %63 = ptrtoint ptr %resolution.i161 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 113, ptr %resolution.i161, align 4
  br label %if.end80

if.else:                                          ; preds = %if.end39
  %and55 = and i32 %42, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else.if.end80_crit_edge, label %if.then57

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then57:                                        ; preds = %if.else
  %64 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %65, i32 noundef 0, i32 noundef -32768, i32 noundef 32768, i32 noundef 16, i32 noundef 0) #13
  %66 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %67, i32 noundef 1, i32 noundef -32768, i32 noundef 32768, i32 noundef 16, i32 noundef 0) #13
  %68 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %69, i32 noundef 2, i32 noundef -32768, i32 noundef 32768, i32 noundef 16, i32 noundef 0) #13
  %70 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %71) #13
  %absinfo.i164 = getelementptr inbounds %struct.input_dev, ptr %71, i32 0, i32 26
  %72 = ptrtoint ptr %absinfo.i164 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %absinfo.i164, align 8
  %tobool.not.i165 = icmp eq ptr %73, null
  br i1 %tobool.not.i165, label %if.then57.input_abs_set_res.exit168_crit_edge, label %if.then.i167

if.then57.input_abs_set_res.exit168_crit_edge:    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit168

if.then.i167:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i166 = getelementptr %struct.input_absinfo, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %resolution.i166 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 8192, ptr %resolution.i166, align 4
  br label %input_abs_set_res.exit168

input_abs_set_res.exit168:                        ; preds = %if.then.i167, %if.then57.input_abs_set_res.exit168_crit_edge
  %75 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %76) #13
  %absinfo.i169 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 26
  %77 = ptrtoint ptr %absinfo.i169 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %absinfo.i169, align 8
  %tobool.not.i170 = icmp eq ptr %78, null
  br i1 %tobool.not.i170, label %input_abs_set_res.exit168.input_abs_set_res.exit173_crit_edge, label %if.then.i172

input_abs_set_res.exit168.input_abs_set_res.exit173_crit_edge: ; preds = %input_abs_set_res.exit168
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit173

if.then.i172:                                     ; preds = %input_abs_set_res.exit168
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i171 = getelementptr %struct.input_absinfo, ptr %78, i32 1, i32 5
  %79 = ptrtoint ptr %resolution.i171 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8192, ptr %resolution.i171, align 4
  br label %input_abs_set_res.exit173

input_abs_set_res.exit173:                        ; preds = %if.then.i172, %input_abs_set_res.exit168.input_abs_set_res.exit173_crit_edge
  %80 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %81) #13
  %absinfo.i174 = getelementptr inbounds %struct.input_dev, ptr %81, i32 0, i32 26
  %82 = ptrtoint ptr %absinfo.i174 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %absinfo.i174, align 8
  %tobool.not.i175 = icmp eq ptr %83, null
  br i1 %tobool.not.i175, label %input_abs_set_res.exit173.input_abs_set_res.exit178_crit_edge, label %if.then.i177

input_abs_set_res.exit173.input_abs_set_res.exit178_crit_edge: ; preds = %input_abs_set_res.exit173
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit178

if.then.i177:                                     ; preds = %input_abs_set_res.exit173
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i176 = getelementptr %struct.input_absinfo, ptr %83, i32 2, i32 5
  %84 = ptrtoint ptr %resolution.i176 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8192, ptr %resolution.i176, align 4
  br label %input_abs_set_res.exit178

input_abs_set_res.exit178:                        ; preds = %if.then.i177, %input_abs_set_res.exit173.input_abs_set_res.exit178_crit_edge
  %85 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %86, i32 noundef 3, i32 noundef -2097152, i32 noundef 2097152, i32 noundef 16, i32 noundef 0) #13
  %87 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %88, i32 noundef 4, i32 noundef -2097152, i32 noundef 2097152, i32 noundef 16, i32 noundef 0) #13
  %89 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %90, i32 noundef 5, i32 noundef -2097152, i32 noundef 2097152, i32 noundef 16, i32 noundef 0) #13
  %91 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %92) #13
  %absinfo.i179 = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 26
  %93 = ptrtoint ptr %absinfo.i179 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %absinfo.i179, align 8
  %tobool.not.i180 = icmp eq ptr %94, null
  br i1 %tobool.not.i180, label %input_abs_set_res.exit178.input_abs_set_res.exit183_crit_edge, label %if.then.i182

input_abs_set_res.exit178.input_abs_set_res.exit183_crit_edge: ; preds = %input_abs_set_res.exit178
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit183

if.then.i182:                                     ; preds = %input_abs_set_res.exit178
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i181 = getelementptr %struct.input_absinfo, ptr %94, i32 3, i32 5
  %95 = ptrtoint ptr %resolution.i181 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1024, ptr %resolution.i181, align 4
  br label %input_abs_set_res.exit183

input_abs_set_res.exit183:                        ; preds = %if.then.i182, %input_abs_set_res.exit178.input_abs_set_res.exit183_crit_edge
  %96 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %97) #13
  %absinfo.i184 = getelementptr inbounds %struct.input_dev, ptr %97, i32 0, i32 26
  %98 = ptrtoint ptr %absinfo.i184 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %absinfo.i184, align 8
  %tobool.not.i185 = icmp eq ptr %99, null
  br i1 %tobool.not.i185, label %input_abs_set_res.exit183.input_abs_set_res.exit188_crit_edge, label %if.then.i187

input_abs_set_res.exit183.input_abs_set_res.exit188_crit_edge: ; preds = %input_abs_set_res.exit183
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit188

if.then.i187:                                     ; preds = %input_abs_set_res.exit183
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i186 = getelementptr %struct.input_absinfo, ptr %99, i32 4, i32 5
  %100 = ptrtoint ptr %resolution.i186 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1024, ptr %resolution.i186, align 4
  br label %input_abs_set_res.exit188

input_abs_set_res.exit188:                        ; preds = %if.then.i187, %input_abs_set_res.exit183.input_abs_set_res.exit188_crit_edge
  %101 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sensor_dev, align 4
  tail call void @input_alloc_absinfo(ptr noundef %102) #13
  %absinfo.i189 = getelementptr inbounds %struct.input_dev, ptr %102, i32 0, i32 26
  %103 = ptrtoint ptr %absinfo.i189 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %absinfo.i189, align 8
  %tobool.not.i190 = icmp eq ptr %104, null
  br i1 %tobool.not.i190, label %input_abs_set_res.exit188.input_abs_set_res.exit193_crit_edge, label %if.then.i192

input_abs_set_res.exit188.input_abs_set_res.exit193_crit_edge: ; preds = %input_abs_set_res.exit188
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit193

if.then.i192:                                     ; preds = %input_abs_set_res.exit188
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i191 = getelementptr %struct.input_absinfo, ptr %104, i32 5, i32 5
  %105 = ptrtoint ptr %resolution.i191 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1024, ptr %resolution.i191, align 4
  br label %input_abs_set_res.exit193

input_abs_set_res.exit193:                        ; preds = %if.then.i192, %input_abs_set_res.exit188.input_abs_set_res.exit193_crit_edge
  %106 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sensor_dev, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %evbit, align 4
  %or.i = or i32 %109, 16
  store i32 %or.i, ptr %evbit, align 4
  %110 = load ptr, ptr %sensor_dev, align 4
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %110, i32 0, i32 9
  %111 = ptrtoint ptr %mscbit to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mscbit, align 4
  %or.i152 = or i32 %112, 32
  store i32 %or.i152, ptr %mscbit, align 4
  br label %if.end80

if.end80:                                         ; preds = %input_abs_set_res.exit193, %if.else.if.end80_crit_edge, %if.then.i162, %input_abs_set_res.exit158.if.end80_crit_edge
  %113 = ptrtoint ptr %sensor_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sensor_dev, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %propbit, align 4
  %or.i153 = or i32 %116, 64
  store i32 %or.i153, ptr %propbit, align 4
  %117 = load ptr, ptr %sensor_dev, align 4
  %call84 = tail call i32 @input_register_device(ptr noundef %117) #13
  %118 = tail call i32 @llvm.smin.i32(i32 %call84, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %118, %if.end80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dualshock4_get_calibration_data(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %bthdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else15, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 37) #20
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.then.cleanup214_crit_edge, label %for.cond.preheader

if.then.cleanup214_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup214

for.cond.preheader:                               ; preds = %if.then
  %hdev = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 4
  %call3328 = tail call i32 @hid_hw_raw_request(ptr noundef %4, i8 noundef zeroext 2, ptr noundef nonnull %call7.i, i32 noundef 37, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3328)
  %cmp4329 = icmp slt i32 %call3328, 0
  br i1 %cmp4329, label %for.cond.preheader.err_stop_crit_edge, label %if.end6.preheader

for.cond.preheader.err_stop_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end6.preheader:                                ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp7.not = icmp eq i8 %6, 2
  br i1 %cmp7.not, label %if.end6.preheader.if.end62_crit_edge, label %if.then9

if.end6.preheader.if.end62_crit_edge:             ; preds = %if.end6.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then9:                                         ; preds = %if.end6.preheader
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.120) #16
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  %call3 = tail call i32 @hid_hw_raw_request(ptr noundef %10, i8 noundef zeroext 2, ptr noundef nonnull %call7.i, i32 noundef 37, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then9.err_stop_crit_edge, label %if.end6.1

if.then9.err_stop_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end6.1:                                        ; preds = %if.then9
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp7.not.1 = icmp eq i8 %12, 2
  br i1 %cmp7.not.1, label %if.end6.1.if.end62_crit_edge, label %if.then9.1

if.end6.1.if.end62_crit_edge:                     ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then9.1:                                       ; preds = %if.end6.1
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %dev.1 = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.1, ptr noundef nonnull @.str.120) #16
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev, align 4
  %call3.1 = tail call i32 @hid_hw_raw_request(ptr noundef %16, i8 noundef zeroext 2, ptr noundef nonnull %call7.i, i32 noundef 37, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %if.then9.1.err_stop_crit_edge, label %if.end6.2

if.then9.1.err_stop_crit_edge:                    ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end6.2:                                        ; preds = %if.then9.1
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp7.not.2 = icmp eq i8 %18, 2
  br i1 %cmp7.not.2, label %if.end6.2.if.end62_crit_edge, label %if.end6.2.err_stop_crit_edge

if.end6.2.err_stop_crit_edge:                     ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_stop

if.end6.2.if.end62_crit_edge:                     ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.else15:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bthdr) #13
  %19 = ptrtoint ptr %bthdr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -93, ptr %bthdr, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i315 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 41) #20
  %tobool18.not = icmp eq ptr %call7.i315, null
  br i1 %tobool18.not, label %cleanup56.thread323, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %if.else15
  %hdev25 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %21 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev25, align 4
  %call26333 = call i32 @hid_hw_raw_request(ptr noundef %22, i8 noundef zeroext 5, ptr noundef nonnull %call7.i315, i32 noundef 41, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26333)
  %cmp27334 = icmp slt i32 %call26333, 0
  br i1 %cmp27334, label %for.cond21.preheader.cleanup56.thread_crit_edge, label %if.end30.lr.ph

for.cond21.preheader.cleanup56.thread_crit_edge:  ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56.thread

if.end30.lr.ph:                                   ; preds = %for.cond21.preheader
  %arrayidx33 = getelementptr i8, ptr %call7.i315, i32 37
  %call31 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %bthdr, i32 noundef 1) #18
  %call32 = call i32 @crc32_le(i32 noundef %call31, ptr noundef nonnull %call7.i315, i32 noundef 37) #18
  %neg = xor i32 %call32, -1
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx33, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %neg)
  %cmp35.not = icmp eq i32 %25, %neg
  br i1 %cmp35.not, label %if.end30.lr.ph.cleanup56_crit_edge, label %do.end40

if.end30.lr.ph.cleanup56_crit_edge:               ; preds = %if.end30.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56

cleanup56.thread323:                              ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bthdr) #13
  br label %cleanup214

do.end40:                                         ; preds = %if.end30.lr.ph
  %26 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev25, align 4
  %dev42 = getelementptr inbounds %struct.hid_device, ptr %27, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.123, i32 noundef %25, i32 noundef %neg) #16
  %28 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev25, align 4
  %dev50 = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev50, ptr noundef nonnull @.str.126) #16
  %30 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev25, align 4
  %call26 = call i32 @hid_hw_raw_request(ptr noundef %31, i8 noundef zeroext 5, ptr noundef nonnull %call7.i315, i32 noundef 41, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end40.cleanup56.thread_crit_edge, label %if.end30.1

do.end40.cleanup56.thread_crit_edge:              ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56.thread

if.end30.1:                                       ; preds = %do.end40
  %call31.1 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %bthdr, i32 noundef 1) #18
  %call32.1 = call i32 @crc32_le(i32 noundef %call31.1, ptr noundef nonnull %call7.i315, i32 noundef 37) #18
  %neg.1 = xor i32 %call32.1, -1
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx33, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %neg.1)
  %cmp35.not.1 = icmp eq i32 %34, %neg.1
  br i1 %cmp35.not.1, label %if.end30.1.cleanup56_crit_edge, label %do.end40.1

if.end30.1.cleanup56_crit_edge:                   ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56

do.end40.1:                                       ; preds = %if.end30.1
  %35 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdev25, align 4
  %dev42.1 = getelementptr inbounds %struct.hid_device, ptr %36, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42.1, ptr noundef nonnull @.str.123, i32 noundef %34, i32 noundef %neg.1) #16
  %37 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdev25, align 4
  %dev50.1 = getelementptr inbounds %struct.hid_device, ptr %38, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev50.1, ptr noundef nonnull @.str.126) #16
  %39 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdev25, align 4
  %call26.1 = call i32 @hid_hw_raw_request(ptr noundef %40, i8 noundef zeroext 5, ptr noundef nonnull %call7.i315, i32 noundef 41, i8 noundef zeroext 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %cmp27.1 = icmp slt i32 %call26.1, 0
  br i1 %cmp27.1, label %do.end40.1.cleanup56.thread_crit_edge, label %if.end30.2

do.end40.1.cleanup56.thread_crit_edge:            ; preds = %do.end40.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56.thread

if.end30.2:                                       ; preds = %do.end40.1
  %call31.2 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %bthdr, i32 noundef 1) #18
  %call32.2 = call i32 @crc32_le(i32 noundef %call31.2, ptr noundef nonnull %call7.i315, i32 noundef 37) #18
  %neg.2 = xor i32 %call32.2, -1
  %41 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx33, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %neg.2)
  %cmp35.not.2 = icmp eq i32 %43, %neg.2
  br i1 %cmp35.not.2, label %if.end30.2.cleanup56_crit_edge, label %do.end40.2

if.end30.2.cleanup56_crit_edge:                   ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56

do.end40.2:                                       ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hdev25, align 4
  %dev42.2 = getelementptr inbounds %struct.hid_device, ptr %45, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42.2, ptr noundef nonnull @.str.123, i32 noundef %43, i32 noundef %neg.2) #16
  br label %cleanup56.thread

cleanup56.thread:                                 ; preds = %do.end40.2, %do.end40.1.cleanup56.thread_crit_edge, %do.end40.cleanup56.thread_crit_edge, %for.cond21.preheader.cleanup56.thread_crit_edge
  %ret.5.ph = phi i32 [ %call26333, %for.cond21.preheader.cleanup56.thread_crit_edge ], [ %call26, %do.end40.cleanup56.thread_crit_edge ], [ %call26.1, %do.end40.1.cleanup56.thread_crit_edge ], [ -84, %do.end40.2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bthdr) #13
  br label %err_stop

cleanup56:                                        ; preds = %if.end30.2.cleanup56_crit_edge, %if.end30.1.cleanup56_crit_edge, %if.end30.lr.ph.cleanup56_crit_edge
  %call26336.lcssa = phi i32 [ %call26333, %if.end30.lr.ph.cleanup56_crit_edge ], [ %call26, %if.end30.1.cleanup56_crit_edge ], [ %call26.1, %if.end30.2.cleanup56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bthdr) #13
  br label %if.end62

if.end62:                                         ; preds = %cleanup56, %if.end6.2.if.end62_crit_edge, %if.end6.1.if.end62_crit_edge, %if.end6.preheader.if.end62_crit_edge
  %buf.0 = phi ptr [ %call7.i315, %cleanup56 ], [ %call7.i, %if.end6.2.if.end62_crit_edge ], [ %call7.i, %if.end6.1.if.end62_crit_edge ], [ %call7.i, %if.end6.preheader.if.end62_crit_edge ]
  %ret.6 = phi i32 [ %call26336.lcssa, %cleanup56 ], [ %call3.1, %if.end6.2.if.end62_crit_edge ], [ %call3, %if.end6.1.if.end62_crit_edge ], [ %call3328, %if.end6.preheader.if.end62_crit_edge ]
  %arrayidx63 = getelementptr i8, ptr %buf.0, i32 1
  %46 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %arrayidx63, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47) #13
  %arrayidx65 = getelementptr i8, ptr %buf.0, i32 3
  %49 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %arrayidx65, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50) #13
  %arrayidx67 = getelementptr i8, ptr %buf.0, i32 5
  %52 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %arrayidx67, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53) #13
  %55 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %quirks, align 4
  %and70 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %arrayidx86 = getelementptr i8, ptr %buf.0, i32 7
  %57 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %arrayidx86, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58) #13
  %arrayidx88 = getelementptr i8, ptr %buf.0, i32 9
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %arrayidx88, align 1
  %62 = call i16 @llvm.bswap.i16(i16 %61) #13
  %arrayidx90 = getelementptr i8, ptr %buf.0, i32 11
  %63 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx90, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #13
  %arrayidx92 = getelementptr i8, ptr %buf.0, i32 13
  %66 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %arrayidx92, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67) #13
  %arrayidx94 = getelementptr i8, ptr %buf.0, i32 15
  %69 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %arrayidx94, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70) #13
  %arrayidx96 = getelementptr i8, ptr %buf.0, i32 17
  %72 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %arrayidx96, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73) #13
  %. = select i1 %tobool71.not, i16 %68, i16 %62
  %.341 = select i1 %tobool71.not, i16 %62, i16 %65
  %.342 = select i1 %tobool71.not, i16 %71, i16 %68
  %.343 = select i1 %tobool71.not, i16 %65, i16 %71
  %arrayidx99 = getelementptr i8, ptr %buf.0, i32 19
  %75 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %arrayidx99, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76) #13
  %arrayidx101 = getelementptr i8, ptr %buf.0, i32 21
  %78 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %arrayidx101, align 1
  %80 = call i16 @llvm.bswap.i16(i16 %79) #13
  %arrayidx103 = getelementptr i8, ptr %buf.0, i32 23
  %81 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %arrayidx103, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82) #13
  %arrayidx105 = getelementptr i8, ptr %buf.0, i32 25
  %84 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %arrayidx105, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85) #13
  %arrayidx107 = getelementptr i8, ptr %buf.0, i32 27
  %87 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %arrayidx107, align 1
  %89 = call i16 @llvm.bswap.i16(i16 %88) #13
  %arrayidx109 = getelementptr i8, ptr %buf.0, i32 29
  %90 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %arrayidx109, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91) #13
  %arrayidx111 = getelementptr i8, ptr %buf.0, i32 31
  %93 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %arrayidx111, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94) #13
  %arrayidx113 = getelementptr i8, ptr %buf.0, i32 33
  %96 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %arrayidx113, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97) #13
  %conv115 = sext i16 %77 to i32
  %conv116 = sext i16 %80 to i32
  %add = add nsw i32 %conv116, %conv115
  %ds4_calib_data = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 35
  %99 = ptrtoint ptr %ds4_calib_data to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3, ptr %ds4_calib_data, align 4
  %bias = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 0, i32 1
  %100 = ptrtoint ptr %bias to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %48, ptr %bias, align 4
  %mul = shl nsw i32 %add, 10
  %sens_numer = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 0, i32 2
  %101 = ptrtoint ptr %sens_numer to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul, ptr %sens_numer, align 4
  %conv122 = sext i16 %59 to i32
  %conv123 = sext i16 %. to i32
  %sub = sub nsw i32 %conv122, %conv123
  %sens_denom = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 0, i32 3
  %102 = ptrtoint ptr %sens_denom to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub, ptr %sens_denom, align 4
  %arrayidx127 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 1
  %103 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 4, ptr %arrayidx127, align 4
  %bias131 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 1, i32 1
  %104 = ptrtoint ptr %bias131 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %51, ptr %bias131, align 4
  %sens_numer135 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 1, i32 2
  %105 = ptrtoint ptr %sens_numer135 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul, ptr %sens_numer135, align 4
  %conv136 = sext i16 %.341 to i32
  %conv137 = sext i16 %.342 to i32
  %sub138 = sub nsw i32 %conv136, %conv137
  %sens_denom141 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 1, i32 3
  %106 = ptrtoint ptr %sens_denom141 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub138, ptr %sens_denom141, align 4
  %arrayidx143 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 2
  %107 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 5, ptr %arrayidx143, align 4
  %bias147 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 2, i32 1
  %108 = ptrtoint ptr %bias147 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %54, ptr %bias147, align 4
  %sens_numer151 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 2, i32 2
  %109 = ptrtoint ptr %sens_numer151 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %mul, ptr %sens_numer151, align 4
  %conv152 = sext i16 %.343 to i32
  %conv153 = sext i16 %74 to i32
  %sub154 = sub nsw i32 %conv152, %conv153
  %sens_denom157 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 2, i32 3
  %110 = ptrtoint ptr %sens_denom157 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub154, ptr %sens_denom157, align 4
  %conv158 = sext i16 %83 to i32
  %conv159 = sext i16 %86 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  %arrayidx162 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 3
  %111 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %arrayidx162, align 4
  %div.neg = sdiv i32 %sub160, -2
  %112 = trunc i32 %div.neg to i16
  %conv166 = add i16 %83, %112
  %bias169 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 3, i32 1
  %113 = ptrtoint ptr %bias169 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv166, ptr %bias169, align 4
  %sens_numer172 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 3, i32 2
  %114 = ptrtoint ptr %sens_numer172 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 16384, ptr %sens_numer172, align 4
  %sens_denom175 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 3, i32 3
  %115 = ptrtoint ptr %sens_denom175 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub160, ptr %sens_denom175, align 4
  %conv176 = sext i16 %89 to i32
  %conv177 = sext i16 %92 to i32
  %sub178 = sub nsw i32 %conv176, %conv177
  %arrayidx180 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 4
  %116 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %arrayidx180, align 4
  %div183.neg = sdiv i32 %sub178, -2
  %117 = trunc i32 %div183.neg to i16
  %conv185 = add i16 %89, %117
  %bias188 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 4, i32 1
  %118 = ptrtoint ptr %bias188 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv185, ptr %bias188, align 4
  %sens_numer191 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 4, i32 2
  %119 = ptrtoint ptr %sens_numer191 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 16384, ptr %sens_numer191, align 4
  %sens_denom194 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 4, i32 3
  %120 = ptrtoint ptr %sens_denom194 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sub178, ptr %sens_denom194, align 4
  %conv195 = sext i16 %95 to i32
  %conv196 = sext i16 %98 to i32
  %sub197 = sub nsw i32 %conv195, %conv196
  %arrayidx199 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 5
  %121 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %arrayidx199, align 4
  %div202.neg = sdiv i32 %sub197, -2
  %122 = trunc i32 %div202.neg to i16
  %conv204 = add i16 %95, %122
  %bias207 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 5, i32 1
  %123 = ptrtoint ptr %bias207 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv204, ptr %bias207, align 4
  %sens_numer210 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 5, i32 2
  %124 = ptrtoint ptr %sens_numer210 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 16384, ptr %sens_numer210, align 4
  %sens_denom213 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 35, i32 5, i32 3
  %125 = ptrtoint ptr %sens_denom213 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub197, ptr %sens_denom213, align 4
  br label %err_stop

err_stop:                                         ; preds = %if.end62, %cleanup56.thread, %if.end6.2.err_stop_crit_edge, %if.then9.1.err_stop_crit_edge, %if.then9.err_stop_crit_edge, %for.cond.preheader.err_stop_crit_edge
  %buf.1 = phi ptr [ %buf.0, %if.end62 ], [ %call7.i315, %cleanup56.thread ], [ %call7.i, %for.cond.preheader.err_stop_crit_edge ], [ %call7.i, %if.end6.2.err_stop_crit_edge ], [ %call7.i, %if.then9.1.err_stop_crit_edge ], [ %call7.i, %if.then9.err_stop_crit_edge ]
  %ret.7 = phi i32 [ %ret.6, %if.end62 ], [ %ret.5.ph, %cleanup56.thread ], [ %call3328, %for.cond.preheader.err_stop_crit_edge ], [ -84, %if.end6.2.err_stop_crit_edge ], [ %call3.1, %if.then9.1.err_stop_crit_edge ], [ %call3, %if.then9.err_stop_crit_edge ]
  call void @kfree(ptr noundef nonnull %buf.1) #13
  br label %cleanup214

cleanup214:                                       ; preds = %err_stop, %cleanup56.thread323, %if.then.cleanup214_crit_edge
  %retval.2 = phi i32 [ %ret.7, %err_stop ], [ -12, %cleanup56.thread323 ], [ -12, %if.then.cleanup214_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sony_register_touchpad(ptr noundef %sc, i32 noundef %w, i32 noundef %h, i32 noundef %touch_major, i32 noundef %touch_minor, i32 noundef %orientation) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #13
  %touchpad = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 3
  %2 = ptrtoint ptr %touchpad to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %touchpad, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sc, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touchpad, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev4, ptr %parent, align 8
  %9 = load ptr, ptr %hdev, align 4
  %phys = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 40
  %10 = load ptr, ptr %touchpad, align 4
  %phys9 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %phys9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %phys, ptr %phys9, align 4
  %12 = load ptr, ptr %hdev, align 4
  %uniq = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 41
  %13 = load ptr, ptr %touchpad, align 4
  %uniq13 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %uniq13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %uniq, ptr %uniq13, align 8
  %15 = load ptr, ptr %hdev, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bus, align 8
  %18 = load ptr, ptr %touchpad, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %id, align 4
  %20 = load ptr, ptr %hdev, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %22 to i16
  %23 = load ptr, ptr %touchpad, align 4
  %vendor19 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %vendor19 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %vendor19, align 2
  %25 = load ptr, ptr %hdev, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %product, align 8
  %conv21 = trunc i32 %27 to i16
  %28 = load ptr, ptr %touchpad, align 4
  %product24 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %product24 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv21, ptr %product24, align 4
  %30 = load ptr, ptr %hdev, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version, align 4
  %conv26 = trunc i32 %32 to i16
  %33 = load ptr, ptr %touchpad, align 4
  %version29 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %version29 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv26, ptr %version29, align 2
  %35 = load ptr, ptr %hdev, align 4
  %name31 = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 39
  %call33 = tail call i32 @strlen(ptr noundef %name31) #17
  %add = add i32 %call33, 10
  %dev35 = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev35, i32 noundef %add, i32 noundef 3520) #13
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %if.end.cleanup_crit_edge, label %if.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %36 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdev, align 4
  %name41 = getelementptr inbounds %struct.hid_device, ptr %37, i32 0, i32 39
  %call43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef nonnull @.str.128, ptr noundef %name41)
  %38 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %touchpad, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %39, align 8
  %41 = load ptr, ptr %touchpad, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %evbit, align 4
  %or.i = or i32 %43, 2
  store i32 %or.i, ptr %evbit, align 4
  %44 = load ptr, ptr %touchpad, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %44, i32 0, i32 6, i32 8
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i, align 4
  %or.i1 = or i32 %46, 65536
  store i32 %or.i1, ptr %add.ptr.i, align 4
  %47 = load ptr, ptr %touchpad, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %propbit, align 4
  %or.i2 = or i32 %49, 4
  store i32 %or.i2, ptr %propbit, align 4
  %50 = load ptr, ptr %touchpad, align 4
  tail call void @input_set_abs_params(ptr noundef %50, i32 noundef 53, i32 noundef 0, i32 noundef %w, i32 noundef 0, i32 noundef 0) #13
  %51 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %touchpad, align 4
  tail call void @input_set_abs_params(ptr noundef %52, i32 noundef 54, i32 noundef 0, i32 noundef %h, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %touch_major)
  %cmp = icmp sgt i32 %touch_major, 0
  br i1 %cmp, label %if.then55, label %if.end39.if.end67_crit_edge

if.end39.if.end67_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then55:                                        ; preds = %if.end39
  %53 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %touchpad, align 4
  tail call void @input_set_abs_params(ptr noundef %54, i32 noundef 48, i32 noundef 0, i32 noundef %touch_major, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %touch_minor)
  %cmp57 = icmp sgt i32 %touch_minor, 0
  br i1 %cmp57, label %if.then59, label %if.then55.if.end61_crit_edge

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %touchpad, align 4
  tail call void @input_set_abs_params(ptr noundef %56, i32 noundef 49, i32 noundef 0, i32 noundef %touch_minor, i32 noundef 0, i32 noundef 0) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then55.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %orientation)
  %cmp62 = icmp sgt i32 %orientation, 0
  br i1 %cmp62, label %if.then64, label %if.end61.if.end67_crit_edge

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %touchpad, align 4
  tail call void @input_set_abs_params(ptr noundef %58, i32 noundef 52, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge, %if.end39.if.end67_crit_edge
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %59 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks, align 4
  %and = and i32 %60, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.end67.if.end73_crit_edge, label %if.then69

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %touchpad, align 4
  %evbit71 = getelementptr inbounds %struct.input_dev, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %evbit71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %evbit71, align 4
  %or.i3 = or i32 %64, 4
  store i32 %or.i3, ptr %evbit71, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end67.if.end73_crit_edge
  %65 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %touchpad, align 4
  %call75 = tail call i32 @input_mt_init_slots(ptr noundef %66, i32 noundef 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end73.cleanup_crit_edge, label %if.end79

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %touchpad, align 4
  %call81 = tail call i32 @input_register_device(ptr noundef %68) #13
  %69 = tail call i32 @llvm.smin.i32(i32 %call81, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end73.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call75, %if.end73.cleanup_crit_edge ], [ %69, %if.end79 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dualshock4_calibration_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %call = tail call fastcc i32 @dualshock4_get_calibration_data(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %hdev = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  br i1 %cmp, label %do.end, label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.129) #16
  br label %do.body7

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.132) #16
  br label %do.body7

do.body7:                                         ; preds = %do.end3, %do.end
  %dongle_state.0 = phi i32 [ 3, %do.end ], [ 2, %do.end3 ]
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #13
  %ds4_dongle_state = getelementptr i8, ptr %work, i32 212
  %2 = ptrtoint ptr %ds4_dongle_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dongle_state.0, ptr %ds4_dongle_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call11) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dualshock4_send_output_report(ptr nocapture noundef readonly %sc) #3 align 64 {
entry:
  %bthdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %output_report_dmabuf = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 17
  %2 = ptrtoint ptr %output_report_dmabuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_report_dmabuf, align 4
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 6
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and = and i32 %5, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = getelementptr inbounds i8, ptr %3, i32 2
  %7 = call ptr @memset(ptr %6, i32 0, i32 30)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %3, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = getelementptr inbounds i8, ptr %3, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 77)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 17, ptr %3, align 1
  %ds4_bt_poll_interval = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 33
  %12 = ptrtoint ptr %ds4_bt_poll_interval to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ds4_bt_poll_interval, align 4
  %14 = or i8 %13, -64
  %arrayidx6 = getelementptr i8, ptr %3, i32 3
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %14, %if.else ], [ 7, %if.then ]
  %offset.0 = phi i32 [ 6, %if.else ], [ 4, %if.then ]
  %16 = getelementptr i8, ptr %3, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %16, align 1
  %right = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 19
  %18 = ptrtoint ptr %right to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %right, align 1
  %inc = or i32 %offset.0, 1
  %arrayidx7 = getelementptr i8, ptr %3, i32 %offset.0
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx7, align 1
  %left = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 18
  %21 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %left, align 4
  %arrayidx9 = getelementptr i8, ptr %3, i32 %inc
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 3
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool11.not = icmp eq i8 %25, 0
  br i1 %tobool11.not, label %if.end.if.end26_crit_edge, label %if.then12

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %inc8 = add nuw nsw i32 %offset.0, 2
  %led_state = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 26
  %26 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %led_state, align 4
  %inc15 = add nuw nsw i32 %offset.0, 3
  %arrayidx16 = getelementptr i8, ptr %3, i32 %inc8
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 1
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx18, align 1
  %inc19 = add nuw nsw i32 %offset.0, 4
  %arrayidx20 = getelementptr i8, ptr %3, i32 %inc15
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 2
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx22, align 2
  %arrayidx24 = getelementptr i8, ptr %3, i32 %inc19
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx24, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then12, %if.end.if.end26_crit_edge
  %offset.1 = add nuw nsw i32 %offset.0, 5
  %arrayidx27 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 27, i32 3
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx27, align 1
  %inc28 = add nuw nsw i32 %offset.0, 6
  %arrayidx29 = getelementptr i8, ptr %3, i32 %offset.1
  %37 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 28, i32 3
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx30, align 1
  %arrayidx32 = getelementptr i8, ptr %3, i32 %inc28
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx32, align 1
  %41 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %quirks, align 4
  %and34 = and i32 %42, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else37, label %if.then36

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef %3, i32 noundef 32) #13
  br label %if.end42

if.else37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bthdr) #13
  %43 = ptrtoint ptr %bthdr to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -94, ptr %bthdr, align 1
  %call38 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %bthdr, i32 noundef 1) #18
  %call39 = call i32 @crc32_le(i32 noundef %call38, ptr noundef %3, i32 noundef 74) #18
  %neg = xor i32 %call39, -1
  %arrayidx40 = getelementptr i8, ptr %3, i32 74
  %44 = call i32 @llvm.bswap.i32(i32 %neg) #13
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %arrayidx40, align 1
  %call41 = call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef %3, i32 noundef 78) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bthdr) #13
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @motion_send_output_report(ptr nocapture noundef readonly %sc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %output_report_dmabuf = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 17
  %2 = ptrtoint ptr %output_report_dmabuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_report_dmabuf, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 48)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %3, align 1
  %led_state = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 26
  %7 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %led_state, align 4
  %r = getelementptr inbounds %struct.motion_output_report_02, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %r, align 1
  %arrayidx3 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 1
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %g = getelementptr inbounds %struct.motion_output_report_02, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %g to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %g, align 1
  %arrayidx5 = getelementptr %struct.sony_sc, ptr %sc, i32 0, i32 26, i32 2
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5, align 2
  %b = getelementptr inbounds %struct.motion_output_report_02, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %b, align 1
  %right = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 19
  %16 = ptrtoint ptr %right to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %right, align 1
  %left = getelementptr inbounds %struct.sony_sc, ptr %sc, i32 0, i32 18
  %18 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %left, align 4
  %20 = tail call i8 @llvm.umax.i8(i8 %17, i8 %19)
  %rumble = getelementptr inbounds %struct.motion_output_report_02, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %rumble to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rumble, align 1
  %call = tail call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef %3, i32 noundef 49) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sony_state_worker(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -128
  %send_output_report = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %send_output_report to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_output_report, align 4
  tail call void %1(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_validate_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_led_get_brightness(ptr noundef readonly %led) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %led_count = getelementptr inbounds %struct.sony_sc, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %led_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %led_count, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp22.not = icmp eq i8 %7, 0
  br i1 %cmp22.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.146) #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 5, i32 %n.023
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %9, %led
  br i1 %cmp4, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx7 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 26, i32 %n.023
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %n.023, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv8, %if.then6 ], [ 0, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sony_led_set_brightness(ptr noundef readonly %led, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.146) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks = getelementptr inbounds %struct.sony_sc, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %led_count = getelementptr inbounds %struct.sony_sc, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %led_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_count, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp56.not = icmp eq i8 %9, 0
  br i1 %cmp56.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 5, i32 %n.057
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp6 = icmp eq ptr %11, %led
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx9 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 26, i32 %n.057
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %value)
  %cmp11.not = icmp eq i32 %conv10, %value
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %arrayidx14 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 27, i32 %n.057
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false13.if.then21_crit_edge

lor.lhs.false13.if.then21_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %arrayidx18 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 28, i32 %n.057
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  br i1 %tobool20.not, label %lor.lhs.false17.for.inc_crit_edge, label %lor.lhs.false17.if.then21_crit_edge

lor.lhs.false17.if.then21_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false17.for.inc_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then21:                                        ; preds = %lor.lhs.false17.if.then21_crit_edge, %lor.lhs.false13.if.then21_crit_edge, %lor.lhs.false.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %conv22 = trunc i32 %value to i8
  %arrayidx24 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 26, i32 %n.057
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv22, ptr %arrayidx24, align 1
  %arrayidx26 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 27, i32 %n.057
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx26, align 1
  %arrayidx28 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 28, i32 %n.057
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx28, align 1
  tail call fastcc void @sony_set_leds(ptr noundef nonnull %5)
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.057, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then21, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_led_blink_set(ptr noundef readonly %led, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.146) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2550, i32 %7)
  %cmp = icmp ugt i32 %7, 2550
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2550, ptr %delay_on, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %9 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2550, i32 %10)
  %cmp5 = icmp ugt i32 %10, 2550
  br i1 %cmp5, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2550, ptr %delay_off, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %12 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  %14 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 500, ptr %delay_off, align 4
  %17 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 500, ptr %delay_on, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %18 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay_on, align 4
  %div = udiv i32 %19, 10
  %conv = trunc i32 %div to i8
  %20 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay_off, align 4
  %div12 = udiv i32 %21, 10
  %conv13 = trunc i32 %div12 to i8
  %led_count = getelementptr inbounds %struct.sony_sc, ptr %5, i32 0, i32 29
  %22 = ptrtoint ptr %led_count to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %led_count, align 4
  %conv14 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp1576.not = icmp eq i8 %23, 0
  br i1 %cmp1576.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %n.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 5, i32 %n.077
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %cmp17 = icmp eq ptr %25, %led
  br i1 %cmp17, label %if.end26, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %n.077, 1
  %exitcond.not = icmp eq i32 %inc, %conv14
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %arrayidx28 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 27, i32 %n.077
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %conv)
  %cmp30.not = icmp eq i8 %27, %conv
  br i1 %cmp30.not, label %lor.lhs.false, label %if.end26.if.then37_crit_edge

if.end26.if.then37_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end26
  %arrayidx33 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 28, i32 %n.077
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %conv13)
  %cmp35.not = icmp eq i8 %29, %conv13
  br i1 %cmp35.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end26.if.then37_crit_edge
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %arrayidx28, align 1
  %arrayidx41 = getelementptr %struct.sony_sc, ptr %5, i32 0, i32 28, i32 %n.077
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv13, ptr %arrayidx41, align 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #13
  %defer_initialization.i = getelementptr inbounds %struct.sony_sc, ptr %5, i32 0, i32 23
  %32 = ptrtoint ptr %defer_initialization.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %defer_initialization.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then37.sony_schedule_work.exit_crit_edge

if.then37.sony_schedule_work.exit_crit_edge:      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

land.lhs.true.i:                                  ; preds = %if.then37
  %state_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %5, i32 0, i32 22
  %34 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %state_worker_initialized.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool6.not.i = icmp eq i8 %35, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.sony_schedule_work.exit_crit_edge, label %if.then.i

land.lhs.true.i.sony_schedule_work.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i = getelementptr inbounds %struct.sony_sc, ptr %5, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %state_worker.i) #13
  br label %sony_schedule_work.exit

sony_schedule_work.exit:                          ; preds = %if.then.i, %land.lhs.true.i.sony_schedule_work.exit_crit_edge, %if.then37.sony_schedule_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %sony_schedule_work.exit, %lor.lhs.false.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sony_schedule_work.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #13
  %battery_capacity6 = getelementptr inbounds %struct.sony_sc, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %battery_capacity6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %battery_capacity6, align 1
  %battery_status7 = getelementptr inbounds %struct.sony_sc, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %battery_status7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %battery_status7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call3) #13
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.epilog.sink.split_crit_edge
    i32 66, label %sw.bb9
    i32 47, label %sw.bb10
    i32 0, label %sw.bb12
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv11 = zext i8 %1 to i32
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb12, %sw.bb10, %sw.bb9, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %3, %sw.bb12 ], [ %conv11, %sw.bb10 ], [ 2, %sw.bb9 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sony_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i14 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i14, align 4
  %4 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %5)
  %cmp.not = icmp eq i16 %5, 80
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 4
  %8 = lshr i16 %7, 8
  %conv4 = trunc i16 %8 to i8
  %left = getelementptr inbounds %struct.sony_sc, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %left to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %left, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %weak_magnitude, align 2
  %12 = lshr i16 %11, 8
  %conv8 = trunc i16 %12 to i8
  %right = getelementptr inbounds %struct.sony_sc, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %right to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %right, align 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %defer_initialization.i = getelementptr inbounds %struct.sony_sc, ptr %3, i32 0, i32 23
  %14 = ptrtoint ptr %defer_initialization.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %defer_initialization.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.sony_schedule_work.exit_crit_edge

if.end.sony_schedule_work.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

land.lhs.true.i:                                  ; preds = %if.end
  %state_worker_initialized.i = getelementptr inbounds %struct.sony_sc, ptr %3, i32 0, i32 22
  %16 = ptrtoint ptr %state_worker_initialized.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %state_worker_initialized.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not.i = icmp eq i8 %17, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.sony_schedule_work.exit_crit_edge, label %if.then.i

land.lhs.true.i.sony_schedule_work.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sony_schedule_work.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %state_worker.i = getelementptr inbounds %struct.sony_sc, ptr %3, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %state_worker.i) #13
  br label %sony_schedule_work.exit

sony_schedule_work.exit:                          ; preds = %if.then.i, %land.lhs.true.i.sony_schedule_work.exit_crit_edge, %if.end.sony_schedule_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %sony_schedule_work.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !73, !75, !76, !78, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !120, !121, !122, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !198, !200, !201, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !225, !227, !228, !229, !230, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !250, !252, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !271, !272, !273, !274, !276, !277, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !309, !311, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !326, !328, !329, !330, !331, !333, !335, !336, !337, !338, !340, !341, !343, !344}
!llvm.module.flags = !{!345, !346, !347, !348, !349, !350, !351, !352}
!llvm.ident = !{!353}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-sony.c", i32 3243, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sony_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sony_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_hid_sony__244_3248_sony_init6, !7, !"__initcall__kmod_hid_sony__244_3248_sony_init6", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-sony.c", i32 3248, i32 1}
!8 = !{ptr @__exitcall_sony_exit, !9, !"__exitcall_sony_exit", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-sony.c", i32 3249, i32 1}
!10 = !{ptr @__UNIQUE_ID_file245, !11, !"__UNIQUE_ID_file245", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-sony.c", i32 3251, i32 1}
!12 = !{ptr @__UNIQUE_ID_license246, !11, !"__UNIQUE_ID_license246", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-sony.c", i32 3218, i32 22}
!15 = !{ptr @sony_driver, !16, !"sony_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-sony.c", i32 3217, i32 26}
!17 = !{ptr @sony_devices, !18, !"sony_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-sony.c", i32 3147, i32 35}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-sony.c", i32 2985, i32 26}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-sony.c", i32 2988, i32 26}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-sony.c", i32 2989, i32 26}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-sony.c", i32 2994, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sony_probe._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @sony_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @sony_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-sony.c", i32 2998, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-sony.c", i32 3006, i32 3}
!37 = !{ptr @sony_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sony_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-sony.c", i32 3026, i32 3}
!41 = !{ptr @sony_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sony_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-sony.c", i32 3039, i32 3}
!45 = !{ptr @sony_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sony_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-sony.c", i32 3065, i32 4}
!49 = !{ptr @sony_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sony_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @sony_probe.__key.24, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-sony.c", i32 3069, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-sony.c", i32 641, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ghl_magic_poke_cb._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ghl_magic_poke_cb._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"ghl_ps3wiiu_magic_data", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-sony.c", i32 100, i32 19}
!61 = !{ptr @ghl_ps4_magic_data, !62, !"ghl_ps4_magic_data", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-sony.c", i32 107, i32 19}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-sony.c", i32 653, i32 3}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ghl_magic_poke._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ghl_magic_poke._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-sony.c", i32 737, i32 8}
!70 = !{ptr @dev_attr_bt_poll_interval, !69, !"dev_attr_bt_poll_interval", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-sony.c", i32 710, i32 34}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-sony.c", i32 750, i32 8}
!75 = !{ptr @dev_attr_firmware_version, !74, !"dev_attr_firmware_version", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-sony.c", i32 747, i32 34}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-sony.c", i32 762, i32 8}
!80 = !{ptr @dev_attr_hardware_version, !79, !"dev_attr_hardware_version", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-sony.c", i32 538, i32 8}
!83 = !{ptr @sony_dev_list_lock, !82, !"sony_dev_list_lock", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-sony.c", i32 1367, i32 4}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sony_raw_event.__UNIQUE_ID_ddebug236, !85, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-sony.c", i32 1398, i32 4}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @sony_raw_event._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @sony_raw_event._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-sony.c", i32 1413, i32 4}
!96 = !{ptr @sony_raw_event._entry.41, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sony_raw_event._entry_ptr.43, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @sixaxis_parse_report.sixaxis_battery_capacity, !99, !"sixaxis_battery_capacity", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-sony.c", i32 991, i32 18}
!100 = !{ptr @ds4_hat_mapping, !101, !"ds4_hat_mapping", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-sony.c", i32 456, i32 38}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-sony.c", i32 958, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sony_report_fixup._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @sony_report_fixup._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-sony.c", i32 980, i32 3}
!109 = !{ptr @sony_report_fixup._entry.46, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @sony_report_fixup._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @motion_rdesc, !112, !"motion_rdesc", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-sony.c", i32 112, i32 11}
!113 = !{ptr @ps3remote_rdesc, !114, !"ps3remote_rdesc", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-sony.c", i32 208, i32 11}
!115 = !{ptr @buzz_keymap, !116, !"buzz_keymap", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-sony.c", i32 330, i32 27}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!119 = !{ptr @hid_map_usage._rs, !118, !"_rs", i1 false, i1 false}
!120 = !{ptr @__func__.hid_map_usage, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @hid_map_usage._entry, !118, !"_entry", i1 false, i1 false}
!124 = !{ptr @hid_map_usage._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @ps3remote_keymap_joypad_buttons, !126, !"ps3remote_keymap_joypad_buttons", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-sony.c", i32 274, i32 27}
!127 = !{ptr @ps3remote_keymap_remote_buttons, !128, !"ps3remote_keymap_remote_buttons", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-sony.c", i32 294, i32 27}
!129 = !{ptr @navigation_keymap, !130, !"navigation_keymap", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-sony.c", i32 384, i32 27}
!131 = !{ptr @navigation_absmap, !132, !"navigation_absmap", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-sony.c", i32 375, i32 27}
!133 = !{ptr @sixaxis_keymap, !134, !"sixaxis_keymap", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-sony.c", i32 411, i32 27}
!135 = !{ptr @sixaxis_absmap, !136, !"sixaxis_absmap", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-sony.c", i32 404, i32 27}
!137 = !{ptr @ds4_keymap, !138, !"ds4_keymap", i1 false, i1 false}
!138 = !{!"../drivers/hid/hid-sony.c", i32 440, i32 27}
!139 = !{ptr @ds4_absmap, !140, !"ds4_absmap", i1 false, i1 false}
!140 = !{!"../drivers/hid/hid-sony.c", i32 431, i32 27}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hid/hid-sony.c", i32 2748, i32 3}
!143 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sony_input_configured._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @sony_input_configured._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hid/hid-sony.c", i32 2758, i32 3}
!148 = !{ptr @sony_input_configured._entry.54, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @sony_input_configured._entry_ptr.56, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hid/hid-sony.c", i32 2785, i32 4}
!152 = !{ptr @sony_input_configured._entry.57, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sony_input_configured._entry_ptr.59, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @sony_input_configured._entry.60, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/hid/hid-sony.c", i32 2799, i32 4}
!156 = !{ptr @sony_input_configured._entry_ptr.61, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @sony_input_configured._entry.62, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/hid/hid-sony.c", i32 2817, i32 4}
!159 = !{ptr @sony_input_configured._entry_ptr.63, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hid/hid-sony.c", i32 2823, i32 4}
!162 = !{ptr @sony_input_configured._entry.64, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @sony_input_configured._entry_ptr.66, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @sony_input_configured._entry.67, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/hid/hid-sony.c", i32 2838, i32 4}
!166 = !{ptr @sony_input_configured._entry_ptr.68, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @sony_input_configured._entry.69, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/hid/hid-sony.c", i32 2844, i32 4}
!169 = !{ptr @sony_input_configured._entry_ptr.70, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-sony.c", i32 2853, i32 4}
!172 = !{ptr @sony_input_configured._entry.71, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @sony_input_configured._entry_ptr.73, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-sony.c", i32 2859, i32 4}
!176 = !{ptr @sony_input_configured._entry.74, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @sony_input_configured._entry_ptr.76, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-sony.c", i32 2865, i32 4}
!180 = !{ptr @sony_input_configured._entry.77, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @sony_input_configured._entry_ptr.79, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/hid-sony.c", i32 2872, i32 4}
!184 = !{ptr @sony_input_configured._entry.80, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @sony_input_configured._entry_ptr.82, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hid/hid-sony.c", i32 2883, i32 4}
!188 = !{ptr @sony_input_configured._entry.83, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @sony_input_configured._entry_ptr.85, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @sony_input_configured._entry.86, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/hid/hid-sony.c", i32 2891, i32 4}
!192 = !{ptr @sony_input_configured._entry_ptr.87, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hid/hid-sony.c", i32 2900, i32 5}
!195 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @sony_input_configured._entry.88, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @sony_input_configured._entry_ptr.91, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @sony_input_configured.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/hid/hid-sony.c", i32 2906, i32 4}
!200 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @sony_input_configured._entry.93, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/hid/hid-sony.c", i32 2920, i32 4}
!203 = !{ptr @sony_input_configured._entry_ptr.94, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hid/hid-sony.c", i32 2946, i32 4}
!206 = !{ptr @sony_input_configured._entry.95, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @sony_input_configured._entry_ptr.97, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hid/hid-sony.c", i32 2612, i32 4}
!210 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @sony_check_add._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @sony_check_add._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hid/hid-sony.c", i32 2630, i32 4}
!215 = !{ptr @sony_check_add._entry.100, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @sony_check_add._entry_ptr.102, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hid/hid-sony.c", i32 2638, i32 5}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hid/hid-sony.c", i32 2655, i32 4}
!221 = !{ptr @sony_check_add._entry.104, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @sony_check_add._entry_ptr.106, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/hid/hid-sony.c", i32 2586, i32 3}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hid/hid-sony.c", i32 2549, i32 5}
!227 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @sony_check_add_dev_list._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @sony_check_add_dev_list._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @sony_device_list, !231, !"sony_device_list", i1 false, i1 false}
!231 = !{!"../drivers/hid/hid-sony.c", i32 539, i32 8}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hid/hid-sony.c", i32 1648, i32 3}
!234 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @sixaxis_set_operational_usb._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @sixaxis_set_operational_usb._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hid/hid-sony.c", i32 1659, i32 3}
!239 = !{ptr @sixaxis_set_operational_usb._entry.112, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @sixaxis_set_operational_usb._entry_ptr.114, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hid/hid-sony.c", i32 1672, i32 3}
!243 = !{ptr @sixaxis_set_operational_usb._entry.115, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @sixaxis_set_operational_usb._entry_ptr.117, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @sony_init_output_report.__key, !246, !"__key", i1 false, i1 false}
!246 = !{!"../drivers/hid/hid-sony.c", i32 2720, i32 3}
!247 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @sixaxis_send_output_report.default_report, !249, !"default_report", i1 false, i1 false}
!249 = !{!"../drivers/hid/hid-sony.c", i32 2217, i32 46}
!250 = !{ptr @sixaxis_set_operational_bt.report, !251, !"report", i1 false, i1 false}
!251 = !{!"../drivers/hid/hid-sony.c", i32 1684, i32 18}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hid/hid-sony.c", i32 1582, i32 26}
!254 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hid/hid-sony.c", i32 1745, i32 6}
!256 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @dualshock4_get_calibration_data._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @dualshock4_get_calibration_data._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hid/hid-sony.c", i32 1778, i32 5}
!261 = !{ptr @dualshock4_get_calibration_data._entry.122, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @dualshock4_get_calibration_data._entry_ptr.124, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hid/hid-sony.c", i32 1781, i32 6}
!265 = !{ptr @dualshock4_get_calibration_data._entry.125, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @dualshock4_get_calibration_data._entry_ptr.127, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.128, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hid/hid-sony.c", i32 1518, i32 26}
!269 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hid/hid-sony.c", i32 1881, i32 3}
!271 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @dualshock4_calibration_work._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @dualshock4_calibration_work._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.132, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hid/hid-sony.c", i32 1884, i32 3}
!276 = !{ptr @dualshock4_calibration_work._entry.131, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @dualshock4_calibration_work._entry_ptr.133, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/hid/hid-sony.c", i32 2119, i32 47}
!280 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/hid/hid-sony.c", i32 2119, i32 54}
!282 = !{ptr @.str.136, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hid/hid-sony.c", i32 2119, i32 63}
!284 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/hid/hid-sony.c", i32 2120, i32 9}
!286 = !{ptr @sony_leds_init.ds4_name_str, !287, !"ds4_name_str", i1 false, i1 false}
!287 = !{!"../drivers/hid/hid-sony.c", i32 2119, i32 28}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hid/hid-sony.c", i32 2130, i32 14}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/hid/hid-sony.c", i32 2142, i32 14}
!292 = distinct !{null, !293, !"navigation_leds", i1 false, i1 false}
!293 = !{!"../drivers/hid/hid-sony.c", i32 2150, i32 19}
!294 = !{ptr @.str.140, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hid/hid-sony.c", i32 2157, i32 14}
!296 = !{ptr @.str.141, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hid/hid-sony.c", i32 2183, i32 4}
!298 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @sony_leds_init._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @sony_leds_init._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.144, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/hid/hid-sony.c", i32 2207, i32 4}
!303 = !{ptr @sony_leds_init._entry.143, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @sony_leds_init._entry_ptr.145, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @dualshock4_set_leds_from_id.color_code, !306, !"color_code", i1 false, i1 false}
!306 = !{!"../drivers/hid/hid-sony.c", i32 1947, i32 18}
!307 = !{ptr @sixaxis_set_leds_from_id.sixaxis_leds, !308, !"sixaxis_leds", i1 false, i1 false}
!308 = !{!"../drivers/hid/hid-sony.c", i32 1920, i32 18}
!309 = !{ptr @.str.146, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/hid/hid-sony.c", i32 2050, i32 3}
!311 = !{ptr @.str.147, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @sony_led_get_brightness._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @sony_led_get_brightness._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.148, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/hid/hid-sony.c", i32 2009, i32 3}
!316 = !{ptr @sony_led_set_brightness._entry, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @sony_led_set_brightness._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.149, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/hid/hid-sony.c", i32 2072, i32 3}
!320 = !{ptr @sony_led_blink_set._entry, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @sony_led_blink_set._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.150, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/hid/hid-sony.c", i32 2479, i32 3}
!324 = !{ptr @.str.151, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/hid/hid-sony.c", i32 2480, i32 3}
!326 = !{ptr @.str.152, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/hid/hid-sony.c", i32 2505, i32 3}
!328 = !{ptr @.str.153, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @sony_battery_probe._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @sony_battery_probe._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @sony_battery_props, !332, !"sony_battery_props", i1 false, i1 false}
!332 = !{!"../drivers/hid/hid-sony.c", i32 461, i32 35}
!333 = !{ptr @.str.154, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/hid/hid-sony.c", i32 2423, i32 3}
!335 = !{ptr @.str.155, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @sony_init_ff._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @sony_init_ff._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.156, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/hid/hid-sony.c", i32 540, i32 8}
!340 = !{ptr @sony_device_id_allocator, !339, !"sony_device_id_allocator", i1 false, i1 false}
!341 = !{ptr @.str.157, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/hid/hid-sony.c", i32 3236, i32 2}
!343 = !{ptr @sony_init._entry, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @sony_init._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{i32 1, !"wchar_size", i32 2}
!346 = !{i32 1, !"min_enum_size", i32 4}
!347 = !{i32 8, !"branch-target-enforcement", i32 0}
!348 = !{i32 8, !"sign-return-address", i32 0}
!349 = !{i32 8, !"sign-return-address-all", i32 0}
!350 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!351 = !{i32 7, !"uwtable", i32 1}
!352 = !{i32 7, !"frame-pointer", i32 2}
!353 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!354 = !{i8 0, i8 2}
!355 = !{i64 2148374865, i64 2148374870, i64 2148374883, i64 2148374927, i64 2148374961, i64 2148374982}
!356 = !{!"branch_weights", i32 1, i32 2000}
!357 = !{!"auto-init"}
