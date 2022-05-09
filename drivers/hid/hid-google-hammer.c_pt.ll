; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-google-hammer.c_pt.bc'
source_filename = "../drivers/hid/hid-google-hammer.c"
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cbas_ec = type { ptr, ptr, i8, i8, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hammer_kbd_leds = type { %struct.led_classdev, ptr, [108 x i8], [2 x i8], [126 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_mkbp_info = type { i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_google_hammer__228_633_hammer_init6 = internal global ptr @hammer_init, section ".initcall6.init", align 4
@hammer_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @hammer_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @hammer_probe, ptr @hammer_remove, ptr null, ptr null, ptr null, ptr @hammer_event, ptr null, ptr null, ptr @hammer_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@cbas_ec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cbas_ec_probe, ptr @cbas_ec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cbas_ec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cbas_ec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hammer_exit = internal global ptr @hammer_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [53 x i8] c"hid_google_hammer.file=drivers/hid/hid-google-hammer\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [30 x i8] c"hid_google_hammer.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid_google_hammer\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hammer\00", [25 x i8] zeroinitializer }, align 32
@hammer_devices = internal constant { [10 x %struct.hid_device_id], [32 x i8] } { [10 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20560, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20567, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20514, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20541, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20540, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20548, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20523, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20525, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6353, i32 20528, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hammer_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register keyboard backlight: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hammer_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hid/hid-google-hammer.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hammer_probe._entry_ptr = internal global ptr @hammer_probe._entry, section ".printk_index", align 4
@hammer_get_folded_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unable to read base folded state: %d (expected %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hammer_get_folded_state\00", [40 x i8] zeroinitializer }, align 32
@hammer_get_folded_state._entry_ptr = internal global ptr @hammer_get_folded_state._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cbas_ec_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@cbas_ec = internal global { %struct.cbas_ec, [40 x i8] } zeroinitializer, align 32
@hammer_folded_event.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hammer_folded_event\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: base: %d, folded: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cbas_ec_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hammer::kbd_backlight\00", [42 x i8] zeroinitializer }, align 32
@hammer_kbd_brightness_set_blocking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 320, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: device not resumed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hammer_kbd_brightness_set_blocking\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hammer_kbd_brightness_set_blocking._entry_ptr = internal global ptr @hammer_kbd_brightness_set_blocking._entry, section ".printk_index", align 4
@hammer_kbd_brightness_set_blocking._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.4, i32 332, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set keyboard backlight: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hammer_kbd_brightness_set_blocking._entry_ptr.18 = internal global ptr @hammer_kbd_brightness_set_blocking._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cbas_ec\00", [24 x i8] zeroinitializer }, align 32
@cbas_ec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-cbas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cbas_ec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @cbas_ec_resume, ptr null, ptr @cbas_ec_resume, ptr null, ptr @cbas_ec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cbas_ec_reglock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cbas_ec_reglock, i64 52), ptr getelementptr (i8, ptr @cbas_ec_reglock, i64 52) }, ptr @cbas_ec_reglock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cbas_ec_reglock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cbas_ec_reglock\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Whiskers Tablet Mode Switch\00", [36 x i8] zeroinitializer }, align 32
@__cbas_ec_probe._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 202, ptr @.str.15, ptr @.str.6 }, align 1
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot register input device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__cbas_ec_probe\00", [16 x i8] zeroinitializer }, align 32
@__cbas_ec_probe._entry_ptr = internal global ptr @__cbas_ec_probe._entry, section ".printk_index", align 4
@__cbas_ec_probe._entry.25 = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 209, ptr @.str.15, ptr @.str.6 }, align 1
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot query base state: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__cbas_ec_probe._entry_ptr.27 = internal global ptr @__cbas_ec_probe._entry.25, section ".printk_index", align 4
@__cbas_ec_probe.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.10, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__cbas_ec_probe._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 229, ptr @.str.15, ptr @.str.6 }, align 1
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot register notifier: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__cbas_ec_probe._entry_ptr.30 = internal global ptr @__cbas_ec_probe._entry.28, section ".printk_index", align 4
@cbas_ec_query_base._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 79, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wrong result size: %d != %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cbas_ec_query_base\00", [45 x i8] zeroinitializer }, align 32
@cbas_ec_query_base._entry_ptr = internal global ptr @cbas_ec_query_base._entry, section ".printk_index", align 4
@cbas_ec_notify.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cbas_ec_notify\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: base: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@cbas_ec_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to fetch base state on resume: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cbas_ec_resume\00", [17 x i8] zeroinitializer }, align 32
@cbas_ec_resume._entry_ptr = internal global ptr @cbas_ec_resume._entry, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"hammer_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 608, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"cbas_ec_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 284, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 625, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 609, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"hammer_devices\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 585, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 546, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 495, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"cbas_ec_lock\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [8 x i8] c"cbas_ec\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 43, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 417, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 44, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 350, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 320, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 331, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 288, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"cbas_ec_of_match\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 277, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"cbas_ec_pm_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 166, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"cbas_ec_reglock\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 45, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 194, i32 16 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 201, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 209, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 229, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 78, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 103, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [35 x i8] c"../drivers/hid/hid-google-hammer.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 143, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__cbas_ec_probe._entry, ptr @__cbas_ec_probe._entry.25, ptr @__cbas_ec_probe._entry.28, ptr @__cbas_ec_probe._entry_ptr, ptr @__cbas_ec_probe._entry_ptr.27, ptr @__cbas_ec_probe._entry_ptr.30, ptr @__exitcall_hammer_exit, ptr @__initcall__kmod_hid_google_hammer__228_633_hammer_init6, ptr @cbas_ec_query_base._entry, ptr @cbas_ec_query_base._entry_ptr, ptr @cbas_ec_resume._entry, ptr @cbas_ec_resume._entry_ptr, ptr @hammer_exit, ptr @hammer_get_folded_state._entry, ptr @hammer_get_folded_state._entry_ptr, ptr @hammer_kbd_brightness_set_blocking._entry, ptr @hammer_kbd_brightness_set_blocking._entry.16, ptr @hammer_kbd_brightness_set_blocking._entry_ptr, ptr @hammer_kbd_brightness_set_blocking._entry_ptr.18, ptr @hammer_probe._entry, ptr @hammer_probe._entry_ptr, ptr @hammer_driver, ptr @cbas_ec_driver, ptr @.str, ptr @.str.1, ptr @hammer_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cbas_ec_lock, ptr @cbas_ec, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @cbas_ec_of_match, ptr @cbas_ec_pm_ops, ptr @cbas_ec_reglock, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hammer_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hammer_devices to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hammer_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hammer_get_folded_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hammer_kbd_brightness_set_blocking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hammer_kbd_brightness_set_blocking._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec_reglock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec_query_base._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbas_ec_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hammer_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cbas_ec_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__hid_register_driver(ptr noundef nonnull @hammer_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cbas_ec_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hammer_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hid_unregister_driver(ptr noundef nonnull @hammer_driver) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cbas_ec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hammer_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %report_list.i.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %report_list.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %report.08.i.i = load ptr, ptr %report_list.i.i, align 4
  %cmp.not9.i.i = icmp eq ptr %report.08.i.i, %report_list.i.i
  br i1 %cmp.not9.i.i, label %if.end4.if.end11_crit_edge, label %if.end4.for.body.i.i_crit_edge

if.end4.for.body.i.i_crit_edge:                   ; preds = %if.end4
  br label %for.body.i.i

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.i.i:                                     ; preds = %for.inc20.i.i.for.body.i.i_crit_edge, %if.end4.for.body.i.i_crit_edge
  %report.010.i.i = phi ptr [ %report.0.i.i, %for.inc20.i.i.for.body.i.i_crit_edge ], [ %report.08.i.i, %if.end4.for.body.i.i_crit_edge ]
  %application2.i.i = getelementptr inbounds %struct.hid_report, ptr %report.010.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %application2.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %application2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65542, i32 %2)
  %cmp3.not.i.i = icmp eq i32 %2, 65542
  br i1 %cmp3.not.i.i, label %for.cond4.preheader.i.i, label %for.body.i.i.for.inc20.i.i_crit_edge

for.body.i.i.for.inc20.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i

for.cond4.preheader.i.i:                          ; preds = %for.body.i.i
  %maxfield.i.i = getelementptr inbounds %struct.hid_report, ptr %report.010.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %maxfield.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp56.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp56.not.i.i, label %for.cond4.preheader.i.i.for.inc20.i.i_crit_edge, label %for.cond4.preheader.i.i.for.body6.i.i_crit_edge

for.cond4.preheader.i.i.for.body6.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  br label %for.body6.i.i

for.cond4.preheader.i.i.for.inc20.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i

for.body6.i.i:                                    ; preds = %for.inc17.critedge.i.i.for.body6.i.i_crit_edge, %for.cond4.preheader.i.i.for.body6.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc18.i.i, %for.inc17.critedge.i.i.for.body6.i.i_crit_edge ], [ 0, %for.cond4.preheader.i.i.for.body6.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.hid_report, ptr %report.010.i.i, i32 0, i32 5, i32 %i.07.i.i
  %5 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx8.i.i, align 4
  %maxusage.i.i = getelementptr inbounds %struct.hid_field, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %maxusage.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxusage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp104.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp104.not.i.i, label %for.body6.i.i.for.inc17.critedge.i.i_crit_edge, label %for.body11.lr.ph.i.i

for.body6.i.i.for.inc17.critedge.i.i_crit_edge:   ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.critedge.i.i

for.body11.lr.ph.i.i:                             ; preds = %for.body6.i.i
  %usage12.i.i = getelementptr inbounds %struct.hid_field, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %usage12.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usage12.i.i, align 4
  br label %for.body11.i.i

for.cond9.i.i:                                    ; preds = %for.body11.i.i
  %inc.i.i = add nuw i32 %j.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.cond9.i.i.for.inc17.critedge.i.i_crit_edge, label %for.cond9.i.i.for.body11.i.i_crit_edge

for.cond9.i.i.for.body11.i.i_crit_edge:           ; preds = %for.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i.i

for.cond9.i.i.for.inc17.critedge.i.i_crit_edge:   ; preds = %for.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.critedge.i.i

for.body11.i.i:                                   ; preds = %for.cond9.i.i.for.body11.i.i_crit_edge, %for.body11.lr.ph.i.i
  %j.05.i.i = phi i32 [ 0, %for.body11.lr.ph.i.i ], [ %inc.i.i, %for.cond9.i.i.for.body11.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.hid_usage, ptr %10, i32 %j.05.i.i
  %11 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3080167, i32 %12)
  %cmp14.i.i = icmp eq i32 %12, -3080167
  br i1 %cmp14.i.i, label %if.then6, label %for.cond9.i.i

for.inc17.critedge.i.i:                           ; preds = %for.cond9.i.i.for.inc17.critedge.i.i_crit_edge, %for.body6.i.i.for.inc17.critedge.i.i_crit_edge
  %inc18.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond14.not.i.i = icmp eq i32 %inc18.i.i, %4
  br i1 %exitcond14.not.i.i, label %for.inc17.critedge.i.i.for.inc20.i.i_crit_edge, label %for.inc17.critedge.i.i.for.body6.i.i_crit_edge

for.inc17.critedge.i.i.for.body6.i.i_crit_edge:   ; preds = %for.inc17.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.i

for.inc17.critedge.i.i.for.inc20.i.i_crit_edge:   ; preds = %for.inc17.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i

for.inc20.i.i:                                    ; preds = %for.inc17.critedge.i.i.for.inc20.i.i_crit_edge, %for.cond4.preheader.i.i.for.inc20.i.i_crit_edge, %for.body.i.i.for.inc20.i.i_crit_edge
  %13 = ptrtoint ptr %report.010.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %report.0.i.i = load ptr, ptr %report.010.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %report.0.i.i, %report_list.i.i
  br i1 %cmp.not.i.i, label %for.inc20.i.i.if.end11_crit_edge, label %for.inc20.i.i.for.body.i.i_crit_edge

for.inc20.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc20.i.i.if.end11_crit_edge:                 ; preds = %for.inc20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %for.body11.i.i
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 8
  %or = or i32 %15, 1024
  store i32 %or, ptr %quirks, align 8
  %call7 = tail call i32 @hid_hw_open(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %report_id_hash.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 2
  %16 = ptrtoint ptr %report_id_hash.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %report_id_hash.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end10.if.end11_crit_edge, label %lor.lhs.false.i

if.end10.if.end11_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

lor.lhs.false.i:                                  ; preds = %if.end10
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.end11_crit_edge, label %if.end.i

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.i:                                         ; preds = %lor.lhs.false.i
  %size.i.i = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %21, 7
  %div3.i.i = lshr i32 %sub.i.i, 3
  %id.i.i = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i51.i = icmp ne i32 %23, 0
  %conv.i.i = zext i1 %cmp.i51.i to i32
  %add1.i.i = add nuw nsw i32 %div3.i.i, %conv.i.i
  %add.i = add nuw nsw i32 %add1.i.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #10
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end11_crit_edge, label %if.end5.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end5.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i.i, align 4
  %conv.i = trunc i32 %25 to i8
  %type.i = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  %conv6.i = trunc i32 %27 to i8
  %call7.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %conv.i, ptr noundef nonnull %call9.i.i, i32 noundef %add.i, i8 noundef zeroext %conv6.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %add.i)
  %cmp8.not.i = icmp eq i32 %call7.i, %add.i
  br i1 %cmp8.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end5.i
  %28 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1354.not.i = icmp eq i32 %29, 0
  br i1 %cmp1354.not.i, label %for.cond.preheader.i.out.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %call7.i, i32 noundef %add.i) #11
  br label %out.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %a.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond.i.out.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.out.i_crit_edge:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %a.055.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.hid_report, ptr %17, i32 0, i32 5, i32 %a.055.i
  %30 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx16.i, align 4
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usage.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3080167, i32 %35)
  %cmp17.i = icmp eq i32 %35, -3080167
  br i1 %cmp17.i, label %cleanup.i, label %for.cond.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 1
  %report_offset.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 6
  %36 = ptrtoint ptr %report_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %report_offset.i, align 4
  %report_size.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 7
  %38 = ptrtoint ptr %report_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %report_size.i, align 4
  %call20.i = tail call i32 @hid_field_extract(ptr noundef %hdev, ptr noundef %add.ptr.i, i32 noundef %37, i32 noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.i = icmp ne i32 %call20.i, 0
  tail call fastcc void @hammer_folded_event(ptr noundef %hdev, i1 noundef zeroext %tobool21.i) #7
  br label %out.i

out.i:                                            ; preds = %cleanup.i, %for.cond.i.out.i_crit_edge, %do.end.i, %for.cond.preheader.i.out.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %if.end11

if.end11:                                         ; preds = %out.i, %if.end.i.if.end11_crit_edge, %lor.lhs.false.i.if.end11_crit_edge, %if.end10.if.end11_crit_edge, %for.inc20.i.i.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %report_list.i.i34 = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %40 = ptrtoint ptr %report_list.i.i34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %report.08.i.i35 = load ptr, ptr %report_list.i.i34, align 4
  %cmp.not9.i.i36 = icmp eq ptr %report.08.i.i35, %report_list.i.i34
  br i1 %cmp.not9.i.i36, label %if.end11.cleanup_crit_edge, label %if.end11.for.body.i.i40_crit_edge

if.end11.for.body.i.i40_crit_edge:                ; preds = %if.end11
  br label %for.body.i.i40

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i40:                                   ; preds = %for.inc20.i.i63.for.body.i.i40_crit_edge, %if.end11.for.body.i.i40_crit_edge
  %report.010.i.i37 = phi ptr [ %report.0.i.i61, %for.inc20.i.i63.for.body.i.i40_crit_edge ], [ %report.08.i.i35, %if.end11.for.body.i.i40_crit_edge ]
  %application2.i.i38 = getelementptr inbounds %struct.hid_report, ptr %report.010.i.i37, i32 0, i32 4
  %41 = ptrtoint ptr %application2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %application2.i.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65542, i32 %42)
  %cmp3.not.i.i39 = icmp eq i32 %42, 65542
  br i1 %cmp3.not.i.i39, label %for.cond4.preheader.i.i43, label %for.body.i.i40.for.inc20.i.i63_crit_edge

