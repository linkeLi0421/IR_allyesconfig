; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-led.c_pt.bc'
source_filename = "../drivers/hid/hid-led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hidled_config = type { i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hidled_device = type { ptr, ptr, ptr, ptr, %struct.mutex }
%struct.hidled_rgb = type { ptr, %struct.hidled_led, %struct.hidled_led, %struct.hidled_led, i8 }
%struct.hidled_led = type { %struct.led_classdev, ptr, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.delcom_packet = type { %struct.anon.71, [2 x i8] }
%struct.anon.71 = type { i16, i16, i8 }
%struct.anon.69 = type { i8, i8, i8, i8 }

@__param_str_riso_kagaku_switch_green_blue = internal constant [38 x i8] c"hid_led.riso_kagaku_switch_green_blue\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@riso_kagaku_switch_green_blue = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_riso_kagaku_switch_green_blue = internal constant %struct.kernel_param { ptr @__param_str_riso_kagaku_switch_green_blue, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @riso_kagaku_switch_green_blue } }, section "__param", align 4
@__UNIQUE_ID_riso_kagaku_switch_green_bluetype223 = internal constant [52 x i8] c"hid_led.parmtype=riso_kagaku_switch_green_blue:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_riso_kagaku_switch_green_blue224 = internal constant [103 x i8] c"hid_led.parm=riso_kagaku_switch_green_blue:switch green and blue RGB component for Riso Kagaku devices\00", section ".modinfo", align 1
@__initcall__kmod_hid_led__225_531_hidled_driver_init6 = internal global ptr @hidled_driver_init, section ".initcall6.init", align 4
@hidled_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @hidled_table, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @hidled_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hidled_driver_exit = internal global ptr @hidled_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file226 = internal constant [33 x i8] c"hid_led.file=drivers/hid/hid-led\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [20 x i8] c"hid_led.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [54 x i8] c"hid_led.author=Heiner Kallweit <hkallweit1@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [46 x i8] c"hid_led.description=Simple USB RGB LED driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hid_led\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hid-led\00", [24 x i8] zeroinitializer }, align 32
@hidled_table = internal constant { [7 x %struct.hid_device_id], [48 x i8] } { [7 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 4756, i32 4896, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7476, i32 4, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7476, i32 10, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 10168, i32 493, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 4037, i32 45184, i32 3 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 62322, i32 4 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hidled_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ldev->lock\00", [20 x i8] zeroinitializer }, align 32
@hidled_configs = internal constant { [5 x %struct.hidled_config], [44 x i8] } { [5 x %struct.hidled_config] [%struct.hidled_config { i32 0, ptr @.str.8, ptr @.str.9, i32 1, i32 1, i32 6, i32 1, ptr null, ptr @riso_kagaku_write }, %struct.hidled_config { i32 1, ptr @.str.10, ptr @.str.11, i32 31, i32 1, i32 9, i32 0, ptr @dream_cheeky_init, ptr @dream_cheeky_write }, %struct.hidled_config { i32 2, ptr @.str.12, ptr @.str.13, i32 255, i32 2, i32 9, i32 0, ptr @thingm_init, ptr @thingm_write }, %struct.hidled_config { i32 3, ptr @.str.14, ptr @.str.15, i32 100, i32 1, i32 8, i32 0, ptr @delcom_init, ptr @delcom_write }, %struct.hidled_config { i32 4, ptr @.str.16, ptr @.str.17, i32 255, i32 6, i32 9, i32 1, ptr null, ptr @luxafor_write }], [44 x i8] zeroinitializer }, align 32
@hidled_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 503, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s initialized\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hidled_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hid/hid-led.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidled_probe._entry_ptr = internal global ptr @hidled_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Riso Kagaku Webmail Notifier\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"riso_kagaku\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dream Cheeky Webmail Notifier\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dream_cheeky\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ThingM blink(1)\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thingm\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Delcom Visual Signal Indicator G2\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"delcom\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Greynut Luxafor\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"luxafor\00", [24 x i8] zeroinitializer }, align 32
@riso_kagaku_tbl = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\01\05\03\06\04\07", [24 x i8] zeroinitializer }, align 32
@__const.thingm_init.buf = private unnamed_addr constant <{ i8, i8, [14 x i8] }> <{ i8 1, i8 118, [14 x i8] zeroinitializer }>, align 1
@hidled_config_thingm_v1 = internal constant { %struct.hidled_config, [60 x i8] } { %struct.hidled_config { i32 0, ptr @.str.18, ptr @.str.13, i32 255, i32 1, i32 9, i32 0, ptr null, ptr @thingm_write_v1 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ThingM blink(1) v1\00", [45 x i8] zeroinitializer }, align 32
@__const._thingm_write.buf = private unnamed_addr constant <{ i8, i8, [14 x i8] }> <{ i8 1, i8 99, [14 x i8] zeroinitializer }>, align 1
@__const.luxafor_write.buf = private unnamed_addr constant <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }>, align 1
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"red\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"green\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"blue\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s%u:%s:led%u\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%u:%s\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"riso_kagaku_switch_green_blue\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 108, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"hidled_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 525, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 531, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 526, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"hidled_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 508, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 467, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"hidled_configs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 354, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 503, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 357, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 358, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 367, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 368, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 378, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 379, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 389, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 390, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 400, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 401, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"riso_kagaku_tbl\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 31, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"hidled_config_thingm_v1\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 253, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 254, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 435, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 440, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 445, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 416, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [25 x i8] c"../drivers/hid/hid-led.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 419, i32 42 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__UNIQUE_ID_riso_kagaku_switch_green_blue224, ptr @__UNIQUE_ID_riso_kagaku_switch_green_bluetype223, ptr @__exitcall_hidled_driver_exit, ptr @__initcall__kmod_hid_led__225_531_hidled_driver_init6, ptr @__param_riso_kagaku_switch_green_blue, ptr @hidled_driver_exit, ptr @hidled_probe._entry, ptr @hidled_probe._entry_ptr, ptr @riso_kagaku_switch_green_blue, ptr @hidled_driver, ptr @.str, ptr @.str.1, ptr @hidled_table, ptr @hidled_probe.__key, ptr @.str.2, ptr @hidled_configs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @riso_kagaku_tbl, ptr @hidled_config_thingm_v1, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riso_kagaku_switch_green_blue to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidled_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidled_table to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidled_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidled_configs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidled_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riso_kagaku_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidled_config_thingm_v1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hidled_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @hidled_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hidled_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hid_unregister_driver(ptr noundef nonnull @hidled_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidled_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3264) #7
  %buf = getelementptr inbounds %struct.hidled_device, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %buf, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i115 = tail call i32 @hid_open_report(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool8.not = icmp eq i32 %call.i115, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %hdev11 = getelementptr inbounds %struct.hidled_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %hdev11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdev, ptr %hdev11, align 4
  %lock = getelementptr inbounds %struct.hidled_device, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hidled_probe.__key) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %call.i.promoted = load ptr, ptr %call.i, align 4
  %tobool12.not125 = icmp eq ptr %call.i.promoted, null
  br i1 %tobool12.not125, label %for.body.lr.ph, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.lr.ph:                                   ; preds = %if.end10
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13 = icmp eq i32 %4, 0
  br i1 %cmp13, label %if.then14, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then14:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hidled_configs, ptr %call.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body.lr.ph.for.inc_crit_edge
  %6 = phi ptr [ null, %for.body.lr.ph.for.inc_crit_edge ], [ @hidled_configs, %if.then14 ]
  br i1 %cmp13, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp13.1 = icmp eq i32 %4, 1
  br i1 %cmp13.1, label %if.then14.1, label %for.body.1.for.inc.1_crit_edge

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then14.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 1), ptr %call.i, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then14.1, %for.body.1.for.inc.1_crit_edge
  %8 = phi ptr [ null, %for.body.1.for.inc.1_crit_edge ], [ getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 1), %if.then14.1 ]
  br i1 %cmp13.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp13.2 = icmp eq i32 %4, 2
  br i1 %cmp13.2, label %if.then14.2, label %for.body.2.for.inc.2_crit_edge

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then14.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 2), ptr %call.i, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then14.2, %for.body.2.for.inc.2_crit_edge
  %10 = phi ptr [ null, %for.body.2.for.inc.2_crit_edge ], [ getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 2), %if.then14.2 ]
  br i1 %cmp13.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp13.3 = icmp eq i32 %4, 3
  br i1 %cmp13.3, label %if.then14.3, label %for.body.3.for.inc.3_crit_edge

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then14.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 3), ptr %call.i, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then14.3, %for.body.3.for.inc.3_crit_edge
  %12 = phi ptr [ null, %for.body.3.for.inc.3_crit_edge ], [ getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 3), %if.then14.3 ]
  br i1 %cmp13.3, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp13.4 = icmp eq i32 %4, 4
  br i1 %cmp13.4, label %if.then14.4, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then14.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 4), ptr %call.i, align 4
  br label %for.end

