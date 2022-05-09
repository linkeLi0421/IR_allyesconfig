; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-input.c_pt.bc'
source_filename = "../drivers/hid/hid-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hidinput_calc_abs_res\22, \22a\22\09"
module asm "\09.weak\09__crc_hidinput_calc_abs_res\09\09\09\09"
module asm "\09.long\09__crc_hidinput_calc_abs_res\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_calc_abs_res:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_calc_abs_res\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_calc_abs_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hidinput_report_event\22, \22a\22\09"
module asm "\09.weak\09__crc_hidinput_report_event\09\09\09\09"
module asm "\09.long\09__crc_hidinput_report_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_report_event\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hidinput_get_led_field\22, \22a\22\09"
module asm "\09.weak\09__crc_hidinput_get_led_field\09\09\09\09"
module asm "\09.long\09__crc_hidinput_get_led_field\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_get_led_field:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_get_led_field\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_get_led_field:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hidinput_count_leds\22, \22a\22\09"
module asm "\09.weak\09__crc_hidinput_count_leds\09\09\09\09"
module asm "\09.long\09__crc_hidinput_count_leds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_count_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_count_leds\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_count_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hidinput_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_hidinput_connect\09\09\09\09"
module asm "\09.long\09__crc_hidinput_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_connect\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hidinput_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_hidinput_disconnect\09\09\09\09"
module asm "\09.long\09__crc_hidinput_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.72 = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.timespec64 = type { i64, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__kstrtab_hidinput_calc_abs_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_calc_abs_res = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_calc_abs_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_calc_abs_res to i32), ptr @__kstrtab_hidinput_calc_abs_res, ptr @__kstrtabns_hidinput_calc_abs_res }, section "___ksymtab_gpl+hidinput_calc_abs_res", align 4
@hid_hat_to_axis = internal constant { [9 x %struct.anon.72], [56 x i8] } { [9 x %struct.anon.72] [%struct.anon.72 zeroinitializer, %struct.anon.72 { i32 0, i32 -1 }, %struct.anon.72 { i32 1, i32 -1 }, %struct.anon.72 { i32 1, i32 0 }, %struct.anon.72 { i32 1, i32 1 }, %struct.anon.72 { i32 0, i32 1 }, %struct.anon.72 { i32 -1, i32 1 }, %struct.anon.72 { i32 -1, i32 0 }, %struct.anon.72 { i32 -1, i32 -1 }], [56 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@hidinput_hid_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Maximum Effects - %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hidinput_hid_event\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-input.c\00", [40 x i8] zeroinitializer }, align 32
@hidinput_hid_event._entry_ptr = internal global ptr @hidinput_hid_event._entry, section ".printk_index", align 4
@hidinput_hid_event._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: PID Pool Report\0A\00", [41 x i8] zeroinitializer }, align 32
@hidinput_hid_event._entry_ptr.5 = internal global ptr @hidinput_hid_event._entry.3, section ".printk_index", align 4
@hidinput_hid_event._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Ignoring out-of-range value %x\0A\00", [58 x i8] zeroinitializer }, align 32
@hidinput_hid_event._entry_ptr.8 = internal global ptr @hidinput_hid_event._entry.6, section ".printk_index", align 4
@__kstrtab_hidinput_report_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_report_event = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_report_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_report_event to i32), ptr @__kstrtab_hidinput_report_event, ptr @__kstrtabns_hidinput_report_event }, section "___ksymtab_gpl+hidinput_report_event", align 4
@__kstrtab_hidinput_get_led_field = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_get_led_field = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_get_led_field = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_get_led_field to i32), ptr @__kstrtab_hidinput_get_led_field, ptr @__kstrtabns_hidinput_get_led_field }, section "___ksymtab_gpl+hidinput_get_led_field", align 4
@__kstrtab_hidinput_count_leds = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_count_leds = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_count_leds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_count_leds to i32), ptr @__kstrtab_hidinput_count_leds, ptr @__kstrtabns_hidinput_count_leds }, section "___ksymtab_gpl+hidinput_count_leds", align 4
@hidinput_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&hid->led_work)\00", [62 x i8] zeroinitializer }, align 32
@hidinput_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 2035, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No inputs registered, leaving\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hidinput_connect\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidinput_connect._entry_ptr = internal global ptr @hidinput_connect._entry, section ".printk_index", align 4
@hidinput_connect.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 1, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hid\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"Some usages could not be mapped, please use HID_QUIRK_INCREMENT_USAGE_ON_DUPLICATE if this is legitimate.\0A\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_hidinput_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_connect to i32), ptr @__kstrtab_hidinput_connect, ptr @__kstrtabns_hidinput_connect }, section "___ksymtab_gpl+hidinput_connect", align 4
@__kstrtab_hidinput_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_disconnect to i32), ptr @__kstrtab_hidinput_disconnect, ptr @__kstrtabns_hidinput_disconnect }, section "___ksymtab_gpl+hidinput_disconnect", align 4
@hidinput_setup_battery.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hidinput_setup_battery\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device %x:%x:%x %d quirks %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid-%s-battery\00", [17 x i8] zeroinitializer }, align 32
@hidinput_battery_props = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 4, i32 47, i32 73, i32 0, i32 66], [40 x i8] zeroinitializer }, align 32
@hidinput_setup_battery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 511, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't register power supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hidinput_setup_battery._entry_ptr = internal global ptr @hidinput_setup_battery._entry, section ".printk_index", align 4
@hid_battery_quirks = internal constant { [16 x %struct.hid_device_id], [64 x i8] } { [16 x %struct.hid_device_id] [%struct.hid_device_id { i16 5, i16 0, i32 1452, i32 570, i32 3 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 569, i32 3 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 597, i32 3 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 598, i32 3 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 556, i32 3 }, %struct.hid_device_id { i16 5, i16 0, i32 1390, i32 97, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 4608, i32 4 }, %struct.hid_device_id { i16 5, i16 0, i32 2821, i32 34050, i32 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45833, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 9990, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 9540, i32 4 }, %struct.hid_device_id { i16 24, i16 0, i32 1267, i32 11525, i32 4 }, %struct.hid_device_id { i16 24, i16 0, i32 1267, i32 10703, i32 4 }, %struct.hid_device_id { i16 24, i16 0, i32 1267, i32 10263, i32 4 }, %struct.hid_device_id { i16 24, i16 0, i32 1267, i32 9754, i32 4 }, %struct.hid_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Keyboard\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Keypad\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mouse\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stylus\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Pen\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Touchscreen\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Touchpad\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"System Control\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Consumer Control\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wireless Radio Control\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"System Multi Axis\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@hidinput_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1830, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Out of memory during hid input probe\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidinput_allocate\00", [46 x i8] zeroinitializer }, align 32
@hidinput_allocate._entry_ptr = internal global ptr @hidinput_allocate._entry, section ".printk_index", align 4
@hidinput_input_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1598, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event field not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hidinput_input_event\00", [43 x i8] zeroinitializer }, align 32
@hidinput_input_event._entry_ptr = internal global ptr @hidinput_input_event._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hidinput_setkeycode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: Assigned keycode %d to HID usage code %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hidinput_setkeycode\00", [44 x i8] zeroinitializer }, align 32
@hidinput_setkeycode._entry_ptr = internal global ptr @hidinput_setkeycode._entry, section ".printk_index", align 4
@hid_keyboard = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\00\00\1E0. \12!\22#\17$%&21\18\19\10\13\1F\14\16/\11-\15,\02\03\04\05\06\07\08\09\0A\0B\1C\01\0E\0F9\0C\0D\1A\1B++'()345:;<=>?@ABCDWXcFwnfhokmjilgEb7JN`OPQKLMGHIRSV\7Ftu\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\86\8A\82\84\80\81\83\89\85\87\88qsr\F0\F0\F0y\F0Y]|\\^_\F0\F0\F0z{Z[U\F0\F0\F0\F0\F0\F0\F0o\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\B3\B4\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0o\F0\F0\F0\F0\F0\F0\F0\1D*8}a6d~\A4\A6\A5\A3\A1srq\96\9E\9F\80\88\B1\B2\B0\8E\98\AD\8C\F0\F0\F0\F0", [64 x i8] zeroinitializer }, align 32
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.hid_map_usage, ptr @.str.41, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@switch.table.hidinput_configure_usage = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 272, i32 272, i32 256, i32 288, i32 304], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 26, i64 27, i64 48, i64 49, i64 53, i64 54, i64 60, i64 61]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 19]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 20]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 22]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 852016, i64 852018, i64 852028]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 983167, i64 983171]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 65548, i64 65664, i64 786433]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 65664, i64 786433]
@__sancov_gen_cov_switch_values.50 = internal global [13 x i64] [i64 11, i64 32, i64 65538, i64 65542, i64 65543, i64 65548, i64 65550, i64 65664, i64 786433, i64 851970, i64 851972, i64 851973, i64 852000]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 47, i64 66, i64 73]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 21]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 65536, i64 131072, i64 393216, i64 458752, i64 524288, i64 589824, i64 720896, i64 786432, i64 851968, i64 983040, i64 8716288, i64 16711680, i64 4278190080, i64 4278255616, i64 4278779904, i64 4282580992, i64 4286513152, i64 4290510848]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 65537, i64 65538, i64 65540, i64 65541, i64 786433]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 16, i64 186, i64 187, i64 196, i64 197, i64 200]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 176]
@__sancov_gen_cov_switch_values.58 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.59 = internal global [15 x i64] [i64 13, i64 32, i64 65584, i64 65585, i64 65586, i64 65587, i64 65588, i64 65589, i64 65590, i64 65591, i64 65592, i64 65593, i64 65597, i64 65598, i64 65734]
@__sancov_gen_cov_switch_values.60 = internal global [13 x i64] [i64 11, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 25, i64 39, i64 75, i64 76, i64 77]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 48, i64 50, i64 51, i64 59, i64 60, i64 61, i64 62, i64 66, i64 67, i64 68, i64 69, i64 70, i64 90, i64 91, i64 110]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 33, i64 34]
@__sancov_gen_cov_switch_values.64 = internal global [19 x i64] [i64 17, i64 16, i64 47, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191]
@__sancov_gen_cov_switch_values.65 = internal global [166 x i64] [i64 164, i64 16, i64 0, i64 48, i64 49, i64 50, i64 52, i64 53, i64 54, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 96, i64 97, i64 99, i64 101, i64 105, i64 106, i64 107, i64 108, i64 109, i64 111, i64 112, i64 114, i64 115, i64 116, i64 117, i64 121, i64 122, i64 124, i64 130, i64 131, i64 132, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 154, i64 156, i64 157, i64 160, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 188, i64 191, i64 205, i64 207, i64 216, i64 217, i64 224, i64 226, i64 229, i64 233, i64 234, i64 245, i64 385, i64 386, i64 387, i64 388, i64 389, i64 390, i64 391, i64 392, i64 393, i64 394, i64 395, i64 396, i64 397, i64 398, i64 399, i64 400, i64 401, i64 402, i64 403, i64 404, i64 406, i64 409, i64 412, i64 414, i64 415, i64 418, i64 419, i64 420, i64 422, i64 423, i64 427, i64 430, i64 433, i64 436, i64 438, i64 439, i64 440, i64 444, i64 445, i64 459, i64 513, i64 514, i64 515, i64 516, i64 519, i64 520, i64 521, i64 538, i64 539, i64 540, i64 541, i64 543, i64 545, i64 546, i64 547, i64 548, i64 549, i64 550, i64 551, i64 554, i64 557, i64 558, i64 559, i64 562, i64 563, i64 564, i64 568, i64 573, i64 607, i64 617, i64 618, i64 633, i64 649, i64 651, i64 652, i64 669, i64 671, i64 674, i64 711, i64 712, i64 713, i64 714, i64 715, i64 716]
@__sancov_gen_cov_switch_values.66 = internal global [14 x i64] [i64 12, i64 16, i64 33, i64 112, i64 113, i64 114, i64 115, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 17]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 17]
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"hid_hat_to_axis\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 49, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1377, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1382, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1426, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1959, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2035, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2040, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 460, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 470, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant [23 x i8] c"hidinput_battery_props\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 286, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 511, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"hid_battery_quirks\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 299, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1747, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1750, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1753, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1763, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1766, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1769, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1772, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1775, i32 13 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1778, i32 13 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1781, i32 13 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1784, i32 13 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1796, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1830, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1598, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 169, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"hid_keyboard\00", align 1
@___asan_gen_.212 = private constant [27 x i8] c"../drivers/hid/hid-input.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 27, i32 28 }
@___asan_gen_.214 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1036, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [38 x i8] c"switch.table.hidinput_configure_usage\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @__ksymtab_hidinput_calc_abs_res, ptr @__ksymtab_hidinput_connect, ptr @__ksymtab_hidinput_count_leds, ptr @__ksymtab_hidinput_disconnect, ptr @__ksymtab_hidinput_get_led_field, ptr @__ksymtab_hidinput_report_event, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @hidinput_allocate._entry, ptr @hidinput_allocate._entry_ptr, ptr @hidinput_connect._entry, ptr @hidinput_connect._entry_ptr, ptr @hidinput_hid_event._entry, ptr @hidinput_hid_event._entry.3, ptr @hidinput_hid_event._entry.6, ptr @hidinput_hid_event._entry_ptr, ptr @hidinput_hid_event._entry_ptr.5, ptr @hidinput_hid_event._entry_ptr.8, ptr @hidinput_input_event._entry, ptr @hidinput_input_event._entry_ptr, ptr @hidinput_setkeycode._entry, ptr @hidinput_setkeycode._entry_ptr, ptr @hidinput_setup_battery._entry, ptr @hidinput_setup_battery._entry_ptr, ptr @hid_hat_to_axis, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @hidinput_connect.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @hidinput_battery_props, ptr @.str.19, ptr @.str.20, ptr @hid_battery_quirks, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @hid_keyboard, ptr @hid_map_usage._rs, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.hidinput_configure_usage], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_hat_to_axis to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_hid_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_hid_event._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_hid_event._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_battery_props to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_setup_battery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_battery_quirks to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_input_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidinput_setkeycode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_keyboard to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hidinput_configure_usage to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidinput_calc_abs_res(ptr nocapture noundef readonly %field, i16 noundef zeroext %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %unit_exponent1 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 15
  %0 = ptrtoint ptr %unit_exponent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unit_exponent1, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %2 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_maximum, align 4
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %4 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_minimum, align 4
  %sub = sub i32 %3, %5
  %physical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 14
  %6 = ptrtoint ptr %physical_maximum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %physical_maximum, align 4
  %physical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 13
  %8 = ptrtoint ptr %physical_minimum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %physical_minimum, align 4
  %sub2 = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub2)
  %cmp3 = icmp slt i32 %sub2, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i16 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %code, label %if.end.cleanup_crit_edge [
    i16 0, label %if.end.sw.bb_crit_edge
    i16 1, label %if.end.sw.bb_crit_edge140
    i16 2, label %if.end.sw.bb_crit_edge141
    i16 53, label %if.end.sw.bb_crit_edge142
    i16 54, label %if.end.sw.bb_crit_edge143
    i16 60, label %if.end.sw.bb_crit_edge144
    i16 61, label %if.end.sw.bb_crit_edge145
    i16 48, label %if.end.sw.bb_crit_edge146
    i16 49, label %if.end.sw.bb_crit_edge147
    i16 3, label %if.end.sw.bb19_crit_edge
    i16 4, label %if.end.sw.bb19_crit_edge148
    i16 5, label %if.end.sw.bb19_crit_edge149
    i16 8, label %if.end.sw.bb19_crit_edge150
    i16 26, label %if.end.sw.bb19_crit_edge151
    i16 27, label %if.end.sw.bb19_crit_edge152
  ]

if.end.sw.bb19_crit_edge152:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb19_crit_edge151:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb19_crit_edge150:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb19_crit_edge149:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb19_crit_edge148:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb_crit_edge147:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge146:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge145:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge144:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge143:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge142:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge141:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge140:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge140, %if.end.sw.bb_crit_edge141, %if.end.sw.bb_crit_edge142, %if.end.sw.bb_crit_edge143, %if.end.sw.bb_crit_edge144, %if.end.sw.bb_crit_edge145, %if.end.sw.bb_crit_edge146, %if.end.sw.bb_crit_edge147
  %unit = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 16
  %11 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unit, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %12, label %sw.bb.cleanup_crit_edge [
    i32 17, label %if.then6
    i32 19, label %if.then10
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %1, 1
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb
  %mul = mul i32 %sub2, 254
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub2)
  %cmp11 = icmp slt i32 %mul, %sub2
  br i1 %cmp11, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %sub15 = add i32 %1, -1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end.sw.bb19_crit_edge, %if.end.sw.bb19_crit_edge148, %if.end.sw.bb19_crit_edge149, %if.end.sw.bb19_crit_edge150, %if.end.sw.bb19_crit_edge151, %if.end.sw.bb19_crit_edge152
  %unit20 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 16
  %14 = ptrtoint ptr %unit20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %unit20, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %15, label %sw.bb19.cleanup_crit_edge [
    i32 20, label %if.then23
    i32 18, label %sw.bb19.sw.epilog_crit_edge
  ]

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %sw.bb19
  %mul24 = mul i32 %sub, 573
  call void @__sanitizer_cov_trace_cmp4(i32 %mul24, i32 %sub)
  %cmp25 = icmp slt i32 %mul24, %sub
  br i1 %cmp25, label %if.then23.cleanup_crit_edge, label %if.end28

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %add29 = add i32 %1, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28, %sw.bb19.sw.epilog_crit_edge, %if.end14, %if.then6
  %unit_exponent.0 = phi i32 [ %add29, %if.end28 ], [ %add, %if.then6 ], [ %sub15, %if.end14 ], [ %1, %sw.bb19.sw.epilog_crit_edge ]
  %logical_extents.0 = phi i32 [ %mul24, %if.end28 ], [ %sub, %if.then6 ], [ %sub, %if.end14 ], [ %sub, %sw.bb19.sw.epilog_crit_edge ]
  %physical_extents.0 = phi i32 [ %sub2, %if.end28 ], [ %sub2, %if.then6 ], [ %mul, %if.end14 ], [ %sub2, %sw.bb19.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unit_exponent.0)
  %cmp37111 = icmp slt i32 %unit_exponent.0, 0
  br i1 %cmp37111, label %sw.epilog.for.body_crit_edge, label %for.cond44.preheader

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.cond44.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unit_exponent.0)
  %cmp45115.not = icmp eq i32 %unit_exponent.0, 0
  br i1 %cmp45115.not, label %for.cond44.preheader.cond.end_crit_edge, label %for.cond44.preheader.for.body47_crit_edge

for.cond44.preheader.for.body47_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body47

for.cond44.preheader.cond.end_crit_edge:          ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %logical_extents.1113 = phi i32 [ %mul39, %for.inc.for.body_crit_edge ], [ %logical_extents.0, %sw.epilog.for.body_crit_edge ]
  %unit_exponent.1112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %unit_exponent.0, %sw.epilog.for.body_crit_edge ]
  %mul39 = mul i32 %logical_extents.1113, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul39, i32 %logical_extents.1113)
  %cmp40 = icmp slt i32 %mul39, %logical_extents.1113
  br i1 %cmp40, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %unit_exponent.1112, 1
  %exitcond.not = icmp eq i32 %inc, 0
  br i1 %exitcond.not, label %for.inc.cond.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cond.end_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.cond44:                                       ; preds = %for.body47
  %dec = add nsw i32 %unit_exponent.2116, -1
  %cmp45 = icmp sgt i32 %unit_exponent.2116, 1
  br i1 %cmp45, label %for.cond44.for.body47_crit_edge, label %for.cond44.cond.end_crit_edge

for.cond44.cond.end_crit_edge:                    ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.cond44.for.body47_crit_edge:                  ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body47

for.body47:                                       ; preds = %for.cond44.for.body47_crit_edge, %for.cond44.preheader.for.body47_crit_edge
  %physical_extents.1117 = phi i32 [ %mul48, %for.cond44.for.body47_crit_edge ], [ %physical_extents.0, %for.cond44.preheader.for.body47_crit_edge ]
  %unit_exponent.2116 = phi i32 [ %dec, %for.cond44.for.body47_crit_edge ], [ %unit_exponent.0, %for.cond44.preheader.for.body47_crit_edge ]
  %mul48 = mul i32 %physical_extents.1117, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul48, i32 %physical_extents.1117)
  %cmp49 = icmp slt i32 %mul48, %physical_extents.1117
  br i1 %cmp49, label %for.body47.cleanup_crit_edge, label %for.cond44

for.body47.cleanup_crit_edge:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %for.cond44.cond.end_crit_edge, %for.inc.cond.end_crit_edge, %for.cond44.preheader.cond.end_crit_edge
  %logical_extents.1.lcssa125 = phi i32 [ %logical_extents.0, %for.cond44.preheader.cond.end_crit_edge ], [ %mul39, %for.inc.cond.end_crit_edge ], [ %logical_extents.0, %for.cond44.cond.end_crit_edge ]
  %physical_extents.1.lcssa = phi i32 [ %physical_extents.0, %for.cond44.preheader.cond.end_crit_edge ], [ %physical_extents.0, %for.inc.cond.end_crit_edge ], [ %mul48, %for.cond44.cond.end_crit_edge ]
  %div = sdiv i32 %physical_extents.1.lcssa, 2
  %add61 = add i32 %div, %logical_extents.1.lcssa125
  %div62 = sdiv i32 %add61, %physical_extents.1.lcssa
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %for.body47.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div62, %cond.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %sw.bb19.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.body47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidinput_hid_event(ptr nocapture noundef %hid, ptr nocapture noundef readonly %field, ptr nocapture noundef %usage, i32 noundef %value) local_unnamed_addr #2 align 64 {
entry:
  %ts.i34.i = alloca %struct.timespec64, align 8
  %ts.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks1 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %1, label %if.end5 [
    i8 0, label %entry.cleanup_crit_edge
    i8 22, label %if.then4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %entry
  %battery.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 23
  %3 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %battery.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.i = icmp eq i32 %value, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then4.cleanup_crit_edge, label %lor.lhs.false.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then4
  %battery_min.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 25
  %5 = ptrtoint ptr %battery_min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %battery_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %value)
  %cmp1.i = icmp sgt i32 %6, %value
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %battery_max.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 26
  %7 = ptrtoint ptr %battery_max.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %battery_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %value)
  %cmp3.i = icmp slt i32 %8, %value
  br i1 %cmp3.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end5.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.i.not.i = icmp sgt i32 %8, %6
  br i1 %cmp.i.not.i, label %if.then.i.i, label %if.end5.i.hidinput_scale_battery_capacity.exit.i_crit_edge

if.end5.i.hidinput_scale_battery_capacity.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_scale_battery_capacity.exit.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %value, %6
  %mul.i.i = mul i32 %sub.i.i, 100
  %sub9.i.i = sub i32 %8, %6
  %div.i.i = sdiv i32 %mul.i.i, %sub9.i.i
  br label %hidinput_scale_battery_capacity.exit.i

hidinput_scale_battery_capacity.exit.i:           ; preds = %if.then.i.i, %if.end5.i.hidinput_scale_battery_capacity.exit.i_crit_edge
  %value.addr.0.i.i = phi i32 [ %div.i.i, %if.then.i.i ], [ %value, %if.end5.i.hidinput_scale_battery_capacity.exit.i_crit_edge ]
  %battery_status.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 29
  %9 = ptrtoint ptr %battery_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %battery_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp6.not.i = icmp eq i32 %10, 2
  br i1 %cmp6.not.i, label %lor.lhs.false7.i, label %hidinput_scale_battery_capacity.exit.i.if.then12.i_crit_edge

hidinput_scale_battery_capacity.exit.i.if.then12.i_crit_edge: ; preds = %hidinput_scale_battery_capacity.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

lor.lhs.false7.i:                                 ; preds = %hidinput_scale_battery_capacity.exit.i
  %battery_capacity.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 24
  %11 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %battery_capacity.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %value.addr.0.i.i, i32 %12)
  %cmp8.not.i = icmp eq i32 %value.addr.0.i.i, %12
  br i1 %cmp8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false7.i.if.then12.i_crit_edge

lor.lhs.false7.i.if.then12.i_crit_edge:           ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false7.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #10
  %13 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %ts.i.i) #10
  %14 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.fca.0.load.i.i = load i64, ptr %ts.i.i, align 8
  %.fca.1.gep.i.i = getelementptr inbounds [2 x i64], ptr %ts.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %.fca.1.gep.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load.i.i)
  %cmp.i.i.i.i = icmp sgt i64 %.fca.0.load.i.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i.i = lshr i64 %.fca.1.load.i.i, 32
  %mul.i.i.i.i = mul i64 %.fca.0.load.i.i, 1000000000
  %add.i.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i.i, %mul.i.i.i.i
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i64 9223372036854775807, i64 %add.i.i.i.i, !prof !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #10
  %battery_ratelimit_time.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 31
  %16 = ptrtoint ptr %battery_ratelimit_time.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %battery_ratelimit_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i.i.i, i64 %17)
  %cmp3.i.i.i = icmp sgt i64 %retval.0.i.i.i.i, %17
  br i1 %cmp3.i.i.i, label %lor.lhs.false9.i.if.then12.i_crit_edge, label %lor.lhs.false9.i.cleanup_crit_edge

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false9.i.if.then12.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false9.i.if.then12.i_crit_edge, %lor.lhs.false7.i.if.then12.i_crit_edge, %hidinput_scale_battery_capacity.exit.i.if.then12.i_crit_edge
  %battery_capacity13.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 24
  %18 = ptrtoint ptr %battery_capacity13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %value.addr.0.i.i, ptr %battery_capacity13.i, align 4
  %19 = ptrtoint ptr %battery_status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %battery_status.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i34.i) #10
  %20 = call ptr @memset(ptr %ts.i34.i, i32 255, i32 16)
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %ts.i34.i) #10
  %21 = ptrtoint ptr %ts.i34.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %.fca.0.load.i35.i = load i64, ptr %ts.i34.i, align 8
  %.fca.1.gep.i36.i = getelementptr inbounds [2 x i64], ptr %ts.i34.i, i32 0, i32 1
  %22 = ptrtoint ptr %.fca.1.gep.i36.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %.fca.1.load.i37.i = load i64, ptr %.fca.1.gep.i36.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load.i35.i)
  %cmp.i.i.i38.i = icmp sgt i64 %.fca.0.load.i35.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i39.i = lshr i64 %.fca.1.load.i37.i, 32
  %mul.i.i.i40.i = mul i64 %.fca.0.load.i35.i, 1000000000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i34.i) #10
  %add.i.i.i41.i = add i64 %mul.i.i.i40.i, 30000000000
  %add.i.i.i41.op.i = add i64 %add.i.i.i41.i, %ts.sroa.2.8.extract.shift.i.i39.i
  %add.i.i = select i1 %cmp.i.i.i38.i, i64 -9223372006854775809, i64 %add.i.i.i41.op.i, !prof !115
  %battery_ratelimit_time17.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 31
  %23 = ptrtoint ptr %battery_ratelimit_time17.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add.i.i, ptr %battery_ratelimit_time17.i, align 8
  %24 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %battery.i, align 8
  call void @power_supply_changed(ptr noundef %25) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %26 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hidinput, align 4
  %tobool6.not = icmp eq ptr %27, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %input10 = getelementptr inbounds %struct.hid_input, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %input10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp13 = icmp eq i8 %1, 3
  br i1 %cmp13, label %land.lhs.true, label %if.end8.if.end28_crit_edge

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end8
  %30 = ptrtoint ptr %quirks1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks1, align 4
  %and = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true16

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true16:                                  ; preds = %land.lhs.true
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %32 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp18 = icmp eq i16 %33, 0
  br i1 %cmp18, label %land.lhs.true16.if.then27_crit_edge, label %land.lhs.true16.lor.lhs.false_crit_edge

land.lhs.true16.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true16.if.then27_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true16.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %and20 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end28_crit_edge, label %land.lhs.true22

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %code23 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code23 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %code23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp25 = icmp eq i16 %35, 1
  br i1 %cmp25, label %land.lhs.true22.if.then27_crit_edge, label %land.lhs.true22.if.end28_crit_edge

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true22.if.then27_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %land.lhs.true22.if.then27_crit_edge, %land.lhs.true16.if.then27_crit_edge
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %36 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %logical_maximum, align 4
  %sub = sub i32 %37, %value
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true22.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge, %if.end8.if.end28_crit_edge
  %value.addr.0 = phi i32 [ %sub, %if.then27 ], [ %value, %land.lhs.true22.if.end28_crit_edge ], [ %value, %lor.lhs.false.if.end28_crit_edge ], [ %value, %if.end8.if.end28_crit_edge ]
  %hat_min = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 7
  %38 = ptrtoint ptr %hat_min to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hat_min, align 1
  %hat_max = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 8
  %40 = ptrtoint ptr %hat_max to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hat_max, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp31 = icmp slt i8 %39, %41
  br i1 %cmp31, label %if.end28.if.then36_crit_edge, label %lor.lhs.false33

if.end28.if.then36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false33:                                  ; preds = %if.end28
  %hat_dir = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 9
  %42 = ptrtoint ptr %hat_dir to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hat_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool35.not = icmp eq i8 %43, 0
  br i1 %tobool35.not, label %if.end69, label %lor.lhs.false33.if.then36_crit_edge

lor.lhs.false33.if.then36_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false33.if.then36_crit_edge, %if.end28.if.then36_crit_edge
  %hat_dir38 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 9
  %44 = ptrtoint ptr %hat_dir38 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hat_dir38, align 1
  %conv39 = sext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool40.not = icmp eq i8 %45, 0
  br i1 %tobool40.not, label %if.then41, label %if.then36.if.end51_crit_edge

if.then36.if.end51_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %conv43 = sext i8 %39 to i32
  %sub44 = sub i32 %value.addr.0, %conv43
  %mul = shl i32 %sub44, 3
  %conv46 = sext i8 %41 to i32
  %sub49 = sub nsw i32 1, %conv43
  %add = add nsw i32 %sub49, %conv46
  %div = sdiv i32 %mul, %add
  %add50 = add i32 %div, 1
  br label %if.end51

if.end51:                                         ; preds = %if.then41, %if.then36.if.end51_crit_edge
  %hat_dir37.0 = phi i32 [ %conv39, %if.then36.if.end51_crit_edge ], [ %add50, %if.then41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %hat_dir37.0)
  %46 = icmp ugt i32 %hat_dir37.0, 8
  %hat_dir37.1 = select i1 %46, i32 0, i32 %hat_dir37.0
  %conv60 = zext i8 %1 to i32
  %code61 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %47 = ptrtoint ptr %code61 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %code61, align 2
  %conv62 = zext i16 %48 to i32
  %arrayidx = getelementptr [9 x %struct.anon.72], ptr @hid_hat_to_axis, i32 0, i32 %hat_dir37.1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %50) #10
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type, align 4
  %conv64 = zext i8 %52 to i32
  %53 = ptrtoint ptr %code61 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %code61, align 2
  %conv66 = zext i16 %54 to i32
  %add67 = add nuw nsw i32 %conv66, 1
  %y = getelementptr [9 x %struct.anon.72], ptr @hid_hat_to_axis, i32 0, i32 %hat_dir37.1, i32 1
  %55 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %y, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef %conv64, i32 noundef %add67, i32 noundef %56) #10
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false33
  %57 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usage, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %58, label %if.end69.if.end113_crit_edge [
    i32 852028, label %if.then73
    i32 852018, label %if.then80
    i32 852016, label %land.lhs.true104
  ]

if.end69.if.end113_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.0)
  %tobool74.not = icmp ne i32 %value.addr.0, 0
  %60 = ptrtoint ptr %quirks1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %quirks1, align 4
  %and75 = and i32 %61, -2
  %masksel = zext i1 %tobool74.not to i32
  %cond = or i32 %and75, %masksel
  store i32 %cond, ptr %quirks1, align 4
  br label %cleanup

if.then80:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.0)
  %tobool81.not = icmp eq i32 %value.addr.0, 0
  %conv95 = zext i8 %1 to i32
  br i1 %tobool81.not, label %if.end93, label %if.then82

if.then82:                                        ; preds = %if.then80
  %62 = ptrtoint ptr %quirks1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %quirks1, align 4
  %and85 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %cond.false88, label %if.then82.cond.end91_crit_edge

if.then82.cond.end91_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end91

cond.false88:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  %code89 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %64 = ptrtoint ptr %code89 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %code89, align 2
  %conv90 = zext i16 %65 to i32
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false88, %if.then82.cond.end91_crit_edge
  %cond92 = phi i32 [ %conv90, %cond.false88 ], [ 321, %if.then82.cond.end91_crit_edge ]
  tail call void @input_event(ptr noundef %29, i32 noundef %conv95, i32 noundef %cond92, i32 noundef 1) #10
  br label %cleanup