for.body.i.i40.for.inc20.i.i63_crit_edge:         ; preds = %for.body.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i63

for.cond4.preheader.i.i43:                        ; preds = %for.body.i.i40
  %maxfield.i.i41 = getelementptr inbounds %struct.hid_report, ptr %report.010.i.i37, i32 0, i32 6
  %43 = ptrtoint ptr %maxfield.i.i41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %maxfield.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp56.not.i.i42 = icmp eq i32 %44, 0
  br i1 %cmp56.not.i.i42, label %for.cond4.preheader.i.i43.for.inc20.i.i63_crit_edge, label %for.cond4.preheader.i.i43.for.body6.i.i48_crit_edge

for.cond4.preheader.i.i43.for.body6.i.i48_crit_edge: ; preds = %for.cond4.preheader.i.i43
  br label %for.body6.i.i48

for.cond4.preheader.i.i43.for.inc20.i.i63_crit_edge: ; preds = %for.cond4.preheader.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i63

for.body6.i.i48:                                  ; preds = %for.inc17.critedge.i.i60.for.body6.i.i48_crit_edge, %for.cond4.preheader.i.i43.for.body6.i.i48_crit_edge
  %i.07.i.i44 = phi i32 [ %inc18.i.i58, %for.inc17.critedge.i.i60.for.body6.i.i48_crit_edge ], [ 0, %for.cond4.preheader.i.i43.for.body6.i.i48_crit_edge ]
  %arrayidx8.i.i45 = getelementptr %struct.hid_report, ptr %report.010.i.i37, i32 0, i32 5, i32 %i.07.i.i44
  %45 = ptrtoint ptr %arrayidx8.i.i45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx8.i.i45, align 4
  %maxusage.i.i46 = getelementptr inbounds %struct.hid_field, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %maxusage.i.i46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %maxusage.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp104.not.i.i47 = icmp eq i32 %48, 0
  br i1 %cmp104.not.i.i47, label %for.body6.i.i48.for.inc17.critedge.i.i60_crit_edge, label %for.body11.lr.ph.i.i50