for.end:                                          ; preds = %if.then14.4, %for.body.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %.lcssa146 = phi ptr [ %6, %for.inc.for.end_crit_edge ], [ %8, %for.inc.1.for.end_crit_edge ], [ %10, %for.inc.2.for.end_crit_edge ], [ %12, %for.inc.3.for.end_crit_edge ], [ null, %for.body.4.for.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.hidled_config], ptr @hidled_configs, i32 0, i32 4), %if.then14.4 ]
  %tobool12.not.lcssa.in = phi i1 [ %cmp13, %for.inc.for.end_crit_edge ], [ %cmp13.1, %for.inc.1.for.end_crit_edge ], [ %cmp13.2, %for.inc.2.for.end_crit_edge ], [ %cmp13.3, %for.inc.3.for.end_crit_edge ], [ %cmp13.4, %if.then14.4 ], [ %cmp13.4, %for.body.4.for.end_crit_edge ]
  br i1 %tobool12.not.lcssa.in, label %for.end.if.end21_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %for.end.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %.lcssa124140 = phi ptr [ %.lcssa146, %for.end.if.end21_crit_edge ], [ %call.i.promoted, %if.end10.if.end21_crit_edge ]
  %init = getelementptr inbounds %struct.hidled_config, ptr %.lcssa124140, i32 0, i32 7
  %14 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init, align 4
  %tobool23.not = icmp eq ptr %15, null
  br i1 %tobool23.not, label %if.end21.if.end31_crit_edge, label %if.then24

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then24:                                        ; preds = %if.end21
  %call27 = tail call i32 %15(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.if.end31_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %if.then24.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %num_leds = getelementptr inbounds %struct.hidled_config, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_leds, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 1316) #7
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !83