if.end93:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %code96 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %66 = ptrtoint ptr %code96 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %code96, align 2
  %conv97 = zext i16 %67 to i32
  tail call void @input_event(ptr noundef %29, i32 noundef %conv95, i32 noundef %conv97, i32 noundef 0) #10
  %68 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %type, align 4
  %conv99 = zext i8 %69 to i32
  tail call void @input_event(ptr noundef %29, i32 noundef %conv99, i32 noundef 321, i32 noundef 0) #10
  br label %cleanup

land.lhs.true104:                                 ; preds = %if.end69
  %70 = ptrtoint ptr %quirks1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quirks1, align 4
  %and105 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %land.lhs.true104.if.end140_crit_edge, label %if.then107

land.lhs.true104.if.end140_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then107:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %72 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %logical_minimum, align 4
  %logical_maximum108 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %74 = ptrtoint ptr %logical_maximum108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %logical_maximum108, align 4
  %sub109 = sub i32 %75, %73
  %shr = ashr i32 %sub109, 3
  %add110 = add i32 %shr, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %value.addr.0, i32 %add110)
  %cmp111 = icmp sgt i32 %value.addr.0, %add110
  %conv112 = zext i1 %cmp111 to i32
  tail call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef 330, i32 noundef %conv112) #10
  %76 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %usage, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %if.end69.if.end113_crit_edge
  %77 = phi i32 [ %58, %if.end69.if.end113_crit_edge ], [ %.pr, %if.then107 ]
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %77, label %if.end113.if.end140_crit_edge [
    i32 983171, label %do.body
    i32 983167, label %do.body129
  ]

if.end113.if.end140_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

do.body:                                          ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %79 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool118.not = icmp eq i32 %79, 0
  br i1 %tobool118.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %value.addr.0) #13
  br label %cleanup

do.body129:                                       ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %80 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool130.not = icmp eq i32 %80, 0
  br i1 %tobool130.not, label %do.body129.cleanup_crit_edge, label %do.end134

do.body129.cleanup_crit_edge:                     ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end134:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #12
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end140:                                        ; preds = %if.end113.if.end140_crit_edge, %land.lhs.true104.if.end140_crit_edge
  %81 = phi i32 [ %77, %if.end113.if.end140_crit_edge ], [ 852016, %land.lhs.true104.if.end140_crit_edge ]
  %82 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp143 = icmp eq i8 %83, 1
  br i1 %cmp143, label %land.lhs.true145, label %if.end151

land.lhs.true145:                                 ; preds = %if.end140
  %code146 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %84 = ptrtoint ptr %code146 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %code146, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp148 = icmp eq i16 %85, 0
  br i1 %cmp148, label %land.lhs.true145.cleanup_crit_edge, label %land.lhs.true145.if.end194_crit_edge

land.lhs.true145.if.end194_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

land.lhs.true145.cleanup_crit_edge:               ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end151:                                        ; preds = %if.end140
  %86 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %83, label %if.end151.if.end194_crit_edge [
    i8 2, label %land.lhs.true156
    i8 3, label %land.lhs.true172
  ]

if.end151.if.end194_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

land.lhs.true156:                                 ; preds = %if.end151
  %code157 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %87 = ptrtoint ptr %code157 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %code157, align 2
  %.off = add i16 %88, -11
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.then166, label %land.lhs.true156.if.end194_crit_edge

land.lhs.true156.if.end194_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then166:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hidinput_handle_scroll(ptr noundef %usage, ptr noundef %29, i32 noundef %value.addr.0)
  br label %cleanup

land.lhs.true172:                                 ; preds = %if.end151
  %flags = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and173 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %land.lhs.true172.if.end194_crit_edge, label %land.lhs.true175

land.lhs.true172.if.end194_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

land.lhs.true175:                                 ; preds = %land.lhs.true172
  %code176 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %91 = ptrtoint ptr %code176 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %code176, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %92)
  %cmp178 = icmp eq i16 %92, 32
  br i1 %cmp178, label %if.then180, label %land.lhs.true175.if.end194_crit_edge

land.lhs.true175.if.end194_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then180:                                       ; preds = %land.lhs.true175
  %93 = tail call i32 @llvm.abs.i32(i32 %value.addr.0, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.0)
  %cmp189 = icmp sgt i32 %value.addr.0, 0
  %cond191 = select i1 %cmp189, i32 115, i32 114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp192430 = icmp sgt i32 %93, 0
  br i1 %cmp192430, label %if.then180.for.body_crit_edge, label %if.then180.cleanup_crit_edge

if.then180.cleanup_crit_edge:                     ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then180.for.body_crit_edge:                    ; preds = %if.then180
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then180.for.body_crit_edge
  %i.0431 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then180.for.body_crit_edge ]
  tail call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef %cond191, i32 noundef 1) #10
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  tail call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef %cond191, i32 noundef 0) #10
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.0431, 1
  %exitcond.not = icmp eq i32 %inc, %93
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end194:                                        ; preds = %land.lhs.true175.if.end194_crit_edge, %land.lhs.true172.if.end194_crit_edge, %land.lhs.true156.if.end194_crit_edge, %if.end151.if.end194_crit_edge, %land.lhs.true145.if.end194_crit_edge
  %flags195 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %94 = ptrtoint ptr %flags195 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags195, align 4
  %and196 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end194.if.end262_crit_edge, label %land.lhs.true198

if.end194.if.end262_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end262

land.lhs.true198:                                 ; preds = %if.end194
  %logical_minimum199 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %96 = ptrtoint ptr %logical_minimum199 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %logical_minimum199, align 4
  %logical_maximum200 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %98 = ptrtoint ptr %logical_maximum200 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %logical_maximum200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp201 = icmp slt i32 %97, %99
  br i1 %cmp201, label %if.then203, label %land.lhs.true198.if.end244_crit_edge

land.lhs.true198.if.end244_crit_edge:             ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end244

if.then203:                                       ; preds = %land.lhs.true198
  %and205 = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.then203.if.end227_crit_edge, label %land.lhs.true207

if.then203.if.end227_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

land.lhs.true207:                                 ; preds = %if.then203
  call void @__sanitizer_cov_trace_cmp4(i32 %value.addr.0, i32 %97)
  %cmp209 = icmp slt i32 %value.addr.0, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %value.addr.0, i32 %99)
  %cmp213 = icmp sgt i32 %value.addr.0, %99
  %or.cond419 = select i1 %cmp209, i1 true, i1 %cmp213
  br i1 %or.cond419, label %do.body216, label %land.lhs.true207.if.end227_crit_edge

land.lhs.true207.if.end227_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

do.body216:                                       ; preds = %land.lhs.true207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %100 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool217.not = icmp eq i32 %100, 0
  br i1 %tobool217.not, label %do.body216.cleanup_crit_edge, label %do.end221

do.body216.cleanup_crit_edge:                     ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end221:                                        ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #12
  %call223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %value.addr.0) #13
  br label %cleanup

if.end227:                                        ; preds = %land.lhs.true207.if.end227_crit_edge, %if.then203.if.end227_crit_edge
  %101 = tail call i32 @llvm.smax.i32(i32 %value.addr.0, i32 %97)
  %102 = tail call i32 @llvm.smin.i32(i32 %101, i32 %99)
  br label %if.end244

if.end244:                                        ; preds = %if.end227, %land.lhs.true198.if.end244_crit_edge
  %value.addr.1 = phi i32 [ %102, %if.end227 ], [ %value.addr.0, %land.lhs.true198.if.end244_crit_edge ]
  %103 = and i32 %95, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %.not = icmp eq i32 %103, 2
  br i1 %.not, label %land.lhs.true252, label %if.end244.if.end262_crit_edge

if.end244.if.end262_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end262

land.lhs.true252:                                 ; preds = %if.end244
  %usage_index = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %104 = ptrtoint ptr %usage_index to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %usage_index, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 4
  %106 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %maxusage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp253 = icmp ult i32 %105, %107
  br i1 %cmp253, label %land.lhs.true255, label %land.lhs.true252.if.end262_crit_edge

land.lhs.true252.if.end262_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end262

land.lhs.true255:                                 ; preds = %land.lhs.true252
  %value256 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %108 = ptrtoint ptr %value256 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %value256, align 4
  %arrayidx258 = getelementptr i32, ptr %109, i32 %105
  %110 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %value.addr.1, i32 %111)
  %cmp259 = icmp eq i32 %value.addr.1, %111
  br i1 %cmp259, label %land.lhs.true255.cleanup_crit_edge, label %land.lhs.true255.if.end262_crit_edge

land.lhs.true255.if.end262_crit_edge:             ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end262

land.lhs.true255.cleanup_crit_edge:               ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end262:                                        ; preds = %land.lhs.true255.if.end262_crit_edge, %land.lhs.true252.if.end262_crit_edge, %if.end244.if.end262_crit_edge, %if.end194.if.end262_crit_edge
  %value.addr.1428 = phi i32 [ %value.addr.1, %land.lhs.true255.if.end262_crit_edge ], [ %value.addr.1, %land.lhs.true252.if.end262_crit_edge ], [ %value.addr.1, %if.end244.if.end262_crit_edge ], [ %value.addr.0, %if.end194.if.end262_crit_edge ]
  br i1 %cmp143, label %land.lhs.true267, label %if.end262.if.end276_crit_edge

if.end262.if.end276_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end276

land.lhs.true267:                                 ; preds = %if.end262
  %code268 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %112 = ptrtoint ptr %code268 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %code268, align 2
  %conv269 = zext i16 %113 to i32
  %key = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 27
  %div3.i = lshr i32 %conv269, 5
  %arrayidx.i = getelementptr i32, ptr %key, i32 %div3.i
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv269, 31
  %116 = xor i32 %115, -1
  %117 = lshr i32 %116, %and.i
  %118 = and i32 %117, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %value.addr.1428, i32 %118)
  %cmp272 = icmp eq i32 %value.addr.1428, %118
  br i1 %cmp272, label %if.then274, label %land.lhs.true267.if.end276_crit_edge

land.lhs.true267.if.end276_crit_edge:             ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end276

if.then274:                                       ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_event(ptr noundef %29, i32 noundef 4, i32 noundef 4, i32 noundef %81) #10
  br label %if.end276

if.end276:                                        ; preds = %if.then274, %land.lhs.true267.if.end276_crit_edge, %if.end262.if.end276_crit_edge
  %119 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %type, align 4
  %conv278 = zext i8 %120 to i32
  %code279 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %121 = ptrtoint ptr %code279 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %code279, align 2
  %conv280 = zext i16 %122 to i32
  tail call void @input_event(ptr noundef %29, i32 noundef %conv278, i32 noundef %conv280, i32 noundef %value.addr.1428) #10
  %123 = ptrtoint ptr %flags195 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags195, align 4
  %and282 = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %if.end276.cleanup_crit_edge, label %land.lhs.true284

if.end276.cleanup_crit_edge:                      ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true284:                                 ; preds = %if.end276
  %125 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %cmp287 = icmp ne i8 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.1428)
  %tobool290.not = icmp eq i32 %value.addr.1428, 0
  %or.cond421 = select i1 %cmp287, i1 true, i1 %tobool290.not
  br i1 %or.cond421, label %land.lhs.true284.cleanup_crit_edge, label %if.then291

land.lhs.true284.cleanup_crit_edge:               ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then291:                                       ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %127 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %type, align 4
  %conv293 = zext i8 %128 to i32
  %129 = ptrtoint ptr %code279 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %code279, align 2
  %conv295 = zext i16 %130 to i32
  tail call void @input_event(ptr noundef %29, i32 noundef %conv293, i32 noundef %conv295, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then291, %land.lhs.true284.cleanup_crit_edge, %if.end276.cleanup_crit_edge, %land.lhs.true255.cleanup_crit_edge, %do.end221, %do.body216.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then180.cleanup_crit_edge, %if.then166, %land.lhs.true145.cleanup_crit_edge, %do.end134, %do.body129.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end93, %cond.end91, %if.then73, %if.end51, %if.end5.cleanup_crit_edge, %if.then12.i, %lor.lhs.false9.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidinput_handle_scroll(ptr nocapture noundef %usage, ptr noundef %input, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %code1 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %0 = ptrtoint ptr %code1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %code1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %1)
  %cmp2 = icmp eq i16 %1, 11
  %. = select i1 %cmp2, i32 8, i32 6
  %mul = mul i32 %value, 120
  %resolution_multiplier = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 3
  %2 = ptrtoint ptr %resolution_multiplier to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resolution_multiplier, align 4
  %conv6 = sext i8 %3 to i32
  %div = sdiv i32 %mul, %conv6
  %wheel_accumulated = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 10
  %4 = ptrtoint ptr %wheel_accumulated to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wheel_accumulated, align 4
  %6 = trunc i32 %div to i16
  %conv8 = add i16 %5, %6
  %conv10 = sext i16 %conv8 to i32
  %div1133 = sdiv i16 %conv8, 120
  %div11.sext = sext i16 %div1133 to i32
  %conv10.off = add nsw i32 %conv10, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %conv10.off)
  %7 = icmp ult i32 %conv10.off, 239
  %8 = mul nsw i16 %div1133, -120
  %conv16 = select i1 %7, i16 0, i16 %8
  %storemerge = add i16 %conv16, %conv8
  %9 = ptrtoint ptr %wheel_accumulated to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %storemerge, ptr %wheel_accumulated, align 4
  tail call void @input_event(ptr noundef %input, i32 noundef 2, i32 noundef %., i32 noundef %div11.sext) #10
  %10 = ptrtoint ptr %code1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %code1, align 2
  %conv19 = zext i16 %11 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 2, i32 noundef %conv19, i32 noundef %div) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidinput_report_event(ptr noundef readonly %hid, ptr nocapture readnone %report) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %2 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %hidinput.011 = load ptr, ptr %inputs, align 4
  %cmp.not12 = icmp eq ptr %hidinput.011, %inputs
  br i1 %cmp.not12, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %hidinput.013 = phi ptr [ %hidinput.0, %for.body.for.body_crit_edge ], [ %hidinput.011, %if.end.for.body_crit_edge ]
  %input = getelementptr inbounds %struct.hid_input, ptr %hidinput.013, i32 0, i32 2
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %5 = ptrtoint ptr %hidinput.013 to i32
  call void @__asan_load4_noabort(i32 %5)
  %hidinput.0 = load ptr, ptr %hidinput.013, align 4
  %cmp.not = icmp eq ptr %hidinput.0, %inputs
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hidinput_get_led_field(ptr noundef readonly %hid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %0 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %report.043 = load ptr, ptr %report_list, align 4
  %cmp.not44 = icmp eq ptr %report.043, %report_list
  br i1 %cmp.not44, label %entry.cleanup_crit_edge, label %entry.for.cond4.preheader_crit_edge

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  br label %for.cond4.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.inc15.for.cond.loopexit_crit_edge, %for.cond4.preheader.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %report.045 to i32
  call void @__asan_load4_noabort(i32 %1)
  %report.0 = load ptr, ptr %report.045, align 4
  %cmp.not = icmp eq ptr %report.0, %report_list
  br i1 %cmp.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.cond4.preheader_crit_edge

for.cond.loopexit.for.cond4.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond4.preheader:                              ; preds = %for.cond.loopexit.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %report.045 = phi ptr [ %report.0, %for.cond.loopexit.for.cond4.preheader_crit_edge ], [ %report.043, %entry.for.cond4.preheader_crit_edge ]
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report.045, i32 0, i32 6
  %2 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp541.not = icmp eq i32 %3, 0
  br i1 %cmp541.not, label %for.cond4.preheader.for.cond.loopexit_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body6:                                        ; preds = %for.inc15.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %i.042 = phi i32 [ %inc16, %for.inc15.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %arrayidx8 = getelementptr %struct.hid_report, ptr %report.045, i32 0, i32 5, i32 %i.042
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxusage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1039.not = icmp eq i32 %7, 0
  br i1 %cmp1039.not, label %for.body6.for.inc15_crit_edge, label %for.body11.lr.ph

for.body6.for.inc15_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15

for.body11.lr.ph:                                 ; preds = %for.body6
  %usage = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usage, align 4
  br label %for.body11

for.cond9:                                        ; preds = %for.body11
  %inc = add nuw i32 %j.040, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond9.for.inc15_crit_edge, label %for.cond9.for.body11_crit_edge

for.cond9.for.body11_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.cond9.for.inc15_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15

for.body11:                                       ; preds = %for.cond9.for.body11_crit_edge, %for.body11.lr.ph
  %j.040 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc, %for.cond9.for.body11_crit_edge ]
  %type = getelementptr %struct.hid_usage, ptr %9, i32 %j.040, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %11)
  %cmp13 = icmp eq i8 %11, 17
  br i1 %cmp13, label %for.body11.cleanup_crit_edge, label %for.cond9

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc15:                                        ; preds = %for.cond9.for.inc15_crit_edge, %for.body6.for.inc15_crit_edge
  %inc16 = add nuw i32 %i.042, 1
  %exitcond48.not = icmp eq i32 %inc16, %3
  br i1 %exitcond48.not, label %for.inc15.for.cond.loopexit_crit_edge, label %for.inc15.for.body6_crit_edge

for.inc15.for.body6_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.inc15.for.cond.loopexit_crit_edge:            ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

cleanup:                                          ; preds = %for.body11.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %5, %for.body11.cleanup_crit_edge ], [ null, %for.cond.loopexit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidinput_count_leds(ptr noundef readonly %hid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %0 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %report.046 = load ptr, ptr %report_list, align 4
  %cmp.not47 = icmp eq ptr %report.046, %report_list
  br i1 %cmp.not47, label %entry.for.end25_crit_edge, label %entry.for.cond4.preheader_crit_edge

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  br label %for.cond4.preheader

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.cond.loopexit:                                ; preds = %for.inc16.for.cond.loopexit_crit_edge, %for.cond4.preheader.for.cond.loopexit_crit_edge
  %count.1.lcssa = phi i32 [ %count.048, %for.cond4.preheader.for.cond.loopexit_crit_edge ], [ %count.2.lcssa, %for.inc16.for.cond.loopexit_crit_edge ]
  %1 = ptrtoint ptr %report.049 to i32
  call void @__asan_load4_noabort(i32 %1)
  %report.0 = load ptr, ptr %report.049, align 4
  %cmp.not = icmp eq ptr %report.0, %report_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end25_crit_edge, label %for.cond.loopexit.for.cond4.preheader_crit_edge

for.cond.loopexit.for.cond4.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader

for.cond.loopexit.for.end25_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.cond4.preheader:                              ; preds = %for.cond.loopexit.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %report.049 = phi ptr [ %report.0, %for.cond.loopexit.for.cond4.preheader_crit_edge ], [ %report.046, %entry.for.cond4.preheader_crit_edge ]
  %count.048 = phi i32 [ %count.1.lcssa, %for.cond.loopexit.for.cond4.preheader_crit_edge ], [ 0, %entry.for.cond4.preheader_crit_edge ]
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report.049, i32 0, i32 6
  %2 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp542.not = icmp eq i32 %3, 0
  br i1 %cmp542.not, label %for.cond4.preheader.for.cond.loopexit_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body6:                                        ; preds = %for.inc16.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %i.044 = phi i32 [ %inc17, %for.inc16.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %count.143 = phi i32 [ %count.2.lcssa, %for.inc16.for.body6_crit_edge ], [ %count.048, %for.cond4.preheader.for.body6_crit_edge ]
  %arrayidx8 = getelementptr %struct.hid_report, ptr %report.049, i32 0, i32 5, i32 %i.044
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxusage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1038.not = icmp eq i32 %7, 0
  br i1 %cmp1038.not, label %for.body6.for.inc16_crit_edge, label %for.body11.lr.ph

for.body6.for.inc16_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc16

for.body11.lr.ph:                                 ; preds = %for.body6
  %usage = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usage, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 10
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body11.lr.ph
  %j.040 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc, %for.inc.for.body11_crit_edge ]
  %count.239 = phi i32 [ %count.143, %for.body11.lr.ph ], [ %count.3, %for.inc.for.body11_crit_edge ]
  %type = getelementptr %struct.hid_usage, ptr %9, i32 %j.040, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %11)
  %cmp13 = icmp eq i8 %11, 17
  br i1 %cmp13, label %land.lhs.true, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value, align 4
  %arrayidx15 = getelementptr i32, ptr %13, i32 %j.040
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp ne i32 %15, 0
  %add = zext i1 %tobool.not to i32
  %spec.select = add i32 %count.239, %add
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body11.for.inc_crit_edge
  %count.3 = phi i32 [ %count.239, %for.body11.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc = add nuw i32 %j.040, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.inc16_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.inc.for.inc16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc16

for.inc16:                                        ; preds = %for.inc.for.inc16_crit_edge, %for.body6.for.inc16_crit_edge
  %count.2.lcssa = phi i32 [ %count.143, %for.body6.for.inc16_crit_edge ], [ %count.3, %for.inc.for.inc16_crit_edge ]
  %inc17 = add nuw i32 %i.044, 1
  %exitcond51.not = icmp eq i32 %inc17, %3
  br i1 %exitcond51.not, label %for.inc16.for.cond.loopexit_crit_edge, label %for.inc16.for.body6_crit_edge

for.inc16.for.body6_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.inc16.for.cond.loopexit_crit_edge:            ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end25:                                        ; preds = %for.cond.loopexit.for.end25_crit_edge, %entry.for.end25_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end25_crit_edge ], [ %count.1.lcssa, %for.cond.loopexit.for.end25_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidinput_connect(ptr noundef %hid, i32 noundef %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 19
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %2 = ptrtoint ptr %inputs to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %inputs, ptr %inputs, align 4
  %prev.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %inputs, ptr %prev.i, align 4
  %led_work = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 16
  tail call void @__init_work(ptr noundef %led_work, i32 noundef 0) #10
  %4 = ptrtoint ptr %led_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %led_work, align 4
  %lockdep_map = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @hidinput_connect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry4 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i233 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 16, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i233 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry4, ptr %prev.i233, align 4
  %func = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 16, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hidinput_led_worker, ptr %func, align 4
  %status = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 32
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %and = and i32 %9, -5
  store i32 %and, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

for.cond.preheader:                               ; preds = %entry
  %maxcollection = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 6
  %10 = ptrtoint ptr %maxcollection to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxcollection, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp299.not = icmp eq i32 %11, 0
  br i1 %cmp299.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %collection = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 4
  %12 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %collection, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0300 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %type = getelementptr %struct.hid_collection, ptr %13, i32 %i.0300, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch232 = icmp ult i32 %15, 2
  br i1 %switch232, label %if.then9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %usage = getelementptr %struct.hid_collection, ptr %13, i32 %i.0300, i32 2
  %16 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usage, align 4
  %18 = add i32 %17, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %18)
  %19 = icmp ult i32 %18, 9
  %20 = add i32 %17, -851970
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %21 = icmp ult i32 %20, 5
  %or.cond = or i1 %19, %21
  br i1 %or.cond, label %if.then9.for.end_crit_edge, label %lor.lhs.false19

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false19:                                  ; preds = %if.then9
  %22 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %17, label %lor.lhs.false19.for.inc_crit_edge [
    i32 65664, label %lor.lhs.false19.for.end_crit_edge
    i32 786433, label %lor.lhs.false19.for.end_crit_edge360
    i32 65548, label %lor.lhs.false19.for.end_crit_edge361
  ]

lor.lhs.false19.for.end_crit_edge361:             ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false19.for.end_crit_edge360:             ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false19.for.end_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0300, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.cleanup154_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup154_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup154

for.end:                                          ; preds = %lor.lhs.false19.for.end_crit_edge, %lor.lhs.false19.for.end_crit_edge360, %lor.lhs.false19.for.end_crit_edge361, %if.then9.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0300, %if.then9.for.end_crit_edge ], [ %i.0300, %lor.lhs.false19.for.end_crit_edge ], [ %i.0300, %lor.lhs.false19.for.end_crit_edge360 ], [ %i.0300, %lor.lhs.false19.for.end_crit_edge361 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %11)
  %cmp31 = icmp eq i32 %i.0.lcssa, %11
  br i1 %cmp31, label %for.end.cleanup154_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

for.end.cleanup154_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup154

if.end34:                                         ; preds = %for.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %report_list.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 2, i32 1
  %23 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %rep.063.i = load ptr, ptr %report_list.i, align 4
  %cmp.not64.i = icmp eq ptr %rep.063.i, %report_list.i
  br i1 %cmp.not64.i, label %if.end34.report_features.exit_crit_edge, label %for.cond2.preheader.lr.ph.i

if.end34.report_features.exit_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %report_features.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %if.end34
  %24 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver, align 8
  %feature_mapping.i = getelementptr inbounds %struct.hid_driver, ptr %25, i32 0, i32 16
  br label %for.cond2.preheader.i

for.cond.loopexit.i:                              ; preds = %for.inc27.i.for.cond.loopexit.i_crit_edge, %for.cond2.preheader.i.for.cond.loopexit.i_crit_edge
  %26 = ptrtoint ptr %rep.065.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %rep.0.i = load ptr, ptr %rep.065.i, align 4
  %cmp.not.i = icmp eq ptr %rep.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.report_features.exit_crit_edge, label %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge

for.cond.loopexit.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i

for.cond.loopexit.i.report_features.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %report_features.exit

for.cond2.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %rep.065.i = phi ptr [ %rep.063.i, %for.cond2.preheader.lr.ph.i ], [ %rep.0.i, %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %rep.065.i, i32 0, i32 6
  %27 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp361.not.i = icmp eq i32 %28, 0
  br i1 %cmp361.not.i, label %for.cond2.preheader.i.for.cond.loopexit.i_crit_edge, label %for.cond2.preheader.i.for.body4.i_crit_edge

for.cond2.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body4.i

for.cond2.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

for.body4.i:                                      ; preds = %for.inc27.i.for.body4.i_crit_edge, %for.cond2.preheader.i.for.body4.i_crit_edge
  %i.062.i = phi i32 [ %inc28.i, %for.inc27.i.for.body4.i_crit_edge ], [ 0, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.hid_report, ptr %rep.065.i, i32 0, i32 5, i32 %i.062.i
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx5.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.i = icmp eq i32 %32, 0
  br i1 %cmp6.i, label %for.body4.i.for.inc27.i_crit_edge, label %for.cond7.preheader.i

for.body4.i.for.inc27.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.i

for.cond7.preheader.i:                            ; preds = %for.body4.i
  %maxusage58.i = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %maxusage58.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxusage58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1059.not.i = icmp eq i32 %34, 0
  br i1 %cmp1059.not.i, label %for.cond7.preheader.i.for.inc27.i_crit_edge, label %for.cond7.preheader.i.for.body11.i_crit_edge

for.cond7.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond7.preheader.i
  br label %for.body11.i

for.cond7.preheader.i.for.inc27.i_crit_edge:      ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.cond7.preheader.i.for.body11.i_crit_edge
  %35 = phi ptr [ %45, %for.inc.i.for.body11.i_crit_edge ], [ %30, %for.cond7.preheader.i.for.body11.i_crit_edge ]
  %j.060.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.cond7.preheader.i.for.body11.i_crit_edge ]
  %usage14.i = getelementptr inbounds %struct.hid_field, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %usage14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usage14.i, align 4
  %arrayidx15.i = getelementptr %struct.hid_usage, ptr %37, i32 %j.060.i
  %38 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 393248, i32 %39)
  %cmp17.i = icmp eq i32 %39, 393248
  br i1 %cmp17.i, label %if.then18.i, label %for.body11.i.if.end21.i_crit_edge

for.body11.i.if.end21.i_crit_edge:                ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then18.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hidinput_setup_battery(ptr noundef %hid, i32 noundef 2, ptr noundef %35, i1 noundef zeroext false) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %for.body11.i.if.end21.i_crit_edge
  %40 = ptrtoint ptr %feature_mapping.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %feature_mapping.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end21.i.for.inc.i_crit_edge, label %if.then22.i

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx5.i, align 4
  tail call void %41(ptr noundef %hid, ptr noundef %43, ptr noundef %arrayidx15.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i, %if.end21.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.060.i, 1
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx5.i, align 4
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %maxusage.i, align 4
  %cmp10.i = icmp ult i32 %inc.i, %47
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc27.i_crit_edge

for.inc.i.for.inc27.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc27.i:                                      ; preds = %for.inc.i.for.inc27.i_crit_edge, %for.cond7.preheader.i.for.inc27.i_crit_edge, %for.body4.i.for.inc27.i_crit_edge
  %inc28.i = add nuw i32 %i.062.i, 1
  %48 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %maxfield.i, align 4
  %cmp3.i = icmp ult i32 %inc28.i, %49
  br i1 %cmp3.i, label %for.inc27.i.for.body4.i_crit_edge, label %for.inc27.i.for.cond.loopexit.i_crit_edge

for.inc27.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

for.inc27.i.for.body4.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i

report_features.exit:                             ; preds = %for.cond.loopexit.i.report_features.exit_crit_edge, %if.end34.report_features.exit_crit_edge
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %maxapplication = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 7
  %name.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 39
  %phys.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 40
  %uniq.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 41
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 8
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 10
  %product.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 11
  %version.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 12
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  br label %for.body37

for.body37:                                       ; preds = %for.inc89.for.body37_crit_edge, %report_features.exit
  %hidinput.0320 = phi ptr [ null, %report_features.exit ], [ %hidinput.5, %for.inc89.for.body37_crit_edge ]
  %k.0318 = phi i32 [ 0, %report_features.exit ], [ %inc90, %for.inc89.for.body37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.0318)
  %cmp38 = icmp eq i32 %k.0318, 1
  br i1 %cmp38, label %land.lhs.true39, label %for.body37.if.end43_crit_edge

for.body37.if.end43_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true39:                                  ; preds = %for.body37
  %50 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %quirks, align 8
  %and40 = and i32 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end43_crit_edge, label %land.lhs.true39.for.end91_crit_edge

land.lhs.true39.for.end91_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

land.lhs.true39.if.end43_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true39.if.end43_crit_edge, %for.body37.if.end43_crit_edge
  %report_list = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 %k.0318, i32 1
  %52 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %report.0313 = load ptr, ptr %report_list, align 4
  %cmp50.not314 = icmp eq ptr %report.0313, %report_list
  br i1 %cmp50.not314, label %if.end43.for.inc89_crit_edge, label %if.end43.for.body51_crit_edge

if.end43.for.body51_crit_edge:                    ; preds = %if.end43
  br label %for.body51

if.end43.for.inc89_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc89

for.body51:                                       ; preds = %for.inc82.for.body51_crit_edge, %if.end43.for.body51_crit_edge
  %report.0316 = phi ptr [ %report.0, %for.inc82.for.body51_crit_edge ], [ %report.0313, %if.end43.for.body51_crit_edge ]
  %hidinput.1315 = phi ptr [ %hidinput.4, %for.inc82.for.body51_crit_edge ], [ %hidinput.0320, %if.end43.for.body51_crit_edge ]
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report.0316, i32 0, i32 6
  %53 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool52.not = icmp eq i32 %54, 0
  br i1 %tobool52.not, label %for.body51.for.inc82_crit_edge, label %if.end54

for.body51.for.inc82_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc82

if.end54:                                         ; preds = %for.body51
  %application55 = getelementptr inbounds %struct.hid_report, ptr %report.0316, i32 0, i32 4
  %55 = ptrtoint ptr %application55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %application55, align 4
  %57 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %quirks, align 8
  %and57 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end54
  %device.i = getelementptr inbounds %struct.hid_report, ptr %report.0316, i32 0, i32 8
  %59 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i, align 4
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %60, i32 0, i32 36
  %61 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %hidinput.018.i = load ptr, ptr %inputs.i, align 4
  %cmp.not19.i = icmp eq ptr %hidinput.018.i, %inputs.i
  br i1 %cmp.not19.i, label %if.then59.if.then70_crit_edge, label %for.body.lr.ph.i

if.then59.if.then70_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

for.body.lr.ph.i:                                 ; preds = %if.then59
  %id4.i = getelementptr inbounds %struct.hid_report, ptr %report.0316, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i236.for.body.i_crit_edge, %for.body.lr.ph.i
  %hidinput.020.i = phi ptr [ %hidinput.018.i, %for.body.lr.ph.i ], [ %hidinput.0.i, %for.inc.i236.for.body.i_crit_edge ]
  %report2.i = getelementptr inbounds %struct.hid_input, ptr %hidinput.020.i, i32 0, i32 1
  %62 = ptrtoint ptr %report2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %report2.i, align 4
  %tobool.not.i234 = icmp eq ptr %63, null
  br i1 %tobool.not.i234, label %for.body.i.for.inc.i236_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i236_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i236

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.hid_report, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id.i, align 4
  %66 = ptrtoint ptr %id4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp5.i = icmp eq i32 %65, %67
  br i1 %cmp5.i, label %land.lhs.true.i.if.end68_crit_edge, label %land.lhs.true.i.for.inc.i236_crit_edge

land.lhs.true.i.for.inc.i236_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i236

land.lhs.true.i.if.end68_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.inc.i236:                                     ; preds = %land.lhs.true.i.for.inc.i236_crit_edge, %for.body.i.for.inc.i236_crit_edge
  %68 = ptrtoint ptr %hidinput.020.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %hidinput.0.i = load ptr, ptr %hidinput.020.i, align 4
  %cmp.not.i235 = icmp eq ptr %hidinput.0.i, %inputs.i
  br i1 %cmp.not.i235, label %for.inc.i236.if.then70_crit_edge, label %for.inc.i236.for.body.i_crit_edge

for.inc.i236.for.body.i_crit_edge:                ; preds = %for.inc.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i236.if.then70_crit_edge:                 ; preds = %for.inc.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

if.else:                                          ; preds = %if.end54
  %69 = ptrtoint ptr %maxapplication to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %maxapplication, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp60 = icmp ult i32 %70, 2
  %and63 = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond231 = select i1 %cmp60, i1 true, i1 %tobool64.not
  br i1 %or.cond231, label %if.else.if.end68_crit_edge, label %if.then65

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then65:                                        ; preds = %if.else
  %device.i238 = getelementptr inbounds %struct.hid_report, ptr %report.0316, i32 0, i32 8
  %71 = ptrtoint ptr %device.i238 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device.i238, align 4
  %inputs.i239 = getelementptr inbounds %struct.hid_device, ptr %72, i32 0, i32 36
  %73 = ptrtoint ptr %inputs.i239 to i32
  call void @__asan_load4_noabort(i32 %73)
  %hidinput.027.i = load ptr, ptr %inputs.i239, align 4
  %cmp.not28.i = icmp eq ptr %hidinput.027.i, %inputs.i239
  br i1 %cmp.not28.i, label %if.then65.if.then70_crit_edge, label %if.then65.for.body.i242_crit_edge

if.then65.for.body.i242_crit_edge:                ; preds = %if.then65
  br label %for.body.i242

if.then65.if.then70_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

for.body.i242:                                    ; preds = %for.inc.i246.for.body.i242_crit_edge, %if.then65.for.body.i242_crit_edge
  %hidinput.029.i = phi ptr [ %hidinput.0.i244, %for.inc.i246.for.body.i242_crit_edge ], [ %hidinput.027.i, %if.then65.for.body.i242_crit_edge ]
  %application.i = getelementptr inbounds %struct.hid_input, ptr %hidinput.029.i, i32 0, i32 6
  %74 = ptrtoint ptr %application.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %application.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %56)
  %cmp3.i241 = icmp eq i32 %75, %56
  br i1 %cmp3.i241, label %for.body.i242.if.end68_crit_edge, label %if.end.i

for.body.i242.if.end68_crit_edge:                 ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end.i:                                         ; preds = %for.body.i242
  %76 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %56, label %if.end.i.for.inc.i246_crit_edge [
    i32 65664, label %if.end.i.land.lhs.true.i243_crit_edge
    i32 786433, label %if.end.i.land.lhs.true.i243_crit_edge362
  ]

if.end.i.land.lhs.true.i243_crit_edge362:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i243

if.end.i.land.lhs.true.i243_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i243

if.end.i.for.inc.i246_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i246

land.lhs.true.i243:                               ; preds = %if.end.i.land.lhs.true.i243_crit_edge, %if.end.i.land.lhs.true.i243_crit_edge362
  call void @__sanitizer_cov_trace_const_cmp4(i32 65542, i32 %75)
  %cmp9.i = icmp eq i32 %75, 65542
  br i1 %cmp9.i, label %land.lhs.true.i243.if.end68_crit_edge, label %land.lhs.true.i243.for.inc.i246_crit_edge

land.lhs.true.i243.for.inc.i246_crit_edge:        ; preds = %land.lhs.true.i243
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i246

land.lhs.true.i243.if.end68_crit_edge:            ; preds = %land.lhs.true.i243
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.inc.i246:                                     ; preds = %land.lhs.true.i243.for.inc.i246_crit_edge, %if.end.i.for.inc.i246_crit_edge
  %77 = ptrtoint ptr %hidinput.029.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %hidinput.0.i244 = load ptr, ptr %hidinput.029.i, align 4
  %cmp.not.i245 = icmp eq ptr %hidinput.0.i244, %inputs.i239
  br i1 %cmp.not.i245, label %for.inc.i246.if.then70_crit_edge, label %for.inc.i246.for.body.i242_crit_edge

for.inc.i246.for.body.i242_crit_edge:             ; preds = %for.inc.i246
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i242

for.inc.i246.if.then70_crit_edge:                 ; preds = %for.inc.i246
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

if.end68:                                         ; preds = %land.lhs.true.i243.if.end68_crit_edge, %for.body.i242.if.end68_crit_edge, %if.else.if.end68_crit_edge, %land.lhs.true.i.if.end68_crit_edge
  %hidinput.2 = phi ptr [ %hidinput.1315, %if.else.if.end68_crit_edge ], [ %hidinput.029.i, %for.body.i242.if.end68_crit_edge ], [ %hidinput.029.i, %land.lhs.true.i243.if.end68_crit_edge ], [ %hidinput.020.i, %land.lhs.true.i.if.end68_crit_edge ]
  %tobool69.not = icmp eq ptr %hidinput.2, null
  br i1 %tobool69.not, label %if.end68.if.then70_crit_edge, label %if.end68.if.end75_crit_edge

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end68.if.then70_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

if.then70:                                        ; preds = %if.end68.if.then70_crit_edge, %for.inc.i246.if.then70_crit_edge, %if.then65.if.then70_crit_edge, %for.inc.i236.if.then70_crit_edge, %if.then59.if.then70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 36) #14
  %call1.i = tail call ptr @input_allocate_device() #10
  %tobool.not.i248 = icmp eq ptr %call7.i.i.i, null
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %or.cond.i = select i1 %tobool.not.i248, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.then70.hidinput_allocate.exit.thread_crit_edge, label %if.end.i249