for.body6.i.i48.for.inc17.critedge.i.i60_crit_edge: ; preds = %for.body6.i.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.critedge.i.i60

for.body11.lr.ph.i.i50:                           ; preds = %for.body6.i.i48
  %usage12.i.i49 = getelementptr inbounds %struct.hid_field, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %usage12.i.i49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usage12.i.i49, align 4
  br label %for.body11.i.i57

for.cond9.i.i53:                                  ; preds = %for.body11.i.i57
  %inc.i.i51 = add nuw i32 %j.05.i.i54, 1
  %exitcond.not.i.i52 = icmp eq i32 %inc.i.i51, %48
  br i1 %exitcond.not.i.i52, label %for.cond9.i.i53.for.inc17.critedge.i.i60_crit_edge, label %for.cond9.i.i53.for.body11.i.i57_crit_edge

for.cond9.i.i53.for.body11.i.i57_crit_edge:       ; preds = %for.cond9.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i.i57

for.cond9.i.i53.for.inc17.critedge.i.i60_crit_edge: ; preds = %for.cond9.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.critedge.i.i60

for.body11.i.i57:                                 ; preds = %for.cond9.i.i53.for.body11.i.i57_crit_edge, %for.body11.lr.ph.i.i50
  %j.05.i.i54 = phi i32 [ 0, %for.body11.lr.ph.i.i50 ], [ %inc.i.i51, %for.cond9.i.i53.for.body11.i.i57_crit_edge ]
  %arrayidx13.i.i55 = getelementptr %struct.hid_usage, ptr %50, i32 %j.05.i.i54
  %51 = ptrtoint ptr %arrayidx13.i.i55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx13.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1310790, i32 %52)
  %cmp14.i.i56 = icmp eq i32 %52, 1310790
  br i1 %cmp14.i.i56, label %if.then13, label %for.cond9.i.i53