devm_kcalloc.exit.thread:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %rgb118 = getelementptr inbounds %struct.hidled_device, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %rgb118 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rgb118, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end31
  %23 = extractvalue { i32, i1 } %20, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %23, i32 noundef 3520) #7
  %rgb = getelementptr inbounds %struct.hidled_device, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %rgb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %rgb, align 4
  %tobool36.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool36.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end38

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %devm_kcalloc.exit
  %call39 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %hidraw = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 38
  %25 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hidraw, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %num_leds46128 = getelementptr inbounds %struct.hidled_config, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %num_leds46128 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_leds46128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp47129 = icmp sgt i32 %32, 0
  br i1 %cmp47129, label %if.end42.for.body48_crit_edge, label %if.end42.do.end65_crit_edge

if.end42.do.end65_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

if.end42.for.body48_crit_edge:                    ; preds = %if.end42
  br label %for.body48

for.cond44:                                       ; preds = %hidled_init_rgb.exit
  %inc61 = add nuw nsw i32 %i.1130, 1
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %num_leds46 = getelementptr inbounds %struct.hidled_config, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %num_leds46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_leds46, align 4
  %cmp47 = icmp slt i32 %inc61, %36
  br i1 %cmp47, label %for.cond44.for.body48_crit_edge, label %for.cond44.do.end65_crit_edge

for.cond44.do.end65_crit_edge:                    ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

for.cond44.for.body48_crit_edge:                  ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

for.body48:                                       ; preds = %for.cond44.for.body48_crit_edge, %if.end42.for.body48_crit_edge
  %i.1130 = phi i32 [ %inc61, %for.cond44.for.body48_crit_edge ], [ 0, %if.end42.for.body48_crit_edge ]
  %37 = ptrtoint ptr %rgb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rgb, align 4
  %arrayidx50 = getelementptr %struct.hidled_rgb, ptr %38, i32 %i.1130
  %39 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %arrayidx50, align 4
  %conv = trunc i32 %i.1130 to i8
  %40 = load ptr, ptr %rgb, align 4
  %num = getelementptr %struct.hidled_rgb, ptr %40, i32 %i.1130, i32 4
  %41 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %num, align 4
  %42 = load ptr, ptr %rgb, align 4
  %arrayidx55 = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130
  %red.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 1
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx55, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %num_leds.i.i = getelementptr inbounds %struct.hidled_config, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %num_leds.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_leds.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i.i = icmp sgt i32 %48, 1
  %name.i.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 1, i32 2
  %short_name.i.i = getelementptr inbounds %struct.hidled_config, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %short_name.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %short_name.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  %num.i.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 4
  %51 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num.i.i, align 4
  %conv.i.i = zext i8 %52 to i32
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %50, i32 noundef %28, ptr noundef nonnull @.str.19, i32 noundef %conv.i.i) #7
  br label %hidled_init_led.exit.i

if.else.i.i:                                      ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i116 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef %50, i32 noundef %28, ptr noundef nonnull @.str.19) #7
  br label %hidled_init_led.exit.i

hidled_init_led.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %53 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %name.i.i, ptr %red.i, align 4
  %max_brightness.i.i = getelementptr inbounds %struct.hidled_config, ptr %46, i32 0, i32 3
  %54 = ptrtoint ptr %max_brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_brightness.i.i, align 4
  %max_brightness10.i.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %max_brightness10.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %max_brightness10.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.hidled_config, ptr %46, i32 0, i32 8
  %57 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i, align 4
  %brightness_set_blocking.i.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 1, i32 0, i32 6
  %59 = ptrtoint ptr %brightness_set_blocking.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %brightness_set_blocking.i.i, align 4
  %flags.i.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 1, i32 0, i32 3
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 524288, ptr %flags.i.i, align 4
  %rgb13.i.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 1, i32 1
  %61 = ptrtoint ptr %rgb13.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx55, ptr %rgb13.i.i, align 4
  %62 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx55, align 4
  %hdev.i.i = getelementptr inbounds %struct.hidled_device, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 18
  %call.i.i.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev.i.i, ptr noundef %red.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hidled_init_led.exit.i.if.then58_crit_edge