if.then70.hidinput_allocate.exit.thread_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_allocate.exit.thread

if.end.i249:                                      ; preds = %if.then70
  %79 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %quirks, align 8
  %and.i = and i32 %80, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i249.if.end37.i_crit_edge, label %land.lhs.true.i250

if.end.i249.if.end37.i_crit_edge:                 ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

land.lhs.true.i250:                               ; preds = %if.end.i249
  %81 = ptrtoint ptr %maxapplication to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %maxapplication, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i = icmp ugt i32 %82, 1
  br i1 %cmp.i, label %if.then4.i, label %land.lhs.true.i250.if.end37.i_crit_edge

land.lhs.true.i250.if.end37.i_crit_edge:          ; preds = %land.lhs.true.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then4.i:                                       ; preds = %land.lhs.true.i250
  %83 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %56, label %if.then4.i.if.end37.i_crit_edge [
    i32 65542, label %if.then4.i.if.then17.i_crit_edge
    i32 65543, label %sw.bb5.i
    i32 65538, label %sw.bb6.i
    i32 851970, label %sw.bb7.i
    i32 852000, label %sw.bb8.i
    i32 851972, label %sw.bb9.i
    i32 851973, label %sw.bb10.i
    i32 65664, label %sw.bb11.i
    i32 786433, label %sw.bb12.i
    i32 65548, label %sw.bb13.i
    i32 65550, label %sw.bb14.i
  ]

if.then4.i.if.then17.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then4.i.if.end37.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

sw.bb5.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb6.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb7.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb8.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb9.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb10.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb11.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb12.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb13.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

sw.bb14.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then17.i:                                      ; preds = %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.then4.i.if.then17.i_crit_edge
  %suffix.0.ph.i = phi ptr [ @.str.31, %sw.bb14.i ], [ @.str.30, %sw.bb13.i ], [ @.str.29, %sw.bb12.i ], [ @.str.28, %sw.bb11.i ], [ @.str.27, %sw.bb10.i ], [ @.str.26, %sw.bb9.i ], [ @.str.25, %sw.bb8.i ], [ @.str.24, %sw.bb7.i ], [ @.str.23, %sw.bb6.i ], [ @.str.22, %sw.bb5.i ], [ @.str.21, %if.then4.i.if.then17.i_crit_edge ]
  %call18.i = tail call i32 @strlen(ptr noundef %name.i) #15
  %call19.i = tail call i32 @strlen(ptr noundef nonnull %suffix.0.ph.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %call19.i)
  %cmp20.i = icmp ult i32 %call18.i, %call19.i
  br i1 %cmp20.i, label %if.then17.i.if.then27.i_crit_edge, label %lor.lhs.false21.i

if.then17.i.if.then27.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27.i

lor.lhs.false21.i:                                ; preds = %if.then17.i
  %add.ptr.i = getelementptr i8, ptr %name.i, i32 %call18.i
  %idx.neg.i = sub i32 0, %call19.i
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %call25.i = tail call i32 @strcmp(ptr noundef %add.ptr24.i, ptr noundef nonnull %suffix.0.ph.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %lor.lhs.false21.i.if.end37.i_crit_edge, label %lor.lhs.false21.i.if.then27.i_crit_edge

lor.lhs.false21.i.if.then27.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27.i

lor.lhs.false21.i.if.end37.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then27.i:                                      ; preds = %lor.lhs.false21.i.if.then27.i_crit_edge, %if.then17.i.if.then27.i_crit_edge
  %call30.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, ptr noundef %name.i, ptr noundef nonnull %suffix.0.ph.i) #10
  %name31.i = getelementptr inbounds %struct.hid_input, ptr %call7.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %name31.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call30.i, ptr %name31.i, align 8
  %tobool33.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool33.not.i, label %if.then27.i.hidinput_allocate.exit.thread_crit_edge, label %if.then27.i.if.end37.i_crit_edge

if.then27.i.if.end37.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then27.i.hidinput_allocate.exit.thread_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_allocate.exit.thread

if.end37.i:                                       ; preds = %if.then27.i.if.end37.i_crit_edge, %lor.lhs.false21.i.if.end37.i_crit_edge, %if.then4.i.if.end37.i_crit_edge, %land.lhs.true.i250.if.end37.i_crit_edge, %if.end.i249.if.end37.i_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 40, i32 8
  %85 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %hid, ptr %driver_data.i.i.i, align 4
  %event.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 34
  %86 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @hidinput_input_event, ptr %event.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 31
  %87 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @hidinput_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 32
  %88 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @hidinput_close, ptr %close.i, align 4
  %setkeycode.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 18
  %89 = ptrtoint ptr %setkeycode.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @hidinput_setkeycode, ptr %setkeycode.i, align 8
  %getkeycode.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 19
  %90 = ptrtoint ptr %getkeycode.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @hidinput_getkeycode, ptr %getkeycode.i, align 4
  %name38.i = getelementptr inbounds %struct.hid_input, ptr %call7.i.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %name38.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name38.i, align 8
  %tobool39.not.i = icmp eq ptr %92, null
  %cond.i = select i1 %tobool39.not.i, ptr %name.i, ptr %92
  %93 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %cond.i, ptr %call1.i, align 8
  %phys45.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 1
  %94 = ptrtoint ptr %phys45.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %phys.i, ptr %phys45.i, align 4
  %uniq47.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 2
  %95 = ptrtoint ptr %uniq47.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %uniq.i, ptr %uniq47.i, align 8
  %96 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %bus.i, align 8
  %id.i251 = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 3
  %98 = ptrtoint ptr %id.i251 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %id.i251, align 4
  %99 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vendor.i, align 4
  %conv.i = trunc i32 %100 to i16
  %vendor49.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %vendor49.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i, ptr %vendor49.i, align 2
  %102 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %product.i, align 8
  %conv50.i = trunc i32 %103 to i16
  %product52.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 3, i32 2
  %104 = ptrtoint ptr %product52.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv50.i, ptr %product52.i, align 4
  %105 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %version.i, align 4
  %conv53.i = trunc i32 %106 to i16
  %version55.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 3, i32 3
  %107 = ptrtoint ptr %version55.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv53.i, ptr %version55.i, align 2
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call1.i, i32 0, i32 40, i32 1
  %108 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %dev.i, ptr %parent.i, align 8
  %input.i = getelementptr inbounds %struct.hid_input, ptr %call7.i.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call1.i, ptr %input.i, align 4
  %application57.i = getelementptr inbounds %struct.hid_input, ptr %call7.i.i.i, i32 0, i32 6
  %110 = ptrtoint ptr %application57.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %56, ptr %application57.i, align 8
  %111 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %112, ptr noundef %inputs) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end37.i.hidinput_allocate.exit_crit_edge

if.end37.i.hidinput_allocate.exit_crit_edge:      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_allocate.exit

if.end.i.i.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %114 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %inputs, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev3.i.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %call7.i.i.i, ptr %112, align 4
  br label %hidinput_allocate.exit

hidinput_allocate.exit.thread:                    ; preds = %if.then27.i.hidinput_allocate.exit.thread_crit_edge, %if.then70.hidinput_allocate.exit.thread_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #10
  tail call void @input_free_device(ptr noundef %call1.i) #10
  br label %out_unwind.sink.split

hidinput_allocate.exit:                           ; preds = %if.end.i.i.i, %if.end37.i.hidinput_allocate.exit_crit_edge
  %reports.i = getelementptr inbounds %struct.hid_input, ptr %call7.i.i.i, i32 0, i32 5
  %117 = ptrtoint ptr %reports.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %reports.i, ptr %reports.i, align 8
  %prev.i110.i = getelementptr inbounds %struct.hid_input, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %118 = ptrtoint ptr %prev.i110.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %reports.i, ptr %prev.i110.i, align 4
  br label %if.end75

if.end75:                                         ; preds = %hidinput_allocate.exit, %if.end68.if.end75_crit_edge
  %hidinput.3 = phi ptr [ %hidinput.2, %if.end68.if.end75_crit_edge ], [ %call7.i.i.i, %hidinput_allocate.exit ]
  %119 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp23.not.i = icmp eq i32 %120, 0
  br i1 %cmp23.not.i, label %if.end75.hidinput_configure_usages.exit_crit_edge, label %if.end75.for.cond1.preheader.i_crit_edge

if.end75.for.cond1.preheader.i_crit_edge:         ; preds = %if.end75
  br label %for.cond1.preheader.i

if.end75.hidinput_configure_usages.exit_crit_edge: ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_configure_usages.exit

for.cond1.preheader.i:                            ; preds = %for.inc8.i.for.cond1.preheader.i_crit_edge, %if.end75.for.cond1.preheader.i_crit_edge
  %i.024.i = phi i32 [ %inc9.i, %for.inc8.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.end75.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hid_report, ptr %report.0316, i32 0, i32 5, i32 %i.024.i
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i, align 4
  %maxusage20.i = getelementptr inbounds %struct.hid_field, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %maxusage20.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %maxusage20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp221.not.i = icmp eq i32 %124, 0
  br i1 %cmp221.not.i, label %for.cond1.preheader.i.for.inc8.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.inc8.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %125 = phi ptr [ %129, %for.body3.i.for.body3.i_crit_edge ], [ %122, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %j.022.i = phi i32 [ %inc.i256, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usage.i, align 4
  %add.ptr.i255 = getelementptr %struct.hid_usage, ptr %127, i32 %j.022.i
  tail call fastcc void @hidinput_configure_usage(ptr noundef %hidinput.3, ptr noundef %125, ptr noundef %add.ptr.i255) #10
  %inc.i256 = add nuw i32 %j.022.i, 1
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i, align 4
  %maxusage.i257 = getelementptr inbounds %struct.hid_field, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %maxusage.i257 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %maxusage.i257, align 4
  %cmp2.i = icmp ult i32 %inc.i256, %131
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.inc8.i_crit_edge

for.body3.i.for.inc8.i_crit_edge:                 ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i

for.inc8.i:                                       ; preds = %for.body3.i.for.inc8.i_crit_edge, %for.cond1.preheader.i.for.inc8.i_crit_edge
  %inc9.i = add nuw i32 %i.024.i, 1
  %132 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %maxfield, align 4
  %cmp.i258 = icmp ult i32 %inc9.i, %133
  br i1 %cmp.i258, label %for.inc8.i.for.cond1.preheader.i_crit_edge, label %for.inc8.i.hidinput_configure_usages.exit_crit_edge

for.inc8.i.hidinput_configure_usages.exit_crit_edge: ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_configure_usages.exit

for.inc8.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i

hidinput_configure_usages.exit:                   ; preds = %for.inc8.i.hidinput_configure_usages.exit_crit_edge, %if.end75.hidinput_configure_usages.exit_crit_edge
  %134 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %quirks, align 8
  %and77 = and i32 %135, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %hidinput_configure_usages.exit.if.end81_crit_edge, label %if.then79

hidinput_configure_usages.exit.if.end81_crit_edge: ; preds = %hidinput_configure_usages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then79:                                        ; preds = %hidinput_configure_usages.exit
  call void @__sanitizer_cov_trace_pc() #12
  %report80 = getelementptr inbounds %struct.hid_input, ptr %hidinput.3, i32 0, i32 1
  %136 = ptrtoint ptr %report80 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %report.0316, ptr %report80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %hidinput_configure_usages.exit.if.end81_crit_edge
  %hidinput_list = getelementptr inbounds %struct.hid_report, ptr %report.0316, i32 0, i32 1
  %reports = getelementptr inbounds %struct.hid_input, ptr %hidinput.3, i32 0, i32 5
  %prev.i259 = getelementptr inbounds %struct.hid_input, ptr %hidinput.3, i32 0, i32 5, i32 1
  %137 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i259, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hidinput_list, ptr noundef %138, ptr noundef %reports) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end81.for.inc82_crit_edge

if.end81.for.inc82_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc82

if.end.i.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %hidinput_list, ptr %prev.i259, align 4
  %140 = ptrtoint ptr %hidinput_list to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %reports, ptr %hidinput_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hid_report, ptr %report.0316, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev3.i.i, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %hidinput_list, ptr %138, align 4
  br label %for.inc82

for.inc82:                                        ; preds = %if.end.i.i, %if.end81.for.inc82_crit_edge, %for.body51.for.inc82_crit_edge
  %hidinput.4 = phi ptr [ %hidinput.1315, %for.body51.for.inc82_crit_edge ], [ %hidinput.3, %if.end81.for.inc82_crit_edge ], [ %hidinput.3, %if.end.i.i ]
  %143 = ptrtoint ptr %report.0316 to i32
  call void @__asan_load4_noabort(i32 %143)
  %report.0 = load ptr, ptr %report.0316, align 4
  %cmp50.not = icmp eq ptr %report.0, %report_list
  br i1 %cmp50.not, label %for.inc82.for.inc89_crit_edge, label %for.inc82.for.body51_crit_edge

for.inc82.for.body51_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body51

for.inc82.for.inc89_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc89

for.inc89:                                        ; preds = %for.inc82.for.inc89_crit_edge, %if.end43.for.inc89_crit_edge
  %hidinput.5 = phi ptr [ %hidinput.0320, %if.end43.for.inc89_crit_edge ], [ %hidinput.4, %for.inc82.for.inc89_crit_edge ]
  %inc90 = add nuw nsw i32 %k.0318, 1
  %exitcond332.not = icmp eq i32 %inc90, 2
  br i1 %exitcond332.not, label %for.inc89.for.end91_crit_edge, label %for.inc89.for.body37_crit_edge

for.inc89.for.body37_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37

for.inc89.for.end91_crit_edge:                    ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.end91:                                        ; preds = %for.inc89.for.end91_crit_edge, %land.lhs.true39.for.end91_crit_edge
  %144 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %rep.027.i = load ptr, ptr %report_list.i, align 4
  %cmp.not28.i261 = icmp eq ptr %rep.027.i, %report_list.i
  br i1 %cmp.not28.i261, label %for.end91.for.end.i_crit_edge, label %for.end91.for.body.i262_crit_edge

for.end91.for.body.i262_crit_edge:                ; preds = %for.end91
  br label %for.body.i262

for.end91.for.end.i_crit_edge:                    ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i262:                                    ; preds = %for.inc.i267.for.body.i262_crit_edge, %for.end91.for.body.i262_crit_edge
  %rep.029.i = phi ptr [ %rep.0.i265, %for.inc.i267.for.body.i262_crit_edge ], [ %rep.027.i, %for.end91.for.body.i262_crit_edge ]
  %call.i = tail call fastcc zeroext i1 @__hidinput_change_resolution_multipliers(ptr noundef %hid, ptr noundef %rep.029.i, i1 noundef zeroext true) #10
  br i1 %call.i, label %if.then.i, label %for.body.i262.for.inc.i267_crit_edge

for.body.i262.for.inc.i267_crit_edge:             ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i267

if.then.i:                                        ; preds = %for.body.i262
  %call2.i = tail call i32 @__hid_request(ptr noundef %hid, ptr noundef %rep.029.i, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i263 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i263, label %if.then.i.for.inc.i267_crit_edge, label %if.then4.i264

if.then.i.for.inc.i267_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i267

if.then4.i264:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call fastcc zeroext i1 @__hidinput_change_resolution_multipliers(ptr noundef %hid, ptr noundef %rep.029.i, i1 noundef zeroext false) #10
  br label %hidinput_change_resolution_multipliers.exit

for.inc.i267:                                     ; preds = %if.then.i.for.inc.i267_crit_edge, %for.body.i262.for.inc.i267_crit_edge
  %145 = ptrtoint ptr %rep.029.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %rep.0.i265 = load ptr, ptr %rep.029.i, align 4
  %cmp.not.i266 = icmp eq ptr %rep.0.i265, %report_list.i
  br i1 %cmp.not.i266, label %for.inc.i267.for.end.i_crit_edge, label %for.inc.i267.for.body.i262_crit_edge

for.inc.i267.for.body.i262_crit_edge:             ; preds = %for.inc.i267
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i262

for.inc.i267.for.end.i_crit_edge:                 ; preds = %for.inc.i267
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i267.for.end.i_crit_edge, %for.end91.for.end.i_crit_edge
  tail call void @hid_setup_resolution_multiplier(ptr noundef %hid) #10
  br label %hidinput_change_resolution_multipliers.exit

hidinput_change_resolution_multipliers.exit:      ; preds = %for.end.i, %if.then4.i264
  %146 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %inputs, align 8
  %cmp105.not322 = icmp eq ptr %147, %inputs
  br i1 %cmp105.not322, label %hidinput_change_resolution_multipliers.exit.for.end128_crit_edge, label %for.body107.lr.ph

hidinput_change_resolution_multipliers.exit.for.end128_crit_edge: ; preds = %hidinput_change_resolution_multipliers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end128

for.body107.lr.ph:                                ; preds = %hidinput_change_resolution_multipliers.exit
  %input_configured = getelementptr inbounds %struct.hid_driver, ptr %1, i32 0, i32 15
  %report_list.i276 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0, i32 1
  %report_list.1.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  br label %for.body107

for.body107:                                      ; preds = %for.inc122.for.body107_crit_edge, %for.body107.lr.ph
  %hidinput.6323 = phi ptr [ %147, %for.body107.lr.ph ], [ %next.0326, %for.inc122.for.body107_crit_edge ]
  %148 = ptrtoint ptr %hidinput.6323 to i32
  call void @__asan_load4_noabort(i32 %148)
  %next.0326 = load ptr, ptr %hidinput.6323, align 4
  %149 = ptrtoint ptr %input_configured to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %input_configured, align 4
  %tobool108.not = icmp eq ptr %150, null
  br i1 %tobool108.not, label %for.body107.if.end114_crit_edge, label %land.lhs.true109

for.body107.if.end114_crit_edge:                  ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

land.lhs.true109:                                 ; preds = %for.body107
  %call111 = tail call i32 %150(ptr noundef %hid, ptr noundef %hidinput.6323) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %land.lhs.true109.if.end114_crit_edge, label %land.lhs.true109.out_unwind_crit_edge

land.lhs.true109.out_unwind_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unwind

land.lhs.true109.if.end114_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.end114:                                        ; preds = %land.lhs.true109.if.end114_crit_edge, %for.body107.if.end114_crit_edge
  %input.i268 = getelementptr inbounds %struct.hid_input, ptr %hidinput.6323, i32 0, i32 2
  %151 = ptrtoint ptr %input.i268 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %input.i268, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %evbit.i, align 4
  %arrayidx5.i269 = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 0
  %155 = ptrtoint ptr %arrayidx5.i269 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx5.i269, align 4
  %or6.i = or i32 %156, %154
  %arrayidx5.1.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 1
  %157 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx5.1.i, align 4
  %or6.1.i = or i32 %or6.i, %158
  %arrayidx5.2.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 2
  %159 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx5.2.i, align 4
  %or6.2.i = or i32 %or6.1.i, %160
  %arrayidx5.3.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 3
  %161 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx5.3.i, align 4
  %or6.3.i = or i32 %or6.2.i, %162
  %arrayidx5.4.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 4
  %163 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx5.4.i, align 4
  %or6.4.i = or i32 %or6.3.i, %164
  %arrayidx5.5.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 5
  %165 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx5.5.i, align 4
  %or6.5.i = or i32 %or6.4.i, %166
  %arrayidx5.6.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 6
  %167 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx5.6.i, align 4
  %or6.6.i = or i32 %or6.5.i, %168
  %arrayidx5.7.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 7
  %169 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx5.7.i, align 4
  %or6.7.i = or i32 %or6.6.i, %170
  %arrayidx5.8.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 8
  %171 = ptrtoint ptr %arrayidx5.8.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx5.8.i, align 4
  %or6.8.i = or i32 %or6.7.i, %172
  %arrayidx5.9.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 9
  %173 = ptrtoint ptr %arrayidx5.9.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx5.9.i, align 4
  %or6.9.i = or i32 %or6.8.i, %174
  %arrayidx5.10.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 10
  %175 = ptrtoint ptr %arrayidx5.10.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx5.10.i, align 4
  %or6.10.i = or i32 %or6.9.i, %176
  %arrayidx5.11.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 11
  %177 = ptrtoint ptr %arrayidx5.11.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx5.11.i, align 4
  %or6.11.i = or i32 %or6.10.i, %178
  %arrayidx5.12.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 12
  %179 = ptrtoint ptr %arrayidx5.12.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx5.12.i, align 4
  %or6.12.i = or i32 %or6.11.i, %180
  %arrayidx5.13.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 13
  %181 = ptrtoint ptr %arrayidx5.13.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx5.13.i, align 4
  %or6.13.i = or i32 %or6.12.i, %182
  %arrayidx5.14.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 14
  %183 = ptrtoint ptr %arrayidx5.14.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx5.14.i, align 4
  %or6.14.i = or i32 %or6.13.i, %184
  %arrayidx5.15.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 15
  %185 = ptrtoint ptr %arrayidx5.15.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx5.15.i, align 4
  %or6.15.i = or i32 %or6.14.i, %186
  %arrayidx5.16.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 16
  %187 = ptrtoint ptr %arrayidx5.16.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx5.16.i, align 4
  %or6.16.i = or i32 %or6.15.i, %188
  %arrayidx5.17.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 17
  %189 = ptrtoint ptr %arrayidx5.17.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx5.17.i, align 4
  %or6.17.i = or i32 %or6.16.i, %190
  %arrayidx5.18.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 18
  %191 = ptrtoint ptr %arrayidx5.18.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx5.18.i, align 4
  %or6.18.i = or i32 %or6.17.i, %192
  %arrayidx5.19.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 19
  %193 = ptrtoint ptr %arrayidx5.19.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx5.19.i, align 4
  %or6.19.i = or i32 %or6.18.i, %194
  %arrayidx5.20.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 20
  %195 = ptrtoint ptr %arrayidx5.20.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx5.20.i, align 4
  %or6.20.i = or i32 %or6.19.i, %196
  %arrayidx5.21.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 21
  %197 = ptrtoint ptr %arrayidx5.21.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx5.21.i, align 4
  %or6.21.i = or i32 %or6.20.i, %198
  %arrayidx5.22.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 22
  %199 = ptrtoint ptr %arrayidx5.22.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx5.22.i, align 4
  %or6.22.i = or i32 %or6.21.i, %200
  %arrayidx5.23.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 6, i32 23
  %201 = ptrtoint ptr %arrayidx5.23.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx5.23.i, align 4
  %or6.23.i = or i32 %or6.22.i, %202
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 7
  %203 = ptrtoint ptr %relbit.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %relbit.i, align 4
  %or15.i = or i32 %or6.23.i, %204
  %arrayidx23.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 8, i32 0
  %205 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx23.i, align 4
  %or24.i = or i32 %or15.i, %206
  %arrayidx23.1.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 8, i32 1
  %207 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx23.1.i, align 4
  %or24.1.i = or i32 %or24.i, %208
  %mscbit.i = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 9
  %209 = ptrtoint ptr %mscbit.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %mscbit.i, align 4
  %or33.i = or i32 %or24.1.i, %210
  %ledbit.i = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 10
  %211 = ptrtoint ptr %ledbit.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %ledbit.i, align 4
  %or42.i = or i32 %or33.i, %212
  %sndbit.i = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 11
  %213 = ptrtoint ptr %sndbit.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %sndbit.i, align 4
  %or51.i = or i32 %or42.i, %214
  %arrayidx59.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 12, i32 0
  %215 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx59.i, align 4
  %or60.i = or i32 %or51.i, %216
  %arrayidx59.1.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 12, i32 1
  %217 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx59.1.i, align 4
  %or60.1.i = or i32 %or60.i, %218
  %arrayidx59.2.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 12, i32 2
  %219 = ptrtoint ptr %arrayidx59.2.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx59.2.i, align 4
  %or60.2.i = or i32 %or60.1.i, %220
  %arrayidx59.3.i = getelementptr %struct.input_dev, ptr %152, i32 0, i32 12, i32 3
  %221 = ptrtoint ptr %arrayidx59.3.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx59.3.i, align 4
  %or60.3.i = or i32 %or60.2.i, %222
  %swbit.i = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 13
  %223 = ptrtoint ptr %swbit.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %swbit.i, align 4
  %or69.i = or i32 %or60.3.i, %224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or69.i)
  %tobool.i.not = icmp eq i32 %or69.i, 0
  br i1 %tobool.i.not, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end114
  %call.i.i.i270 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hidinput.6323) #10
  br i1 %call.i.i.i270, label %if.end.i.i.i271, label %if.then116.if.end.i277_crit_edge

if.then116.if.end.i277_crit_edge:                 ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i277

if.end.i.i.i271:                                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %hidinput.6323, i32 0, i32 1
  %225 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %prev.i.i.i, align 4
  %227 = ptrtoint ptr %hidinput.6323 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hidinput.6323, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %226, ptr %prev1.i.i.i.i, align 4
  %230 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile ptr %228, ptr %226, align 4
  br label %if.end.i277

if.end.i277:                                      ; preds = %if.end.i.i.i271, %if.then116.if.end.i277_crit_edge
  %231 = ptrtoint ptr %hidinput.6323 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr inttoptr (i32 256 to ptr), ptr %hidinput.6323, align 4
  %prev.i.i272 = getelementptr inbounds %struct.list_head, ptr %hidinput.6323, i32 0, i32 1
  %232 = ptrtoint ptr %prev.i.i272 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i272, align 4
  %233 = ptrtoint ptr %input.i268 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %input.i268, align 4
  tail call void @input_free_device(ptr noundef %234) #10
  %name.i274 = getelementptr inbounds %struct.hid_input, ptr %hidinput.6323, i32 0, i32 3
  %235 = ptrtoint ptr %name.i274 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %name.i274, align 4
  tail call void @kfree(ptr noundef %236) #10
  %237 = ptrtoint ptr %report_list.i276 to i32
  call void @__asan_load4_noabort(i32 %237)
  %report.049.i = load ptr, ptr %report_list.i276, align 4
  %cmp7.not50.i = icmp eq ptr %report.049.i, %report_list.i276
  br i1 %cmp7.not50.i, label %if.end.i277.land.lhs.true.1.i_crit_edge, label %if.end.i277.for.cond9.preheader.i_crit_edge

if.end.i277.for.cond9.preheader.i_crit_edge:      ; preds = %if.end.i277
  br label %for.cond9.preheader.i

if.end.i277.land.lhs.true.1.i_crit_edge:          ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.1.i

for.cond2.loopexit.i:                             ; preds = %for.inc.i282.for.cond2.loopexit.i_crit_edge, %for.cond9.preheader.i.for.cond2.loopexit.i_crit_edge
  %238 = ptrtoint ptr %report.051.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %report.0.i = load ptr, ptr %report.051.i, align 4
  %cmp7.not.i = icmp eq ptr %report.0.i, %report_list.i276
  br i1 %cmp7.not.i, label %for.cond2.loopexit.i.land.lhs.true.1.i_crit_edge, label %for.cond2.loopexit.i.for.cond9.preheader.i_crit_edge

for.cond2.loopexit.i.for.cond9.preheader.i_crit_edge: ; preds = %for.cond2.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader.i

for.cond2.loopexit.i.land.lhs.true.1.i_crit_edge: ; preds = %for.cond2.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.1.i

for.cond9.preheader.i:                            ; preds = %for.cond2.loopexit.i.for.cond9.preheader.i_crit_edge, %if.end.i277.for.cond9.preheader.i_crit_edge
  %report.051.i = phi ptr [ %report.0.i, %for.cond2.loopexit.i.for.cond9.preheader.i_crit_edge ], [ %report.049.i, %if.end.i277.for.cond9.preheader.i_crit_edge ]
  %maxfield.i278 = getelementptr inbounds %struct.hid_report, ptr %report.051.i, i32 0, i32 6
  %239 = ptrtoint ptr %maxfield.i278 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %maxfield.i278, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp1047.not.i = icmp eq i32 %240, 0
  br i1 %cmp1047.not.i, label %for.cond9.preheader.i.for.cond2.loopexit.i_crit_edge, label %for.cond9.preheader.i.for.body11.i279_crit_edge

for.cond9.preheader.i.for.body11.i279_crit_edge:  ; preds = %for.cond9.preheader.i
  br label %for.body11.i279

for.cond9.preheader.i.for.cond2.loopexit.i_crit_edge: ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.loopexit.i

for.body11.i279:                                  ; preds = %for.inc.i282.for.body11.i279_crit_edge, %for.cond9.preheader.i.for.body11.i279_crit_edge
  %i.048.i = phi i32 [ %inc.i280, %for.inc.i282.for.body11.i279_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i279_crit_edge ]
  %arrayidx12.i = getelementptr %struct.hid_report, ptr %report.051.i, i32 0, i32 5, i32 %i.048.i
  %241 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx12.i, align 4
  %hidinput13.i = getelementptr inbounds %struct.hid_field, ptr %242, i32 0, i32 19
  %243 = ptrtoint ptr %hidinput13.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hidinput13.i, align 4
  %cmp14.i = icmp eq ptr %244, %hidinput.6323
  br i1 %cmp14.i, label %if.then15.i, label %for.body11.i279.for.inc.i282_crit_edge

for.body11.i279.for.inc.i282_crit_edge:           ; preds = %for.body11.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i282

if.then15.i:                                      ; preds = %for.body11.i279
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %hidinput13.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr null, ptr %hidinput13.i, align 4
  br label %for.inc.i282

for.inc.i282:                                     ; preds = %if.then15.i, %for.body11.i279.for.inc.i282_crit_edge
  %inc.i280 = add nuw i32 %i.048.i, 1
  %246 = ptrtoint ptr %maxfield.i278 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %maxfield.i278, align 4
  %cmp10.i281 = icmp ult i32 %inc.i280, %247
  br i1 %cmp10.i281, label %for.inc.i282.for.body11.i279_crit_edge, label %for.inc.i282.for.cond2.loopexit.i_crit_edge

for.inc.i282.for.cond2.loopexit.i_crit_edge:      ; preds = %for.inc.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.loopexit.i

for.inc.i282.for.body11.i279_crit_edge:           ; preds = %for.inc.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i279

land.lhs.true.1.i:                                ; preds = %for.cond2.loopexit.i.land.lhs.true.1.i_crit_edge, %if.end.i277.land.lhs.true.1.i_crit_edge
  %248 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %quirks, align 8
  %and.1.i = and i32 %249, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %land.lhs.true.1.i.hidinput_cleanup_hidinput.exit_crit_edge

land.lhs.true.1.i.hidinput_cleanup_hidinput.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_cleanup_hidinput.exit

if.end.1.i:                                       ; preds = %land.lhs.true.1.i
  %250 = ptrtoint ptr %report_list.1.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %report.049.1.i = load ptr, ptr %report_list.1.i, align 4
  %cmp7.not50.1.i = icmp eq ptr %report.049.1.i, %report_list.1.i
  br i1 %cmp7.not50.1.i, label %if.end.1.i.hidinput_cleanup_hidinput.exit_crit_edge, label %if.end.1.i.for.cond9.preheader.1.i_crit_edge

if.end.1.i.for.cond9.preheader.1.i_crit_edge:     ; preds = %if.end.1.i
  br label %for.cond9.preheader.1.i

if.end.1.i.hidinput_cleanup_hidinput.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_cleanup_hidinput.exit

for.cond9.preheader.1.i:                          ; preds = %for.cond2.loopexit.1.i.for.cond9.preheader.1.i_crit_edge, %if.end.1.i.for.cond9.preheader.1.i_crit_edge
  %report.051.1.i = phi ptr [ %report.0.1.i, %for.cond2.loopexit.1.i.for.cond9.preheader.1.i_crit_edge ], [ %report.049.1.i, %if.end.1.i.for.cond9.preheader.1.i_crit_edge ]
  %maxfield.1.i = getelementptr inbounds %struct.hid_report, ptr %report.051.1.i, i32 0, i32 6
  %251 = ptrtoint ptr %maxfield.1.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %maxfield.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp1047.not.1.i = icmp eq i32 %252, 0
  br i1 %cmp1047.not.1.i, label %for.cond9.preheader.1.i.for.cond2.loopexit.1.i_crit_edge, label %for.cond9.preheader.1.i.for.body11.1.i_crit_edge

for.cond9.preheader.1.i.for.body11.1.i_crit_edge: ; preds = %for.cond9.preheader.1.i
  br label %for.body11.1.i

for.cond9.preheader.1.i.for.cond2.loopexit.1.i_crit_edge: ; preds = %for.cond9.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.loopexit.1.i

for.body11.1.i:                                   ; preds = %for.inc.1.i.for.body11.1.i_crit_edge, %for.cond9.preheader.1.i.for.body11.1.i_crit_edge
  %i.048.1.i = phi i32 [ %inc.1.i, %for.inc.1.i.for.body11.1.i_crit_edge ], [ 0, %for.cond9.preheader.1.i.for.body11.1.i_crit_edge ]
  %arrayidx12.1.i = getelementptr %struct.hid_report, ptr %report.051.1.i, i32 0, i32 5, i32 %i.048.1.i
  %253 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx12.1.i, align 4
  %hidinput13.1.i = getelementptr inbounds %struct.hid_field, ptr %254, i32 0, i32 19
  %255 = ptrtoint ptr %hidinput13.1.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hidinput13.1.i, align 4
  %cmp14.1.i = icmp eq ptr %256, %hidinput.6323
  br i1 %cmp14.1.i, label %if.then15.1.i, label %for.body11.1.i.for.inc.1.i_crit_edge

for.body11.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body11.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then15.1.i:                                    ; preds = %for.body11.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %257 = ptrtoint ptr %hidinput13.1.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr null, ptr %hidinput13.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then15.1.i, %for.body11.1.i.for.inc.1.i_crit_edge
  %inc.1.i = add nuw i32 %i.048.1.i, 1
  %258 = ptrtoint ptr %maxfield.1.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %maxfield.1.i, align 4
  %cmp10.1.i = icmp ult i32 %inc.1.i, %259
  br i1 %cmp10.1.i, label %for.inc.1.i.for.body11.1.i_crit_edge, label %for.inc.1.i.for.cond2.loopexit.1.i_crit_edge

for.inc.1.i.for.cond2.loopexit.1.i_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.loopexit.1.i

for.inc.1.i.for.body11.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.1.i

for.cond2.loopexit.1.i:                           ; preds = %for.inc.1.i.for.cond2.loopexit.1.i_crit_edge, %for.cond9.preheader.1.i.for.cond2.loopexit.1.i_crit_edge
  %260 = ptrtoint ptr %report.051.1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %report.0.1.i = load ptr, ptr %report.051.1.i, align 4
  %cmp7.not.1.i = icmp eq ptr %report.0.1.i, %report_list.1.i
  br i1 %cmp7.not.1.i, label %for.cond2.loopexit.1.i.hidinput_cleanup_hidinput.exit_crit_edge, label %for.cond2.loopexit.1.i.for.cond9.preheader.1.i_crit_edge

for.cond2.loopexit.1.i.for.cond9.preheader.1.i_crit_edge: ; preds = %for.cond2.loopexit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader.1.i

for.cond2.loopexit.1.i.hidinput_cleanup_hidinput.exit_crit_edge: ; preds = %for.cond2.loopexit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_cleanup_hidinput.exit

hidinput_cleanup_hidinput.exit:                   ; preds = %for.cond2.loopexit.1.i.hidinput_cleanup_hidinput.exit_crit_edge, %if.end.1.i.hidinput_cleanup_hidinput.exit_crit_edge, %land.lhs.true.1.i.hidinput_cleanup_hidinput.exit_crit_edge
  tail call void @kfree(ptr noundef %hidinput.6323) #10
  br label %for.inc122

if.end117:                                        ; preds = %if.end114
  %call118 = tail call i32 @input_register_device(ptr noundef %152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end117.out_unwind_crit_edge

if.end117.out_unwind_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unwind

if.end121:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %registered = getelementptr inbounds %struct.hid_input, ptr %hidinput.6323, i32 0, i32 4
  %261 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 1, ptr %registered, align 4
  br label %for.inc122

for.inc122:                                       ; preds = %if.end121, %hidinput_cleanup_hidinput.exit
  %cmp105.not = icmp eq ptr %next.0326, %inputs
  br i1 %cmp105.not, label %for.inc122.for.end128_crit_edge, label %for.inc122.for.body107_crit_edge

for.inc122.for.body107_crit_edge:                 ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body107

for.inc122.for.end128_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end128

for.end128:                                       ; preds = %for.inc122.for.end128_crit_edge, %hidinput_change_resolution_multipliers.exit.for.end128_crit_edge
  %262 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load volatile ptr, ptr %inputs, align 4
  %cmp.i283.not = icmp eq ptr %263, %inputs
  br i1 %cmp.i283.not, label %for.end128.out_unwind.sink.split_crit_edge, label %if.end136

for.end128.out_unwind.sink.split_crit_edge:       ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unwind.sink.split

if.end136:                                        ; preds = %for.end128
  %264 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %status, align 8
  %and138 = and i32 %265, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end136.cleanup154_crit_edge, label %do.body141

if.end136.cleanup154_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup154

do.body141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidinput_connect.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidinput_connect, %if.then148)) #10
          to label %cleanup154 [label %if.then148], !srcloc !116