for.inc17.critedge.i.i60:                         ; preds = %for.cond9.i.i53.for.inc17.critedge.i.i60_crit_edge, %for.body6.i.i48.for.inc17.critedge.i.i60_crit_edge
  %inc18.i.i58 = add nuw i32 %i.07.i.i44, 1
  %exitcond14.not.i.i59 = icmp eq i32 %inc18.i.i58, %44
  br i1 %exitcond14.not.i.i59, label %for.inc17.critedge.i.i60.for.inc20.i.i63_crit_edge, label %for.inc17.critedge.i.i60.for.body6.i.i48_crit_edge

for.inc17.critedge.i.i60.for.body6.i.i48_crit_edge: ; preds = %for.inc17.critedge.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.i48

for.inc17.critedge.i.i60.for.inc20.i.i63_crit_edge: ; preds = %for.inc17.critedge.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i63

for.inc20.i.i63:                                  ; preds = %for.inc17.critedge.i.i60.for.inc20.i.i63_crit_edge, %for.cond4.preheader.i.i43.for.inc20.i.i63_crit_edge, %for.body.i.i40.for.inc20.i.i63_crit_edge
  %53 = ptrtoint ptr %report.010.i.i37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %report.0.i.i61 = load ptr, ptr %report.010.i.i37, align 4
  %cmp.not.i.i62 = icmp eq ptr %report.0.i.i61, %report_list.i.i34
  br i1 %cmp.not.i.i62, label %for.inc20.i.i63.cleanup_crit_edge, label %for.inc20.i.i63.for.body.i.i40_crit_edge

for.inc20.i.i63.for.body.i.i40_crit_edge:         ; preds = %for.inc20.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i40