hidled_init_led.exit.i.if.then58_crit_edge:       ; preds = %hidled_init_led.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.end.i:                                         ; preds = %hidled_init_led.exit.i
  %green.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 2
  %66 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx55, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %num_leds.i16.i = getelementptr inbounds %struct.hidled_config, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %num_leds.i16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_leds.i16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i17.i = icmp sgt i32 %71, 1
  %name.i18.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 2, i32 2
  %short_name.i19.i = getelementptr inbounds %struct.hidled_config, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %short_name.i19.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %short_name.i19.i, align 4
  br i1 %cmp.i17.i, label %if.then.i23.i, label %if.else.i25.i

if.then.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %num.i20.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 4
  %74 = ptrtoint ptr %num.i20.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num.i20.i, align 4
  %conv.i21.i = zext i8 %75 to i32
  %call.i22.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i18.i, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %73, i32 noundef %28, ptr noundef nonnull @.str.20, i32 noundef %conv.i21.i) #7
  br label %hidled_init_led.exit36.i

if.else.i25.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i24.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i18.i, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef %73, i32 noundef %28, ptr noundef nonnull @.str.20) #7
  br label %hidled_init_led.exit36.i

hidled_init_led.exit36.i:                         ; preds = %if.else.i25.i, %if.then.i23.i
  %76 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %name.i18.i, ptr %green.i, align 4
  %max_brightness.i27.i = getelementptr inbounds %struct.hidled_config, ptr %69, i32 0, i32 3
  %77 = ptrtoint ptr %max_brightness.i27.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_brightness.i27.i, align 4
  %max_brightness10.i28.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 2, i32 0, i32 2
  %79 = ptrtoint ptr %max_brightness10.i28.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %max_brightness10.i28.i, align 4
  %write.i29.i = getelementptr inbounds %struct.hidled_config, ptr %69, i32 0, i32 8
  %80 = ptrtoint ptr %write.i29.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write.i29.i, align 4
  %brightness_set_blocking.i30.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 2, i32 0, i32 6
  %82 = ptrtoint ptr %brightness_set_blocking.i30.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %brightness_set_blocking.i30.i, align 4
  %flags.i31.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 2, i32 0, i32 3
  %83 = ptrtoint ptr %flags.i31.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 524288, ptr %flags.i31.i, align 4
  %rgb13.i32.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 2, i32 1
  %84 = ptrtoint ptr %rgb13.i32.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx55, ptr %rgb13.i32.i, align 4
  %85 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx55, align 4
  %hdev.i33.i = getelementptr inbounds %struct.hidled_device, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %hdev.i33.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hdev.i33.i, align 4
  %dev.i34.i = getelementptr inbounds %struct.hid_device, ptr %88, i32 0, i32 18
  %call.i.i35.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev.i34.i, ptr noundef %green.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool2.not.i = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %hidled_init_led.exit36.i.if.then58_crit_edge

hidled_init_led.exit36.i.if.then58_crit_edge:     ; preds = %hidled_init_led.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.end4.i:                                        ; preds = %hidled_init_led.exit36.i
  %blue.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 3
  %89 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx55, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %num_leds.i37.i = getelementptr inbounds %struct.hidled_config, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %num_leds.i37.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_leds.i37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp.i38.i = icmp sgt i32 %94, 1
  %name.i39.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 3, i32 2
  %short_name.i40.i = getelementptr inbounds %struct.hidled_config, ptr %92, i32 0, i32 2
  %95 = ptrtoint ptr %short_name.i40.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %short_name.i40.i, align 4
  br i1 %cmp.i38.i, label %if.then.i44.i, label %if.else.i46.i

if.then.i44.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %num.i41.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 4
  %97 = ptrtoint ptr %num.i41.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %num.i41.i, align 4
  %conv.i42.i = zext i8 %98 to i32
  %call.i43.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i39.i, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %96, i32 noundef %28, ptr noundef nonnull @.str.21, i32 noundef %conv.i42.i) #7
  br label %hidled_init_rgb.exit

if.else.i46.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i45.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i39.i, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef %96, i32 noundef %28, ptr noundef nonnull @.str.21) #7
  br label %hidled_init_rgb.exit