if.then148:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidinput_connect.__UNIQUE_ID_ddebug233, ptr noundef %dev.i, ptr noundef nonnull @.str.15) #10
  br label %cleanup154

out_unwind.sink.split:                            ; preds = %for.end128.out_unwind.sink.split_crit_edge, %hidinput_allocate.exit.thread
  %.str.33.sink = phi ptr [ @.str.33, %hidinput_allocate.exit.thread ], [ @.str.10, %for.end128.out_unwind.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.33.sink) #13
  br label %out_unwind

out_unwind:                                       ; preds = %out_unwind.sink.split, %if.end117.out_unwind_crit_edge, %land.lhs.true109.out_unwind_crit_edge
  tail call void @hidinput_disconnect(ptr noundef %hid)
  br label %cleanup154

cleanup154:                                       ; preds = %out_unwind, %if.then148, %do.body141, %if.end136.cleanup154_crit_edge, %for.end.cleanup154_crit_edge, %for.inc.cleanup154_crit_edge
  %retval.0 = phi i32 [ -1, %out_unwind ], [ -1, %for.end.cleanup154_crit_edge ], [ 0, %if.then148 ], [ 0, %if.end136.cleanup154_crit_edge ], [ 0, %do.body141 ], [ -1, %for.inc.cleanup154_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidinput_led_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3164
  %report_list.i = getelementptr i8, ptr %work, i32 -2068
  %0 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %report.043.i = load ptr, ptr %report_list.i, align 4
  %cmp.not44.i = icmp eq ptr %report.043.i, %report_list.i
  br i1 %cmp.not44.i, label %entry.cleanup_crit_edge, label %entry.for.cond4.preheader.i_crit_edge

entry.for.cond4.preheader.i_crit_edge:            ; preds = %entry
  br label %for.cond4.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.loopexit.i:                              ; preds = %for.inc15.i.for.cond.loopexit.i_crit_edge, %for.cond4.preheader.i.for.cond.loopexit.i_crit_edge
  %1 = ptrtoint ptr %report.045.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %report.0.i = load ptr, ptr %report.045.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.cleanup_crit_edge, label %for.cond.loopexit.i.for.cond4.preheader.i_crit_edge

for.cond.loopexit.i.for.cond4.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.cond.loopexit.i.cleanup_crit_edge:            ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond4.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond4.preheader.i_crit_edge, %entry.for.cond4.preheader.i_crit_edge
  %report.045.i = phi ptr [ %report.0.i, %for.cond.loopexit.i.for.cond4.preheader.i_crit_edge ], [ %report.043.i, %entry.for.cond4.preheader.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report.045.i, i32 0, i32 6
  %2 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp541.not.i = icmp eq i32 %3, 0
  br i1 %cmp541.not.i, label %for.cond4.preheader.i.for.cond.loopexit.i_crit_edge, label %for.cond4.preheader.i.for.body6.i_crit_edge

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.cond4.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

for.body6.i:                                      ; preds = %for.inc15.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %i.042.i = phi i32 [ %inc16.i, %for.inc15.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.hid_report, ptr %report.045.i, i32 0, i32 5, i32 %i.042.i
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8.i, align 4
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxusage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1039.not.i = icmp eq i32 %7, 0
  br i1 %cmp1039.not.i, label %for.body6.i.for.inc15.i_crit_edge, label %for.body11.lr.ph.i

for.body6.i.for.inc15.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15.i

for.body11.lr.ph.i:                               ; preds = %for.body6.i
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usage.i, align 4
  br label %for.body11.i

for.cond9.i:                                      ; preds = %for.body11.i
  %inc.i = add nuw i32 %j.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond9.i.for.inc15.i_crit_edge, label %for.cond9.i.for.body11.i_crit_edge

for.cond9.i.for.body11.i_crit_edge:               ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.cond9.i.for.inc15.i_crit_edge:                ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15.i

for.body11.i:                                     ; preds = %for.cond9.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %j.040.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc.i, %for.cond9.i.for.body11.i_crit_edge ]
  %type.i = getelementptr %struct.hid_usage, ptr %9, i32 %j.040.i, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %11)
  %cmp13.i = icmp eq i8 %11, 17
  br i1 %cmp13.i, label %hidinput_get_led_field.exit, label %for.cond9.i

for.inc15.i:                                      ; preds = %for.cond9.i.for.inc15.i_crit_edge, %for.body6.i.for.inc15.i_crit_edge
  %inc16.i = add nuw i32 %i.042.i, 1
  %exitcond48.not.i = icmp eq i32 %inc16.i, %3
  br i1 %exitcond48.not.i, label %for.inc15.i.for.cond.loopexit.i_crit_edge, label %for.inc15.i.for.body6.i_crit_edge

for.inc15.i.for.body6.i_crit_edge:                ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i

for.inc15.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

hidinput_get_led_field.exit:                      ; preds = %for.body11.i
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %hidinput_get_led_field.exit.cleanup_crit_edge, label %if.end

hidinput_get_led_field.exit.cleanup_crit_edge:    ; preds = %hidinput_get_led_field.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %hidinput_get_led_field.exit
  %report1 = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 17
  %12 = ptrtoint ptr %report1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %report1, align 4
  %ll_driver = getelementptr i8, ptr %work, i32 1032
  %14 = ptrtoint ptr %ll_driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ll_driver, align 4
  %request = getelementptr inbounds %struct.hid_ll_driver, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request, align 4
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17(ptr noundef %add.ptr, ptr noundef %13, i32 noundef 9) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %size.i = getelementptr inbounds %struct.hid_report, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %19, 7
  %div3.i = lshr i32 %sub.i, 3
  %id.i = getelementptr inbounds %struct.hid_report, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp ne i32 %21, 0
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add nuw nsw i32 %div3.i, %conv.i
  %call8 = tail call ptr @hid_alloc_report_buf(ptr noundef %13, i32 noundef 3264) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  tail call void @hid_output_report(ptr noundef %13, ptr noundef nonnull %call8) #10
  %call12 = tail call i32 @hid_hw_output_report(ptr noundef %add.ptr, ptr noundef nonnull %call8, i32 noundef %add1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call12)
  %cmp = icmp eq i32 %call12, -38
  br i1 %cmp, label %if.then13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %conv = trunc i32 %23 to i8
  %call14 = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext %conv, ptr noundef nonnull %call8, i32 noundef %add1.i, i8 noundef zeroext 1, i32 noundef 9) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end6.cleanup_crit_edge, %if.then3, %hidinput_get_led_field.exit.cleanup_crit_edge, %for.cond.loopexit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidinput_disconnect(ptr noundef %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %battery.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 23
  %0 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %battery.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hidinput_cleanup_battery.exit_crit_edge, label %if.end.i

entry.hidinput_cleanup_battery.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hidinput_cleanup_battery.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @power_supply_unregister(ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %3) #10
  %6 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %battery.i, align 8
  br label %hidinput_cleanup_battery.exit

hidinput_cleanup_battery.exit:                    ; preds = %if.end.i, %entry.hidinput_cleanup_battery.exit_crit_edge
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %7 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inputs, align 8
  %cmp.not27 = icmp eq ptr %8, %inputs
  br i1 %cmp.not27, label %hidinput_cleanup_battery.exit.for.end_crit_edge, label %hidinput_cleanup_battery.exit.for.body_crit_edge

hidinput_cleanup_battery.exit.for.body_crit_edge: ; preds = %hidinput_cleanup_battery.exit
  br label %for.body

hidinput_cleanup_battery.exit.for.end_crit_edge:  ; preds = %hidinput_cleanup_battery.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %hidinput_cleanup_battery.exit.for.body_crit_edge
  %hidinput.028 = phi ptr [ %next.031, %if.end.for.body_crit_edge ], [ %8, %hidinput_cleanup_battery.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %hidinput.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %next.031 = load ptr, ptr %hidinput.028, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hidinput.028) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %hidinput.028, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %hidinput.028 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hidinput.028, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %hidinput.028 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %hidinput.028, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %hidinput.028, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %registered = getelementptr inbounds %struct.hid_input, ptr %hidinput.028, i32 0, i32 4
  %18 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %registered, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %input9 = getelementptr inbounds %struct.hid_input, ptr %hidinput.028, i32 0, i32 2
  %20 = ptrtoint ptr %input9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input9, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_unregister_device(ptr noundef %21) #10
  br label %if.end

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_free_device(ptr noundef %21) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %name = getelementptr inbounds %struct.hid_input, ptr %hidinput.028, i32 0, i32 3
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %23) #10
  tail call void @kfree(ptr noundef %hidinput.028) #10
  %cmp.not = icmp eq ptr %next.031, %inputs
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %hidinput_cleanup_battery.exit.for.end_crit_edge
  %led_work = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 16
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %led_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_output_report(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidinput_setup_battery(ptr noundef %dev, i32 noundef %report_type, ptr nocapture noundef readonly %field, i1 noundef zeroext %is_percentage) unnamed_addr #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #10
  %0 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %1 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %0, align 4
  %battery = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 23
  %3 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %battery, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @hid_match_id(ptr noundef %dev, ptr noundef nonnull @hid_battery_quirks) #10
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end.find_battery_quirk.exit_crit_edge, label %if.then.i

if.end.find_battery_quirk.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_battery_quirk.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.hid_device_id, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data.i, align 4
  br label %find_battery_quirk.exit

find_battery_quirk.exit:                          ; preds = %if.then.i, %if.end.find_battery_quirk.exit_crit_edge
  %quirks.0.i = phi i32 [ %6, %if.then.i ], [ 0, %if.end.find_battery_quirk.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidinput_setup_battery.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidinput_setup_battery, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !116

if.then6:                                         ; preds = %find_battery_quirk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18
  %bus = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bus, align 8
  %conv = zext i16 %8 to i32
  %vendor = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 10
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vendor, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 11
  %11 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %product, align 8
  %version = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 12
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidinput_setup_battery.__UNIQUE_ID_ddebug228, ptr noundef %dev7, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %quirks.0.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %find_battery_quirk.exit
  %and = and i32 %quirks.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 52) #14
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %uniq = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 41
  %16 = ptrtoint ptr %uniq to i32
  call void @__asan_load1_noabort(i32 %16)
  %char0 = load i8, ptr %uniq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool17.not = icmp eq i8 %char0, 0
  br i1 %tobool17.not, label %cond.false, label %if.end15.cond.end_crit_edge

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18
  %19 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev20, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.false.cond.end_crit_edge, %if.end15.cond.end_crit_edge
  %cond = phi ptr [ %uniq, %if.end15.cond.end_crit_edge ], [ %20, %if.end.i ], [ %18, %cond.false.cond.end_crit_edge ]
  %call22 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.18, ptr noundef %cond) #10
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call22, ptr %call7.i.i, align 8
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %cond.end.err_free_mem_crit_edge, label %if.end26

cond.end.err_free_mem_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_mem

if.end26:                                         ; preds = %cond.end
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @hidinput_battery_props, ptr %properties, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %num_properties, align 4
  %use_for_apm = getelementptr inbounds %struct.power_supply_desc, ptr %call7.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %use_for_apm to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %use_for_apm, align 8
  %get_property = getelementptr inbounds %struct.power_supply_desc, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hidinput_get_battery_property, ptr %get_property, align 8
  br i1 %is_percentage, label %if.end26.if.then31_crit_edge, label %lor.lhs.false

if.end26.if.then31_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end26
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %27 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %logical_maximum, align 4
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %29 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %logical_minimum, align 4
  %and29 = and i32 %quirks.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end26.if.then31_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %lor.lhs.false.if.end32_crit_edge
  %min.0 = phi i32 [ 0, %if.then31 ], [ %30, %lor.lhs.false.if.end32_crit_edge ]
  %max.0 = phi i32 [ 100, %if.then31 ], [ %28, %lor.lhs.false.if.end32_crit_edge ]
  %and33 = and i32 %quirks.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %spec.select = select i1 %tobool34.not, i32 %report_type, i32 2
  %battery_min = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 25
  %31 = ptrtoint ptr %battery_min to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %min.0, ptr %battery_min, align 8
  %battery_max = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 26
  %32 = ptrtoint ptr %battery_max to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %max.0, ptr %battery_max, align 4
  %battery_report_type = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 27
  %33 = ptrtoint ptr %battery_report_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %battery_report_type, align 8
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %34 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %report, align 4
  %id = getelementptr inbounds %struct.hid_report, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  %battery_report_id = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 28
  %38 = ptrtoint ptr %battery_report_id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %battery_report_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp = icmp eq i32 %spec.select, 0
  br i1 %cmp, label %land.rhs, label %if.end32.land.end_crit_edge

if.end32.land.end_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852000, i32 %40)
  %cmp38 = icmp eq i32 %40, 852000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end32.land.end_crit_edge
  %41 = phi i1 [ false, %if.end32.land.end_crit_edge ], [ %cmp38, %land.rhs ]
  %battery_avoid_query = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 30
  %frombool40 = zext i1 %41 to i8
  %42 = ptrtoint ptr %battery_avoid_query to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool40, ptr %battery_avoid_query, align 4
  %dev41 = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18
  %call42 = call ptr @power_supply_register(ptr noundef %dev41, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %psy_cfg) #10
  %43 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call42, ptr %battery, align 8
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end53

if.then46:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %call42 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev41, ptr noundef nonnull @.str.19, i32 noundef %44) #13
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %46) #10
  br label %err_free_mem

if.end53:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = call i32 @power_supply_powers(ptr noundef %call42, ptr noundef %dev41) #10
  br label %cleanup

err_free_mem:                                     ; preds = %if.then46, %cond.end.err_free_mem_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %47 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %battery, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end53, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidinput_get_battery_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #10
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %prop, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge95
    i32 47, label %sw.bb1
    i32 73, label %sw.bb6
    i32 0, label %sw.bb7
    i32 66, label %sw.bb26
  ]

entry.sw.bb_crit_edge95:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge95
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %battery_status = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 29
  %2 = ptrtoint ptr %battery_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %battery_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %sw.bb1.if.else_crit_edge, label %land.lhs.true

sw.bb1.if.else_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb1
  %battery_avoid_query = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 30
  %4 = ptrtoint ptr %battery_avoid_query to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %battery_avoid_query, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %battery_report_id.i = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 28
  %7 = ptrtoint ptr %battery_report_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %battery_report_id.i, align 4
  %conv.i = trunc i32 %8 to i8
  %battery_report_type.i = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 27
  %9 = ptrtoint ptr %battery_report_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %battery_report_type.i, align 8
  %conv1.i = trunc i32 %10 to i8
  %call2.i = tail call i32 @hid_hw_raw_request(ptr noundef %call, i8 noundef zeroext %conv.i, ptr noundef nonnull %call7.i.i, i32 noundef 4, i8 noundef zeroext %conv1.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 2
  br i1 %cmp.i, label %hidinput_query_battery_capacity.exit.thread79, label %if.end5.i

hidinput_query_battery_capacity.exit.thread79:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %12 to i32
  %battery_min.i.i = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 25
  %13 = ptrtoint ptr %battery_min.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %battery_min.i.i, align 8
  %battery_max.i.i = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 26
  %15 = ptrtoint ptr %battery_max.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %battery_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.i.i = icmp sle i32 %16, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv6.i)
  %cmp2.not.i.i = icmp sgt i32 %14, %conv6.i
  %or.cond.i.i = or i1 %cmp2.not.i.i, %cmp.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv6.i)
  %cmp5.not.i.i = icmp slt i32 %16, %conv6.i
  %or.cond20.i.i = or i1 %cmp5.not.i.i, %or.cond.i.i
  br i1 %or.cond20.i.i, label %hidinput_query_battery_capacity.exit.thread82, label %hidinput_query_battery_capacity.exit

hidinput_query_battery_capacity.exit.thread82:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end5

hidinput_query_battery_capacity.exit:             ; preds = %if.end5.i
  %sub.i.i = sub i32 %conv6.i, %14
  %mul.i.i = mul i32 %sub.i.i, 100
  %sub9.i.i = sub i32 %16, %14
  %div.i.i = sdiv i32 %mul.i.i, %sub9.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.i)
  %cmp3 = icmp slt i32 %div.i.i, 0
  br i1 %cmp3, label %hidinput_query_battery_capacity.exit.cleanup_crit_edge, label %hidinput_query_battery_capacity.exit.if.end5_crit_edge

hidinput_query_battery_capacity.exit.if.end5_crit_edge: ; preds = %hidinput_query_battery_capacity.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

hidinput_query_battery_capacity.exit.cleanup_crit_edge: ; preds = %hidinput_query_battery_capacity.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb1.if.else_crit_edge
  %battery_capacity = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 24
  %17 = ptrtoint ptr %battery_capacity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %battery_capacity, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %hidinput_query_battery_capacity.exit.if.end5_crit_edge, %hidinput_query_battery_capacity.exit.thread82
  %value.0 = phi i32 [ %18, %if.else ], [ %div.i.i, %hidinput_query_battery_capacity.exit.if.end5_crit_edge ], [ %conv6.i, %hidinput_query_battery_capacity.exit.thread82 ]
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %value.0, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 39
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %name, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %battery_status8 = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 29
  %21 = ptrtoint ptr %battery_status8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %battery_status8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp9.not = icmp eq i32 %22, 2
  br i1 %cmp9.not, label %sw.bb7.if.else24_crit_edge, label %land.lhs.true10

sw.bb7.if.else24_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24

land.lhs.true10:                                  ; preds = %sw.bb7
  %battery_avoid_query11 = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 30
  %23 = ptrtoint ptr %battery_avoid_query11 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %battery_avoid_query11, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool12.not = icmp eq i8 %24, 0
  br i1 %tobool12.not, label %if.then13, label %if.end20

if.then13:                                        ; preds = %land.lhs.true10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 4) #14
  %tobool.not.i50 = icmp eq ptr %call7.i.i49, null
  br i1 %tobool.not.i50, label %if.then13.cleanup_crit_edge, label %if.end.i57

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i57:                                       ; preds = %if.then13
  %battery_report_id.i51 = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 28
  %26 = ptrtoint ptr %battery_report_id.i51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %battery_report_id.i51, align 4
  %conv.i52 = trunc i32 %27 to i8
  %battery_report_type.i53 = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 27
  %28 = ptrtoint ptr %battery_report_type.i53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %battery_report_type.i53, align 8
  %conv1.i54 = trunc i32 %29 to i8
  %call2.i55 = tail call i32 @hid_hw_raw_request(ptr noundef %call, i8 noundef zeroext %conv.i52, ptr noundef nonnull %call7.i.i49, i32 noundef 4, i8 noundef zeroext %conv1.i54, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i55)
  %cmp.i56 = icmp slt i32 %call2.i55, 2
  br i1 %cmp.i56, label %hidinput_query_battery_capacity.exit76.thread87, label %if.end5.i67

hidinput_query_battery_capacity.exit76.thread87:  ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i49) #10
  br label %cleanup

if.end5.i67:                                      ; preds = %if.end.i57
  %arrayidx.i58 = getelementptr i8, ptr %call7.i.i49, i32 1
  %30 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i58, align 1
  %conv6.i59 = zext i8 %31 to i32
  %battery_min.i.i60 = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 25
  %32 = ptrtoint ptr %battery_min.i.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %battery_min.i.i60, align 8
  %battery_max.i.i61 = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 26
  %34 = ptrtoint ptr %battery_max.i.i61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %battery_max.i.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.i.i62 = icmp sle i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv6.i59)
  %cmp2.not.i.i63 = icmp sgt i32 %33, %conv6.i59
  %or.cond.i.i64 = or i1 %cmp2.not.i.i63, %cmp.i.i62
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv6.i59)
  %cmp5.not.i.i65 = icmp slt i32 %35, %conv6.i59
  %or.cond20.i.i66 = or i1 %cmp5.not.i.i65, %or.cond.i.i64
  br i1 %or.cond20.i.i66, label %hidinput_query_battery_capacity.exit76.thread90, label %hidinput_query_battery_capacity.exit76

hidinput_query_battery_capacity.exit76.thread90:  ; preds = %if.end5.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i49) #10
  br label %if.end17

hidinput_query_battery_capacity.exit76:           ; preds = %if.end5.i67
  %sub.i.i68 = sub i32 %conv6.i59, %33
  %mul.i.i69 = mul i32 %sub.i.i68, 100
  %sub9.i.i70 = sub i32 %35, %33
  %div.i.i71 = sdiv i32 %mul.i.i69, %sub9.i.i70
  tail call void @kfree(ptr noundef nonnull %call7.i.i49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.i71)
  %cmp15 = icmp slt i32 %div.i.i71, 0
  br i1 %cmp15, label %hidinput_query_battery_capacity.exit76.cleanup_crit_edge, label %hidinput_query_battery_capacity.exit76.if.end17_crit_edge

hidinput_query_battery_capacity.exit76.if.end17_crit_edge: ; preds = %hidinput_query_battery_capacity.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

hidinput_query_battery_capacity.exit76.cleanup_crit_edge: ; preds = %hidinput_query_battery_capacity.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %hidinput_query_battery_capacity.exit76.if.end17_crit_edge, %hidinput_query_battery_capacity.exit76.thread90
  %retval.0.ph.i7393 = phi i32 [ %conv6.i59, %hidinput_query_battery_capacity.exit76.thread90 ], [ %div.i.i71, %hidinput_query_battery_capacity.exit76.if.end17_crit_edge ]
  %battery_capacity18 = getelementptr inbounds %struct.hid_device, ptr %call, i32 0, i32 24
  %36 = ptrtoint ptr %battery_capacity18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.ph.i7393, ptr %battery_capacity18, align 4
  %37 = ptrtoint ptr %battery_status8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %battery_status8, align 8
  br label %if.else24

if.end20:                                         ; preds = %land.lhs.true10
  %38 = ptrtoint ptr %battery_status8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %battery_status8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp22 = icmp eq i32 %.pr, 0
  br i1 %cmp22, label %if.then23, label %if.end20.if.else24_crit_edge