for.inc20.i.i63.cleanup_crit_edge:                ; preds = %for.inc20.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %for.body11.i.i57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 640) #12
  %tobool.not.i65 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i65, label %if.then13.do.end_crit_edge, label %if.end.i67

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i67:                                       ; preds = %if.then13
  %hdev1.i = getelementptr inbounds %struct.hammer_kbd_leds, ptr %call7.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %hdev, ptr %hdev1.i, align 16
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.12, ptr %call7.i.i.i, align 128
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %call7.i.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 100, ptr %max_brightness.i, align 8
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %call7.i.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @hammer_kbd_brightness_set_blocking, ptr %brightness_set_blocking.i, align 8
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %call7.i.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 524288, ptr %flags.i, align 4
  %call6.i = tail call i32 @hammer_kbd_brightness_set_blocking(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #7
  %dev.i66 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev.i66, ptr noundef nonnull %call7.i.i.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %hammer_register_leds.exit, label %err_free_mem.i

err_free_mem.i:                                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end

hammer_register_leds.exit:                        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %60 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  br label %cleanup

do.end:                                           ; preds = %err_free_mem.i, %if.then13.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then13.do.end_crit_edge ], [ %call.i.i, %err_free_mem.i ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %hammer_register_leds.exit, %for.inc20.i.i63.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ 0, %hammer_register_leds.exit ], [ 0, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %for.inc20.i.i63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hammer_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list.i.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %report_list.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %report.08.i.i = load ptr, ptr %report_list.i.i, align 4
  %cmp.not9.i.i = icmp eq ptr %report.08.i.i, %report_list.i.i
  br i1 %cmp.not9.i.i, label %entry.if.end9_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.i.i:                                     ; preds = %for.inc20.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %report.010.i.i = phi ptr [ %report.0.i.i, %for.inc20.i.i.for.body.i.i_crit_edge ], [ %report.08.i.i, %entry.for.body.i.i_crit_edge ]
  %application2.i.i = getelementptr inbounds %struct.hid_report, ptr %report.010.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %application2.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %application2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65542, i32 %2)
  %cmp3.not.i.i = icmp eq i32 %2, 65542
  br i1 %cmp3.not.i.i, label %for.cond4.preheader.i.i, label %for.body.i.i.for.inc20.i.i_crit_edge

for.body.i.i.for.inc20.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i

for.cond4.preheader.i.i:                          ; preds = %for.body.i.i
  %maxfield.i.i = getelementptr inbounds %struct.hid_report, ptr %report.010.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %maxfield.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp56.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp56.not.i.i, label %for.cond4.preheader.i.i.for.inc20.i.i_crit_edge, label %for.cond4.preheader.i.i.for.body6.i.i_crit_edge

for.cond4.preheader.i.i.for.body6.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  br label %for.body6.i.i

for.cond4.preheader.i.i.for.inc20.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i

for.body6.i.i:                                    ; preds = %for.inc17.critedge.i.i.for.body6.i.i_crit_edge, %for.cond4.preheader.i.i.for.body6.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc18.i.i, %for.inc17.critedge.i.i.for.body6.i.i_crit_edge ], [ 0, %for.cond4.preheader.i.i.for.body6.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.hid_report, ptr %report.010.i.i, i32 0, i32 5, i32 %i.07.i.i
  %5 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx8.i.i, align 4
  %maxusage.i.i = getelementptr inbounds %struct.hid_field, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %maxusage.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxusage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp104.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp104.not.i.i, label %for.body6.i.i.for.inc17.critedge.i.i_crit_edge, label %for.body11.lr.ph.i.i

for.body6.i.i.for.inc17.critedge.i.i_crit_edge:   ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.critedge.i.i

for.body11.lr.ph.i.i:                             ; preds = %for.body6.i.i
  %usage12.i.i = getelementptr inbounds %struct.hid_field, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %usage12.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usage12.i.i, align 4
  br label %for.body11.i.i

for.cond9.i.i:                                    ; preds = %for.body11.i.i
  %inc.i.i = add nuw i32 %j.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.cond9.i.i.for.inc17.critedge.i.i_crit_edge, label %for.cond9.i.i.for.body11.i.i_crit_edge

for.cond9.i.i.for.body11.i.i_crit_edge:           ; preds = %for.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i.i

for.cond9.i.i.for.inc17.critedge.i.i_crit_edge:   ; preds = %for.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.critedge.i.i

for.body11.i.i:                                   ; preds = %for.cond9.i.i.for.body11.i.i_crit_edge, %for.body11.lr.ph.i.i
  %j.05.i.i = phi i32 [ 0, %for.body11.lr.ph.i.i ], [ %inc.i.i, %for.cond9.i.i.for.body11.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.hid_usage, ptr %10, i32 %j.05.i.i
  %11 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3080167, i32 %12)
  %cmp14.i.i = icmp eq i32 %12, -3080167
  br i1 %cmp14.i.i, label %if.then, label %for.cond9.i.i

for.inc17.critedge.i.i:                           ; preds = %for.cond9.i.i.for.inc17.critedge.i.i_crit_edge, %for.body6.i.i.for.inc17.critedge.i.i_crit_edge
  %inc18.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond14.not.i.i = icmp eq i32 %inc18.i.i, %4
  br i1 %exitcond14.not.i.i, label %for.inc17.critedge.i.i.for.inc20.i.i_crit_edge, label %for.inc17.critedge.i.i.for.body6.i.i_crit_edge

for.inc17.critedge.i.i.for.body6.i.i_crit_edge:   ; preds = %for.inc17.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.i

for.inc17.critedge.i.i.for.inc20.i.i_crit_edge:   ; preds = %for.inc17.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i.i

for.inc20.i.i:                                    ; preds = %for.inc17.critedge.i.i.for.inc20.i.i_crit_edge, %for.cond4.preheader.i.i.for.inc20.i.i_crit_edge, %for.body.i.i.for.inc20.i.i_crit_edge
  %13 = ptrtoint ptr %report.010.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %report.0.i.i = load ptr, ptr %report.010.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %report.0.i.i, %report_list.i.i
  br i1 %cmp.not.i.i, label %for.inc20.i.i.if.end9_crit_edge, label %for.inc20.i.i.for.body.i.i_crit_edge

for.inc20.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc20.i.i.if.end9_crit_edge:                  ; preds = %for.inc20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %for.body11.i.i
  tail call void @hid_hw_close(ptr noundef %hdev) #7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cbas_ec_lock) #7
  %14 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then8

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_event(ptr noundef nonnull %14, i32 noundef 5, i32 noundef 1, i32 noundef 1) #7
  %16 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @input_event(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cbas_ec_lock, i32 noundef %call3) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.inc20.i.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end9.hammer_unregister_leds.exit_crit_edge, label %if.then.i

if.end9.hammer_unregister_leds.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %hammer_unregister_leds.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %18) #7
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %hammer_unregister_leds.exit