hidled_init_rgb.exit:                             ; preds = %if.else.i46.i, %if.then.i44.i
  %99 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %name.i39.i, ptr %blue.i, align 4
  %max_brightness.i48.i = getelementptr inbounds %struct.hidled_config, ptr %92, i32 0, i32 3
  %100 = ptrtoint ptr %max_brightness.i48.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_brightness.i48.i, align 4
  %max_brightness10.i49.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 3, i32 0, i32 2
  %102 = ptrtoint ptr %max_brightness10.i49.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %max_brightness10.i49.i, align 4
  %write.i50.i = getelementptr inbounds %struct.hidled_config, ptr %92, i32 0, i32 8
  %103 = ptrtoint ptr %write.i50.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write.i50.i, align 4
  %brightness_set_blocking.i51.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 3, i32 0, i32 6
  %105 = ptrtoint ptr %brightness_set_blocking.i51.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %brightness_set_blocking.i51.i, align 4
  %flags.i52.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 3, i32 0, i32 3
  %106 = ptrtoint ptr %flags.i52.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 524288, ptr %flags.i52.i, align 4
  %rgb13.i53.i = getelementptr %struct.hidled_rgb, ptr %42, i32 %i.1130, i32 3, i32 1
  %107 = ptrtoint ptr %rgb13.i53.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx55, ptr %rgb13.i53.i, align 4
  %108 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx55, align 4
  %hdev.i54.i = getelementptr inbounds %struct.hidled_device, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %hdev.i54.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hdev.i54.i, align 4
  %dev.i55.i = getelementptr inbounds %struct.hid_device, ptr %111, i32 0, i32 18
  %call.i.i56.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev.i55.i, ptr noundef %blue.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56.i)
  %tobool57.not = icmp eq i32 %call.i.i56.i, 0
  br i1 %tobool57.not, label %for.cond44, label %hidled_init_rgb.exit.if.then58_crit_edge