if.end20.if.else24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.end20.if.else24_crit_edge, %if.end17, %sw.bb7.if.else24_crit_edge
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb26, %if.else24, %if.then23, %hidinput_query_battery_capacity.exit76.cleanup_crit_edge, %hidinput_query_battery_capacity.exit76.thread87, %if.then13.cleanup_crit_edge, %sw.bb6, %if.end5, %hidinput_query_battery_capacity.exit.cleanup_crit_edge, %hidinput_query_battery_capacity.exit.thread79, %if.then.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i.i, %hidinput_query_battery_capacity.exit.cleanup_crit_edge ], [ %div.i.i71, %hidinput_query_battery_capacity.exit76.cleanup_crit_edge ], [ 0, %sw.bb26 ], [ 0, %if.then23 ], [ 0, %if.else24 ], [ 0, %sw.bb6 ], [ 0, %if.end5 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -61, %hidinput_query_battery_capacity.exit.thread79 ], [ -61, %hidinput_query_battery_capacity.exit76.thread87 ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_match_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidinput_input_event(ptr noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 21, label %if.then
    i32 17, label %if.end4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @input_ff_event(ptr noundef %dev, i32 noundef 21, i32 noundef %code, i32 noundef %value) #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %report_list.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 1, i32 1
  %3 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %report.08.i = load ptr, ptr %report_list.i, align 4
  %cmp.not9.i = icmp eq ptr %report.08.i, %report_list.i
  br i1 %cmp.not9.i, label %if.end4.do.end_crit_edge, label %if.end4.for.cond4.preheader.i_crit_edge

if.end4.for.cond4.preheader.i_crit_edge:          ; preds = %if.end4
  br label %for.cond4.preheader.i

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.loopexit.i:                              ; preds = %for.inc22.i.for.cond.loopexit.i_crit_edge, %for.cond4.preheader.i.for.cond.loopexit.i_crit_edge
  %4 = ptrtoint ptr %report.010.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %report.0.i = load ptr, ptr %report.010.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.do.end_crit_edge, label %for.cond.loopexit.i.for.cond4.preheader.i_crit_edge

for.cond.loopexit.i.for.cond4.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.cond.loopexit.i.do.end_crit_edge:             ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond4.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond4.preheader.i_crit_edge, %if.end4.for.cond4.preheader.i_crit_edge
  %report.010.i = phi ptr [ %report.0.i, %for.cond.loopexit.i.for.cond4.preheader.i_crit_edge ], [ %report.08.i, %if.end4.for.cond4.preheader.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report.010.i, i32 0, i32 6
  %5 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp56.not.i = icmp eq i32 %6, 0
  br i1 %cmp56.not.i, label %for.cond4.preheader.i.for.cond.loopexit.i_crit_edge, label %for.cond4.preheader.i.for.body6.i_crit_edge

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.cond4.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

for.body6.i:                                      ; preds = %for.inc22.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %i.07.i = phi i32 [ %inc23.i, %for.inc22.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.hid_report, ptr %report.010.i, i32 0, i32 5, i32 %i.07.i
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8.i, align 4
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxusage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp103.not.i = icmp eq i32 %10, 0
  br i1 %cmp103.not.i, label %for.body6.i.for.inc22.i_crit_edge, label %for.body11.lr.ph.i

for.body6.i.for.inc22.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.i

for.body11.lr.ph.i:                               ; preds = %for.body6.i
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usage.i, align 4
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %j.04.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc.i, %for.inc.i.for.body11.i_crit_edge ]
  %type13.i = getelementptr %struct.hid_usage, ptr %12, i32 %j.04.i, i32 6
  %13 = ptrtoint ptr %type13.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %14)
  %cmp14.i = icmp eq i8 %14, 17
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body11.i
  %code18.i = getelementptr %struct.hid_usage, ptr %12, i32 %j.04.i, i32 5
  %15 = ptrtoint ptr %code18.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %code18.i, align 2
  %conv19.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19.i, i32 %code)
  %cmp20.i = icmp eq i32 %conv19.i, %code
  br i1 %cmp20.i, label %hidinput_find_field.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.for.inc22.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc.i.for.inc22.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %for.inc.i.for.inc22.i_crit_edge, %for.body6.i.for.inc22.i_crit_edge
  %inc23.i = add nuw i32 %i.07.i, 1
  %exitcond.not = icmp eq i32 %inc23.i, %6
  br i1 %exitcond.not, label %for.inc22.i.for.cond.loopexit.i_crit_edge, label %for.inc22.i.for.body6.i_crit_edge

for.inc22.i.for.body6.i_crit_edge:                ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i

for.inc22.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

hidinput_find_field.exit:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.04.i)
  %cmp6 = icmp eq i32 %j.04.i, -1
  br i1 %cmp6, label %hidinput_find_field.exit.do.end_crit_edge, label %if.end9

hidinput_find_field.exit.do.end_crit_edge:        ; preds = %hidinput_find_field.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %hidinput_find_field.exit.do.end_crit_edge, %for.cond.loopexit.i.do.end_crit_edge, %if.end4.do.end_crit_edge
  %dev8 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end9:                                          ; preds = %hidinput_find_field.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @hid_set_field(ptr noundef %8, i32 noundef %j.04.i, i32 noundef %value) #10
  %led_work = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %led_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -1, %do.end ], [ 0, %if.end9 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidinput_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @hid_hw_open(ptr noundef %1) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidinput_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hid_hw_close(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidinput_setkeycode(ptr noundef %dev, ptr noundef %ke, ptr nocapture noundef %old_keycode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc ptr @hidinput_locate_usage(ptr noundef %1, ptr noundef %ke, ptr noundef null)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.hid_usage, ptr %call1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %cond.true, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %code = getelementptr inbounds %struct.hid_usage, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %code, align 2
  %conv3 = zext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %conv3, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %6 = ptrtoint ptr %old_keycode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %old_keycode, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %type, align 4
  %keycode = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  %8 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %keycode, align 4
  %conv5 = trunc i32 %9 to i16
  %code6 = getelementptr inbounds %struct.hid_usage, ptr %call1, i32 0, i32 5
  %10 = ptrtoint ptr %code6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv5, ptr %code6, align 2
  %11 = load i32, ptr %old_keycode, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %11, ptr noundef %keybit) #10
  %12 = ptrtoint ptr %code6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %code6, align 2
  %conv8 = zext i16 %13 to i32
  tail call void @_set_bit(i32 noundef %conv8, ptr noundef %keybit) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %14 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %cond.end.do.end19_crit_edge, label %do.end

cond.end.do.end19_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %code6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %code6, align 2
  %conv15 = zext i16 %16 to i32
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call1, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef %conv15, i32 noundef %18) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end, %cond.end.do.end19_crit_edge
  %19 = ptrtoint ptr %old_keycode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old_keycode, align 4
  %report_list.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 0, i32 1
  %21 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %report.077.i = load ptr, ptr %report_list.i, align 4
  %cmp5.not78.i = icmp eq ptr %report.077.i, %report_list.i
  br i1 %cmp5.not78.i, label %do.end19.for.inc39.i_crit_edge, label %do.end19.for.cond7.preheader.i_crit_edge

do.end19.for.cond7.preheader.i_crit_edge:         ; preds = %do.end19
  br label %for.cond7.preheader.i

do.end19.for.inc39.i_crit_edge:                   ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i

for.cond1.loopexit.i:                             ; preds = %for.inc29.i.for.cond1.loopexit.i_crit_edge, %for.cond7.preheader.i.for.cond1.loopexit.i_crit_edge
  %22 = ptrtoint ptr %report.080.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %report.0.i = load ptr, ptr %report.080.i, align 4
  %cmp5.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp5.not.i, label %for.cond1.loopexit.i.for.inc39.i_crit_edge, label %for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge

for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond1.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.i

for.cond1.loopexit.i.for.inc39.i_crit_edge:       ; preds = %for.cond1.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i

for.cond7.preheader.i:                            ; preds = %for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge, %do.end19.for.cond7.preheader.i_crit_edge
  %report.080.i = phi ptr [ %report.0.i, %for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge ], [ %report.077.i, %do.end19.for.cond7.preheader.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report.080.i, i32 0, i32 6
  %23 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp873.not.i = icmp eq i32 %24, 0
  br i1 %cmp873.not.i, label %for.cond7.preheader.i.for.cond1.loopexit.i_crit_edge, label %for.cond7.preheader.i.for.cond10.preheader.i_crit_edge

for.cond7.preheader.i.for.cond10.preheader.i_crit_edge: ; preds = %for.cond7.preheader.i
  br label %for.cond10.preheader.i

for.cond7.preheader.i.for.cond1.loopexit.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.i

for.cond10.preheader.i:                           ; preds = %for.inc29.i.for.cond10.preheader.i_crit_edge, %for.cond7.preheader.i.for.cond10.preheader.i_crit_edge
  %i.075.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond10.preheader.i_crit_edge ], [ 0, %for.cond7.preheader.i.for.cond10.preheader.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.hid_report, ptr %report.080.i, i32 0, i32 5, i32 %i.075.i
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx11.i, align 4
  %maxusage69.i = getelementptr inbounds %struct.hid_field, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %maxusage69.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxusage69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1270.not.i = icmp eq i32 %28, 0
  br i1 %cmp1270.not.i, label %for.cond10.preheader.i.for.inc29.i_crit_edge, label %for.body13.i.preheader

for.cond10.preheader.i.for.inc29.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body13.i.preheader:                           ; preds = %for.cond10.preheader.i
  %usage16.i = getelementptr inbounds %struct.hid_field, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %usage16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usage16.i, align 4
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc.i.for.body13.i_crit_edge, %for.body13.i.preheader
  %j.072.i = phi i32 [ %inc28.i, %for.inc.i.for.body13.i_crit_edge ], [ 0, %for.body13.i.preheader ]
  %type.i = getelementptr %struct.hid_usage, ptr %30, i32 %j.072.i, i32 6
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %switch.i = icmp ult i8 %32, 2
  br i1 %switch.i, label %if.then.i, label %for.body13.i.for.inc.i_crit_edge

for.body13.i.for.inc.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body13.i
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.i45 = icmp eq i8 %34, 1
  br i1 %cmp.i45, label %match_keycode.exit50, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

match_keycode.exit50:                             ; preds = %if.then.i
  %code.i46 = getelementptr %struct.hid_usage, ptr %30, i32 %j.072.i, i32 5
  %35 = ptrtoint ptr %code.i46 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %code.i46, align 2
  %conv2.i47 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv2.i47)
  %cmp3.i48 = icmp eq i32 %20, %conv2.i47
  br i1 %cmp3.i48, label %hidinput_find_key.exit.loopexit53, label %match_keycode.exit50.for.inc.i_crit_edge

match_keycode.exit50.for.inc.i_crit_edge:         ; preds = %match_keycode.exit50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %match_keycode.exit50.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body13.i.for.inc.i_crit_edge
  %inc28.i = add nuw i32 %j.072.i, 1
  %exitcond.not = icmp eq i32 %inc28.i, %28
  br i1 %exitcond.not, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body13.i_crit_edge

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond10.preheader.i.for.inc29.i_crit_edge
  %inc30.i = add nuw i32 %i.075.i, 1
  %exitcond58.not = icmp eq i32 %inc30.i, %24
  br i1 %exitcond58.not, label %for.inc29.i.for.cond1.loopexit.i_crit_edge, label %for.inc29.i.for.cond10.preheader.i_crit_edge

for.inc29.i.for.cond10.preheader.i_crit_edge:     ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader.i

for.inc29.i.for.cond1.loopexit.i_crit_edge:       ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.i

for.inc39.i:                                      ; preds = %for.cond1.loopexit.i.for.inc39.i_crit_edge, %do.end19.for.inc39.i_crit_edge
  %report_list.1.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 1, i32 1
  %37 = ptrtoint ptr %report_list.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %report.077.1.i = load ptr, ptr %report_list.1.i, align 4
  %cmp5.not78.1.i = icmp eq ptr %report.077.1.i, %report_list.1.i
  br i1 %cmp5.not78.1.i, label %for.inc39.i.cleanup_crit_edge, label %for.inc39.i.for.cond7.preheader.1.i_crit_edge

for.inc39.i.for.cond7.preheader.1.i_crit_edge:    ; preds = %for.inc39.i
  br label %for.cond7.preheader.1.i

for.inc39.i.cleanup_crit_edge:                    ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond7.preheader.1.i:                          ; preds = %for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge, %for.inc39.i.for.cond7.preheader.1.i_crit_edge
  %report.080.1.i = phi ptr [ %report.0.1.i, %for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge ], [ %report.077.1.i, %for.inc39.i.for.cond7.preheader.1.i_crit_edge ]
  %maxfield.1.i = getelementptr inbounds %struct.hid_report, ptr %report.080.1.i, i32 0, i32 6
  %38 = ptrtoint ptr %maxfield.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxfield.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp873.not.1.i = icmp eq i32 %39, 0
  br i1 %cmp873.not.1.i, label %for.cond7.preheader.1.i.for.cond1.loopexit.1.i_crit_edge, label %for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge

for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge: ; preds = %for.cond7.preheader.1.i
  br label %for.cond10.preheader.1.i

for.cond7.preheader.1.i.for.cond1.loopexit.1.i_crit_edge: ; preds = %for.cond7.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.1.i

for.cond10.preheader.1.i:                         ; preds = %for.inc29.1.i.for.cond10.preheader.1.i_crit_edge, %for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge
  %i.075.1.i = phi i32 [ %inc30.1.i, %for.inc29.1.i.for.cond10.preheader.1.i_crit_edge ], [ 0, %for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge ]
  %arrayidx11.1.i = getelementptr %struct.hid_report, ptr %report.080.1.i, i32 0, i32 5, i32 %i.075.1.i
  %40 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx11.1.i, align 4
  %maxusage69.1.i = getelementptr inbounds %struct.hid_field, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %maxusage69.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %maxusage69.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp1270.not.1.i = icmp eq i32 %43, 0
  br i1 %cmp1270.not.1.i, label %for.cond10.preheader.1.i.for.inc29.1.i_crit_edge, label %for.body13.1.i.preheader

for.cond10.preheader.1.i.for.inc29.1.i_crit_edge: ; preds = %for.cond10.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.1.i

for.body13.1.i.preheader:                         ; preds = %for.cond10.preheader.1.i
  %usage16.1.i = getelementptr inbounds %struct.hid_field, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %usage16.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usage16.1.i, align 4
  br label %for.body13.1.i

for.body13.1.i:                                   ; preds = %for.inc.1.i.for.body13.1.i_crit_edge, %for.body13.1.i.preheader
  %j.072.1.i = phi i32 [ %inc28.1.i, %for.inc.1.i.for.body13.1.i_crit_edge ], [ 0, %for.body13.1.i.preheader ]
  %type.1.i = getelementptr %struct.hid_usage, ptr %45, i32 %j.072.1.i, i32 6
  %46 = ptrtoint ptr %type.1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %type.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %switch.1.i = icmp ult i8 %47, 2
  br i1 %switch.1.i, label %if.then.1.i, label %for.body13.1.i.for.inc.1.i_crit_edge

for.body13.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body13.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.body13.1.i
  %48 = ptrtoint ptr %type.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp.i = icmp eq i8 %49, 1
  br i1 %cmp.i, label %match_keycode.exit, label %if.then.1.i.for.inc.1.i_crit_edge

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

match_keycode.exit:                               ; preds = %if.then.1.i
  %code.i = getelementptr %struct.hid_usage, ptr %45, i32 %j.072.1.i, i32 5
  %50 = ptrtoint ptr %code.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %code.i, align 2
  %conv2.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv2.i)
  %cmp3.i = icmp eq i32 %20, %conv2.i
  br i1 %cmp3.i, label %hidinput_find_key.exit.loopexit, label %match_keycode.exit.for.inc.1.i_crit_edge

match_keycode.exit.for.inc.1.i_crit_edge:         ; preds = %match_keycode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %match_keycode.exit.for.inc.1.i_crit_edge, %if.then.1.i.for.inc.1.i_crit_edge, %for.body13.1.i.for.inc.1.i_crit_edge
  %inc28.1.i = add nuw i32 %j.072.1.i, 1
  %exitcond59.not = icmp eq i32 %inc28.1.i, %43
  br i1 %exitcond59.not, label %for.inc.1.i.for.inc29.1.i_crit_edge, label %for.inc.1.i.for.body13.1.i_crit_edge

for.inc.1.i.for.body13.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.1.i

for.inc.1.i.for.inc29.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.1.i

for.inc29.1.i:                                    ; preds = %for.inc.1.i.for.inc29.1.i_crit_edge, %for.cond10.preheader.1.i.for.inc29.1.i_crit_edge
  %inc30.1.i = add nuw i32 %i.075.1.i, 1
  %exitcond60.not = icmp eq i32 %inc30.1.i, %39
  br i1 %exitcond60.not, label %for.inc29.1.i.for.cond1.loopexit.1.i_crit_edge, label %for.inc29.1.i.for.cond10.preheader.1.i_crit_edge

for.inc29.1.i.for.cond10.preheader.1.i_crit_edge: ; preds = %for.inc29.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader.1.i

for.inc29.1.i.for.cond1.loopexit.1.i_crit_edge:   ; preds = %for.inc29.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.1.i

for.cond1.loopexit.1.i:                           ; preds = %for.inc29.1.i.for.cond1.loopexit.1.i_crit_edge, %for.cond7.preheader.1.i.for.cond1.loopexit.1.i_crit_edge
  %52 = ptrtoint ptr %report.080.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %report.0.1.i = load ptr, ptr %report.080.1.i, align 4
  %cmp5.not.1.i = icmp eq ptr %report.0.1.i, %report_list.1.i
  br i1 %cmp5.not.1.i, label %for.cond1.loopexit.1.i.cleanup_crit_edge, label %for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge

for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge: ; preds = %for.cond1.loopexit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.1.i

for.cond1.loopexit.1.i.cleanup_crit_edge:         ; preds = %for.cond1.loopexit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

hidinput_find_key.exit.loopexit:                  ; preds = %match_keycode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr17.1.i.le = getelementptr %struct.hid_usage, ptr %45, i32 %j.072.1.i
  br label %hidinput_find_key.exit

hidinput_find_key.exit.loopexit53:                ; preds = %match_keycode.exit50
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr17.i.le = getelementptr %struct.hid_usage, ptr %30, i32 %j.072.i
  br label %hidinput_find_key.exit

hidinput_find_key.exit:                           ; preds = %hidinput_find_key.exit.loopexit53, %hidinput_find_key.exit.loopexit
  %retval.0.i = phi ptr [ %add.ptr17.1.i.le, %hidinput_find_key.exit.loopexit ], [ %add.ptr17.i.le, %hidinput_find_key.exit.loopexit53 ]
  %tobool21.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool21.not, label %hidinput_find_key.exit.cleanup_crit_edge, label %if.then22

hidinput_find_key.exit.cleanup_crit_edge:         ; preds = %hidinput_find_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %hidinput_find_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %20, ptr noundef %keybit) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %hidinput_find_key.exit.cleanup_crit_edge, %for.cond1.loopexit.1.i.cleanup_crit_edge, %for.inc39.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %hidinput_find_key.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.inc39.i.cleanup_crit_edge ], [ 0, %for.cond1.loopexit.1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidinput_getkeycode(ptr nocapture noundef readonly %dev, ptr noundef %ke) #2 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !118
  %call1 = call fastcc ptr @hidinput_locate_usage(ptr noundef %1, ptr noundef %ke, ptr noundef nonnull %index)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.hid_usage, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %cond.true, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %code = getelementptr inbounds %struct.hid_usage, ptr %call1, i32 0, i32 5
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %code, align 2
  %conv3 = zext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %conv3, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %keycode = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  %7 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %keycode, align 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %conv4 = trunc i32 %9 to i16
  %index5 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %10 = ptrtoint ptr %index5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %index5, align 2
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 4
  %len = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %len, align 1
  %scancode7 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 4
  %14 = ptrtoint ptr %scancode7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %scancode7, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hidinput_locate_usage(ptr noundef readonly %hid, ptr noundef %ke, ptr noundef writeonly %index) unnamed_addr #2 align 64 {
entry:
  %scancode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode) #10
  %0 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %scancode, align 4, !annotation !118
  %1 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ke, align 4
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %index1 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %4 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index1, align 2
  %conv2 = zext i16 %5 to i32
  %report_list.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %report.077.i = load ptr, ptr %report_list.i, align 4
  %cmp5.not78.i = icmp eq ptr %report.077.i, %report_list.i
  br i1 %cmp5.not78.i, label %if.then.for.inc39.i_crit_edge, label %if.then.for.cond7.preheader.i_crit_edge

if.then.for.cond7.preheader.i_crit_edge:          ; preds = %if.then
  br label %for.cond7.preheader.i

if.then.for.inc39.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i

for.cond1.loopexit.i:                             ; preds = %for.inc29.i.for.cond1.loopexit.i_crit_edge, %for.cond7.preheader.i.for.cond1.loopexit.i_crit_edge
  %cur_idx.2.lcssa.i = phi i32 [ %cur_idx.179.i, %for.cond7.preheader.i.for.cond1.loopexit.i_crit_edge ], [ %cur_idx.3.lcssa.i, %for.inc29.i.for.cond1.loopexit.i_crit_edge ]
  %7 = ptrtoint ptr %report.080.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %report.0.i = load ptr, ptr %report.080.i, align 4
  %cmp5.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp5.not.i, label %for.cond1.loopexit.i.for.inc39.i_crit_edge, label %for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge

for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond1.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.i

for.cond1.loopexit.i.for.inc39.i_crit_edge:       ; preds = %for.cond1.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i

for.cond7.preheader.i:                            ; preds = %for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge, %if.then.for.cond7.preheader.i_crit_edge
  %report.080.i = phi ptr [ %report.0.i, %for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge ], [ %report.077.i, %if.then.for.cond7.preheader.i_crit_edge ]
  %cur_idx.179.i = phi i32 [ %cur_idx.2.lcssa.i, %for.cond1.loopexit.i.for.cond7.preheader.i_crit_edge ], [ 0, %if.then.for.cond7.preheader.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report.080.i, i32 0, i32 6
  %8 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp873.not.i = icmp eq i32 %9, 0
  br i1 %cmp873.not.i, label %for.cond7.preheader.i.for.cond1.loopexit.i_crit_edge, label %for.cond7.preheader.i.for.cond10.preheader.i_crit_edge

for.cond7.preheader.i.for.cond10.preheader.i_crit_edge: ; preds = %for.cond7.preheader.i
  br label %for.cond10.preheader.i

for.cond7.preheader.i.for.cond1.loopexit.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.i

for.cond10.preheader.i:                           ; preds = %for.inc29.i.for.cond10.preheader.i_crit_edge, %for.cond7.preheader.i.for.cond10.preheader.i_crit_edge
  %i.075.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond10.preheader.i_crit_edge ], [ 0, %for.cond7.preheader.i.for.cond10.preheader.i_crit_edge ]
  %cur_idx.274.i = phi i32 [ %cur_idx.3.lcssa.i, %for.inc29.i.for.cond10.preheader.i_crit_edge ], [ %cur_idx.179.i, %for.cond7.preheader.i.for.cond10.preheader.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.hid_report, ptr %report.080.i, i32 0, i32 5, i32 %i.075.i
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11.i, align 4
  %maxusage69.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %maxusage69.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxusage69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1270.not.i = icmp eq i32 %13, 0
  br i1 %cmp1270.not.i, label %for.cond10.preheader.i.for.inc29.i_crit_edge, label %for.body13.i.preheader

for.cond10.preheader.i.for.inc29.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body13.i.preheader:                           ; preds = %for.cond10.preheader.i
  %usage16.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %usage16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usage16.i, align 4
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc.i.for.body13.i_crit_edge, %for.body13.i.preheader
  %j.072.i = phi i32 [ %inc28.i, %for.inc.i.for.body13.i_crit_edge ], [ 0, %for.body13.i.preheader ]
  %cur_idx.371.i = phi i32 [ %cur_idx.4.i, %for.inc.i.for.body13.i_crit_edge ], [ %cur_idx.274.i, %for.body13.i.preheader ]
  %type.i = getelementptr %struct.hid_usage, ptr %15, i32 %j.072.i, i32 6
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %switch.i = icmp ult i8 %17, 2
  br i1 %switch.i, label %if.then.i, label %for.body13.i.for.inc.i_crit_edge

for.body13.i.for.inc.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_idx.371.i, i32 %conv2)
  %cmp.i98 = icmp eq i32 %cur_idx.371.i, %conv2
  br i1 %cmp.i98, label %if.then24.i.loopexit103, label %if.end26.i

if.then24.i.loopexit:                             ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr17.1.i.le = getelementptr %struct.hid_usage, ptr %26, i32 %j.072.1.i
  br label %if.then24.i

if.then24.i.loopexit103:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr17.i.le = getelementptr %struct.hid_usage, ptr %15, i32 %j.072.i
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.then24.i.loopexit103, %if.then24.i.loopexit
  %add.ptr17.lcssa.i = phi ptr [ %add.ptr17.1.i.le, %if.then24.i.loopexit ], [ %add.ptr17.i.le, %if.then24.i.loopexit103 ]
  %tobool.not.i = icmp eq ptr %index, null
  br i1 %tobool.not.i, label %if.then24.i.if.end8_crit_edge, label %if.then24.i.if.end8.sink.split_crit_edge

if.then24.i.if.end8.sink.split_crit_edge:         ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.sink.split