hammer_unregister_leds.exit:                      ; preds = %if.then.i, %if.end9.hammer_unregister_leds.exit_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hammer_event(ptr noundef %hid, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3080167, i32 %1)
  %cmp = icmp eq i32 %1, -3080167
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  tail call fastcc void @hammer_folded_event(ptr noundef %hid, i1 noundef zeroext %tobool)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hammer_input_mapping(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3080167, i32 %1)
  %cmp = icmp eq i32 %1, -3080167
  %. = sext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_field_extract(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hammer_folded_event(ptr noundef %hdev, i1 noundef zeroext %folded) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %folded to i8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cbas_ec_lock) #7
  store i8 1, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4
  store i8 %frombool, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 3), align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hammer_folded_event.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hammer_folded_event, %if.then)) #7
          to label %do.end18 [label %if.then], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %0 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4, !range !101
  %1 = zext i8 %0 to i32
  %2 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 3), align 1, !range !101
  %3 = zext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hammer_folded_event.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %1, i32 noundef %3) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then, %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  %tobool19.not = icmp eq ptr %4, null
  br i1 %tobool19.not, label %do.end18.if.end23_crit_edge, label %if.then20

do.end18.if.end23_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %lnot.ext.i = zext i1 %folded to i32
  tail call void @input_event(ptr noundef nonnull %4, i32 noundef 5, i32 noundef 1, i32 noundef %lnot.ext.i) #7
  %5 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %do.end18.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cbas_ec_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hammer_kbd_brightness_set_blocking(ptr noundef %cdev, i32 noundef %br) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.hammer_kbd_leds, ptr %cdev, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 128
  %conv = trunc i32 %br to i8
  %arrayidx2 = getelementptr %struct.hammer_kbd_leds, ptr %cdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %arrayidx2, align 1
  %hdev = getelementptr inbounds %struct.hammer_kbd_leds, ptr %cdev, i32 0, i32 1
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 16
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %hid_hw_power.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

hid_hw_power.exit:                                ; preds = %entry
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %hid_hw_power.exit.if.end_crit_edge

hid_hw_power.exit.if.end_crit_edge:               ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 16
  %dev = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %hid_hw_power.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 16
  %call7 = tail call i32 @hid_hw_output_report(ptr noundef %11, ptr noundef %buf, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call7)
  %cmp8 = icmp eq i32 %call7, -38
  br i1 %cmp8, label %if.then10, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev, align 16
  %call14 = tail call i32 @hid_hw_raw_request(ptr noundef %13, i8 noundef zeroext 0, ptr noundef %buf, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then10 ], [ %call7, %if.end.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp16 = icmp slt i32 %ret.0, 0
  br i1 %cmp16, label %do.end21, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev, align 16
  %dev23 = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.17, i32 noundef %ret.0) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end15.if.end24_crit_edge
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 16
  %ll_driver.i43 = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %ll_driver.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ll_driver.i43, align 4
  %power.i44 = getelementptr inbounds %struct.hid_ll_driver, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %power.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power.i44, align 4
  %tobool.not.i45 = icmp eq ptr %21, null
  br i1 %tobool.not.i45, label %if.end24.cleanup_crit_edge, label %cond.true.i47

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true.i47:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call.i46 = tail call i32 %21(ptr noundef %17, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i47, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %if.end24.cleanup_crit_edge ], [ %ret.0, %cond.true.i47 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbas_ec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cbas_ec_reglock, i32 noundef 0) #7
  %0 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @__cbas_ec_probe(ptr noundef %pdev)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %retval1.0 = phi i32 [ %call, %if.end ], [ -16, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cbas_ec_reglock) #7
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbas_ec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cbas_ec_reglock, i32 noundef 0) #7
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %call1 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 4)) #7
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  store ptr null, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  tail call void @mutex_unlock(ptr noundef nonnull @cbas_ec_reglock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cbas_ec_probe(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 97, ptr %command.i, align 4
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call7.i.i.i, align 8
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %outsize.i, align 8
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %insize.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %data.i, align 4
  %event_type.i = getelementptr inbounds %struct.ec_params_mkbp_info, ptr %data.i, i32 0, i32 1
  %10 = ptrtoint ptr %event_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %event_type.i, align 1
  %call2.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i = icmp sgt i32 %call2.i, -1
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.cbas_ec_query_base.exit.thread104_crit_edge

if.end.i.cbas_ec_query_base.exit.thread104_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cbas_ec_query_base.exit.thread104

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i)
  %cmp5.not.i = icmp eq i32 %call2.i, 4
  br i1 %cmp5.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.31, i32 noundef %call2.i, i32 noundef 4) #11
  br label %cbas_ec_query_base.exit.thread104

cbas_ec_query_base.exit.thread104:                ; preds = %do.end.i, %if.end.i.cbas_ec_query_base.exit.thread104_crit_edge
  %ret.0.i.ph = phi i32 [ %call2.i, %if.end.i.cbas_ec_query_base.exit.thread104_crit_edge ], [ -71, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.then4.i
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not = icmp eq i32 %15, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %16 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.22, ptr %call6, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 3
  %17 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 25, ptr %id, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call6, i32 noundef 5, i32 noundef 1) #7
  %call10 = tail call i32 @input_register_device(ptr noundef nonnull %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call10) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i82 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not.i83 = icmp eq ptr %call7.i.i.i82, null
  br i1 %tobool.not.i83, label %if.end14.do.end20_crit_edge, label %if.end.i91

if.end14.do.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