hidled_init_rgb.exit.if.then58_crit_edge:         ; preds = %hidled_init_rgb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.then58:                                        ; preds = %hidled_init_rgb.exit.if.then58_crit_edge, %hidled_init_led.exit36.i.if.then58_crit_edge, %hidled_init_led.exit.i.if.then58_crit_edge
  %retval.0.i122 = phi i32 [ %call.i.i56.i, %hidled_init_rgb.exit.if.then58_crit_edge ], [ %call.i.i35.i, %hidled_init_led.exit36.i.if.then58_crit_edge ], [ %call.i.i.i, %hidled_init_led.exit.i.if.then58_crit_edge ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  br label %cleanup

do.end65:                                         ; preds = %for.cond44.do.end65_crit_edge, %if.end42.do.end65_crit_edge
  %.lcssa = phi ptr [ %30, %if.end42.do.end65_crit_edge ], [ %34, %for.cond44.do.end65_crit_edge ]
  %name = getelementptr inbounds %struct.hidled_config, ptr %.lcssa, i32 0, i32 1
  %112 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %113) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.then58, %if.end38.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then24.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i122, %if.then58 ], [ 0, %do.end65 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i115, %if.end6.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %call27, %if.then24.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riso_kagaku_write(ptr nocapture noundef readonly %cdev, i32 noundef %br) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rgb1 = getelementptr inbounds %struct.hidled_led, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %rgb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgb1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %2 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %brightness.i = getelementptr inbounds %struct.hidled_rgb, ptr %1, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brightness.i, align 4
  %brightness2.i = getelementptr inbounds %struct.hidled_rgb, ptr %1, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %brightness2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brightness2.i, align 4
  %brightness4.i = getelementptr inbounds %struct.hidled_rgb, ptr %1, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brightness4.i, align 4
  %9 = load i8, ptr @riso_kagaku_switch_green_blue, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not.i = icmp ne i32 %4, 0
  %cond12.i = zext i1 %tobool11.not.i to i32
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not.i = icmp eq i32 %8, 0
  %cond7.i = select i1 %tobool6.not.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not.i = icmp eq i32 %6, 0
  %cond9.i = select i1 %tobool8.not.i, i32 0, i32 4
  %add.i = or i32 %cond9.i, %cond12.i
  %add10.i = or i32 %add.i, %cond7.i
  br label %riso_kagaku_index.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not.i = icmp eq i32 %6, 0
  %cond14.i = select i1 %tobool13.not.i, i32 0, i32 2
  %add15.i = or i32 %cond14.i, %cond12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not.i = icmp eq i32 %8, 0
  %cond17.i = select i1 %tobool16.not.i, i32 0, i32 4
  %add18.i = or i32 %add15.i, %cond17.i
  br label %riso_kagaku_index.exit

riso_kagaku_index.exit:                           ; preds = %if.else.i, %if.then.i
  %add10.pn.i = phi i32 [ %add10.i, %if.then.i ], [ %add18.i, %if.else.i ]
  %retval.0.in.i = getelementptr [8 x i8], ptr @riso_kagaku_tbl, i32 0, i32 %add10.pn.i
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %retval.0.i = load i8, ptr %retval.0.in.i, align 1
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call2 = call fastcc i32 @hidled_send(ptr noundef %13, ptr noundef nonnull %buf)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dream_cheeky_init(ptr noundef %ldev) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 31, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 95, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 7
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 26, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 8
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %arrayidx4, align 1
  %call = call fastcc i32 @hidled_send(ptr noundef %ldev, ptr noundef nonnull %buf)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dream_cheeky_write(ptr nocapture noundef readonly %cdev, i32 noundef %br) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rgb1 = getelementptr inbounds %struct.hidled_led, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %rgb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgb1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %2 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %brightness = getelementptr inbounds %struct.hidled_rgb, ptr %1, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brightness, align 4
  %conv = trunc i32 %4 to i8
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %brightness4 = getelementptr inbounds %struct.hidled_rgb, ptr %1, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %brightness4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness4, align 4
  %conv5 = trunc i32 %7 to i8
  %arrayidx6 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %arrayidx6, align 1
  %brightness8 = getelementptr inbounds %struct.hidled_rgb, ptr %1, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %brightness8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brightness8, align 4
  %conv9 = trunc i32 %10 to i8
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 26, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 8
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %arrayidx12, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call = call fastcc i32 @hidled_send(ptr noundef %15, ptr noundef nonnull %buf)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thingm_init(ptr noundef %ldev) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.thingm_init.buf, i32 16)
  %call = call fastcc i32 @hidled_recv(ptr noundef %ldev, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %2)
  %cmp = icmp eq i8 %2, 49
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %ldev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hidled_config_thingm_v1, ptr %ldev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thingm_write(ptr nocapture noundef readonly %cdev, i32 noundef %br) #2 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #7
  %0 = call ptr @memcpy(ptr %buf.i, ptr @__const._thingm_write.buf, i32 16)
  %rgb.i = getelementptr inbounds %struct.hidled_led, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %rgb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rgb.i, align 4
  %brightness.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brightness.i, align 4
  %conv.i = trunc i32 %4 to i8
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %brightness4.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness4.i, align 4
  %conv5.i = trunc i32 %7 to i8
  %arrayidx6.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %brightness9.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %brightness9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brightness9.i, align 4
  %conv10.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %num.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num.i, align 4
  %add.i = add i8 %13, 1
  %arrayidx16.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %add.i, ptr %arrayidx16.i, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %call.i = call fastcc i32 @hidled_send(ptr noundef %16, ptr noundef nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delcom_init(ptr noundef %ldev) #2 align 64 {
entry:
  %dp = alloca %union.delcom_packet, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dp) #7
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 7566047373982433279, ptr %dp, align 8
  %call = call fastcc i32 @hidled_recv(ptr noundef %ldev, ptr noundef nonnull %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dp, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %2)
  %cmp = icmp eq i16 %2, 512
  %cond = select i1 %cmp, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delcom_write(ptr noundef readonly %cdev, i32 noundef %br) #2 align 64 {