if.then24.i.if.end8_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end26.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %cur_idx.371.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end26.i, %for.body13.i.for.inc.i_crit_edge
  %cur_idx.4.i = phi i32 [ %inc.i, %if.end26.i ], [ %cur_idx.371.i, %for.body13.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw i32 %j.072.i, 1
  %exitcond.not = icmp eq i32 %inc28.i, %13
  br i1 %exitcond.not, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body13.i_crit_edge

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond10.preheader.i.for.inc29.i_crit_edge
  %cur_idx.3.lcssa.i = phi i32 [ %cur_idx.274.i, %for.cond10.preheader.i.for.inc29.i_crit_edge ], [ %cur_idx.4.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw i32 %i.075.i, 1
  %exitcond118.not = icmp eq i32 %inc30.i, %9
  br i1 %exitcond118.not, label %for.inc29.i.for.cond1.loopexit.i_crit_edge, label %for.inc29.i.for.cond10.preheader.i_crit_edge

for.inc29.i.for.cond10.preheader.i_crit_edge:     ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader.i

for.inc29.i.for.cond1.loopexit.i_crit_edge:       ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.i

for.inc39.i:                                      ; preds = %for.cond1.loopexit.i.for.inc39.i_crit_edge, %if.then.for.inc39.i_crit_edge
  %cur_idx.1.lcssa.i = phi i32 [ 0, %if.then.for.inc39.i_crit_edge ], [ %cur_idx.2.lcssa.i, %for.cond1.loopexit.i.for.inc39.i_crit_edge ]
  %report_list.1.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %18 = ptrtoint ptr %report_list.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %report.077.1.i = load ptr, ptr %report_list.1.i, align 4
  %cmp5.not78.1.i = icmp eq ptr %report.077.1.i, %report_list.1.i
  br i1 %cmp5.not78.1.i, label %for.inc39.i.if.end8_crit_edge, label %for.inc39.i.for.cond7.preheader.1.i_crit_edge

for.inc39.i.for.cond7.preheader.1.i_crit_edge:    ; preds = %for.inc39.i
  br label %for.cond7.preheader.1.i

for.inc39.i.if.end8_crit_edge:                    ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.cond7.preheader.1.i:                          ; preds = %for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge, %for.inc39.i.for.cond7.preheader.1.i_crit_edge
  %report.080.1.i = phi ptr [ %report.0.1.i, %for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge ], [ %report.077.1.i, %for.inc39.i.for.cond7.preheader.1.i_crit_edge ]
  %cur_idx.179.1.i = phi i32 [ %cur_idx.2.lcssa.1.i, %for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge ], [ %cur_idx.1.lcssa.i, %for.inc39.i.for.cond7.preheader.1.i_crit_edge ]
  %maxfield.1.i = getelementptr inbounds %struct.hid_report, ptr %report.080.1.i, i32 0, i32 6
  %19 = ptrtoint ptr %maxfield.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxfield.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp873.not.1.i = icmp eq i32 %20, 0
  br i1 %cmp873.not.1.i, label %for.cond7.preheader.1.i.for.cond1.loopexit.1.i_crit_edge, label %for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge

for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge: ; preds = %for.cond7.preheader.1.i
  br label %for.cond10.preheader.1.i

for.cond7.preheader.1.i.for.cond1.loopexit.1.i_crit_edge: ; preds = %for.cond7.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.1.i

for.cond10.preheader.1.i:                         ; preds = %for.inc29.1.i.for.cond10.preheader.1.i_crit_edge, %for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge
  %i.075.1.i = phi i32 [ %inc30.1.i, %for.inc29.1.i.for.cond10.preheader.1.i_crit_edge ], [ 0, %for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge ]
  %cur_idx.274.1.i = phi i32 [ %cur_idx.3.lcssa.1.i, %for.inc29.1.i.for.cond10.preheader.1.i_crit_edge ], [ %cur_idx.179.1.i, %for.cond7.preheader.1.i.for.cond10.preheader.1.i_crit_edge ]
  %arrayidx11.1.i = getelementptr %struct.hid_report, ptr %report.080.1.i, i32 0, i32 5, i32 %i.075.1.i
  %21 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11.1.i, align 4
  %maxusage69.1.i = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %maxusage69.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxusage69.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1270.not.1.i = icmp eq i32 %24, 0
  br i1 %cmp1270.not.1.i, label %for.cond10.preheader.1.i.for.inc29.1.i_crit_edge, label %for.body13.1.i.preheader

for.cond10.preheader.1.i.for.inc29.1.i_crit_edge: ; preds = %for.cond10.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.1.i

for.body13.1.i.preheader:                         ; preds = %for.cond10.preheader.1.i
  %usage16.1.i = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %usage16.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usage16.1.i, align 4
  br label %for.body13.1.i

for.body13.1.i:                                   ; preds = %for.inc.1.i.for.body13.1.i_crit_edge, %for.body13.1.i.preheader
  %j.072.1.i = phi i32 [ %inc28.1.i, %for.inc.1.i.for.body13.1.i_crit_edge ], [ 0, %for.body13.1.i.preheader ]
  %cur_idx.371.1.i = phi i32 [ %cur_idx.4.1.i, %for.inc.1.i.for.body13.1.i_crit_edge ], [ %cur_idx.274.1.i, %for.body13.1.i.preheader ]
  %type.1.i = getelementptr %struct.hid_usage, ptr %26, i32 %j.072.1.i, i32 6
  %27 = ptrtoint ptr %type.1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %switch.1.i = icmp ult i8 %28, 2
  br i1 %switch.1.i, label %if.then.1.i, label %for.body13.1.i.for.inc.1.i_crit_edge

for.body13.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body13.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.body13.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_idx.371.1.i, i32 %conv2)
  %cmp.i = icmp eq i32 %cur_idx.371.1.i, %conv2
  br i1 %cmp.i, label %if.then24.i.loopexit, label %if.end26.1.i

if.end26.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1.i = add i32 %cur_idx.371.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end26.1.i, %for.body13.1.i.for.inc.1.i_crit_edge
  %cur_idx.4.1.i = phi i32 [ %inc.1.i, %if.end26.1.i ], [ %cur_idx.371.1.i, %for.body13.1.i.for.inc.1.i_crit_edge ]
  %inc28.1.i = add nuw i32 %j.072.1.i, 1
  %exitcond119.not = icmp eq i32 %inc28.1.i, %24
  br i1 %exitcond119.not, label %for.inc.1.i.for.inc29.1.i_crit_edge, label %for.inc.1.i.for.body13.1.i_crit_edge

for.inc.1.i.for.body13.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.1.i

for.inc.1.i.for.inc29.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.1.i

for.inc29.1.i:                                    ; preds = %for.inc.1.i.for.inc29.1.i_crit_edge, %for.cond10.preheader.1.i.for.inc29.1.i_crit_edge
  %cur_idx.3.lcssa.1.i = phi i32 [ %cur_idx.274.1.i, %for.cond10.preheader.1.i.for.inc29.1.i_crit_edge ], [ %cur_idx.4.1.i, %for.inc.1.i.for.inc29.1.i_crit_edge ]
  %inc30.1.i = add nuw i32 %i.075.1.i, 1
  %exitcond120.not = icmp eq i32 %inc30.1.i, %20
  br i1 %exitcond120.not, label %for.inc29.1.i.for.cond1.loopexit.1.i_crit_edge, label %for.inc29.1.i.for.cond10.preheader.1.i_crit_edge

for.inc29.1.i.for.cond10.preheader.1.i_crit_edge: ; preds = %for.inc29.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader.1.i

for.inc29.1.i.for.cond1.loopexit.1.i_crit_edge:   ; preds = %for.inc29.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.1.i

for.cond1.loopexit.1.i:                           ; preds = %for.inc29.1.i.for.cond1.loopexit.1.i_crit_edge, %for.cond7.preheader.1.i.for.cond1.loopexit.1.i_crit_edge
  %cur_idx.2.lcssa.1.i = phi i32 [ %cur_idx.179.1.i, %for.cond7.preheader.1.i.for.cond1.loopexit.1.i_crit_edge ], [ %cur_idx.3.lcssa.1.i, %for.inc29.1.i.for.cond1.loopexit.1.i_crit_edge ]
  %29 = ptrtoint ptr %report.080.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %report.0.1.i = load ptr, ptr %report.080.1.i, align 4
  %cmp5.not.1.i = icmp eq ptr %report.0.1.i, %report_list.1.i
  br i1 %cmp5.not.1.i, label %for.cond1.loopexit.1.i.if.end8_crit_edge, label %for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge

for.cond1.loopexit.1.i.for.cond7.preheader.1.i_crit_edge: ; preds = %for.cond1.loopexit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.1.i

for.cond1.loopexit.1.i.if.end8_crit_edge:         ; preds = %for.cond1.loopexit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else:                                          ; preds = %entry
  %call3 = call i32 @input_scancode_to_scalar(ptr noundef %ke, ptr noundef nonnull %scancode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then5, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.else
  %30 = ptrtoint ptr %scancode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scancode, align 4
  %report_list.i13 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0, i32 1
  %32 = ptrtoint ptr %report_list.i13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %report.077.i14 = load ptr, ptr %report_list.i13, align 4
  %cmp5.not78.i15 = icmp eq ptr %report.077.i14, %report_list.i13
  br i1 %cmp5.not78.i15, label %if.then5.for.inc39.i60_crit_edge, label %if.then5.for.cond7.preheader.i24_crit_edge

if.then5.for.cond7.preheader.i24_crit_edge:       ; preds = %if.then5
  br label %for.cond7.preheader.i24

if.then5.for.inc39.i60_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i60

for.cond1.loopexit.i19:                           ; preds = %for.inc29.i55.for.cond1.loopexit.i19_crit_edge, %for.cond7.preheader.i24.for.cond1.loopexit.i19_crit_edge
  %cur_idx.2.lcssa.i16 = phi i32 [ %cur_idx.179.i21, %for.cond7.preheader.i24.for.cond1.loopexit.i19_crit_edge ], [ %cur_idx.3.lcssa.i52, %for.inc29.i55.for.cond1.loopexit.i19_crit_edge ]
  %33 = ptrtoint ptr %report.080.i20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %report.0.i17 = load ptr, ptr %report.080.i20, align 4
  %cmp5.not.i18 = icmp eq ptr %report.0.i17, %report_list.i13
  br i1 %cmp5.not.i18, label %for.cond1.loopexit.i19.for.inc39.i60_crit_edge, label %for.cond1.loopexit.i19.for.cond7.preheader.i24_crit_edge

for.cond1.loopexit.i19.for.cond7.preheader.i24_crit_edge: ; preds = %for.cond1.loopexit.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.i24

for.cond1.loopexit.i19.for.inc39.i60_crit_edge:   ; preds = %for.cond1.loopexit.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39.i60

for.cond7.preheader.i24:                          ; preds = %for.cond1.loopexit.i19.for.cond7.preheader.i24_crit_edge, %if.then5.for.cond7.preheader.i24_crit_edge
  %report.080.i20 = phi ptr [ %report.0.i17, %for.cond1.loopexit.i19.for.cond7.preheader.i24_crit_edge ], [ %report.077.i14, %if.then5.for.cond7.preheader.i24_crit_edge ]
  %cur_idx.179.i21 = phi i32 [ %cur_idx.2.lcssa.i16, %for.cond1.loopexit.i19.for.cond7.preheader.i24_crit_edge ], [ 0, %if.then5.for.cond7.preheader.i24_crit_edge ]
  %maxfield.i22 = getelementptr inbounds %struct.hid_report, ptr %report.080.i20, i32 0, i32 6
  %34 = ptrtoint ptr %maxfield.i22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxfield.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp873.not.i23 = icmp eq i32 %35, 0
  br i1 %cmp873.not.i23, label %for.cond7.preheader.i24.for.cond1.loopexit.i19_crit_edge, label %for.cond7.preheader.i24.for.cond10.preheader.i30_crit_edge

for.cond7.preheader.i24.for.cond10.preheader.i30_crit_edge: ; preds = %for.cond7.preheader.i24
  br label %for.cond10.preheader.i30

for.cond7.preheader.i24.for.cond1.loopexit.i19_crit_edge: ; preds = %for.cond7.preheader.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.i19

for.cond10.preheader.i30:                         ; preds = %for.inc29.i55.for.cond10.preheader.i30_crit_edge, %for.cond7.preheader.i24.for.cond10.preheader.i30_crit_edge
  %i.075.i25 = phi i32 [ %inc30.i53, %for.inc29.i55.for.cond10.preheader.i30_crit_edge ], [ 0, %for.cond7.preheader.i24.for.cond10.preheader.i30_crit_edge ]
  %cur_idx.274.i26 = phi i32 [ %cur_idx.3.lcssa.i52, %for.inc29.i55.for.cond10.preheader.i30_crit_edge ], [ %cur_idx.179.i21, %for.cond7.preheader.i24.for.cond10.preheader.i30_crit_edge ]
  %arrayidx11.i27 = getelementptr %struct.hid_report, ptr %report.080.i20, i32 0, i32 5, i32 %i.075.i25
  %36 = ptrtoint ptr %arrayidx11.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx11.i27, align 4
  %maxusage69.i28 = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %maxusage69.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxusage69.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1270.not.i29 = icmp eq i32 %39, 0
  br i1 %cmp1270.not.i29, label %for.cond10.preheader.i30.for.inc29.i55_crit_edge, label %for.body13.i36.preheader

for.cond10.preheader.i30.for.inc29.i55_crit_edge: ; preds = %for.cond10.preheader.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i55

for.body13.i36.preheader:                         ; preds = %for.cond10.preheader.i30
  %usage16.i33 = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %usage16.i33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usage16.i33, align 4
  br label %for.body13.i36

for.body13.i36:                                   ; preds = %for.inc.i51.for.body13.i36_crit_edge, %for.body13.i36.preheader
  %j.072.i31 = phi i32 [ %inc28.i48, %for.inc.i51.for.body13.i36_crit_edge ], [ 0, %for.body13.i36.preheader ]
  %cur_idx.371.i32 = phi i32 [ %cur_idx.4.i47, %for.inc.i51.for.body13.i36_crit_edge ], [ %cur_idx.274.i26, %for.body13.i36.preheader ]
  %type.i34 = getelementptr %struct.hid_usage, ptr %41, i32 %j.072.i31, i32 6
  %42 = ptrtoint ptr %type.i34 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %type.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %switch.i35 = icmp ult i8 %43, 2
  br i1 %switch.i35, label %if.then.i39, label %for.body13.i36.for.inc.i51_crit_edge

for.body13.i36.for.inc.i51_crit_edge:             ; preds = %for.body13.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i51

if.then.i39:                                      ; preds = %for.body13.i36
  %add.ptr17.i37 = getelementptr %struct.hid_usage, ptr %41, i32 %j.072.i31
  %44 = ptrtoint ptr %add.ptr17.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr17.i37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %31)
  %cmp.i100 = icmp eq i32 %45, %31
  br i1 %cmp.i100, label %if.then.i39.if.then24.i43_crit_edge, label %if.end26.i46

if.then.i39.if.then24.i43_crit_edge:              ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i43

if.then24.i43:                                    ; preds = %if.then.1.i80.if.then24.i43_crit_edge, %if.then.i39.if.then24.i43_crit_edge
  %cur_idx.371.lcssa.i40 = phi i32 [ %cur_idx.371.1.i73, %if.then.1.i80.if.then24.i43_crit_edge ], [ %cur_idx.371.i32, %if.then.i39.if.then24.i43_crit_edge ]
  %add.ptr17.lcssa.i41 = phi ptr [ %add.ptr17.1.i78, %if.then.1.i80.if.then24.i43_crit_edge ], [ %add.ptr17.i37, %if.then.i39.if.then24.i43_crit_edge ]
  %tobool.not.i42 = icmp eq ptr %index, null
  br i1 %tobool.not.i42, label %if.then24.i43.if.end8_crit_edge, label %if.then24.i43.if.end8.sink.split_crit_edge

if.then24.i43.if.end8.sink.split_crit_edge:       ; preds = %if.then24.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.sink.split

if.then24.i43.if.end8_crit_edge:                  ; preds = %if.then24.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end26.i46:                                     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i45 = add i32 %cur_idx.371.i32, 1
  br label %for.inc.i51

for.inc.i51:                                      ; preds = %if.end26.i46, %for.body13.i36.for.inc.i51_crit_edge
  %cur_idx.4.i47 = phi i32 [ %inc.i45, %if.end26.i46 ], [ %cur_idx.371.i32, %for.body13.i36.for.inc.i51_crit_edge ]
  %inc28.i48 = add nuw i32 %j.072.i31, 1
  %exitcond121.not = icmp eq i32 %inc28.i48, %39
  br i1 %exitcond121.not, label %for.inc.i51.for.inc29.i55_crit_edge, label %for.inc.i51.for.body13.i36_crit_edge

for.inc.i51.for.body13.i36_crit_edge:             ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i36

for.inc.i51.for.inc29.i55_crit_edge:              ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i55

for.inc29.i55:                                    ; preds = %for.inc.i51.for.inc29.i55_crit_edge, %for.cond10.preheader.i30.for.inc29.i55_crit_edge
  %cur_idx.3.lcssa.i52 = phi i32 [ %cur_idx.274.i26, %for.cond10.preheader.i30.for.inc29.i55_crit_edge ], [ %cur_idx.4.i47, %for.inc.i51.for.inc29.i55_crit_edge ]
  %inc30.i53 = add nuw i32 %i.075.i25, 1
  %exitcond122.not = icmp eq i32 %inc30.i53, %35
  br i1 %exitcond122.not, label %for.inc29.i55.for.cond1.loopexit.i19_crit_edge, label %for.inc29.i55.for.cond10.preheader.i30_crit_edge

for.inc29.i55.for.cond10.preheader.i30_crit_edge: ; preds = %for.inc29.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader.i30

for.inc29.i55.for.cond1.loopexit.i19_crit_edge:   ; preds = %for.inc29.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.i19

for.inc39.i60:                                    ; preds = %for.cond1.loopexit.i19.for.inc39.i60_crit_edge, %if.then5.for.inc39.i60_crit_edge
  %cur_idx.1.lcssa.i56 = phi i32 [ 0, %if.then5.for.inc39.i60_crit_edge ], [ %cur_idx.2.lcssa.i16, %for.cond1.loopexit.i19.for.inc39.i60_crit_edge ]
  %report_list.1.i57 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %46 = ptrtoint ptr %report_list.1.i57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %report.077.1.i58 = load ptr, ptr %report_list.1.i57, align 4
  %cmp5.not78.1.i59 = icmp eq ptr %report.077.1.i58, %report_list.1.i57
  br i1 %cmp5.not78.1.i59, label %for.inc39.i60.if.end8_crit_edge, label %for.inc39.i60.for.cond7.preheader.1.i65_crit_edge

for.inc39.i60.for.cond7.preheader.1.i65_crit_edge: ; preds = %for.inc39.i60
  br label %for.cond7.preheader.1.i65

for.inc39.i60.if.end8_crit_edge:                  ; preds = %for.inc39.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.cond7.preheader.1.i65:                        ; preds = %for.cond1.loopexit.1.i95.for.cond7.preheader.1.i65_crit_edge, %for.inc39.i60.for.cond7.preheader.1.i65_crit_edge
  %report.080.1.i61 = phi ptr [ %report.0.1.i93, %for.cond1.loopexit.1.i95.for.cond7.preheader.1.i65_crit_edge ], [ %report.077.1.i58, %for.inc39.i60.for.cond7.preheader.1.i65_crit_edge ]
  %cur_idx.179.1.i62 = phi i32 [ %cur_idx.2.lcssa.1.i92, %for.cond1.loopexit.1.i95.for.cond7.preheader.1.i65_crit_edge ], [ %cur_idx.1.lcssa.i56, %for.inc39.i60.for.cond7.preheader.1.i65_crit_edge ]
  %maxfield.1.i63 = getelementptr inbounds %struct.hid_report, ptr %report.080.1.i61, i32 0, i32 6
  %47 = ptrtoint ptr %maxfield.1.i63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %maxfield.1.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp873.not.1.i64 = icmp eq i32 %48, 0
  br i1 %cmp873.not.1.i64, label %for.cond7.preheader.1.i65.for.cond1.loopexit.1.i95_crit_edge, label %for.cond7.preheader.1.i65.for.cond10.preheader.1.i71_crit_edge

for.cond7.preheader.1.i65.for.cond10.preheader.1.i71_crit_edge: ; preds = %for.cond7.preheader.1.i65
  br label %for.cond10.preheader.1.i71

for.cond7.preheader.1.i65.for.cond1.loopexit.1.i95_crit_edge: ; preds = %for.cond7.preheader.1.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.1.i95

for.cond10.preheader.1.i71:                       ; preds = %for.inc29.1.i91.for.cond10.preheader.1.i71_crit_edge, %for.cond7.preheader.1.i65.for.cond10.preheader.1.i71_crit_edge
  %i.075.1.i66 = phi i32 [ %inc30.1.i89, %for.inc29.1.i91.for.cond10.preheader.1.i71_crit_edge ], [ 0, %for.cond7.preheader.1.i65.for.cond10.preheader.1.i71_crit_edge ]
  %cur_idx.274.1.i67 = phi i32 [ %cur_idx.3.lcssa.1.i88, %for.inc29.1.i91.for.cond10.preheader.1.i71_crit_edge ], [ %cur_idx.179.1.i62, %for.cond7.preheader.1.i65.for.cond10.preheader.1.i71_crit_edge ]
  %arrayidx11.1.i68 = getelementptr %struct.hid_report, ptr %report.080.1.i61, i32 0, i32 5, i32 %i.075.1.i66
  %49 = ptrtoint ptr %arrayidx11.1.i68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx11.1.i68, align 4
  %maxusage69.1.i69 = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %maxusage69.1.i69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %maxusage69.1.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp1270.not.1.i70 = icmp eq i32 %52, 0
  br i1 %cmp1270.not.1.i70, label %for.cond10.preheader.1.i71.for.inc29.1.i91_crit_edge, label %for.body13.1.i77.preheader

for.cond10.preheader.1.i71.for.inc29.1.i91_crit_edge: ; preds = %for.cond10.preheader.1.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.1.i91

for.body13.1.i77.preheader:                       ; preds = %for.cond10.preheader.1.i71
  %usage16.1.i74 = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %usage16.1.i74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usage16.1.i74, align 4
  br label %for.body13.1.i77

for.body13.1.i77:                                 ; preds = %for.inc.1.i87.for.body13.1.i77_crit_edge, %for.body13.1.i77.preheader
  %j.072.1.i72 = phi i32 [ %inc28.1.i84, %for.inc.1.i87.for.body13.1.i77_crit_edge ], [ 0, %for.body13.1.i77.preheader ]
  %cur_idx.371.1.i73 = phi i32 [ %cur_idx.4.1.i83, %for.inc.1.i87.for.body13.1.i77_crit_edge ], [ %cur_idx.274.1.i67, %for.body13.1.i77.preheader ]
  %type.1.i75 = getelementptr %struct.hid_usage, ptr %54, i32 %j.072.1.i72, i32 6
  %55 = ptrtoint ptr %type.1.i75 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type.1.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %switch.1.i76 = icmp ult i8 %56, 2
  br i1 %switch.1.i76, label %if.then.1.i80, label %for.body13.1.i77.for.inc.1.i87_crit_edge

for.body13.1.i77.for.inc.1.i87_crit_edge:         ; preds = %for.body13.1.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i87

if.then.1.i80:                                    ; preds = %for.body13.1.i77
  %add.ptr17.1.i78 = getelementptr %struct.hid_usage, ptr %54, i32 %j.072.1.i72
  %57 = ptrtoint ptr %add.ptr17.1.i78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr17.1.i78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %31)
  %cmp.i99 = icmp eq i32 %58, %31
  br i1 %cmp.i99, label %if.then.1.i80.if.then24.i43_crit_edge, label %if.end26.1.i82

if.then.1.i80.if.then24.i43_crit_edge:            ; preds = %if.then.1.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i43

if.end26.1.i82:                                   ; preds = %if.then.1.i80
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1.i81 = add i32 %cur_idx.371.1.i73, 1
  br label %for.inc.1.i87

for.inc.1.i87:                                    ; preds = %if.end26.1.i82, %for.body13.1.i77.for.inc.1.i87_crit_edge
  %cur_idx.4.1.i83 = phi i32 [ %inc.1.i81, %if.end26.1.i82 ], [ %cur_idx.371.1.i73, %for.body13.1.i77.for.inc.1.i87_crit_edge ]
  %inc28.1.i84 = add nuw i32 %j.072.1.i72, 1
  %exitcond123.not = icmp eq i32 %inc28.1.i84, %52
  br i1 %exitcond123.not, label %for.inc.1.i87.for.inc29.1.i91_crit_edge, label %for.inc.1.i87.for.body13.1.i77_crit_edge

for.inc.1.i87.for.body13.1.i77_crit_edge:         ; preds = %for.inc.1.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.1.i77

for.inc.1.i87.for.inc29.1.i91_crit_edge:          ; preds = %for.inc.1.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.1.i91

for.inc29.1.i91:                                  ; preds = %for.inc.1.i87.for.inc29.1.i91_crit_edge, %for.cond10.preheader.1.i71.for.inc29.1.i91_crit_edge
  %cur_idx.3.lcssa.1.i88 = phi i32 [ %cur_idx.274.1.i67, %for.cond10.preheader.1.i71.for.inc29.1.i91_crit_edge ], [ %cur_idx.4.1.i83, %for.inc.1.i87.for.inc29.1.i91_crit_edge ]
  %inc30.1.i89 = add nuw i32 %i.075.1.i66, 1
  %exitcond124.not = icmp eq i32 %inc30.1.i89, %48
  br i1 %exitcond124.not, label %for.inc29.1.i91.for.cond1.loopexit.1.i95_crit_edge, label %for.inc29.1.i91.for.cond10.preheader.1.i71_crit_edge

for.inc29.1.i91.for.cond10.preheader.1.i71_crit_edge: ; preds = %for.inc29.1.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader.1.i71

for.inc29.1.i91.for.cond1.loopexit.1.i95_crit_edge: ; preds = %for.inc29.1.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.loopexit.1.i95

for.cond1.loopexit.1.i95:                         ; preds = %for.inc29.1.i91.for.cond1.loopexit.1.i95_crit_edge, %for.cond7.preheader.1.i65.for.cond1.loopexit.1.i95_crit_edge
  %cur_idx.2.lcssa.1.i92 = phi i32 [ %cur_idx.179.1.i62, %for.cond7.preheader.1.i65.for.cond1.loopexit.1.i95_crit_edge ], [ %cur_idx.3.lcssa.1.i88, %for.inc29.1.i91.for.cond1.loopexit.1.i95_crit_edge ]
  %59 = ptrtoint ptr %report.080.1.i61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %report.0.1.i93 = load ptr, ptr %report.080.1.i61, align 4
  %cmp5.not.1.i94 = icmp eq ptr %report.0.1.i93, %report_list.1.i57
  br i1 %cmp5.not.1.i94, label %for.cond1.loopexit.1.i95.if.end8_crit_edge, label %for.cond1.loopexit.1.i95.for.cond7.preheader.1.i65_crit_edge

for.cond1.loopexit.1.i95.for.cond7.preheader.1.i65_crit_edge: ; preds = %for.cond1.loopexit.1.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.1.i65

for.cond1.loopexit.1.i95.if.end8_crit_edge:       ; preds = %for.cond1.loopexit.1.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8.sink.split:                               ; preds = %if.then24.i43.if.end8.sink.split_crit_edge, %if.then24.i.if.end8.sink.split_crit_edge
  %cur_idx.371.lcssa.i40.sink = phi i32 [ %conv2, %if.then24.i.if.end8.sink.split_crit_edge ], [ %cur_idx.371.lcssa.i40, %if.then24.i43.if.end8.sink.split_crit_edge ]
  %usage.0.ph = phi ptr [ %add.ptr17.lcssa.i, %if.then24.i.if.end8.sink.split_crit_edge ], [ %add.ptr17.lcssa.i41, %if.then24.i43.if.end8.sink.split_crit_edge ]
  %60 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cur_idx.371.lcssa.i40.sink, ptr %index, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %for.cond1.loopexit.1.i95.if.end8_crit_edge, %for.inc39.i60.if.end8_crit_edge, %if.then24.i43.if.end8_crit_edge, %if.else.if.end8_crit_edge, %for.cond1.loopexit.1.i.if.end8_crit_edge, %for.inc39.i.if.end8_crit_edge, %if.then24.i.if.end8_crit_edge
  %usage.0 = phi ptr [ null, %if.else.if.end8_crit_edge ], [ %add.ptr17.lcssa.i, %if.then24.i.if.end8_crit_edge ], [ null, %for.inc39.i.if.end8_crit_edge ], [ %add.ptr17.lcssa.i41, %if.then24.i43.if.end8_crit_edge ], [ null, %for.inc39.i60.if.end8_crit_edge ], [ %usage.0.ph, %if.end8.sink.split ], [ null, %for.cond1.loopexit.1.i95.if.end8_crit_edge ], [ null, %for.cond1.loopexit.1.i.if.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode) #10
  ret ptr %usage.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_scancode_to_scalar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidinput_configure_usage(ptr noundef %hidinput, ptr noundef %field, ptr noundef %usage) unnamed_addr #2 align 64 {
entry:
  %max = alloca i32, align 4
  %bit = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #10
  %4 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #10
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bit, align 4
  %hidinput2 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %6 = ptrtoint ptr %hidinput2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hidinput, ptr %hidinput2, align 4
  %flags = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.ignore_crit_edge

entry.ignore_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end:                                           ; preds = %entry
  %report_count = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 8
  %9 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.end.ignore_crit_edge, label %if.end4

if.end.ignore_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end4:                                          ; preds = %if.end
  %report_type = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 9
  %11 = ptrtoint ptr %report_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %report_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp5 = icmp eq i32 %12, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %13 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usage, align 4
  %and6 = and i32 %14, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 524288
  br i1 %cmp7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.ignore_crit_edge

land.lhs.true.ignore_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %driver = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver, align 8
  %input_mapping = getelementptr inbounds %struct.hid_driver, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %input_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input_mapping, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %if.end9.if.end21_crit_edge, label %if.then11

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then11:                                        ; preds = %if.end9
  %call14 = call i32 %18(ptr noundef %3, ptr noundef %hidinput, ptr noundef %field, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, 0
  %19 = lshr i32 %call14, 30
  %20 = and i32 %19, 2
  %cleanup.dest.slot.0 = select i1 %cmp15, i32 3, i32 %20
  %21 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %cleanup.dest.slot.0, label %if.then11.cleanup695_crit_edge [
    i32 0, label %if.then11.if.end21_crit_edge
    i32 3, label %if.then11.mapped_crit_edge
    i32 2, label %if.then11.ignore_crit_edge
  ]

if.then11.ignore_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.then11.mapped_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapped

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then11.cleanup695_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup695

if.end21:                                         ; preds = %if.then11.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %22 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usage, align 4
  %and23 = and i32 %23, -65536
  %24 = zext i32 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and23, label %if.end21.unknown_crit_edge [
    i32 0, label %if.end21.ignore_crit_edge
    i32 458752, label %sw.bb24
    i32 589824, label %sw.bb38
    i32 131072, label %sw.bb78
    i32 65536, label %sw.bb88
    i32 524288, label %sw.bb199
    i32 851968, label %sw.bb215
    i32 720896, label %sw.bb267
    i32 786432, label %sw.bb289
    i32 393216, label %sw.bb460
    i32 8716288, label %sw.bb466
    i32 -8454144, label %sw.bb472
    i32 -16711680, label %sw.bb491
    i32 -16777216, label %if.end21.ignore_crit_edge1435
    i32 16711680, label %sw.bb502
    i32 -4456448, label %if.end21.ignore_crit_edge1436
    i32 -16187392, label %if.end21.ignore_crit_edge1437
    i32 -12386304, label %if.end21.ignore_crit_edge1438
    i32 983040, label %sw.bb506
  ]

if.end21.ignore_crit_edge1438:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end21.ignore_crit_edge1437:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end21.ignore_crit_edge1436:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end21.ignore_crit_edge1435:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end21.ignore_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end21.unknown_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

sw.bb24:                                          ; preds = %if.end21
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %evbit) #10
  %25 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usage, align 4
  %and26 = and i32 %26, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and26)
  %cmp27 = icmp ult i32 %and26, 256
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and26)
  %tobool31.not = icmp ult i32 %and26, 4
  br i1 %tobool31.not, label %if.then28.ignore_crit_edge, label %if.end33

if.then28.ignore_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end33:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [256 x i8], ptr @hid_keyboard, i32 0, i32 %and26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %28 to i16
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext %conv)
  br label %mapped

if.else:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i32 noundef 240)
  br label %mapped

sw.bb38:                                          ; preds = %if.end21
  %sub = add i32 %23, 65535
  %and40 = and i32 %sub, 65535
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %29 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %application, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %30, label %sw.bb38.sw.default_crit_edge [
    i32 65538, label %sw.bb38.sw.epilog77_crit_edge
    i32 65537, label %sw.bb38.sw.epilog77_crit_edge1439
    i32 65540, label %sw.bb42
    i32 65541, label %sw.bb50
    i32 786433, label %sw.bb58
  ]

sw.bb38.sw.epilog77_crit_edge1439:                ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog77

sw.bb38.sw.epilog77_crit_edge:                    ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog77

sw.bb38.sw.default_crit_edge:                     ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb42:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and40)
  %cmp43 = icmp ult i32 %and40, 16
  %. = select i1 %cmp43, i32 288, i32 688
  br label %sw.epilog77

sw.bb50:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and40)
  %cmp51 = icmp ult i32 %and40, 16
  %.1428 = select i1 %cmp51, i32 304, i32 688
  br label %sw.epilog77

sw.bb58:                                          ; preds = %sw.bb38
  %collection1.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %collection1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %collection1.i, align 8
  %usage2.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 3
  %34 = ptrtoint ptr %usage2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usage2.i, align 4
  %collection_index.i = getelementptr inbounds %struct.hid_usage, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %collection_index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %collection_index.i, align 4
  %type3.i = getelementptr %struct.hid_collection, ptr %33, i32 %37, i32 1
  %38 = ptrtoint ptr %type3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i = icmp eq i32 %39, 4
  br i1 %cmp.i, label %hidinput_field_in_collection.exit, label %sw.bb58.sw.default_crit_edge

sw.bb58.sw.default_crit_edge:                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

hidinput_field_in_collection.exit:                ; preds = %sw.bb58
  %usage4.i = getelementptr %struct.hid_collection, ptr %33, i32 %37, i32 2
  %40 = ptrtoint ptr %usage4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usage4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 786435, i32 %41)
  %cmp5.i = icmp eq i32 %41, 786435
  br i1 %cmp5.i, label %if.then60, label %hidinput_field_in_collection.exit.sw.default_crit_edge

hidinput_field_in_collection.exit.sw.default_crit_edge: ; preds = %hidinput_field_in_collection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then60:                                        ; preds = %hidinput_field_in_collection.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and40)
  %cmp61 = icmp ult i32 %and40, 30
  %.1429 = select i1 %cmp61, i32 656, i32 674
  br label %sw.epilog77

sw.default:                                       ; preds = %hidinput_field_in_collection.exit.sw.default_crit_edge, %sw.bb58.sw.default_crit_edge, %sw.bb38.sw.default_crit_edge
  %42 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %field, align 4
  %switch.tableidx = add i32 %43, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %44 = icmp ult i32 %switch.tableidx, 5
  br i1 %44, label %switch.lookup, label %sw.default.sw.epilog77_crit_edge

sw.default.sw.epilog77_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog77

switch.lookup:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.hidinput_configure_usage, i32 0, i32 %switch.tableidx
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %switch.lookup, %sw.default.sw.epilog77_crit_edge, %if.then60, %sw.bb50, %sw.bb42, %sw.bb38.sw.epilog77_crit_edge, %sw.bb38.sw.epilog77_crit_edge1439
  %.sink = phi i32 [ 272, %sw.bb38.sw.epilog77_crit_edge ], [ 272, %sw.bb38.sw.epilog77_crit_edge1439 ], [ %., %sw.bb42 ], [ %.1428, %sw.bb50 ], [ %.1429, %if.then60 ], [ %switch.load, %switch.lookup ], [ 256, %sw.default.sw.epilog77_crit_edge ]
  %add70 = add nuw nsw i32 %and40, %.sink
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i32 noundef %add70)
  br label %mapped

sw.bb78:                                          ; preds = %if.end21
  %trunc1404 = trunc i32 %23 to i16
  %46 = zext i16 %trunc1404 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %trunc1404, label %sw.bb78.ignore_crit_edge [
    i16 186, label %sw.bb81
    i16 187, label %sw.bb82
    i16 196, label %sw.bb83
    i16 197, label %sw.bb84
    i16 200, label %sw.bb85
  ]

sw.bb78.ignore_crit_edge:                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb81:                                          ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 7)
  br label %mapped

sw.bb82:                                          ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 6)
  br label %mapped

sw.bb83:                                          ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 9)
  br label %mapped

sw.bb84:                                          ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 10)
  br label %mapped

sw.bb85:                                          ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 8)
  br label %mapped

sw.bb88:                                          ; preds = %if.end21
  %and90 = and i32 %23, 240
  %trunc1412 = trunc i32 %and90 to i8
  %47 = zext i8 %trunc1412 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %trunc1412, label %if.end124 [
    i8 -128, label %if.then93
    i8 -80, label %if.then118
  ]

if.then93:                                        ; preds = %sw.bb88
  %and95 = and i32 %23, 15
  %48 = zext i32 %and95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and95, label %if.then93.unknown_crit_edge [
    i32 1, label %sw.bb96
    i32 2, label %sw.bb97
    i32 3, label %sw.bb98
    i32 4, label %sw.bb99
    i32 5, label %sw.bb100
    i32 6, label %sw.bb101
    i32 7, label %sw.bb102
    i32 8, label %sw.bb103
    i32 9, label %sw.bb104
    i32 10, label %sw.bb105
    i32 11, label %sw.bb106
    i32 12, label %sw.bb107
    i32 13, label %sw.bb108
    i32 14, label %sw.bb109
    i32 15, label %sw.bb110
  ]

if.then93.unknown_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

sw.bb96:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 116)
  br label %mapped

sw.bb97:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 142)
  br label %mapped

sw.bb98:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 143)
  br label %mapped

sw.bb99:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 438)
  br label %mapped

sw.bb100:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 139)
  br label %mapped

sw.bb101:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 148)
  br label %mapped

sw.bb102:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 138)
  br label %mapped

sw.bb103:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 174)
  br label %mapped

sw.bb104:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 353)
  br label %mapped

sw.bb105:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 106)
  br label %mapped

sw.bb106:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 105)
  br label %mapped

sw.bb107:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 103)
  br label %mapped

sw.bb108:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 108)
  br label %mapped

sw.bb109:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 356)
  br label %mapped

sw.bb110:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 408)
  br label %mapped

if.then118:                                       ; preds = %sw.bb88
  %and120 = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and120)
  %cond704 = icmp eq i32 %and120, 5
  br i1 %cond704, label %sw.bb121, label %if.then118.ignore_crit_edge

if.then118.ignore_crit_edge:                      ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb121:                                         ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 227)
  br label %mapped

if.end124:                                        ; preds = %sw.bb88
  %application125 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %49 = ptrtoint ptr %application125 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %application125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %50)
  %cmp126 = icmp eq i32 %50, 65664
  br i1 %cmp126, label %if.end124.ignore_crit_edge, label %if.end129

if.end124.ignore_crit_edge:                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end129:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %and90)
  %cmp132 = icmp eq i32 %and90, 144
  br i1 %cmp132, label %if.then134, label %if.end150

if.then134:                                       ; preds = %if.end129
  %switch.tableidx1434 = add i32 %23, -65680
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx1434)
  %51 = icmp ult i32 %switch.tableidx1434, 4
  br i1 %51, label %switch.lookup1433, label %if.then134.unknown_crit_edge

if.then134.unknown_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

switch.lookup1433:                                ; preds = %if.then134
  %switch.shiftamt = shl i32 %switch.tableidx1434, 3
  %switch.downshift = lshr i32 117638401, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %hat_dir142 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 9
  %52 = ptrtoint ptr %hat_dir142 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %switch.masked, ptr %hat_dir142, align 1
  %dpad = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 20
  %53 = ptrtoint ptr %dpad to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dpad, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool145.not = icmp eq i16 %54, 0
  br i1 %tobool145.not, label %if.end149, label %if.then146

if.then146:                                       ; preds = %switch.lookup1433
  call void @__sanitizer_cov_trace_pc() #12
  %conv148 = zext i16 %54 to i32
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef %conv148)
  br label %ignore

if.end149:                                        ; preds = %switch.lookup1433
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 16)
  br label %mapped

if.end150:                                        ; preds = %if.end129
  %55 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %23, label %if.end150.unknown_crit_edge [
    i32 65584, label %if.end150.sw.bb152_crit_edge
    i32 65585, label %if.end150.sw.bb152_crit_edge1440
    i32 65586, label %if.end150.sw.bb152_crit_edge1441
    i32 65587, label %if.end150.sw.bb152_crit_edge1442
    i32 65588, label %if.end150.sw.bb152_crit_edge1443
    i32 65589, label %if.end150.sw.bb152_crit_edge1444
    i32 65592, label %sw.bb164
    i32 65590, label %if.end150.sw.bb174_crit_edge
    i32 65591, label %if.end150.sw.bb174_crit_edge1445
    i32 65593, label %sw.bb185
    i32 65597, label %sw.bb188
    i32 65598, label %sw.bb189
    i32 65734, label %sw.bb190
  ]

if.end150.sw.bb174_crit_edge1445:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb174

if.end150.sw.bb174_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb174

if.end150.sw.bb152_crit_edge1444:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb152

if.end150.sw.bb152_crit_edge1443:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb152

if.end150.sw.bb152_crit_edge1442:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb152

if.end150.sw.bb152_crit_edge1441:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb152

if.end150.sw.bb152_crit_edge1440:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb152

if.end150.sw.bb152_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb152