if.end.i91:                                       ; preds = %if.end14
  %command.i84 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i82, i32 0, i32 1
  %19 = ptrtoint ptr %command.i84 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 97, ptr %command.i84, align 4
  %20 = ptrtoint ptr %call7.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call7.i.i.i82, align 8
  %outsize.i85 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i82, i32 0, i32 2
  %21 = ptrtoint ptr %outsize.i85 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %outsize.i85, align 8
  %insize.i86 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i82, i32 0, i32 3
  %22 = ptrtoint ptr %insize.i86 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %insize.i86, align 4
  %data.i87 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i82, i32 0, i32 5
  %23 = ptrtoint ptr %data.i87 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %data.i87, align 4
  %event_type.i88 = getelementptr inbounds %struct.ec_params_mkbp_info, ptr %data.i87, i32 0, i32 1
  %24 = ptrtoint ptr %event_type.i88 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %event_type.i88, align 1
  %call2.i89 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i89)
  %cmp.i90 = icmp sgt i32 %call2.i89, -1
  br i1 %cmp.i90, label %if.then4.i93, label %if.end.i91.cbas_ec_query_base.exit100.thread111_crit_edge

if.end.i91.cbas_ec_query_base.exit100.thread111_crit_edge: ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cbas_ec_query_base.exit100.thread111

if.then4.i93:                                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i89)
  %cmp5.not.i92 = icmp eq i32 %call2.i89, 4
  br i1 %cmp5.not.i92, label %if.end22, label %do.end.i95

do.end.i95:                                       ; preds = %if.then4.i93
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i94 = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i94 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i94, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.31, i32 noundef %call2.i89, i32 noundef 4) #11
  br label %cbas_ec_query_base.exit100.thread111

cbas_ec_query_base.exit100.thread111:             ; preds = %do.end.i95, %if.end.i91.cbas_ec_query_base.exit100.thread111_crit_edge
  %ret.0.i97.ph = phi i32 [ %call2.i89, %if.end.i91.cbas_ec_query_base.exit100.thread111_crit_edge ], [ -71, %do.end.i95 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i82) #7
  br label %do.end20

do.end20:                                         ; preds = %cbas_ec_query_base.exit100.thread111, %if.end14.do.end20_crit_edge
  %retval.0.i99110 = phi i32 [ %ret.0.i97.ph, %cbas_ec_query_base.exit100.thread111 ], [ -12, %if.end14.do.end20_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i99110) #11
  br label %cleanup

if.end22:                                         ; preds = %if.then4.i93
  %27 = ptrtoint ptr %data.i87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data.i87, align 4
  %29 = lshr i32 %28, 26
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  store i8 %31, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i82) #7
  %32 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not = icmp eq i8 %32, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.do.body26_crit_edge

if.end22.do.body26_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  store i8 0, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 3), align 1
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %if.end22.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cbas_ec_probe.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cbas_ec_probe, %if.then31)) #7
          to label %do.end38 [label %if.then31], !srcloc !102

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %33 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4, !range !101
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 3), align 1, !range !101
  %36 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__cbas_ec_probe.__UNIQUE_ID_ddebug226, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.24, i32 noundef %34, i32 noundef %36) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %do.body26
  %37 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool39.not = icmp eq i8 %37, 0
  br i1 %tobool39.not, label %do.end38.lor.end_crit_edge, label %lor.rhs

do.end38.lor.end_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 3), align 1, !range !101
  %39 = zext i8 %38 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end38.lor.end_crit_edge
  %40 = phi i32 [ 1, %do.end38.lor.end_crit_edge ], [ %39, %lor.rhs ]
  tail call void @input_event(ptr noundef nonnull %call6, i32 noundef 5, i32 noundef 1, i32 noundef %40) #7
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  store ptr %call6, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  store ptr %dev, ptr @cbas_ec, align 4
  store ptr @cbas_ec_notify, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 4), align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %call43 = tail call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 4)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call43) #11
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  store ptr null, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  br label %cleanup

if.end50:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %do.end20, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cbas_ec_query_base.exit.thread104, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %retval.0.i99110, %do.end20 ], [ %call43, %do.end48 ], [ 0, %if.end50 ], [ -6, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %ret.0.i.ph, %cbas_ec_query_base.exit.thread104 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbas_ec_notify(ptr nocapture noundef readnone %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readonly %_notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event_data = getelementptr inbounds %struct.cros_ec_device, ptr %_notify, i32 0, i32 23
  %0 = ptrtoint ptr %event_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.cros_ec_device, ptr %_notify, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %data, align 1
  %4 = lshr i32 %3, 26
  %.lobit = and i32 %4, 1
  %5 = trunc i32 %.lobit to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cbas_ec_notify.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cbas_ec_notify, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !102

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load ptr, ptr @cbas_ec, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cbas_ec_notify.__UNIQUE_ID_ddebug225, ptr noundef %6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %.lobit) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %7 = load ptr, ptr @cbas_ec, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %do.end.device_may_wakeup.exit_crit_edge, label %land.rhs.i

do.end.device_may_wakeup.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %10, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %do.end.device_may_wakeup.exit_crit_edge
  %11 = phi i1 [ false, %do.end.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queued_during_suspend)
  %tobool12.not = icmp eq i32 %queued_during_suspend, 0
  %or.cond = or i1 %tobool12.not, %11
  br i1 %or.cond, label %if.then13, label %device_may_wakeup.exit.if.end39_crit_edge

device_may_wakeup.exit.if.end39_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then13:                                        ; preds = %device_may_wakeup.exit
  tail call void @pm_wakeup_dev_event(ptr noundef %7, i32 noundef 0, i1 noundef zeroext false) #7
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cbas_ec_lock) #7
  %12 = load i8, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4, !range !101
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %5)
  %cmp29.not = icmp eq i8 %12, %5
  br i1 %cmp29.not, label %if.then13.if.end37_crit_edge, label %if.then31