entry:
  %dp.i5 = alloca %union.delcom_packet, align 8
  %dp.i = alloca %union.delcom_packet, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dp.i) #7
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 7281194701846216703, ptr %dp.i, align 8
  %rgb.i.i = getelementptr inbounds %struct.hidled_led, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %rgb.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rgb.i.i, align 4
  %red.i.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 1
  %cmp.i.i = icmp eq ptr %red.i.i, %cdev
  %green.i.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 2
  %cmp2.i.i = icmp eq ptr %green.i.i, %cdev
  %3 = select i1 %cmp2.i.i, i8 1, i8 4
  %conv.i = select i1 %cmp.i.i, i8 2, i8 %3
  %data_lsb.i = getelementptr inbounds %struct.anon.69, ptr %dp.i, i32 0, i32 2
  %4 = ptrtoint ptr %data_lsb.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %data_lsb.i, align 2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call1.i = call fastcc i32 @hidled_send(ptr noundef %6, ptr noundef nonnull %dp.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dp.i5) #7
  %7 = ptrtoint ptr %dp.i5 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 7287387151333851135, ptr %dp.i5, align 8
  %8 = ptrtoint ptr %rgb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rgb.i.i, align 4
  %red.i.i7 = getelementptr inbounds %struct.hidled_rgb, ptr %9, i32 0, i32 1
  %cmp.i.i8 = icmp eq ptr %red.i.i7, %cdev
  %green.i.i9 = getelementptr inbounds %struct.hidled_rgb, ptr %9, i32 0, i32 2
  %cmp2.i.i10 = icmp eq ptr %green.i.i9, %cdev
  %10 = select i1 %cmp2.i.i10, i8 0, i8 2
  %conv.i11 = select i1 %cmp.i.i8, i8 1, i8 %10
  %data_lsb.i12 = getelementptr inbounds %struct.anon.69, ptr %dp.i5, i32 0, i32 2
  %11 = ptrtoint ptr %data_lsb.i12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i11, ptr %data_lsb.i12, align 2
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 1
  %12 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness.i, align 4
  %conv1.i = trunc i32 %13 to i8
  %data_msb.i = getelementptr inbounds %struct.anon.69, ptr %dp.i5, i32 0, i32 3
  %14 = ptrtoint ptr %data_msb.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv1.i, ptr %data_msb.i, align 1
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 4
  %call2.i = call fastcc i32 @hidled_send(ptr noundef %16, ptr noundef nonnull %dp.i5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dp.i5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end ], [ %call1.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @luxafor_write(ptr nocapture noundef readonly %cdev, i32 noundef %br) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.luxafor_write.buf, i32 16)
  %rgb = getelementptr inbounds %struct.hidled_led, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %rgb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rgb, align 4
  %num = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 4
  %add = add i8 %4, 1
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %add, ptr %arrayidx, align 1
  %brightness = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness, align 4
  %conv4 = trunc i32 %7 to i8
  %arrayidx5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %arrayidx5, align 1
  %brightness8 = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %brightness8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brightness8, align 4
  %conv9 = trunc i32 %10 to i8
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %arrayidx10, align 1
  %brightness13 = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %brightness13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness13, align 4
  %conv14 = trunc i32 %13 to i8
  %arrayidx15 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %arrayidx15, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %call = call fastcc i32 @hidled_send(ptr noundef %16, ptr noundef nonnull %buf)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidled_send(ptr noundef %ldev, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hidled_device, ptr %ldev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %buf1 = getelementptr inbounds %struct.hidled_device, ptr %ldev, i32 0, i32 3
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %2 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ldev, align 4
  %report_size = getelementptr inbounds %struct.hidled_config, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %report_size, align 4
  %6 = call ptr @memcpy(ptr %1, ptr %buf, i32 %5)
  %7 = load ptr, ptr %ldev, align 4
  %report_type = getelementptr inbounds %struct.hidled_config, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %report_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end16.thread [
    i32 0, label %if.then
    i32 1, label %if.then9
  ]

if.end16.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdev = getelementptr inbounds %struct.hidled_device, ptr %ldev, i32 0, i32 1
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 1
  %15 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf1, align 4
  %report_size5 = getelementptr inbounds %struct.hidled_config, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %report_size5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %report_size5, align 4
  %call = tail call i32 @hid_hw_raw_request(ptr noundef %12, i8 noundef zeroext %14, ptr noundef %16, i32 noundef %18, i8 noundef zeroext 2, i32 noundef 9) #7
  br label %if.end16

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdev10 = getelementptr inbounds %struct.hidled_device, ptr %ldev, i32 0, i32 1
  %19 = ptrtoint ptr %hdev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev10, align 4
  %21 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf1, align 4
  %report_size13 = getelementptr inbounds %struct.hidled_config, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %report_size13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %report_size13, align 4
  %call14 = tail call i32 @hid_hw_output_report(ptr noundef %20, ptr noundef %22, i32 noundef %24) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call14, %if.then9 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp18 = icmp slt i32 %ret.0, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ldev, align 4
  %report_size22 = getelementptr inbounds %struct.hidled_config, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %report_size22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %report_size22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %28)
  %cmp23 = icmp eq i32 %ret.0, %28
  %cond = select i1 %cmp23, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end16.thread
  %retval.0 = phi i32 [ %cond, %if.end20 ], [ %ret.0, %if.end16.cleanup_crit_edge ], [ -22, %if.end16.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidled_recv(ptr noundef %ldev, ptr nocapture noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 4
  %report_type = getelementptr inbounds %struct.hidled_config, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %report_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.hidled_device, ptr %ldev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %buf1 = getelementptr inbounds %struct.hidled_device, ptr %ldev, i32 0, i32 3
  %4 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf1, align 4
  %6 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ldev, align 4
  %report_size = getelementptr inbounds %struct.hidled_config, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_size, align 4
  %10 = call ptr @memcpy(ptr %5, ptr %buf, i32 %9)
  %hdev = getelementptr inbounds %struct.hidled_device, ptr %ldev, i32 0, i32 1
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 1
  %15 = load ptr, ptr %buf1, align 4
  %16 = load ptr, ptr %ldev, align 4
  %report_size5 = getelementptr inbounds %struct.hidled_config, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %report_size5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %report_size5, align 4
  %call = tail call i32 @hid_hw_raw_request(ptr noundef %12, i8 noundef zeroext %14, ptr noundef %15, i32 noundef %18, i8 noundef zeroext 2, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.end.err_crit_edge, label %if.end8

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 4
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf, align 1
  %23 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf1, align 4
  %25 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ldev, align 4
  %report_size13 = getelementptr inbounds %struct.hidled_config, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %report_size13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %report_size13, align 4
  %call14 = tail call i32 @hid_hw_raw_request(ptr noundef %20, i8 noundef zeroext %22, ptr noundef %24, i32 noundef %28, i8 noundef zeroext 2, i32 noundef 1) #7
  %29 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf1, align 4
  %31 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ldev, align 4
  %report_size17 = getelementptr inbounds %struct.hidled_config, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %report_size17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %report_size17, align 4
  %35 = call ptr @memcpy(ptr %buf, ptr %30, i32 %34)
  br label %err

err:                                              ; preds = %if.end8, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.err_crit_edge ], [ %call14, %if.end8 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %36 = tail call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %err ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thingm_write_v1(ptr nocapture noundef readonly %cdev, i32 noundef %br) #2 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #7
  %0 = call ptr @memcpy(ptr %buf.i, ptr @__const._thingm_write.buf, i32 16)
  %rgb.i = getelementptr inbounds %struct.hidled_led, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %rgb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rgb.i, align 4
  %brightness.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brightness.i, align 4
  %conv.i = trunc i32 %4 to i8
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %brightness4.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness4.i, align 4
  %conv5.i = trunc i32 %7 to i8
  %arrayidx6.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %brightness9.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %brightness9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brightness9.i, align 4
  %conv10.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %num.i = getelementptr inbounds %struct.hidled_rgb, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num.i, align 4
  %arrayidx16.i = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx16.i, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %call.i = call fastcc i32 @hidled_send(ptr noundef %16, ptr noundef nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #7
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !18, !19, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__param_riso_kagaku_switch_green_blue, !1, !"__param_riso_kagaku_switch_green_blue", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-led.c", i32 109, i32 1}
!2 = !{ptr @__UNIQUE_ID_riso_kagaku_switch_green_bluetype223, !1, !"__UNIQUE_ID_riso_kagaku_switch_green_bluetype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_riso_kagaku_switch_green_blue224, !4, !"__UNIQUE_ID_riso_kagaku_switch_green_blue224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-led.c", i32 110, i32 1}
!5 = !{ptr @__initcall__kmod_hid_led__225_531_hidled_driver_init6, !6, !"__initcall__kmod_hid_led__225_531_hidled_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-led.c", i32 531, i32 1}
!7 = !{ptr @__exitcall_hidled_driver_exit, !6, !"__exitcall_hidled_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file226, !9, !"__UNIQUE_ID_file226", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-led.c", i32 533, i32 1}
!10 = !{ptr @__UNIQUE_ID_license227, !9, !"__UNIQUE_ID_license227", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author228, !12, !"__UNIQUE_ID_author228", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-led.c", i32 534, i32 1}
!13 = !{ptr @__UNIQUE_ID_description229, !14, !"__UNIQUE_ID_description229", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-led.c", i32 535, i32 1}
!15 = !{ptr @riso_kagaku_switch_green_blue, !16, !"riso_kagaku_switch_green_blue", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-led.c", i32 108, i32 13}
!17 = !{ptr @__param_str_riso_kagaku_switch_green_blue, !1, !"__param_str_riso_kagaku_switch_green_blue", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-led.c", i32 526, i32 10}
!21 = !{ptr @hidled_driver, !22, !"hidled_driver", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-led.c", i32 525, i32 26}
!23 = !{ptr @hidled_table, !24, !"hidled_table", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-led.c", i32 508, i32 35}
!25 = !{ptr @hidled_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-led.c", i32 467, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-led.c", i32 503, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hidled_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @hidled_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-led.c", i32 357, i32 11}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-led.c", i32 358, i32 17}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-led.c", i32 367, i32 11}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-led.c", i32 368, i32 17}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-led.c", i32 378, i32 11}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-led.c", i32 379, i32 17}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-led.c", i32 389, i32 11}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-led.c", i32 390, i32 17}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-led.c", i32 400, i32 11}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-led.c", i32 401, i32 17}
!56 = !{ptr @hidled_configs, !57, !"hidled_configs", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-led.c", i32 354, i32 35}
!58 = !{ptr @riso_kagaku_tbl, !59, !"riso_kagaku_tbl", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-led.c", i32 31, i32 28}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-led.c", i32 254, i32 10}
!62 = !{ptr @hidled_config_thingm_v1, !63, !"hidled_config_thingm_v1", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-led.c", i32 253, i32 35}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-led.c", i32 435, i32 35}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-led.c", i32 440, i32 37}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-led.c", i32 445, i32 37}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-led.c", i32 416, i32 42}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-led.c", i32 419, i32 42}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i8 0, i8 2}