if.end150.unknown_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

sw.bb152:                                         ; preds = %if.end150.sw.bb152_crit_edge, %if.end150.sw.bb152_crit_edge1440, %if.end150.sw.bb152_crit_edge1441, %if.end150.sw.bb152_crit_edge1442, %if.end150.sw.bb152_crit_edge1443, %if.end150.sw.bb152_crit_edge1444
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and154 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.else159, label %if.then156

if.then156:                                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #12
  %and158 = and i32 %23, 15
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 2, i32 noundef %and158)
  br label %mapped

if.else159:                                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #12
  %58 = trunc i32 %23 to i16
  %conv162 = and i16 %58, 15
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i16 noundef zeroext %conv162)
  br label %mapped

sw.bb164:                                         ; preds = %if.end150
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and166 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.else170, label %if.then168

if.then168:                                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #12
  %relbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  call void @_set_bit(i32 noundef 8, ptr noundef %relbit) #10
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 2, i32 noundef 11)
  br label %mapped

if.else170:                                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 8)
  br label %mapped

sw.bb174:                                         ; preds = %if.end150.sw.bb174_crit_edge, %if.end150.sw.bb174_crit_edge1445
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %and176 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  %and183 = and i32 %23, 15
  br i1 %tobool177.not, label %if.else181, label %if.then178

if.then178:                                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 2, i32 noundef %and183)
  br label %mapped

if.else181:                                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef %and183)
  br label %mapped

sw.bb185:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %63 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %logical_minimum, align 4
  %conv186 = trunc i32 %64 to i8
  %hat_min = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 7
  %65 = ptrtoint ptr %hat_min to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv186, ptr %hat_min, align 1
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %66 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %logical_maximum, align 4
  %conv187 = trunc i32 %67 to i8
  %hat_max = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 8
  %68 = ptrtoint ptr %hat_max to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv187, ptr %hat_max, align 2
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 16)
  br label %mapped

sw.bb188:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 315)
  br label %mapped

sw.bb189:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 314)
  br label %mapped

sw.bb190:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_const_cmp4(i32 65548, i32 %50)
  %cmp192 = icmp eq i32 %50, 65548
  br i1 %cmp192, label %if.then194, label %sw.bb190.unknown_crit_edge

sw.bb190.unknown_crit_edge:                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

if.then194:                                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 247)
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %or = or i32 %70, 4
  store i32 %or, ptr %flags, align 4
  br label %mapped

sw.bb199:                                         ; preds = %if.end21
  %trunc1403 = trunc i32 %23 to i16
  %71 = zext i16 %trunc1403 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %trunc1403, label %sw.bb199.ignore_crit_edge [
    i16 1, label %sw.bb202
    i16 2, label %sw.bb203
    i16 3, label %sw.bb204
    i16 4, label %sw.bb205
    i16 5, label %sw.bb206
    i16 39, label %sw.bb207
    i16 76, label %sw.bb208
    i16 9, label %sw.bb209
    i16 75, label %sw.bb210
    i16 25, label %sw.bb211
    i16 77, label %sw.bb212
  ]

sw.bb199.ignore_crit_edge:                        ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb202:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 0)
  br label %mapped

sw.bb203:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 1)
  br label %mapped

sw.bb204:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 2)
  br label %mapped

sw.bb205:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 3)
  br label %mapped

sw.bb206:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 4)
  br label %mapped

sw.bb207:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 5)
  br label %mapped

sw.bb208:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 6)
  br label %mapped

sw.bb209:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 7)
  br label %mapped

sw.bb210:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 8)
  br label %mapped

sw.bb211:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 9)
  br label %mapped

sw.bb212:                                         ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 10)
  br label %mapped

sw.bb215:                                         ; preds = %if.end21
  %application216 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %72 = ptrtoint ptr %application216 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %application216, align 4
  %trunc1411 = trunc i32 %73 to i8
  %74 = zext i8 %trunc1411 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %trunc1411, label %sw.bb215.if.end231_crit_edge [
    i8 1, label %sw.bb215.if.end231.sink.split_crit_edge
    i8 2, label %if.then227
  ]

sw.bb215.if.end231.sink.split_crit_edge:          ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.sink.split

sw.bb215.if.end231_crit_edge:                     ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.then227:                                       ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.sink.split

if.end231.sink.split:                             ; preds = %if.then227, %sw.bb215.if.end231.sink.split_crit_edge
  %.sink1426 = phi i32 [ 2, %if.then227 ], [ 1, %sw.bb215.if.end231.sink.split_crit_edge ]
  %propbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %propbit, align 4
  %or.i1406 = or i32 %76, %.sink1426
  store i32 %or.i1406, ptr %propbit, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.end231.sink.split, %sw.bb215.if.end231_crit_edge
  %77 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %usage, align 4
  %trunc1401 = trunc i32 %78 to i8
  %79 = zext i8 %trunc1401 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %trunc1401, label %if.end231.unknown_crit_edge [
    i8 0, label %if.end231.ignore_crit_edge
    i8 48, label %sw.bb235
    i8 50, label %sw.bb246
    i8 59, label %sw.bb253
    i8 60, label %sw.bb255
    i8 61, label %sw.bb256
    i8 62, label %sw.bb257
    i8 51, label %if.end231.sw.bb258_crit_edge
    i8 66, label %if.end231.sw.bb258_crit_edge1446
    i8 67, label %if.end231.sw.bb258_crit_edge1447
    i8 68, label %sw.bb261
    i8 69, label %sw.bb262
    i8 70, label %if.end231.sw.bb263_crit_edge
    i8 90, label %if.end231.sw.bb263_crit_edge1448
    i8 91, label %if.end231.sw.bb264_crit_edge
    i8 110, label %if.end231.sw.bb264_crit_edge1449
  ]

if.end231.sw.bb264_crit_edge1449:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb264

if.end231.sw.bb264_crit_edge:                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb264

if.end231.sw.bb263_crit_edge1448:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb263

if.end231.sw.bb263_crit_edge:                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb263

if.end231.sw.bb258_crit_edge1447:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb258

if.end231.sw.bb258_crit_edge1446:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb258

if.end231.sw.bb258_crit_edge:                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb258

if.end231.ignore_crit_edge:                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end231.unknown_crit_edge:                      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

sw.bb235:                                         ; preds = %if.end231
  %arrayidx.i = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 10
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %arrayidx.i, align 4
  %82 = and i32 %81, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool238.not = icmp eq i32 %82, 0
  br i1 %tobool238.not, label %if.then239, label %sw.bb235.if.end245_crit_edge

sw.bb235.if.end245_crit_edge:                     ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end245

if.then239:                                       ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #12
  %keybit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  %quirks = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 34
  %83 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %quirks, align 8
  %or240 = or i32 %84, 2
  store i32 %or240, ptr %quirks, align 8
  %evbit241 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef 1, ptr noundef %evbit241) #10
  call void @_set_bit(i32 noundef 330, ptr noundef %keybit) #10
  br label %if.end245

if.end245:                                        ; preds = %if.then239, %sw.bb235.if.end245_crit_edge
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i16 noundef zeroext 24)
  br label %mapped

sw.bb246:                                         ; preds = %if.end231
  %85 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %field, align 4
  %trunc1402 = trunc i32 %86 to i8
  %87 = zext i8 %trunc1402 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %trunc1402, label %sw.default251 [
    i8 33, label %sw.bb249
    i8 34, label %sw.bb250
  ]

sw.bb249:                                         ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i32 noundef 326)
  br label %mapped

sw.bb250:                                         ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i32 noundef 325)
  br label %mapped

sw.default251:                                    ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i32 noundef 320)
  br label %mapped

sw.bb253:                                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hidinput_setup_battery(ptr noundef %3, i32 noundef 0, ptr noundef %field, i1 noundef zeroext false)
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %88 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 22, ptr %type, align 4
  br label %cleanup695

sw.bb255:                                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 321)
  br label %mapped

sw.bb256:                                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i16 noundef zeroext 26)
  br label %mapped

sw.bb257:                                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i16 noundef zeroext 27)
  br label %mapped

sw.bb258:                                         ; preds = %if.end231.sw.bb258_crit_edge, %if.end231.sw.bb258_crit_edge1446, %if.end231.sw.bb258_crit_edge1447
  %quirks259 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 34
  %89 = ptrtoint ptr %quirks259 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %quirks259, align 8
  %and260 = and i32 %90, -3
  store i32 %and260, ptr %quirks259, align 8
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 330)
  br label %mapped

sw.bb261:                                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 331)
  br label %mapped

sw.bb262:                                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 330)
  br label %mapped

sw.bb263:                                         ; preds = %if.end231.sw.bb263_crit_edge, %if.end231.sw.bb263_crit_edge1448
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 332)
  br label %mapped

sw.bb264:                                         ; preds = %if.end231.sw.bb264_crit_edge, %if.end231.sw.bb264_crit_edge1449
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 4, i32 noundef 0)
  br label %mapped

sw.bb267:                                         ; preds = %if.end21
  %trunc1400 = trunc i32 %23 to i16
  %91 = zext i16 %trunc1400 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %trunc1400, label %sw.bb267.ignore_crit_edge [
    i16 47, label %sw.bb270
    i16 176, label %sw.bb271
    i16 177, label %sw.bb272
    i16 178, label %sw.bb273
    i16 179, label %sw.bb274
    i16 180, label %sw.bb275
    i16 181, label %sw.bb276
    i16 182, label %sw.bb277
    i16 183, label %sw.bb278
    i16 184, label %sw.bb279
    i16 185, label %sw.bb280
    i16 186, label %sw.bb281
    i16 187, label %sw.bb282
    i16 188, label %sw.bb283
    i16 189, label %sw.bb284
    i16 190, label %sw.bb285
    i16 191, label %sw.bb286
  ]

sw.bb267.ignore_crit_edge:                        ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb270:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 248)
  br label %mapped

sw.bb271:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 512)
  br label %mapped

sw.bb272:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 513)
  br label %mapped

sw.bb273:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 514)
  br label %mapped

sw.bb274:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 515)
  br label %mapped

sw.bb275:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 516)
  br label %mapped

sw.bb276:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 517)
  br label %mapped

sw.bb277:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 518)
  br label %mapped

sw.bb278:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 519)
  br label %mapped

sw.bb279:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 520)
  br label %mapped

sw.bb280:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 521)
  br label %mapped

sw.bb281:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 522)
  br label %mapped

sw.bb282:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 523)
  br label %mapped

sw.bb283:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 524)
  br label %mapped

sw.bb284:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 525)
  br label %mapped

sw.bb285:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 526)
  br label %mapped

sw.bb286:                                         ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 527)
  br label %mapped

sw.bb289:                                         ; preds = %if.end21
  %trunc1399 = trunc i32 %23 to i16
  %92 = zext i16 %trunc1399 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %trunc1399, label %sw.default458 [
    i16 0, label %sw.bb289.ignore_crit_edge
    i16 48, label %sw.bb293
    i16 49, label %sw.bb294
    i16 50, label %sw.bb295
    i16 52, label %sw.bb296
    i16 53, label %sw.bb297
    i16 54, label %sw.bb298
    i16 64, label %sw.bb299
    i16 65, label %sw.bb300
    i16 66, label %sw.bb301
    i16 67, label %sw.bb302
    i16 68, label %sw.bb303
    i16 69, label %sw.bb304
    i16 70, label %sw.bb305
    i16 71, label %sw.bb306
    i16 72, label %sw.bb307
    i16 96, label %sw.bb308
    i16 97, label %sw.bb309
    i16 99, label %sw.bb310
    i16 101, label %sw.bb311
    i16 105, label %sw.bb312
    i16 106, label %sw.bb313
    i16 107, label %sw.bb314
    i16 108, label %sw.bb315
    i16 109, label %sw.bb316
    i16 111, label %sw.bb317
    i16 112, label %sw.bb318
    i16 114, label %sw.bb319
    i16 115, label %sw.bb320
    i16 116, label %sw.bb321
    i16 117, label %sw.bb322
    i16 121, label %sw.bb323
    i16 122, label %sw.bb324
    i16 124, label %sw.bb325
    i16 130, label %sw.bb326
    i16 131, label %sw.bb327
    i16 132, label %sw.bb328
    i16 136, label %sw.bb329
    i16 137, label %sw.bb330
    i16 138, label %sw.bb331
    i16 139, label %sw.bb332
    i16 140, label %sw.bb333
    i16 141, label %sw.bb334
    i16 142, label %sw.bb335
    i16 143, label %sw.bb336
    i16 144, label %sw.bb337
    i16 145, label %sw.bb338
    i16 146, label %sw.bb339
    i16 147, label %sw.bb340
    i16 148, label %sw.bb341
    i16 149, label %sw.bb342
    i16 150, label %sw.bb343
    i16 151, label %sw.bb344
    i16 152, label %sw.bb345
    i16 154, label %sw.bb346
    i16 156, label %sw.bb347
    i16 157, label %sw.bb348
    i16 160, label %sw.bb349
    i16 176, label %sw.bb350
    i16 177, label %sw.bb351
    i16 178, label %sw.bb352
    i16 179, label %sw.bb353
    i16 180, label %sw.bb354
    i16 181, label %sw.bb355
    i16 182, label %sw.bb356
    i16 183, label %sw.bb357
    i16 184, label %sw.bb358
    i16 188, label %sw.bb359
    i16 185, label %sw.bb360
    i16 191, label %sw.bb361
    i16 205, label %sw.bb362
    i16 207, label %sw.bb363
    i16 216, label %sw.bb364
    i16 217, label %sw.bb365
    i16 224, label %sw.bb366
    i16 226, label %sw.bb367
    i16 229, label %sw.bb368
    i16 233, label %sw.bb369
    i16 234, label %sw.bb370
    i16 245, label %sw.bb371
    i16 385, label %sw.bb372
    i16 386, label %sw.bb373
    i16 387, label %sw.bb374
    i16 388, label %sw.bb375
    i16 389, label %sw.bb376
    i16 390, label %sw.bb377
    i16 391, label %sw.bb378
    i16 392, label %sw.bb379
    i16 393, label %sw.bb380
    i16 394, label %sw.bb381
    i16 395, label %sw.bb382
    i16 396, label %sw.bb383
    i16 397, label %sw.bb384
    i16 398, label %sw.bb385
    i16 399, label %sw.bb386
    i16 400, label %sw.bb387
    i16 401, label %sw.bb388
    i16 402, label %sw.bb389
    i16 403, label %sw.bb390
    i16 404, label %sw.bb391
    i16 406, label %sw.bb392
    i16 409, label %sw.bb393
    i16 412, label %sw.bb394
    i16 414, label %sw.bb395
    i16 415, label %sw.bb396
    i16 418, label %sw.bb397
    i16 419, label %sw.bb398
    i16 420, label %sw.bb399
    i16 422, label %sw.bb400
    i16 423, label %sw.bb401
    i16 427, label %sw.bb402
    i16 430, label %sw.bb403
    i16 433, label %sw.bb404
    i16 436, label %sw.bb405
    i16 438, label %sw.bb406
    i16 439, label %sw.bb407
    i16 440, label %sw.bb408
    i16 444, label %sw.bb409
    i16 445, label %sw.bb410
    i16 459, label %sw.bb411
    i16 513, label %sw.bb412
    i16 514, label %sw.bb413
    i16 515, label %sw.bb414
    i16 516, label %sw.bb415
    i16 519, label %sw.bb416
    i16 520, label %sw.bb417
    i16 521, label %sw.bb418
    i16 538, label %sw.bb419
    i16 539, label %sw.bb420
    i16 540, label %sw.bb421
    i16 541, label %sw.bb422
    i16 543, label %sw.bb423
    i16 545, label %sw.bb424
    i16 546, label %sw.bb425
    i16 547, label %sw.bb426
    i16 548, label %sw.bb427
    i16 549, label %sw.bb428
    i16 550, label %sw.bb429
    i16 551, label %sw.bb430
    i16 554, label %sw.bb431
    i16 557, label %sw.bb432
    i16 558, label %sw.bb433
    i16 559, label %sw.bb434
    i16 562, label %sw.bb435
    i16 563, label %sw.bb436
    i16 564, label %sw.bb437
    i16 568, label %sw.bb438
    i16 573, label %sw.bb441
    i16 607, label %sw.bb442
    i16 617, label %sw.bb443
    i16 618, label %sw.bb444
    i16 633, label %sw.bb445
    i16 649, label %sw.bb446
    i16 651, label %sw.bb447
    i16 652, label %sw.bb448
    i16 669, label %sw.bb449
    i16 674, label %sw.bb450
    i16 711, label %sw.bb451
    i16 712, label %sw.bb452
    i16 713, label %sw.bb453
    i16 714, label %sw.bb454
    i16 715, label %sw.bb455
    i16 716, label %sw.bb456
    i16 671, label %sw.bb457
  ]

sw.bb289.ignore_crit_edge:                        ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb293:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 116)
  br label %mapped

sw.bb294:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 408)
  br label %mapped

sw.bb295:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 142)
  br label %mapped

sw.bb296:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 142)
  br label %mapped

sw.bb297:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 228)
  br label %mapped

sw.bb298:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 256)
  br label %mapped

sw.bb299:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 139)
  br label %mapped

sw.bb300:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 353)
  br label %mapped

sw.bb301:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 103)
  br label %mapped

sw.bb302:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 108)
  br label %mapped

sw.bb303:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 105)
  br label %mapped

sw.bb304:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 106)
  br label %mapped

sw.bb305:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 1)
  br label %mapped

sw.bb306:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 78)
  br label %mapped

sw.bb307:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 74)
  br label %mapped

sw.bb308:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 358)
  br label %mapped

sw.bb309:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 370)
  br label %mapped

sw.bb310:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 379)
  br label %mapped

sw.bb311:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 212)
  br label %mapped

sw.bb312:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 398)
  br label %mapped

sw.bb313:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 399)
  br label %mapped

sw.bb314:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 401)
  br label %mapped

sw.bb315:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 400)
  br label %mapped

sw.bb316:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 375)
  br label %mapped

sw.bb317:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 225)
  br label %mapped

sw.bb318:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 224)
  br label %mapped

sw.bb319:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 431)
  br label %mapped

sw.bb320:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 592)
  br label %mapped

sw.bb321:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 593)
  br label %mapped

sw.bb322:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 244)
  br label %mapped

sw.bb323:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 230)
  br label %mapped

sw.bb324:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 229)
  br label %mapped

sw.bb325:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 228)
  br label %mapped

sw.bb326:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 241)
  br label %mapped

sw.bb327:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 405)
  br label %mapped

sw.bb328:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 28)
  br label %mapped

sw.bb329:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 376)
  br label %mapped

sw.bb330:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 377)
  br label %mapped

sw.bb331:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 150)
  br label %mapped

sw.bb332:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 389)
  br label %mapped

sw.bb333:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 169)
  br label %mapped

sw.bb334:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 362)
  br label %mapped

sw.bb335:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 416)
  br label %mapped

sw.bb336:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 417)
  br label %mapped

sw.bb337:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 396)
  br label %mapped

sw.bb338:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 383)
  br label %mapped

sw.bb339:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 379)
  br label %mapped

sw.bb340:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 386)
  br label %mapped

sw.bb341:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 174)
  br label %mapped

sw.bb342:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 138)
  br label %mapped

sw.bb343:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 384)
  br label %mapped

sw.bb344:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 378)
  br label %mapped

sw.bb345:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 381)
  br label %mapped

sw.bb346:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 366)
  br label %mapped

sw.bb347:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 402)
  br label %mapped

sw.bb348:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 403)
  br label %mapped

sw.bb349:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 380)
  br label %mapped

sw.bb350:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 207)
  br label %mapped

sw.bb351:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 119)
  br label %mapped

sw.bb352:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 167)
  br label %mapped

sw.bb353:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 208)
  br label %mapped

sw.bb354:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 168)
  br label %mapped

sw.bb355:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 163)
  br label %mapped

sw.bb356:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 165)
  br label %mapped

sw.bb357:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 166)
  br label %mapped

sw.bb358:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 161)
  br label %mapped

sw.bb359:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 439)
  br label %mapped

sw.bb360:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 410)
  br label %mapped

sw.bb361:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 409)
  br label %mapped

sw.bb362:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 164)
  br label %mapped

sw.bb363:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 582)
  br label %mapped

sw.bb364:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 586)
  br label %mapped

sw.bb365:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 585)
  br label %mapped

sw.bb366:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i16 noundef zeroext 32)
  br label %mapped

sw.bb367:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 113)
  br label %mapped

sw.bb368:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 209)
  br label %mapped

sw.bb369:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 115)
  br label %mapped

sw.bb370:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 114)
  br label %mapped

sw.bb371:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 409)
  br label %mapped

sw.bb372:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 576)
  br label %mapped

sw.bb373:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 156)
  br label %mapped

sw.bb374:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 171)
  br label %mapped

sw.bb375:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 421)
  br label %mapped

sw.bb376:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 422)
  br label %mapped

sw.bb377:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 423)
  br label %mapped

sw.bb378:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 424)
  br label %mapped

sw.bb379:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 425)
  br label %mapped

sw.bb380:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 426)
  br label %mapped

sw.bb381:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 155)
  br label %mapped

sw.bb382:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 427)
  br label %mapped

sw.bb383:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 428)
  br label %mapped

sw.bb384:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 429)
  br label %mapped

sw.bb385:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 397)
  br label %mapped

sw.bb386:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 577)
  br label %mapped

sw.bb387:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 578)
  br label %mapped

sw.bb388:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 219)
  br label %mapped

sw.bb389:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 140)
  br label %mapped

sw.bb390:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 387)
  br label %mapped

sw.bb391:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 144)
  br label %mapped

sw.bb392:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 150)
  br label %mapped

sw.bb393:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 216)
  br label %mapped

sw.bb394:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 433)
  br label %mapped

sw.bb395:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 152)
  br label %mapped

sw.bb396:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 579)
  br label %mapped

sw.bb397:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 580)
  br label %mapped

sw.bb398:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 407)
  br label %mapped

sw.bb399:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 412)
  br label %mapped

sw.bb400:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 138)
  br label %mapped

sw.bb401:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 235)
  br label %mapped

sw.bb402:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 432)
  br label %mapped

sw.bb403:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 374)
  br label %mapped

sw.bb404:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 581)
  br label %mapped

sw.bb405:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 144)
  br label %mapped

sw.bb406:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 442)
  br label %mapped

sw.bb407:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 392)
  br label %mapped

sw.bb408:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 393)
  br label %mapped

sw.bb409:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 430)
  br label %mapped

sw.bb410:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 358)
  br label %mapped

sw.bb411:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 583)
  br label %mapped

sw.bb412:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 181)
  br label %mapped

sw.bb413:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 134)
  br label %mapped

sw.bb414:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 206)
  br label %mapped

sw.bb415:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 174)
  br label %mapped

sw.bb416:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 234)
  br label %mapped

sw.bb417:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 210)
  br label %mapped

sw.bb418:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 130)
  br label %mapped

sw.bb419:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 131)
  br label %mapped

sw.bb420:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 133)
  br label %mapped

sw.bb421:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 137)
  br label %mapped

sw.bb422:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 135)
  br label %mapped

sw.bb423:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 136)
  br label %mapped

sw.bb424:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 217)
  br label %mapped

sw.bb425:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 354)
  br label %mapped

sw.bb426:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 172)
  br label %mapped

sw.bb427:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 158)
  br label %mapped

sw.bb428:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 159)
  br label %mapped

sw.bb429:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 128)
  br label %mapped

sw.bb430:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 173)
  br label %mapped

sw.bb431:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 156)
  br label %mapped

sw.bb432:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 418)
  br label %mapped

sw.bb433:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 419)
  br label %mapped

sw.bb434:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 420)
  br label %mapped

sw.bb435:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 372)
  br label %mapped

sw.bb436:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 177)
  br label %mapped

sw.bb437:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 178)
  br label %mapped

sw.bb438:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  %relbit439 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  call void @_set_bit(i32 noundef 6, ptr noundef %relbit439) #10
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 2, i32 noundef 12)
  br label %mapped

sw.bb441:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 176)
  br label %mapped

sw.bb442:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 223)
  br label %mapped

sw.bb443:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 110)
  br label %mapped

sw.bb444:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 111)
  br label %mapped

sw.bb445:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 182)
  br label %mapped

sw.bb446:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 232)
  br label %mapped

sw.bb447:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 233)
  br label %mapped

sw.bb448:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 231)
  br label %mapped

sw.bb449:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 584)
  br label %mapped

sw.bb450:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 204)
  br label %mapped

sw.bb451:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 608)
  br label %mapped

sw.bb452:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 609)
  br label %mapped

sw.bb453:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 610)
  br label %mapped

sw.bb454:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 611)
  br label %mapped

sw.bb455:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 612)
  br label %mapped

sw.bb456:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 613)
  br label %mapped

sw.bb457:                                         ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 120)
  br label %mapped

sw.default458:                                    ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 240)
  br label %mapped

sw.bb460:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 393248, i32 %23)
  %cond703 = icmp eq i32 %23, 393248
  br i1 %cond703, label %sw.bb462, label %sw.bb460.unknown_crit_edge

sw.bb460.unknown_crit_edge:                       ; preds = %sw.bb460
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

sw.bb462:                                         ; preds = %sw.bb460
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hidinput_setup_battery(ptr noundef %3, i32 noundef 0, ptr noundef %field, i1 noundef zeroext false)
  %type464 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %93 = ptrtoint ptr %type464 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 22, ptr %type464, align 4
  br label %cleanup695

sw.bb466:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 8716389, i32 %23)
  %cond702 = icmp eq i32 %23, 8716389
  br i1 %cond702, label %sw.bb468, label %sw.bb466.unknown_crit_edge

sw.bb466.unknown_crit_edge:                       ; preds = %sw.bb466
  call void @__sanitizer_cov_trace_pc() #12
  br label %unknown

sw.bb468:                                         ; preds = %sw.bb466
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hidinput_setup_battery(ptr noundef %3, i32 noundef 0, ptr noundef %field, i1 noundef zeroext true)
  %type470 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %94 = ptrtoint ptr %type470 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 22, ptr %type470, align 4
  br label %cleanup695

sw.bb472:                                         ; preds = %if.end21
  %evbit473 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %evbit473) #10
  %95 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %usage, align 4
  %trunc1398 = trunc i32 %96 to i16
  %97 = zext i16 %trunc1398 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %trunc1398, label %sw.bb472.ignore_crit_edge [
    i16 33, label %sw.bb477
    i16 112, label %sw.bb478
    i16 113, label %sw.bb479
    i16 114, label %sw.bb480
    i16 115, label %sw.bb481
    i16 128, label %sw.bb482
    i16 129, label %sw.bb483
    i16 130, label %sw.bb484
    i16 131, label %sw.bb485
    i16 132, label %sw.bb486
    i16 133, label %sw.bb487
    i16 134, label %sw.bb488
  ]

sw.bb472.ignore_crit_edge:                        ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb477:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 210)
  br label %mapped

sw.bb478:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 211)
  br label %mapped

sw.bb479:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 212)
  br label %mapped

sw.bb480:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 213)
  br label %mapped

sw.bb481:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 214)
  br label %mapped

sw.bb482:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 215)
  br label %mapped

sw.bb483:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 216)
  br label %mapped

sw.bb484:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 217)
  br label %mapped

sw.bb485:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 218)
  br label %mapped

sw.bb486:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 219)
  br label %mapped

sw.bb487:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 220)
  br label %mapped

sw.bb488:                                         ; preds = %sw.bb472
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 221)
  br label %mapped

sw.bb491:                                         ; preds = %if.end21
  %evbit492 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %evbit492) #10
  %98 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %usage, align 4
  %trunc = trunc i32 %99 to i16
  %100 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %trunc, label %sw.bb491.ignore_crit_edge [
    i16 1, label %sw.bb496
    i16 3, label %sw.bb497
    i16 4, label %sw.bb498
  ]

sw.bb491.ignore_crit_edge:                        ; preds = %sw.bb491
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb496:                                         ; preds = %sw.bb491
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 248)
  br label %mapped

sw.bb497:                                         ; preds = %sw.bb491
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 224)
  br label %mapped

sw.bb498:                                         ; preds = %sw.bb491
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 225)
  br label %mapped

sw.bb502:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %evbit503 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %evbit503) #10
  br label %ignore

sw.bb506:                                         ; preds = %if.end21
  %and508 = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 164, i32 %and508)
  %cond = icmp eq i32 %and508, 164
  br i1 %cond, label %sw.bb509, label %sw.bb506.ignore_crit_edge

sw.bb506.ignore_crit_edge:                        ; preds = %sw.bb506
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

sw.bb509:                                         ; preds = %sw.bb506
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i16 noundef zeroext 303)
  br label %mapped

unknown:                                          ; preds = %sw.bb466.unknown_crit_edge, %sw.bb460.unknown_crit_edge, %if.end231.unknown_crit_edge, %sw.bb190.unknown_crit_edge, %if.end150.unknown_crit_edge, %if.then134.unknown_crit_edge, %if.then93.unknown_crit_edge, %if.end21.unknown_crit_edge
  %report_size = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 7
  %101 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp513 = icmp eq i32 %102, 1
  br i1 %cmp513, label %if.then515, label %if.end521

if.then515:                                       ; preds = %unknown
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %103 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %report, align 4
  %type516 = getelementptr inbounds %struct.hid_report, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %type516 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %type516, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp517 = icmp eq i32 %106, 1
  br i1 %cmp517, label %if.then519, label %if.end520

if.then519:                                       ; preds = %if.then515
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 17, i32 noundef 8)
  br label %mapped

if.end520:                                        ; preds = %if.then515
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 1, i32 noundef 256)
  br label %mapped

if.end521:                                        ; preds = %unknown
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags, align 4
  %and523 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and523)
  %tobool524.not = icmp eq i32 %and523, 0
  br i1 %tobool524.not, label %if.end526, label %if.then525

if.then525:                                       ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 2, i32 noundef 9)
  br label %mapped

if.end526:                                        ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max, i8 noundef zeroext 3, i32 noundef 40)
  br label %mapped

mapped:                                           ; preds = %if.end526, %if.then525, %if.end520, %if.then519, %sw.bb509, %sw.bb498, %sw.bb497, %sw.bb496, %sw.bb488, %sw.bb487, %sw.bb486, %sw.bb485, %sw.bb484, %sw.bb483, %sw.bb482, %sw.bb481, %sw.bb480, %sw.bb479, %sw.bb478, %sw.bb477, %sw.default458, %sw.bb457, %sw.bb456, %sw.bb455, %sw.bb454, %sw.bb453, %sw.bb452, %sw.bb451, %sw.bb450, %sw.bb449, %sw.bb448, %sw.bb447, %sw.bb446, %sw.bb445, %sw.bb444, %sw.bb443, %sw.bb442, %sw.bb441, %sw.bb438, %sw.bb437, %sw.bb436, %sw.bb435, %sw.bb434, %sw.bb433, %sw.bb432, %sw.bb431, %sw.bb430, %sw.bb429, %sw.bb428, %sw.bb427, %sw.bb426, %sw.bb425, %sw.bb424, %sw.bb423, %sw.bb422, %sw.bb421, %sw.bb420, %sw.bb419, %sw.bb418, %sw.bb417, %sw.bb416, %sw.bb415, %sw.bb414, %sw.bb413, %sw.bb412, %sw.bb411, %sw.bb410, %sw.bb409, %sw.bb408, %sw.bb407, %sw.bb406, %sw.bb405, %sw.bb404, %sw.bb403, %sw.bb402, %sw.bb401, %sw.bb400, %sw.bb399, %sw.bb398, %sw.bb397, %sw.bb396, %sw.bb395, %sw.bb394, %sw.bb393, %sw.bb392, %sw.bb391, %sw.bb390, %sw.bb389, %sw.bb388, %sw.bb387, %sw.bb386, %sw.bb385, %sw.bb384, %sw.bb383, %sw.bb382, %sw.bb381, %sw.bb380, %sw.bb379, %sw.bb378, %sw.bb377, %sw.bb376, %sw.bb375, %sw.bb374, %sw.bb373, %sw.bb372, %sw.bb371, %sw.bb370, %sw.bb369, %sw.bb368, %sw.bb367, %sw.bb366, %sw.bb365, %sw.bb364, %sw.bb363, %sw.bb362, %sw.bb361, %sw.bb360, %sw.bb359, %sw.bb358, %sw.bb357, %sw.bb356, %sw.bb355, %sw.bb354, %sw.bb353, %sw.bb352, %sw.bb351, %sw.bb350, %sw.bb349, %sw.bb348, %sw.bb347, %sw.bb346, %sw.bb345, %sw.bb344, %sw.bb343, %sw.bb342, %sw.bb341, %sw.bb340, %sw.bb339, %sw.bb338, %sw.bb337, %sw.bb336, %sw.bb335, %sw.bb334, %sw.bb333, %sw.bb332, %sw.bb331, %sw.bb330, %sw.bb329, %sw.bb328, %sw.bb327, %sw.bb326, %sw.bb325, %sw.bb324, %sw.bb323, %sw.bb322, %sw.bb321, %sw.bb320, %sw.bb319, %sw.bb318, %sw.bb317, %sw.bb316, %sw.bb315, %sw.bb314, %sw.bb313, %sw.bb312, %sw.bb311, %sw.bb310, %sw.bb309, %sw.bb308, %sw.bb307, %sw.bb306, %sw.bb305, %sw.bb304, %sw.bb303, %sw.bb302, %sw.bb301, %sw.bb300, %sw.bb299, %sw.bb298, %sw.bb297, %sw.bb296, %sw.bb295, %sw.bb294, %sw.bb293, %sw.bb286, %sw.bb285, %sw.bb284, %sw.bb283, %sw.bb282, %sw.bb281, %sw.bb280, %sw.bb279, %sw.bb278, %sw.bb277, %sw.bb276, %sw.bb275, %sw.bb274, %sw.bb273, %sw.bb272, %sw.bb271, %sw.bb270, %sw.bb264, %sw.bb263, %sw.bb262, %sw.bb261, %sw.bb258, %sw.bb257, %sw.bb256, %sw.bb255, %sw.default251, %sw.bb250, %sw.bb249, %if.end245, %sw.bb212, %sw.bb211, %sw.bb210, %sw.bb209, %sw.bb208, %sw.bb207, %sw.bb206, %sw.bb205, %sw.bb204, %sw.bb203, %sw.bb202, %if.then194, %sw.bb189, %sw.bb188, %sw.bb185, %if.else181, %if.then178, %if.else170, %if.then168, %if.else159, %if.then156, %if.end149, %sw.bb121, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb102, %sw.bb101, %sw.bb100, %sw.bb99, %sw.bb98, %sw.bb97, %sw.bb96, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.epilog77, %if.else, %if.end33, %if.then11.mapped_crit_edge
  %109 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bit, align 4
  %tobool528.not = icmp eq ptr %110, null
  br i1 %tobool528.not, label %mapped.cleanup695_crit_edge, label %if.end530