if.then13.if.end37_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  %14 = xor i32 %.lobit, 1
  tail call void @input_event(ptr noundef %13, i32 noundef 5, i32 noundef 1, i32 noundef %14) #7
  %15 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  store i8 %5, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.then13.if.end37_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cbas_ec_lock, i32 noundef %call20) #7
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %device_may_wakeup.exit.if.end39_crit_edge, %entry.if.end39_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbas_ec_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 97, ptr %command.i, align 4
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call7.i.i.i, align 8
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %outsize.i, align 8
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %insize.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %data.i, align 4
  %event_type.i = getelementptr inbounds %struct.ec_params_mkbp_info, ptr %data.i, i32 0, i32 1
  %10 = ptrtoint ptr %event_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %event_type.i, align 1
  %call2.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i = icmp sgt i32 %call2.i, -1
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.cbas_ec_query_base.exit.thread12_crit_edge

if.end.i.cbas_ec_query_base.exit.thread12_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cbas_ec_query_base.exit.thread12

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i)
  %cmp5.not.i = icmp eq i32 %call2.i, 4
  br i1 %cmp5.not.i, label %if.else, label %do.end.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.31, i32 noundef %call2.i, i32 noundef 4) #11
  br label %cbas_ec_query_base.exit.thread12

cbas_ec_query_base.exit.thread12:                 ; preds = %do.end.i, %if.end.i.cbas_ec_query_base.exit.thread12_crit_edge
  %ret.0.i.ph = phi i32 [ %call2.i, %if.end.i.cbas_ec_query_base.exit.thread12_crit_edge ], [ -71, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end

do.end:                                           ; preds = %cbas_ec_query_base.exit.thread12, %entry.do.end_crit_edge
  %retval.0.i11 = phi i32 [ %ret.0.i.ph, %cbas_ec_query_base.exit.thread12 ], [ -12, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i11) #11
  br label %if.end5

if.else:                                          ; preds = %if.then4.i
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data.i, align 4
  %15 = lshr i32 %14, 26
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  store i8 %17, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 2), align 4
  br i1 %tobool2.not, label %if.then4, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @input_event(ptr noundef %18, i32 noundef 5, i32 noundef 1, i32 noundef 1) #7
  %19 = load ptr, ptr getelementptr inbounds (%struct.cbas_ec, ptr @cbas_ec, i32 0, i32 1), align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cbas_ec_lock) #7
  br label %if.end5

if.end5:                                          ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_hid_google_hammer__228_633_hammer_init6, !1, !"__initcall__kmod_hid_google_hammer__228_633_hammer_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-google-hammer.c", i32 633, i32 1}
!2 = !{ptr @__exitcall_hammer_exit, !3, !"__exitcall_hammer_exit", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-google-hammer.c", i32 640, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-google-hammer.c", i32 642, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-google-hammer.c", i32 625, i32 10}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-google-hammer.c", i32 609, i32 10}
!11 = !{ptr @hammer_driver, !12, !"hammer_driver", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-google-hammer.c", i32 608, i32 26}
!13 = !{ptr @hammer_devices, !14, !"hammer_devices", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-google-hammer.c", i32 585, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-google-hammer.c", i32 546, i32 4}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hammer_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @hammer_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-google-hammer.c", i32 495, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hammer_get_folded_state._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @hammer_get_folded_state._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-google-hammer.c", i32 417, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hammer_folded_event.__UNIQUE_ID_ddebug227, !29, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-google-hammer.c", i32 44, i32 8}
!34 = !{ptr @cbas_ec_lock, !33, !"cbas_ec_lock", i1 false, i1 false}
!35 = !{ptr @cbas_ec, !36, !"cbas_ec", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-google-hammer.c", i32 43, i32 23}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-google-hammer.c", i32 350, i32 29}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-google-hammer.c", i32 320, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hammer_kbd_brightness_set_blocking._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @hammer_kbd_brightness_set_blocking._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-google-hammer.c", i32 331, i32 3}
!47 = !{ptr @hammer_kbd_brightness_set_blocking._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hammer_kbd_brightness_set_blocking._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-google-hammer.c", i32 288, i32 11}
!51 = !{ptr @cbas_ec_driver, !52, !"cbas_ec_driver", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-google-hammer.c", i32 284, i32 31}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-google-hammer.c", i32 45, i32 8}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cbas_ec_reglock, !54, !"cbas_ec_reglock", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-google-hammer.c", i32 194, i32 16}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-google-hammer.c", i32 201, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__cbas_ec_probe._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @__cbas_ec_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-google-hammer.c", i32 209, i32 3}
!66 = !{ptr @__cbas_ec_probe._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @__cbas_ec_probe._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @__cbas_ec_probe.__UNIQUE_ID_ddebug226, !69, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-google-hammer.c", i32 216, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-google-hammer.c", i32 229, i32 3}
!72 = !{ptr @__cbas_ec_probe._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @__cbas_ec_probe._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-google-hammer.c", i32 78, i32 4}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @cbas_ec_query_base._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @cbas_ec_query_base._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-google-hammer.c", i32 103, i32 3}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cbas_ec_notify.__UNIQUE_ID_ddebug225, !80, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!83 = !{ptr @cbas_ec_of_match, !84, !"cbas_ec_of_match", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-google-hammer.c", i32 277, i32 34}
!85 = !{ptr @cbas_ec_pm_ops, !86, !"cbas_ec_pm_ops", i1 false, i1 false}
!86 = !{!"../drivers/hid/hid-google-hammer.c", i32 166, i32 8}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hid/hid-google-hammer.c", i32 143, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cbas_ec_resume._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @cbas_ec_resume._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i8 0, i8 2}
!102 = !{i64 2148961788, i64 2148961793, i64 2148961806, i64 2148961850, i64 2148961884, i64 2148961905}