mapped.cleanup695_crit_edge:                      ; preds = %mapped
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup695

if.end530:                                        ; preds = %mapped
  %111 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %driver, align 8
  %input_mapped = getelementptr inbounds %struct.hid_driver, ptr %112, i32 0, i32 14
  %113 = ptrtoint ptr %input_mapped to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %input_mapped, align 4
  %tobool532.not = icmp eq ptr %114, null
  br i1 %tobool532.not, label %if.end530.if.end540_crit_edge, label %land.lhs.true533

if.end530.if.end540_crit_edge:                    ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end540

land.lhs.true533:                                 ; preds = %if.end530
  %call536 = call i32 %114(ptr noundef %3, ptr noundef %hidinput, ptr noundef %field, ptr noundef %usage, ptr noundef nonnull %bit, ptr noundef nonnull %max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call536)
  %cmp537 = icmp slt i32 %call536, 0
  br i1 %cmp537, label %land.lhs.true533.cleanup695_crit_edge, label %land.lhs.true533.if.end540_crit_edge

land.lhs.true533.if.end540_crit_edge:             ; preds = %land.lhs.true533
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end540

land.lhs.true533.cleanup695_crit_edge:            ; preds = %land.lhs.true533
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup695

if.end540:                                        ; preds = %land.lhs.true533.if.end540_crit_edge, %if.end530.if.end540_crit_edge
  %type541 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %115 = ptrtoint ptr %type541 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %type541, align 4
  %conv542 = zext i8 %116 to i32
  %evbit543 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef %conv542, ptr noundef %evbit543) #10
  %code545 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %117 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %code545, align 2
  %conv5461414 = zext i16 %118 to i32
  %119 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %conv5461414)
  %cmp547.not1415 = icmp slt i32 %120, %conv5461414
  br i1 %cmp547.not1415, label %if.end540.while.end_crit_edge, label %land.rhs.lr.ph

if.end540.while.end_crit_edge:                    ; preds = %if.end540
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end540
  %quirks553 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 34
  br label %land.rhs

land.rhs:                                         ; preds = %if.then556.land.rhs_crit_edge, %land.rhs.lr.ph
  %conv5461416 = phi i32 [ %conv5461414, %land.rhs.lr.ph ], [ %conv546, %if.then556.land.rhs_crit_edge ]
  %121 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bit, align 4
  %call551 = call i32 @_test_and_set_bit(i32 noundef %conv5461416, ptr noundef %122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call551)
  %tobool552.not = icmp eq i32 %call551, 0
  br i1 %tobool552.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %123 = ptrtoint ptr %quirks553 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %quirks553, align 8
  %and554 = and i32 %124, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554)
  %tobool555.not = icmp eq i32 %and554, 0
  br i1 %tobool555.not, label %if.else563, label %if.then556

if.then556:                                       ; preds = %while.body
  %125 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bit, align 4
  %127 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max, align 4
  %add557 = add i32 %128, 1
  %129 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %code545, align 2
  %conv559 = zext i16 %130 to i32
  %call560 = call i32 @_find_next_zero_bit_be(ptr noundef %126, i32 noundef %add557, i32 noundef %conv559) #10
  %conv561 = trunc i32 %call560 to i16
  %131 = ptrtoint ptr %code545 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv561, ptr %code545, align 2
  %conv546 = and i32 %call560, 65535
  %132 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %max, align 4
  %cmp547.not = icmp slt i32 %133, %conv546
  br i1 %cmp547.not, label %if.then556.while.end_crit_edge, label %if.then556.land.rhs_crit_edge

if.then556.land.rhs_crit_edge:                    ; preds = %if.then556
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.then556.while.end_crit_edge:                   ; preds = %if.then556
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.else563:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 32
  %134 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %status, align 8
  %or564 = or i32 %135, 4
  store i32 %or564, ptr %status, align 8
  br label %ignore

while.end:                                        ; preds = %if.then556.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end540.while.end_crit_edge
  %136 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %code545, align 2
  %conv567 = zext i16 %137 to i32
  %138 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %conv567)
  %cmp568 = icmp slt i32 %139, %conv567
  br i1 %cmp568, label %while.end.ignore_crit_edge, label %if.end571

while.end.ignore_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ignore

if.end571:                                        ; preds = %while.end
  %140 = ptrtoint ptr %type541 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %type541, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %141)
  %cmp574 = icmp eq i8 %141, 3
  br i1 %cmp574, label %if.then576, label %if.end571.if.end683thread-pre-split_crit_edge

if.end571.if.end683thread-pre-split_crit_edge:    ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end683thread-pre-split

if.then576:                                       ; preds = %if.end571
  %logical_minimum577 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %142 = ptrtoint ptr %logical_minimum577 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %logical_minimum577, align 4
  %logical_maximum578 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %144 = ptrtoint ptr %logical_maximum578 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %logical_maximum578, align 4
  %quirks579 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 34
  %146 = ptrtoint ptr %quirks579 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %quirks579, align 8
  %and580 = and i32 %147, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and580)
  %tobool581.not = icmp ne i32 %and580, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %137)
  %switch = icmp ult i16 %137, 2
  %or.cond = select i1 %tobool581.not, i1 %switch, i1 false
  br i1 %or.cond, label %if.then591, label %if.then576.if.end594_crit_edge

if.then576.if.end594_crit_edge:                   ; preds = %if.then576
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end594

if.then591:                                       ; preds = %if.then576
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %logical_minimum577 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %logical_minimum577, align 4
  %149 = ptrtoint ptr %logical_maximum578 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 255, ptr %logical_maximum578, align 4
  br label %if.end594

if.end594:                                        ; preds = %if.then591, %if.then576.if.end594_crit_edge
  %a.0 = phi i32 [ 0, %if.then591 ], [ %143, %if.then576.if.end594_crit_edge ]
  %b.0 = phi i32 [ 255, %if.then591 ], [ %145, %if.then576.if.end594_crit_edge ]
  %application595 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %150 = ptrtoint ptr %application595 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %application595, align 4
  %152 = and i32 %151, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65540, i32 %152)
  %switch1405 = icmp eq i32 %152, 65540
  %153 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %code545, align 2
  %conv604 = zext i16 %154 to i32
  br i1 %switch1405, label %if.then602, label %if.else608

if.then602:                                       ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #12
  %sub605 = sub i32 %b.0, %a.0
  %shr = ashr i32 %sub605, 8
  %shr607 = ashr i32 %sub605, 4
  call void @input_set_abs_params(ptr noundef %1, i32 noundef %conv604, i32 noundef %a.0, i32 noundef %b.0, i32 noundef %shr, i32 noundef %shr607) #10
  br label %if.end611

if.else608:                                       ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_set_abs_params(ptr noundef %1, i32 noundef %conv604, i32 noundef %a.0, i32 noundef %b.0, i32 noundef 0, i32 noundef 0) #10
  br label %if.end611

if.end611:                                        ; preds = %if.else608, %if.then602
  %155 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %code545, align 2
  %call615 = call i32 @hidinput_calc_abs_res(ptr noundef %field, i16 noundef zeroext %156)
  call void @input_alloc_absinfo(ptr noundef %1) #10
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26
  %157 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %158, null
  br i1 %tobool.not.i, label %if.end611.input_abs_set_res.exit_crit_edge, label %if.then.i

if.end611.input_abs_set_res.exit_crit_edge:       ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #12
  %conv613 = zext i16 %156 to i32
  %resolution.i = getelementptr %struct.input_absinfo, ptr %158, i32 %conv613, i32 5
  %159 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call615, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.end611.input_abs_set_res.exit_crit_edge
  %160 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %code545, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 53, i16 %161)
  %cmp618 = icmp eq i16 %161, 53
  br i1 %cmp618, label %land.lhs.true620, label %input_abs_set_res.exit.if.end625_crit_edge

input_abs_set_res.exit.if.end625_crit_edge:       ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end625

land.lhs.true620:                                 ; preds = %input_abs_set_res.exit
  %hint_events_per_packet = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 14
  %162 = ptrtoint ptr %hint_events_per_packet to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hint_events_per_packet, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp621 = icmp eq i32 %163, 0
  br i1 %cmp621, label %if.then623, label %land.lhs.true620.if.end625_crit_edge

land.lhs.true620.if.end625_crit_edge:             ; preds = %land.lhs.true620
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end625

if.then623:                                       ; preds = %land.lhs.true620
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %hint_events_per_packet to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 60, ptr %hint_events_per_packet, align 8
  br label %if.end625

if.end625:                                        ; preds = %if.then623, %land.lhs.true620.if.end625_crit_edge, %input_abs_set_res.exit.if.end625_crit_edge
  %165 = ptrtoint ptr %type541 to i32
  call void @__asan_load1_noabort(i32 %165)
  %.pr = load i8, ptr %type541, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp628 = icmp eq i8 %.pr, 3
  br i1 %cmp628, label %land.lhs.true630, label %if.end625.if.end683thread-pre-split_crit_edge

if.end625.if.end683thread-pre-split_crit_edge:    ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end683thread-pre-split

land.lhs.true630:                                 ; preds = %if.end625
  %hat_min631 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 7
  %166 = ptrtoint ptr %hat_min631 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %hat_min631, align 1
  %hat_max633 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 8
  %168 = ptrtoint ptr %hat_max633 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %hat_max633, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %167, i8 %169)
  %cmp635 = icmp slt i8 %167, %169
  br i1 %cmp635, label %land.lhs.true630.land.rhs649.lr.ph_crit_edge, label %lor.lhs.false637

land.lhs.true630.land.rhs649.lr.ph_crit_edge:     ; preds = %land.lhs.true630
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs649.lr.ph

lor.lhs.false637:                                 ; preds = %land.lhs.true630
  %hat_dir638 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 9
  %170 = ptrtoint ptr %hat_dir638 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %hat_dir638, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool640.not = icmp eq i8 %171, 0
  br i1 %tobool640.not, label %lor.lhs.false637.if.end664_crit_edge, label %lor.lhs.false637.land.rhs649.lr.ph_crit_edge

lor.lhs.false637.land.rhs649.lr.ph_crit_edge:     ; preds = %lor.lhs.false637
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs649.lr.ph

lor.lhs.false637.if.end664_crit_edge:             ; preds = %lor.lhs.false637
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end664

land.rhs649.lr.ph:                                ; preds = %lor.lhs.false637.land.rhs649.lr.ph_crit_edge, %land.lhs.true630.land.rhs649.lr.ph_crit_edge
  %172 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %code545, align 2
  %conv643 = zext i16 %173 to i32
  %absbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  %174 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %conv643)
  %cmp650.not1430 = icmp slt i32 %175, %conv643
  br i1 %cmp650.not1430, label %land.rhs649.lr.ph.for.end_crit_edge, label %land.rhs649.lr.ph.for.body_crit_edge

land.rhs649.lr.ph.for.body_crit_edge:             ; preds = %land.rhs649.lr.ph
  br label %for.body

land.rhs649.lr.ph.for.end_crit_edge:              ; preds = %land.rhs649.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs649:                                      ; preds = %for.body
  %176 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max, align 4
  %cmp650.not.not = icmp slt i32 %i.014211431, %177
  br i1 %cmp650.not.not, label %land.rhs649.for.body_crit_edge, label %land.rhs649.for.end_crit_edge

land.rhs649.for.end_crit_edge:                    ; preds = %land.rhs649
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs649.for.body_crit_edge:                   ; preds = %land.rhs649
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %land.rhs649.for.body_crit_edge, %land.rhs649.lr.ph.for.body_crit_edge
  %i.014211431 = phi i32 [ %inc, %land.rhs649.for.body_crit_edge ], [ %conv643, %land.rhs649.lr.ph.for.body_crit_edge ]
  call void @input_set_abs_params(ptr noundef %1, i32 noundef %i.014211431, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @_set_bit(i32 noundef %i.014211431, ptr noundef %absbit) #10
  %inc = add nuw nsw i32 %i.014211431, 1
  %178 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %code545, align 2
  %conv645 = zext i16 %179 to i32
  %add646 = add nuw nsw i32 %conv645, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add646)
  %cmp647 = icmp ult i32 %inc, %add646
  br i1 %cmp647, label %land.rhs649, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs649.for.end_crit_edge, %land.rhs649.lr.ph.for.end_crit_edge
  %.lcssa.ph = phi i16 [ %173, %land.rhs649.lr.ph.for.end_crit_edge ], [ %179, %land.rhs649.for.end_crit_edge ], [ %179, %for.body.for.end_crit_edge ]
  %hat_dir654 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 9
  %180 = ptrtoint ptr %hat_dir654 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %hat_dir654, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool656.not = icmp eq i8 %181, 0
  br i1 %tobool656.not, label %for.end.if.end664_crit_edge, label %land.lhs.true657

for.end.if.end664_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end664

land.lhs.true657:                                 ; preds = %for.end
  %dpad658 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 20
  %182 = ptrtoint ptr %dpad658 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %dpad658, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %tobool659.not = icmp eq i16 %183, 0
  br i1 %tobool659.not, label %if.then660, label %land.lhs.true657.if.end664_crit_edge

land.lhs.true657.if.end664_crit_edge:             ; preds = %land.lhs.true657
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end664

if.then660:                                       ; preds = %land.lhs.true657
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %dpad658 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %.lcssa.ph, ptr %dpad658, align 4
  br label %if.end664

if.end664:                                        ; preds = %if.then660, %land.lhs.true657.if.end664_crit_edge, %for.end.if.end664_crit_edge, %lor.lhs.false637.if.end664_crit_edge
  %185 = ptrtoint ptr %type541 to i32
  call void @__asan_load1_noabort(i32 %185)
  %.pr1408 = load i8, ptr %type541, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr1408)
  %cmp667 = icmp eq i8 %.pr1408, 3
  br i1 %cmp667, label %land.lhs.true669, label %if.end664.if.end683_crit_edge

if.end664.if.end683_crit_edge:                    ; preds = %if.end664
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end683

land.lhs.true669:                                 ; preds = %if.end664
  %186 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flags, align 4
  %and671 = and i32 %187, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and671)
  %tobool672.not = icmp eq i32 %and671, 0
  br i1 %tobool672.not, label %land.lhs.true669.if.end683thread-pre-split_crit_edge, label %land.lhs.true673

land.lhs.true669.if.end683thread-pre-split_crit_edge: ; preds = %land.lhs.true669
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end683thread-pre-split

land.lhs.true673:                                 ; preds = %land.lhs.true669
  %188 = ptrtoint ptr %code545 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %code545, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %189)
  %cmp676 = icmp eq i16 %189, 32
  br i1 %cmp676, label %if.then678, label %land.lhs.true673.if.end683thread-pre-split_crit_edge

land.lhs.true673.if.end683thread-pre-split_crit_edge: ; preds = %land.lhs.true673
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end683thread-pre-split

if.then678:                                       ; preds = %land.lhs.true673
  call void @__sanitizer_cov_trace_pc() #12
  %keybit679 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  call void @_set_bit(i32 noundef 115, ptr noundef %keybit679) #10
  call void @_set_bit(i32 noundef 114, ptr noundef %keybit679) #10
  br label %if.end683thread-pre-split

if.end683thread-pre-split:                        ; preds = %if.then678, %land.lhs.true673.if.end683thread-pre-split_crit_edge, %land.lhs.true669.if.end683thread-pre-split_crit_edge, %if.end625.if.end683thread-pre-split_crit_edge, %if.end571.if.end683thread-pre-split_crit_edge
  %190 = ptrtoint ptr %type541 to i32
  call void @__asan_load1_noabort(i32 %190)
  %.pr1410 = load i8, ptr %type541, align 4
  br label %if.end683

if.end683:                                        ; preds = %if.end683thread-pre-split, %if.end664.if.end683_crit_edge
  %191 = phi i8 [ %.pr1410, %if.end683thread-pre-split ], [ %.pr1408, %if.end664.if.end683_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %191)
  %cmp686 = icmp eq i8 %191, 1
  br i1 %cmp686, label %if.then688, label %if.end683.cleanup695_crit_edge

if.end683.cleanup695_crit_edge:                   ; preds = %if.end683
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup695

if.then688:                                       ; preds = %if.end683
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 4, ptr noundef %evbit543) #10
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 9
  call void @_set_bit(i32 noundef 4, ptr noundef %mscbit) #10
  br label %cleanup695

ignore:                                           ; preds = %while.end.ignore_crit_edge, %if.else563, %sw.bb506.ignore_crit_edge, %sw.bb502, %sw.bb491.ignore_crit_edge, %sw.bb472.ignore_crit_edge, %sw.bb289.ignore_crit_edge, %sw.bb267.ignore_crit_edge, %if.end231.ignore_crit_edge, %sw.bb199.ignore_crit_edge, %if.then146, %if.end124.ignore_crit_edge, %if.then118.ignore_crit_edge, %sw.bb78.ignore_crit_edge, %if.then28.ignore_crit_edge, %if.end21.ignore_crit_edge, %if.end21.ignore_crit_edge1435, %if.end21.ignore_crit_edge1436, %if.end21.ignore_crit_edge1437, %if.end21.ignore_crit_edge1438, %if.then11.ignore_crit_edge, %land.lhs.true.ignore_crit_edge, %if.end.ignore_crit_edge, %entry.ignore_crit_edge
  %type693 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %192 = ptrtoint ptr %type693 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %type693, align 4
  %code694 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %193 = ptrtoint ptr %code694 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %code694, align 2
  br label %cleanup695

cleanup695:                                       ; preds = %ignore, %if.then688, %if.end683.cleanup695_crit_edge, %land.lhs.true533.cleanup695_crit_edge, %mapped.cleanup695_crit_edge, %sw.bb468, %sw.bb462, %sw.bb253, %if.then11.cleanup695_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_map_usage_clear(ptr nocapture noundef readonly %hidinput, ptr nocapture noundef %usage, ptr nocapture noundef %bit, ptr nocapture noundef writeonly %max, i8 noundef zeroext %type, i16 noundef zeroext %c) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %c to i32
  %input1.i = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1.i, align 4
  %conv.i = zext i8 %type to i32
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %type, label %entry.if.then.i_crit_edge [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb2.i
    i8 1, label %sw.bb4.i
    i8 17, label %sw.bb6.i
    i8 4, label %sw.bb8.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ledbit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 10
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mscbit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb6.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  %bmap.0.i = phi ptr [ %mscbit.i, %sw.bb8.i ], [ %ledbit.i, %sw.bb6.i ], [ %keybit.i, %sw.bb4.i ], [ %relbit.i, %sw.bb2.i ], [ %absbit.i, %sw.bb.i ]
  %limit.0.i = phi i32 [ 7, %sw.bb8.i ], [ 15, %sw.bb6.i ], [ 767, %sw.bb4.i ], [ 15, %sw.bb2.i ], [ 63, %sw.bb.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.0.i, i32 %conv)
  %cmp.i = icmp ult i32 %limit.0.i, %conv
  %tobool.not.i = icmp eq ptr %bmap.0.i, null
  %spec.select.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i, !prof !115
  br i1 %spec.select.i, label %sw.epilog.i.if.then.i_crit_edge, label %if.then, !prof !115

sw.epilog.i.if.then.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.then.i.hid_map_usage.exit.thread_crit_edge, label %do.end.i

if.then.i.hid_map_usage.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hid_map_usage.exit.thread

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %4, i32 noundef %conv, i32 noundef %conv.i) #13
  br label %hid_map_usage.exit.thread

hid_map_usage.exit.thread:                        ; preds = %do.end.i, %if.then.i.hid_map_usage.exit.thread_crit_edge
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bit, align 4
  br label %if.end

if.then:                                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %type19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %6 = ptrtoint ptr %type19.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %type, ptr %type19.i, align 4
  %code.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %7 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %c, ptr %code.i, align 2
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %limit.0.i, ptr %max, align 4
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bmap.0.i, ptr %bit, align 4
  %10 = load i16, ptr %code.i, align 2
  %conv1 = zext i16 %10 to i32
  tail call void @_clear_bit(i32 noundef %conv1, ptr noundef nonnull %bmap.0.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %hid_map_usage.exit.thread
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_map_usage(ptr nocapture noundef readonly %hidinput, ptr nocapture noundef writeonly %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max, i8 noundef zeroext %type, i32 noundef %c) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %conv = zext i8 %type to i32
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %type, label %entry.if.then_crit_edge [
    i8 3, label %sw.bb
    i8 2, label %sw.bb2
    i8 1, label %sw.bb4
    i8 17, label %sw.bb6
    i8 4, label %sw.bb8
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %absbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %relbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %keybit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %bmap.0 = phi ptr [ %mscbit, %sw.bb8 ], [ %ledbit, %sw.bb6 ], [ %keybit, %sw.bb4 ], [ %relbit, %sw.bb2 ], [ %absbit, %sw.bb ]
  %limit.0 = phi i32 [ 7, %sw.bb8 ], [ 15, %sw.bb6 ], [ 767, %sw.bb4 ], [ 15, %sw.bb2 ], [ 63, %sw.bb ]
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.0, i32 %c)
  %cmp = icmp ult i32 %limit.0, %c
  %tobool.not = icmp eq ptr %bmap.0, null
  %spec.select = select i1 %cmp, i1 true, i1 %tobool.not, !prof !115
  br i1 %spec.select, label %sw.epilog.if.then_crit_edge, label %if.end18, !prof !115

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %4, i32 noundef %c, i32 noundef %conv) #13
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %type19 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %5 = ptrtoint ptr %type19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %type, ptr %type19, align 4
  %conv20 = trunc i32 %c to i16
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv20, ptr %code, align 2
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %limit.0, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %if.then.cleanup_crit_edge
  %storemerge = phi ptr [ %bmap.0, %if.end18 ], [ null, %do.end ], [ null, %if.then.cleanup_crit_edge ]
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %storemerge, ptr %bit, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__hidinput_change_resolution_multipliers(ptr noundef %hid, ptr noundef %report, i1 noundef zeroext %use_logical_max) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 6
  %0 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup40_crit_edge, label %for.cond.preheader

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp299.not = icmp eq i32 %3, 0
  br i1 %cmp299.not, label %for.cond.preheader.cleanup40_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup40_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc36.for.body_crit_edge ]
  %get_report_completed.0.off0101 = phi i1 [ false, %for.body.lr.ph ], [ %get_report_completed.4.off0.ph, %for.inc36.for.body_crit_edge ]
  %update_needed.0.off0100 = phi i1 [ false, %for.body.lr.ph ], [ %update_needed.3.off0.ph, %for.inc36.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hid_report, ptr %report, i32 0, i32 5, i32 %i.0102
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 12
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 11
  %cond.in = select i1 %use_logical_max, ptr %logical_maximum, ptr %logical_minimum
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %arrayidx6 = getelementptr %struct.hid_report, ptr %report, i32 0, i32 5, i32 %i.0102
  %report_count = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7.not = icmp eq i32 %8, 1
  br i1 %cmp7.not, label %for.cond10.preheader, label %for.body.for.inc36_crit_edge

for.body.for.inc36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

for.cond10.preheader:                             ; preds = %for.body
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %maxusage93 = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %maxusage93 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maxusage93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1394.not = icmp eq i32 %12, 0
  br i1 %cmp1394.not, label %for.cond10.preheader.for.inc36_crit_edge, label %for.cond10.preheader.for.body14_crit_edge

for.cond10.preheader.for.body14_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body14

for.cond10.preheader.for.inc36_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %for.cond10.preheader.for.body14_crit_edge
  %13 = phi ptr [ %32, %for.inc.for.body14_crit_edge ], [ %10, %for.cond10.preheader.for.body14_crit_edge ]
  %j.097 = phi i32 [ %inc, %for.inc.for.body14_crit_edge ], [ 0, %for.cond10.preheader.for.body14_crit_edge ]
  %get_report_completed.1.off096 = phi i1 [ %get_report_completed.3.off0, %for.inc.for.body14_crit_edge ], [ %get_report_completed.0.off0101, %for.cond10.preheader.for.body14_crit_edge ]
  %update_needed.1.off095 = phi i1 [ %update_needed.2.off0, %for.inc.for.body14_crit_edge ], [ %update_needed.0.off0100, %for.cond10.preheader.for.body14_crit_edge ]
  %usage17 = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %usage17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usage17, align 4
  %arrayidx18 = getelementptr %struct.hid_usage, ptr %15, i32 %j.097
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65608, i32 %17)
  %cmp20.not = icmp eq i32 %17, 65608
  br i1 %cmp20.not, label %if.end22, label %for.body14.for.inc_crit_edge

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end22:                                         ; preds = %for.body14
  br i1 %get_report_completed.1.off096, label %if.end22.if.end31_crit_edge, label %land.lhs.true

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end22
  %18 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp25 = icmp ugt i32 %19, 1
  br i1 %cmp25, label %if.then26, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 8
  %and = and i32 %21, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end30, label %if.then26.cleanup40_crit_edge

if.then26.cleanup40_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

if.end30:                                         ; preds = %if.then26
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %report, i32 noundef 1) #10
  %22 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ll_driver.i, align 4
  %wait.i = getelementptr inbounds %struct.hid_ll_driver, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wait.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end30.if.end31_crit_edge, label %if.then.i

if.end30.if.end31_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %25(ptr noundef %hid) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then.i, %if.end30.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %get_report_completed.2.off0 = phi i1 [ true, %if.end22.if.end31_crit_edge ], [ false, %land.lhs.true.if.end31_crit_edge ], [ true, %if.end30.if.end31_crit_edge ], [ true, %if.then.i ]
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6, align 4
  %value34 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %value34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %value34, align 4
  %arrayidx35 = getelementptr i32, ptr %29, i32 %j.097
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %for.body14.for.inc_crit_edge
  %update_needed.2.off0 = phi i1 [ %update_needed.1.off095, %for.body14.for.inc_crit_edge ], [ true, %if.end31 ]
  %get_report_completed.3.off0 = phi i1 [ %get_report_completed.1.off096, %for.body14.for.inc_crit_edge ], [ %get_report_completed.2.off0, %if.end31 ]
  %inc = add nuw i32 %j.097, 1
  %31 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx6, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxusage, align 4
  %cmp13 = icmp ult i32 %inc, %34
  br i1 %cmp13, label %for.inc.for.body14_crit_edge, label %for.inc.for.inc36_crit_edge

for.inc.for.inc36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.inc36:                                        ; preds = %for.inc.for.inc36_crit_edge, %for.cond10.preheader.for.inc36_crit_edge, %for.body.for.inc36_crit_edge
  %update_needed.3.off0.ph = phi i1 [ %update_needed.0.off0100, %for.body.for.inc36_crit_edge ], [ %update_needed.0.off0100, %for.cond10.preheader.for.inc36_crit_edge ], [ %update_needed.2.off0, %for.inc.for.inc36_crit_edge ]
  %get_report_completed.4.off0.ph = phi i1 [ %get_report_completed.0.off0101, %for.body.for.inc36_crit_edge ], [ %get_report_completed.0.off0101, %for.cond10.preheader.for.inc36_crit_edge ], [ %get_report_completed.3.off0, %for.inc.for.inc36_crit_edge ]
  %inc37 = add nuw i32 %i.0102, 1
  %35 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maxfield, align 4
  %cmp2 = icmp ult i32 %inc37, %36
  br i1 %cmp2, label %for.inc36.for.body_crit_edge, label %for.inc36.cleanup40_crit_edge

for.inc36.cleanup40_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup40:                                        ; preds = %for.inc36.cleanup40_crit_edge, %if.then26.cleanup40_crit_edge, %for.cond.preheader.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i1 [ false, %entry.cleanup40_crit_edge ], [ false, %for.cond.preheader.cleanup40_crit_edge ], [ %update_needed.1.off095, %if.then26.cleanup40_crit_edge ], [ %update_needed.3.off0.ph, %for.inc36.cleanup40_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_setup_resolution_multiplier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__ksymtab_hidinput_calc_abs_res, !1, !"__ksymtab_hidinput_calc_abs_res", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-input.c", i32 283, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-input.c", i32 1377, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hidinput_hid_event._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @hidinput_hid_event._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-input.c", i32 1382, i32 3}
!10 = !{ptr @hidinput_hid_event._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hidinput_hid_event._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-input.c", i32 1426, i32 4}
!14 = !{ptr @hidinput_hid_event._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hidinput_hid_event._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_hidinput_report_event, !17, !"__ksymtab_hidinput_report_event", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-input.c", i32 1475, i32 1}
!18 = !{ptr @__ksymtab_hidinput_get_led_field, !19, !"__ksymtab_hidinput_get_led_field", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-input.c", i32 1512, i32 1}
!20 = !{ptr @__ksymtab_hidinput_count_leds, !21, !"__ksymtab_hidinput_count_leds", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-input.c", i32 1534, i32 1}
!22 = !{ptr @hidinput_connect.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-input.c", i32 1959, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-input.c", i32 2035, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hidinput_connect._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @hidinput_connect._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-input.c", i32 2040, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hidinput_connect.__UNIQUE_ID_ddebug233, !33, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!36 = !{ptr @__ksymtab_hidinput_connect, !37, !"__ksymtab_hidinput_connect", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-input.c", i32 2051, i32 1}
!38 = !{ptr @__ksymtab_hidinput_disconnect, !39, !"__ksymtab_hidinput_disconnect", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-input.c", i32 2075, i32 1}
!40 = !{ptr @hid_hat_to_axis, !41, !"hid_hat_to_axis", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-input.c", i32 49, i32 4}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-input.c", i32 460, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hidinput_setup_battery.__UNIQUE_ID_ddebug228, !43, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-input.c", i32 470, i32 41}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-input.c", i32 511, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hidinput_setup_battery._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hidinput_setup_battery._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @hid_battery_quirks, !54, !"hid_battery_quirks", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-input.c", i32 299, i32 35}
!55 = !{ptr @hidinput_battery_props, !56, !"hidinput_battery_props", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-input.c", i32 286, i32 35}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-input.c", i32 1747, i32 13}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-input.c", i32 1750, i32 13}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-input.c", i32 1753, i32 13}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-input.c", i32 1763, i32 13}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-input.c", i32 1766, i32 13}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-input.c", i32 1769, i32 13}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-input.c", i32 1772, i32 13}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-input.c", i32 1775, i32 13}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-input.c", i32 1778, i32 13}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hid/hid-input.c", i32 1781, i32 13}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-input.c", i32 1784, i32 13}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-input.c", i32 1796, i32 43}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-input.c", i32 1830, i32 2}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @hidinput_allocate._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @hidinput_allocate._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-input.c", i32 1598, i32 3}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @hidinput_input_event._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @hidinput_input_event._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-input.c", i32 169, i32 3}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @hidinput_setkeycode._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @hidinput_setkeycode._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @hid_keyboard, !97, !"hid_keyboard", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-input.c", i32 27, i32 28}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!100 = !{ptr @hid_map_usage._rs, !99, !"_rs", i1 false, i1 false}
!101 = !{ptr @__func__.hid_map_usage, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @hid_map_usage._entry, !99, !"_entry", i1 false, i1 false}
!105 = !{ptr @hid_map_usage._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 2149012132, i64 2149012137, i64 2149012150, i64 2149012194, i64 2149012228, i64 2149012249}
!117 = !{i8 0, i8 2}
!118 = !{!"auto-init"}
