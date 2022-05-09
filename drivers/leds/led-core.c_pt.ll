; ModuleID = '/llk/IR_all_yes/drivers/leds/led-core.c_pt.bc'
source_filename = "../drivers/leds/led-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+leds_list_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_leds_list_lock\09\09\09\09"
module asm "\09.long\09__crc_leds_list_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_leds_list_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22leds_list_lock\22\09\09\09\09\09"
module asm "__kstrtabns_leds_list_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+leds_list\22, \22a\22\09"
module asm "\09.weak\09__crc_leds_list\09\09\09\09"
module asm "\09.long\09__crc_leds_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_leds_list:\09\09\09\09\09"
module asm "\09.asciz \09\22leds_list\22\09\09\09\09\09"
module asm "__kstrtabns_leds_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_colors\22, \22a\22\09"
module asm "\09.weak\09__crc_led_colors\09\09\09\09"
module asm "\09.long\09__crc_led_colors\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_colors:\09\09\09\09\09"
module asm "\09.asciz \09\22led_colors\22\09\09\09\09\09"
module asm "__kstrtabns_led_colors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_init_core\22, \22a\22\09"
module asm "\09.weak\09__crc_led_init_core\09\09\09\09"
module asm "\09.long\09__crc_led_init_core\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_init_core:\09\09\09\09\09"
module asm "\09.asciz \09\22led_init_core\22\09\09\09\09\09"
module asm "__kstrtabns_led_init_core:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_blink_set\22, \22a\22\09"
module asm "\09.weak\09__crc_led_blink_set\09\09\09\09"
module asm "\09.long\09__crc_led_blink_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_blink_set:\09\09\09\09\09"
module asm "\09.asciz \09\22led_blink_set\22\09\09\09\09\09"
module asm "__kstrtabns_led_blink_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_blink_set_oneshot\22, \22a\22\09"
module asm "\09.weak\09__crc_led_blink_set_oneshot\09\09\09\09"
module asm "\09.long\09__crc_led_blink_set_oneshot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_blink_set_oneshot:\09\09\09\09\09"
module asm "\09.asciz \09\22led_blink_set_oneshot\22\09\09\09\09\09"
module asm "__kstrtabns_led_blink_set_oneshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_stop_software_blink\22, \22a\22\09"
module asm "\09.weak\09__crc_led_stop_software_blink\09\09\09\09"
module asm "\09.long\09__crc_led_stop_software_blink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_stop_software_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22led_stop_software_blink\22\09\09\09\09\09"
module asm "__kstrtabns_led_stop_software_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_set_brightness\22, \22a\22\09"
module asm "\09.weak\09__crc_led_set_brightness\09\09\09\09"
module asm "\09.long\09__crc_led_set_brightness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_set_brightness_nopm\22, \22a\22\09"
module asm "\09.weak\09__crc_led_set_brightness_nopm\09\09\09\09"
module asm "\09.long\09__crc_led_set_brightness_nopm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness_nopm\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_set_brightness_nosleep\22, \22a\22\09"
module asm "\09.weak\09__crc_led_set_brightness_nosleep\09\09\09\09"
module asm "\09.long\09__crc_led_set_brightness_nosleep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness_nosleep:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness_nosleep\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness_nosleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_set_brightness_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_led_set_brightness_sync\09\09\09\09"
module asm "\09.long\09__crc_led_set_brightness_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_set_brightness_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22led_set_brightness_sync\22\09\09\09\09\09"
module asm "__kstrtabns_led_set_brightness_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_update_brightness\22, \22a\22\09"
module asm "\09.weak\09__crc_led_update_brightness\09\09\09\09"
module asm "\09.long\09__crc_led_update_brightness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_update_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22led_update_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_led_update_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_get_default_pattern\22, \22a\22\09"
module asm "\09.weak\09__crc_led_get_default_pattern\09\09\09\09"
module asm "\09.long\09__crc_led_get_default_pattern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_get_default_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22led_get_default_pattern\22\09\09\09\09\09"
module asm "__kstrtabns_led_get_default_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_sysfs_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_led_sysfs_disable\09\09\09\09"
module asm "\09.long\09__crc_led_sysfs_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_sysfs_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22led_sysfs_disable\22\09\09\09\09\09"
module asm "__kstrtabns_led_sysfs_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_sysfs_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_led_sysfs_enable\09\09\09\09"
module asm "\09.long\09__crc_led_sysfs_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_sysfs_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22led_sysfs_enable\22\09\09\09\09\09"
module asm "__kstrtabns_led_sysfs_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_compose_name\22, \22a\22\09"
module asm "\09.weak\09__crc_led_compose_name\09\09\09\09"
module asm "\09.long\09__crc_led_compose_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_compose_name:\09\09\09\09\09"
module asm "\09.asciz \09\22led_compose_name\22\09\09\09\09\09"
module asm "__kstrtabns_led_compose_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_init_default_state_get\22, \22a\22\09"
module asm "\09.weak\09__crc_led_init_default_state_get\09\09\09\09"
module asm "\09.long\09__crc_led_init_default_state_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_init_default_state_get:\09\09\09\09\09"
module asm "\09.asciz \09\22led_init_default_state_get\22\09\09\09\09\09"
module asm "__kstrtabns_led_init_default_state_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.led_properties = type { i32, i8, ptr, i32, i8, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"leds_list_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@leds_list_lock = dso_local global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @leds_list_lock, i64 56), ptr getelementptr (i8, ptr @leds_list_lock, i64 56) }, ptr @leds_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"leds_list_lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_leds_list_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_leds_list_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_leds_list_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @leds_list_lock to i32), ptr @__kstrtab_leds_list_lock, ptr @__kstrtabns_leds_list_lock }, section "___ksymtab_gpl+leds_list_lock", align 4
@leds_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @leds_list, ptr @leds_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_leds_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_leds_list = external dso_local constant [0 x i8], align 1
@__ksymtab_leds_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @leds_list to i32), ptr @__kstrtab_leds_list, ptr @__kstrtabns_leds_list }, section "___ksymtab_gpl+leds_list", align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"white\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"red\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"green\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"blue\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amber\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"violet\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"yellow\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ir\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"multicolor\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rgb\00", [28 x i8] zeroinitializer }, align 32
@led_colors = dso_local constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [56 x i8] zeroinitializer }, align 32
@__kstrtab_led_colors = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_colors = external dso_local constant [0 x i8], align 1
@__ksymtab_led_colors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_colors to i32), ptr @__kstrtab_led_colors, ptr @__kstrtabns_led_colors }, section "___ksymtab_gpl+led_colors", align 4
@led_init_core.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&led_cdev->set_brightness_work)\00", [46 x i8] zeroinitializer }, align 32
@led_init_core.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&led_cdev->blink_timer)\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_led_init_core = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_init_core = external dso_local constant [0 x i8], align 1
@__ksymtab_led_init_core = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_init_core to i32), ptr @__kstrtab_led_init_core, ptr @__kstrtabns_led_init_core }, section "___ksymtab_gpl+led_init_core", align 4
@__kstrtab_led_blink_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_blink_set = external dso_local constant [0 x i8], align 1
@__ksymtab_led_blink_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_blink_set to i32), ptr @__kstrtab_led_blink_set, ptr @__kstrtabns_led_blink_set }, section "___ksymtab_gpl+led_blink_set", align 4
@__kstrtab_led_blink_set_oneshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_blink_set_oneshot = external dso_local constant [0 x i8], align 1
@__ksymtab_led_blink_set_oneshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_blink_set_oneshot to i32), ptr @__kstrtab_led_blink_set_oneshot, ptr @__kstrtabns_led_blink_set_oneshot }, section "___ksymtab_gpl+led_blink_set_oneshot", align 4
@__kstrtab_led_stop_software_blink = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_stop_software_blink = external dso_local constant [0 x i8], align 1
@__ksymtab_led_stop_software_blink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_stop_software_blink to i32), ptr @__kstrtab_led_stop_software_blink, ptr @__kstrtabns_led_stop_software_blink }, section "___ksymtab_gpl+led_stop_software_blink", align 4
@__kstrtab_led_set_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness to i32), ptr @__kstrtab_led_set_brightness, ptr @__kstrtabns_led_set_brightness }, section "___ksymtab_gpl+led_set_brightness", align 4
@__kstrtab_led_set_brightness_nopm = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness_nopm = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness_nopm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness_nopm to i32), ptr @__kstrtab_led_set_brightness_nopm, ptr @__kstrtabns_led_set_brightness_nopm }, section "___ksymtab_gpl+led_set_brightness_nopm", align 4
@__kstrtab_led_set_brightness_nosleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness_nosleep = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness_nosleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness_nosleep to i32), ptr @__kstrtab_led_set_brightness_nosleep, ptr @__kstrtabns_led_set_brightness_nosleep }, section "___ksymtab_gpl+led_set_brightness_nosleep", align 4
@__kstrtab_led_set_brightness_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_set_brightness_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_led_set_brightness_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_set_brightness_sync to i32), ptr @__kstrtab_led_set_brightness_sync, ptr @__kstrtabns_led_set_brightness_sync }, section "___ksymtab_gpl+led_set_brightness_sync", align 4
@__kstrtab_led_update_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_update_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_led_update_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_update_brightness to i32), ptr @__kstrtab_led_update_brightness, ptr @__kstrtabns_led_update_brightness }, section "___ksymtab_gpl+led_update_brightness", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-pattern\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_led_get_default_pattern = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_get_default_pattern = external dso_local constant [0 x i8], align 1
@__ksymtab_led_get_default_pattern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_get_default_pattern to i32), ptr @__kstrtab_led_get_default_pattern, ptr @__kstrtabns_led_get_default_pattern }, section "___ksymtab_gpl+led_get_default_pattern", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/leds/led-core.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_led_sysfs_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_sysfs_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_led_sysfs_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_sysfs_disable to i32), ptr @__kstrtab_led_sysfs_disable, ptr @__kstrtabns_led_sysfs_disable }, section "___ksymtab_gpl+led_sysfs_disable", align 4
@__kstrtab_led_sysfs_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_sysfs_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_led_sysfs_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_sysfs_enable to i32), ptr @__kstrtab_led_sysfs_enable, ptr @__kstrtabns_led_sysfs_enable }, section "___ksymtab_gpl+led_sysfs_enable", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%s-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@led_compose_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.16, i32 466, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Legacy LED naming requires devicename segment\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led_compose_name\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@led_compose_name._entry_ptr = internal global ptr @led_compose_name._entry, section ".printk_index", align 4
@__kstrtab_led_compose_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_compose_name = external dso_local constant [0 x i8], align 1
@__ksymtab_led_compose_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_compose_name to i32), ptr @__kstrtab_led_compose_name, ptr @__kstrtabns_led_compose_name }, section "___ksymtab_gpl+led_compose_name", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_led_init_default_state_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_init_default_state_get = external dso_local constant [0 x i8], align 1
@__ksymtab_led_init_default_state_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_init_default_state_get to i32), ptr @__kstrtab_led_init_default_state_get, ptr @__kstrtabns_led_init_default_state_get }, section "___ksymtab_gpl+led_init_default_state_get", align 4
@set_brightness_delayed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.16, i32 137, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Setting an LED's brightness failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_brightness_delayed\00", [41 x i8] zeroinitializer }, align 32
@set_brightness_delayed._entry_ptr = internal global ptr @set_brightness_delayed._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.16, i32 376, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error parsing 'label' property (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"led_parse_fwnode_props\00", [41 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry_ptr = internal global ptr @led_parse_fwnode_props._entry, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.16, i32 383, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error parsing 'color' property (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry_ptr.35 = internal global ptr @led_parse_fwnode_props._entry.33, section ".printk_index", align 4
@led_parse_fwnode_props._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.16, i32 385, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"LED color identifier out of range\0A\00", [61 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry_ptr.38 = internal global ptr @led_parse_fwnode_props._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.31, ptr @.str.16, i32 398, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error parsing 'function' property (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry_ptr.42 = internal global ptr @led_parse_fwnode_props._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"function-enumerator\00", [44 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.31, ptr @.str.16, i32 409, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error parsing 'function-enumerator' property (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@led_parse_fwnode_props._entry_ptr.46 = internal global ptr @led_parse_fwnode_props._entry.44, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"leds_list_lock\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 22, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"leds_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 25, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 29, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 30, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 31, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 32, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 33, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 34, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 35, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 36, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 37, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 38, i32 23 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"led_colors\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 28, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 191, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 193, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 327, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 349, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 442, i32 51 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 449, i32 41 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 450, i32 54 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 466, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 485, i32 43 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 486, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 488, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 136, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 373, i32 38 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 376, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 380, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 383, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 385, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 391, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 396, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 401, i32 39 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [27 x i8] c"../drivers/leds/led-core.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 407, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__ksymtab_led_blink_set, ptr @__ksymtab_led_blink_set_oneshot, ptr @__ksymtab_led_colors, ptr @__ksymtab_led_compose_name, ptr @__ksymtab_led_get_default_pattern, ptr @__ksymtab_led_init_core, ptr @__ksymtab_led_init_default_state_get, ptr @__ksymtab_led_set_brightness, ptr @__ksymtab_led_set_brightness_nopm, ptr @__ksymtab_led_set_brightness_nosleep, ptr @__ksymtab_led_set_brightness_sync, ptr @__ksymtab_led_stop_software_blink, ptr @__ksymtab_led_sysfs_disable, ptr @__ksymtab_led_sysfs_enable, ptr @__ksymtab_led_update_brightness, ptr @__ksymtab_leds_list, ptr @__ksymtab_leds_list_lock, ptr @led_compose_name._entry, ptr @led_compose_name._entry_ptr, ptr @led_parse_fwnode_props._entry, ptr @led_parse_fwnode_props._entry.33, ptr @led_parse_fwnode_props._entry.36, ptr @led_parse_fwnode_props._entry.40, ptr @led_parse_fwnode_props._entry.44, ptr @led_parse_fwnode_props._entry_ptr, ptr @led_parse_fwnode_props._entry_ptr.35, ptr @led_parse_fwnode_props._entry_ptr.38, ptr @led_parse_fwnode_props._entry_ptr.42, ptr @led_parse_fwnode_props._entry_ptr.46, ptr @set_brightness_delayed._entry, ptr @set_brightness_delayed._entry_ptr, ptr @.str, ptr @leds_list_lock, ptr @.str.1, ptr @leds_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @led_colors, ptr @led_init_core.__key, ptr @.str.12, ptr @led_init_core.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leds_list_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leds_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_colors to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_init_core.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_init_core.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_compose_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_brightness_delayed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_parse_fwnode_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_parse_fwnode_props._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_parse_fwnode_props._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_parse_fwnode_props._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_parse_fwnode_props._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_init_core(ptr noundef %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21
  tail call void @__init_work(ptr noundef %set_brightness_work, i32 noundef 0) #8
  %0 = ptrtoint ptr %set_brightness_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %set_brightness_work, align 4
  %lockdep_map = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @led_init_core.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @set_brightness_delayed, ptr %func, align 4
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %blink_timer, ptr noundef nonnull @led_timer_function, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @led_init_core.__key.13) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_brightness_delayed(ptr noundef %ws) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -132
  %work_flags = getelementptr i8, ptr %ws, i32 -116
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %work_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value = getelementptr i8, ptr %ws, i32 44
  %0 = ptrtoint ptr %delayed_set_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %delayed_set_value, align 4
  %blink_timer.i = getelementptr i8, ptr %ws, i32 -60
  %call.i = tail call i32 @del_timer_sync(ptr noundef %blink_timer.i) #8
  %blink_delay_on.i = getelementptr i8, ptr %ws, i32 -68
  %1 = ptrtoint ptr %blink_delay_on.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %blink_delay_on.i, align 4
  %blink_delay_off.i = getelementptr i8, ptr %ws, i32 -64
  %2 = ptrtoint ptr %blink_delay_off.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %blink_delay_off.i, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delayed_set_value1 = getelementptr i8, ptr %ws, i32 44
  %brightness_set.i = getelementptr i8, ptr %ws, i32 -112
  %3 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %brightness_set.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then3, label %if.end6.thread38

if.end6.thread38:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %delayed_set_value1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delayed_set_value1, align 4
  tail call void %4(ptr noundef %add.ptr, i32 noundef %6) #8
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %brightness_set_blocking.i = getelementptr i8, ptr %ws, i32 -108
  %7 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %brightness_set_blocking.i, align 4
  %tobool.not.i29 = icmp eq ptr %8, null
  br i1 %tobool.not.i29, label %if.then3.do.end_crit_edge, label %if.end6

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end6:                                          ; preds = %if.then3
  %9 = ptrtoint ptr %delayed_set_value1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delayed_set_value1, align 4
  %call.i30 = tail call i32 %8(ptr noundef %add.ptr, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp7 = icmp slt i32 %call.i30, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i30)
  %cmp8 = icmp eq i32 %call.i30, -19
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %flags = getelementptr i8, ptr %ws, i32 -120
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %13 = and i32 %12, 524290
  call void @__sanitizer_cov_trace_const_cmp4(i32 524290, i32 %13)
  %.not = icmp eq i32 %13, 524290
  br i1 %.not, label %land.lhs.true9.if.end16_crit_edge, label %land.lhs.true9.do.end_crit_edge

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then3.do.end_crit_edge
  %ret.03743 = phi i32 [ %call.i30, %land.lhs.true.do.end_crit_edge ], [ -19, %land.lhs.true9.do.end_crit_edge ], [ -524, %if.then3.do.end_crit_edge ]
  %dev = getelementptr i8, ptr %ws, i32 -88
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef %ret.03743) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %land.lhs.true9.if.end16_crit_edge, %if.end6.if.end16_crit_edge, %if.end6.thread38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_timer_function(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -72
  %blink_delay_on = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %blink_delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blink_delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %blink_delay_off = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %blink_delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blink_delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %brightness.i = getelementptr i8, ptr %t, i32 -68
  %4 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %brightness.i, align 4
  %flags.i = getelementptr i8, ptr %t, i32 -60
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i67, label %if.then.led_set_brightness_nosleep.exit_crit_edge

if.then.led_set_brightness_nosleep.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_set_brightness_nosleep.exit

if.end.i67:                                       ; preds = %if.then
  %brightness_set.i.i.i = getelementptr i8, ptr %t, i32 -52
  %7 = ptrtoint ptr %brightness_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %brightness_set.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %__led_set_brightness.exit.thread.i.i

__led_set_brightness.exit.thread.i.i:             ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %add.ptr, i32 noundef 0) #8
  br label %led_set_brightness_nosleep.exit

if.end.i.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value.i.i = getelementptr i8, ptr %t, i32 104
  %9 = ptrtoint ptr %delayed_set_value.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %delayed_set_value.i.i, align 4
  %set_brightness_work.i.i = getelementptr i8, ptr %t, i32 60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %set_brightness_work.i.i) #8
  br label %led_set_brightness_nosleep.exit

led_set_brightness_nosleep.exit:                  ; preds = %if.end.i.i, %__led_set_brightness.exit.thread.i.i, %if.then.led_set_brightness_nosleep.exit_crit_edge
  %work_flags = getelementptr i8, ptr %t, i32 -56
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %work_flags2 = getelementptr i8, ptr %t, i32 -56
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %work_flags2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags2) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %brightness.i68 = getelementptr i8, ptr %t, i32 -68
  %11 = ptrtoint ptr %brightness.i68 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brightness.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %work_flags2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %brightness.0.in.v = select i1 %tobool12.not, i32 48, i32 52
  %brightness.0.in = getelementptr i8, ptr %t, i32 %brightness.0.in.v
  %13 = ptrtoint ptr %brightness.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %brightness.0 = load i32, ptr %brightness.0.in, align 4
  br label %if.end19

if.else16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %blink_brightness17 = getelementptr i8, ptr %t, i32 48
  %14 = ptrtoint ptr %blink_brightness17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %blink_brightness17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then9
  %brightness.1 = phi i32 [ 0, %if.else16 ], [ %brightness.0, %if.then9 ]
  %delay.0.in = phi ptr [ %blink_delay_off, %if.else16 ], [ %blink_delay_on, %if.then9 ]
  %15 = ptrtoint ptr %delay.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %delay.0 = load i32, ptr %delay.0.in, align 4
  %max_brightness.i69 = getelementptr i8, ptr %t, i32 -64
  %16 = ptrtoint ptr %max_brightness.i69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_brightness.i69, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %brightness.1) #8
  %19 = ptrtoint ptr %brightness.i68 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %brightness.i68, align 4
  %flags.i71 = getelementptr i8, ptr %t, i32 -60
  %20 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i71, align 4
  %and.i72 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %if.end.i76, label %if.end19.led_set_brightness_nosleep.exit82_crit_edge

if.end19.led_set_brightness_nosleep.exit82_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_set_brightness_nosleep.exit82

if.end.i76:                                       ; preds = %if.end19
  %brightness_set.i.i.i74 = getelementptr i8, ptr %t, i32 -52
  %22 = ptrtoint ptr %brightness_set.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %brightness_set.i.i.i74, align 4
  %tobool.not.i.i.i75 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i75, label %if.end.i.i81, label %__led_set_brightness.exit.thread.i.i77

__led_set_brightness.exit.thread.i.i77:           ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %add.ptr, i32 noundef %18) #8
  br label %led_set_brightness_nosleep.exit82

if.end.i.i81:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value.i.i78 = getelementptr i8, ptr %t, i32 104
  %24 = ptrtoint ptr %delayed_set_value.i.i78 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %18, ptr %delayed_set_value.i.i78, align 4
  %set_brightness_work.i.i79 = getelementptr i8, ptr %t, i32 60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i80 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %set_brightness_work.i.i79) #8
  br label %led_set_brightness_nosleep.exit82

led_set_brightness_nosleep.exit82:                ; preds = %if.end.i.i81, %__led_set_brightness.exit.thread.i.i77, %if.end19.led_set_brightness_nosleep.exit82_crit_edge
  %26 = ptrtoint ptr %work_flags2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %work_flags2, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not = icmp eq i32 %28, 0
  br i1 %tobool22.not, label %led_set_brightness_nosleep.exit82.if.end38_crit_edge, label %if.then23

led_set_brightness_nosleep.exit82.if.end38_crit_edge: ; preds = %led_set_brightness_nosleep.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then23:                                        ; preds = %led_set_brightness_nosleep.exit82
  %29 = ptrtoint ptr %work_flags2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %work_flags2, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool26.not = icmp eq i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness.1)
  %tobool33.not = icmp eq i32 %brightness.1, 0
  br i1 %tobool26.not, label %if.else32, label %if.then27

if.then27:                                        ; preds = %if.then23
  br i1 %tobool33.not, label %if.then27.if.end38_crit_edge, label %if.then27.if.end38.sink.split_crit_edge

if.then27.if.end38.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else32:                                        ; preds = %if.then23
  br i1 %tobool33.not, label %if.else32.if.end38.sink.split_crit_edge, label %if.else32.if.end38_crit_edge

if.else32.if.end38_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else32.if.end38.sink.split_crit_edge:          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.else32.if.end38.sink.split_crit_edge, %if.then27.if.end38.sink.split_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %work_flags2) #8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else32.if.end38_crit_edge, %if.then27.if.end38_crit_edge, %led_set_brightness_nosleep.exit82.if.end38_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %delay.0) #8
  %add = add i32 %call2.i, %32
  %call40 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then4, %led_set_brightness_nosleep.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_blink_set(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 17
  %call = tail call i32 @del_timer_sync(ptr noundef %blink_timer) #8
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %work_flags) #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %work_flags) #8
  tail call fastcc void @led_blink_setup(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @led_blink_setup(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  %0 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %work_flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %blink_set = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 8
  %3 = ptrtoint ptr %blink_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %blink_set, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 %4(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true2.return_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %if.end.if.end10thread-pre-split_crit_edge

if.end.if.end10thread-pre-split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10thread-pre-split

land.lhs.true7:                                   ; preds = %if.end
  %7 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true7.if.end10_crit_edge

land.lhs.true7.if.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %delay_off, align 4
  %10 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 500, ptr %delay_on, align 4
  br label %if.end10thread-pre-split

if.end10thread-pre-split:                         ; preds = %if.then9, %if.end.if.end10thread-pre-split_crit_edge
  %.ph = phi i32 [ %6, %if.end.if.end10thread-pre-split_crit_edge ], [ 500, %if.then9 ]
  %11 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %delay_off, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %land.lhs.true7.if.end10_crit_edge
  %12 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %8, %land.lhs.true7.if.end10_crit_edge ]
  %13 = phi i32 [ %.ph, %if.end10thread-pre-split ], [ 0, %land.lhs.true7.if.end10_crit_edge ]
  %brightness.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %14 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brightness.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end10.if.end.i_crit_edge, label %if.then.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %blink_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 18
  %16 = ptrtoint ptr %blink_brightness.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %blink_brightness.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  %blink_brightness1.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 18
  %17 = ptrtoint ptr %blink_brightness1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blink_brightness1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %19 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_brightness.i, align 4
  %21 = ptrtoint ptr %blink_brightness1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %blink_brightness1.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %blink_delay_on.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 15
  %22 = ptrtoint ptr %blink_delay_on.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %13, ptr %blink_delay_on.i, align 4
  %blink_delay_off.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 16
  %23 = ptrtoint ptr %blink_delay_off.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %12, ptr %blink_delay_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  %24 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %brightness.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then7.i.return_crit_edge

if.then7.i.return_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i.i:                                       ; preds = %if.then7.i
  %brightness_set.i.i.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 5
  %27 = ptrtoint ptr %brightness_set.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %brightness_set.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i, label %__led_set_brightness.exit.thread.i.i.i

__led_set_brightness.exit.thread.i.i.i:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %28(ptr noundef %led_cdev, i32 noundef 0) #8
  br label %return

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value.i.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 22
  %29 = ptrtoint ptr %delayed_set_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %delayed_set_value.i.i.i, align 4
  %set_brightness_work.i.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %set_brightness_work.i.i.i) #8
  br label %return

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not.i = icmp eq i32 %12, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  %31 = ptrtoint ptr %blink_brightness1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blink_brightness1.i, align 4
  %max_brightness.i29.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %33 = ptrtoint ptr %max_brightness.i29.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_brightness.i29.i, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %32) #8
  %36 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %brightness.i.i, align 4
  %flags.i31.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %37 = ptrtoint ptr %flags.i31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i31.i, align 4
  %and.i32.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then10.i.return_crit_edge

if.then10.i.return_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i36.i:                                     ; preds = %if.then10.i
  %brightness_set.i.i.i34.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 5
  %39 = ptrtoint ptr %brightness_set.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %brightness_set.i.i.i34.i, align 4
  %tobool.not.i.i.i35.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i35.i, label %if.end.i.i41.i, label %__led_set_brightness.exit.thread.i.i37.i

__led_set_brightness.exit.thread.i.i37.i:         ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %40(ptr noundef %led_cdev, i32 noundef %35) #8
  br label %return

if.end.i.i41.i:                                   ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value.i.i38.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 22
  %41 = ptrtoint ptr %delayed_set_value.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %35, ptr %delayed_set_value.i.i38.i, align 4
  %set_brightness_work.i.i39.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i40.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %set_brightness_work.i.i39.i) #8
  br label %return

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %work_flags) #8
  %blink_timer.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %43, 1
  %call13.i = tail call i32 @mod_timer(ptr noundef %blink_timer.i, i32 noundef %add.i) #8
  br label %return

return:                                           ; preds = %if.end12.i, %if.end.i.i41.i, %__led_set_brightness.exit.thread.i.i37.i, %if.then10.i.return_crit_edge, %if.end.i.i.i, %__led_set_brightness.exit.thread.i.i.i, %if.then7.i.return_crit_edge, %land.lhs.true2.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_blink_set_oneshot(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off, i32 noundef %invert) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  %0 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %work_flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 17, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %work_flags) #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %work_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invert)
  %tobool5.not = icmp eq i32 %invert, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %work_flags) #8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %work_flags) #8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  tail call fastcc void @led_blink_setup(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off)
  br label %return

return:                                           ; preds = %if.end9, %land.lhs.true.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_stop_software_blink(ptr noundef %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 17
  %call = tail call i32 @del_timer_sync(ptr noundef %blink_timer) #8
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 15
  %0 = ptrtoint ptr %blink_delay_on to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %blink_delay_on, align 4
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 16
  %1 = ptrtoint ptr %blink_delay_off to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %blink_delay_off, align 4
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_set_brightness(ptr noundef %led_cdev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  %0 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %work_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool1.not = icmp eq i32 %brightness, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %work_flags) #8
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %set_brightness_work) #8
  br label %return

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %work_flags) #8
  %new_blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 19
  %3 = ptrtoint ptr %new_blink_brightness to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %brightness, ptr %new_blink_brightness, align 4
  br label %return

if.end6:                                          ; preds = %entry
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %4 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_brightness.i, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %brightness) #8
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %7 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %brightness.i, align 4
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end6
  %brightness_set.i.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 5
  %10 = ptrtoint ptr %brightness_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %brightness_set.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %__led_set_brightness.exit.thread.i.i

__led_set_brightness.exit.thread.i.i:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %led_cdev, i32 noundef %6) #8
  br label %return

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 22
  %12 = ptrtoint ptr %delayed_set_value.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %delayed_set_value.i.i, align 4
  %set_brightness_work.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %set_brightness_work.i.i) #8
  br label %return

return:                                           ; preds = %if.end.i.i, %__led_set_brightness.exit.thread.i.i, %if.end6.return_crit_edge, %if.else, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_set_brightness_nosleep(ptr noundef %led_cdev, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_brightness, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %value)
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %brightness, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %brightness_set.i.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 5
  %6 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %brightness_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i, label %__led_set_brightness.exit.thread.i

__led_set_brightness.exit.thread.i:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %led_cdev, i32 noundef %2) #8
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 22
  %8 = ptrtoint ptr %delayed_set_value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %2, ptr %delayed_set_value.i, align 4
  %set_brightness_work.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %set_brightness_work.i) #8
  br label %return

return:                                           ; preds = %if.end.i, %__led_set_brightness.exit.thread.i, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_set_brightness_nopm(ptr noundef %led_cdev, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness_set.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 5
  %0 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %brightness_set.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %__led_set_brightness.exit.thread

__led_set_brightness.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef %led_cdev, i32 noundef %value) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %delayed_set_value = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 22
  %2 = ptrtoint ptr %delayed_set_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %value, ptr %delayed_set_value, align 4
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %set_brightness_work) #8
  br label %return

return:                                           ; preds = %if.end, %__led_set_brightness.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @led_set_brightness_sync(ptr noundef %led_cdev, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 15
  %0 = ptrtoint ptr %blink_delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blink_delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 16
  %2 = ptrtoint ptr %blink_delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blink_delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %4 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_brightness, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %value)
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %brightness, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 6
  %10 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %brightness_set_blocking.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end4.return_crit_edge, label %if.end.i

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %11(ptr noundef %led_cdev, i32 noundef %6) #8
  br label %return

return:                                           ; preds = %if.end.i, %if.end4.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %lor.lhs.false.return_crit_edge ], [ -16, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call.i, %if.end.i ], [ -524, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @led_update_brightness(ptr noundef %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 7
  %0 = ptrtoint ptr %brightness_get to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %brightness_get, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %led_cdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %brightness, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @led_get_default_pattern(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef writeonly %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %fwnode1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %fwnode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode1, align 4
  %call.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !134

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end4

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i.i
  %call5 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %call8.i.i, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call8.i.i, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_sysfs_disable(ptr noundef %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 31, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !134

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 349, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %or = or i32 %2, 131072
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_sysfs_enable(ptr noundef %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 31, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !134

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 358, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, -131073
  store i32 %and, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @led_compose_name(ptr noundef %dev, ptr nocapture noundef readonly %init_data, ptr noundef %led_classdev_name) #0 align 64 {
do.end9:
  %props = alloca %struct.led_properties, align 4
  %tmp_buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %props) #8
  %0 = call ptr @memset(ptr %props, i32 0, i32 24)
  %1 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_data, align 4
  %devicename2 = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 2
  %3 = ptrtoint ptr %devicename2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devicename2, align 4
  %tobool10.not = icmp eq ptr %led_classdev_name, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end12.led_parse_fwnode_props.exit_crit_edge, label %if.end.i

if.end12.led_parse_fwnode_props.exit_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_parse_fwnode_props.exit

if.end.i:                                         ; preds = %if.end12
  %call.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %2, ptr noundef nonnull @.str.29) #8
  br i1 %call.i, label %if.then1.i, label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i
  %label.i = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 5
  %call2.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.29, ptr noundef %label.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then1.i.led_parse_fwnode_props.exit_crit_edge, label %do.end.i

if.then1.i.led_parse_fwnode_props.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_parse_fwnode_props.exit

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call2.i) #11
  br label %led_parse_fwnode_props.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %2, ptr noundef nonnull @.str.32) #8
  br i1 %call7.i, label %if.then8.i, label %if.end6.i.if.end23.i_crit_edge

if.end6.i.if.end23.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end6.i
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.32, ptr noundef nonnull %props, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #11
  br label %if.end23.i

if.else.i:                                        ; preds = %if.then8.i
  %5 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %props, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp.i = icmp ugt i32 %6, 9
  br i1 %cmp.i, label %do.end19.i, label %if.else20.i

do.end19.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %if.end23.i

if.else20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %color_present.i = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 1
  %7 = ptrtoint ptr %color_present.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %color_present.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else20.i, %do.end19.i, %do.end14.i, %if.end6.i.if.end23.i_crit_edge
  %call24.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %2, ptr noundef nonnull @.str.39) #8
  br i1 %call24.i, label %if.end26.i, label %if.end23.i.led_parse_fwnode_props.exit_crit_edge

if.end23.i.led_parse_fwnode_props.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_parse_fwnode_props.exit

if.end26.i:                                       ; preds = %if.end23.i
  %function.i = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 2
  %call27.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.39, ptr noundef %function.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end33.i_crit_edge, label %do.end32.i

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call27.i) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end32.i, %if.end26.i.if.end33.i_crit_edge
  %call34.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %2, ptr noundef nonnull @.str.43) #8
  br i1 %call34.i, label %if.end36.i, label %if.end33.i.led_parse_fwnode_props.exit_crit_edge

if.end33.i.led_parse_fwnode_props.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_parse_fwnode_props.exit

if.end36.i:                                       ; preds = %if.end33.i
  %func_enum.i = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 3
  %call.i70.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.43, ptr noundef %func_enum.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool38.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool38.not.i, label %if.else43.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call.i70.i) #11
  br label %led_parse_fwnode_props.exit

if.else43.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %func_enum_present.i = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 4
  %8 = ptrtoint ptr %func_enum_present.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %func_enum_present.i, align 4
  br label %led_parse_fwnode_props.exit

led_parse_fwnode_props.exit:                      ; preds = %if.else43.i, %do.end42.i, %if.end33.i.led_parse_fwnode_props.exit_crit_edge, %if.end23.i.led_parse_fwnode_props.exit_crit_edge, %do.end.i, %if.then1.i.led_parse_fwnode_props.exit_crit_edge, %if.end12.led_parse_fwnode_props.exit_crit_edge
  %label = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 5
  %9 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %label, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.else21, label %if.then14

if.then14:                                        ; preds = %led_parse_fwnode_props.exit
  %tobool15.not = icmp eq ptr %4, null
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @strscpy(ptr noundef nonnull %led_classdev_name, ptr noundef nonnull %10, i32 noundef 64) #8
  br label %cleanup

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %led_classdev_name, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef nonnull %4, ptr noundef nonnull %10)
  br label %cleanup

if.else21:                                        ; preds = %led_parse_fwnode_props.exit
  %function = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 2
  %11 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %function, align 4
  %tobool22.not = icmp eq ptr %12, null
  br i1 %tobool22.not, label %lor.lhs.false, label %if.else21.if.then24_crit_edge

if.else21.if.then24_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.else21
  %color_present = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 1
  %13 = ptrtoint ptr %color_present to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %color_present, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.else63, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.else21.if.then24_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp_buf) #8
  %15 = call ptr @memset(ptr %tmp_buf, i32 255, i32 64)
  %func_enum_present = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 4
  %16 = ptrtoint ptr %func_enum_present to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %func_enum_present, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  %color_present39 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 1
  %18 = ptrtoint ptr %color_present39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %color_present39, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool40.not = icmp eq i8 %19, 0
  br i1 %tobool25.not, label %if.else37, label %if.then26

if.then26:                                        ; preds = %if.then24
  br i1 %tobool40.not, label %if.then26.cond.end_crit_edge, label %cond.true

if.then26.cond.end_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %props, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @led_colors, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then26.cond.end_crit_edge
  %cond = phi ptr [ %23, %cond.true ], [ @.str.19, %if.then26.cond.end_crit_edge ]
  %..str.19 = select i1 %tobool22.not, ptr @.str.19, ptr %12
  %func_enum = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 3
  %24 = ptrtoint ptr %func_enum to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %func_enum, align 4
  %call36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp_buf, i32 noundef 64, ptr noundef nonnull @.str.18, ptr noundef %cond, ptr noundef %..str.19, i32 noundef %25)
  br label %if.end54

if.else37:                                        ; preds = %if.then24
  br i1 %tobool40.not, label %if.else37.cond.end45_crit_edge, label %cond.true41

if.else37.cond.end45_crit_edge:                   ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end45

cond.true41:                                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %props, align 4
  %arrayidx43 = getelementptr [10 x ptr], ptr @led_colors, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx43, align 4
  br label %cond.end45

cond.end45:                                       ; preds = %cond.true41, %if.else37.cond.end45_crit_edge
  %cond46 = phi ptr [ %29, %cond.true41 ], [ @.str.19, %if.else37.cond.end45_crit_edge ]
  %..str.1991 = select i1 %tobool22.not, ptr @.str.19, ptr %12
  %call53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp_buf, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %cond46, ptr noundef %..str.1991)
  br label %if.end54

if.end54:                                         ; preds = %cond.end45, %cond.end
  %devname_mandatory = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 3
  %30 = ptrtoint ptr %devname_mandatory to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %devname_mandatory, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool55.not = icmp eq i8 %31, 0
  br i1 %tobool55.not, label %if.else59, label %if.then56

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %led_classdev_name, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %4, ptr noundef nonnull %tmp_buf)
  br label %if.end62

if.else59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 @strscpy(ptr noundef nonnull %led_classdev_name, ptr noundef nonnull %tmp_buf, i32 noundef 64) #8
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp_buf) #8
  br label %cleanup

if.else63:                                        ; preds = %lor.lhs.false
  %default_label = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 1
  %32 = ptrtoint ptr %default_label to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %default_label, align 4
  %tobool64.not = icmp eq ptr %33, null
  br i1 %tobool64.not, label %if.else74, label %if.then65

if.then65:                                        ; preds = %if.else63
  %tobool66.not = icmp eq ptr %4, null
  br i1 %tobool66.not, label %do.end70, label %if.end71

do.end70:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end71:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %led_classdev_name, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef nonnull %4, ptr noundef nonnull %33)
  br label %cleanup

if.else74:                                        ; preds = %if.else63
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.else74.cleanup_crit_edge, label %is_of_node.exit

if.else74.cleanup_crit_edge:                      ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_of_node.exit:                                  ; preds = %if.else74
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 1
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %cmp.i112 = icmp eq ptr %35, @of_fwnode_ops
  br i1 %cmp.i112, label %is_of_node.exit119, label %is_of_node.exit.cleanup_crit_edge

is_of_node.exit.cleanup_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_of_node.exit119:                               ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %2, i32 -12
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  %call83 = call i32 @strscpy(ptr noundef nonnull %led_classdev_name, ptr noundef %37, i32 noundef 64) #8
  br label %cleanup

cleanup:                                          ; preds = %is_of_node.exit119, %is_of_node.exit.cleanup_crit_edge, %if.else74.cleanup_crit_edge, %if.end71, %do.end70, %if.end62, %if.else, %if.then16, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end70 ], [ -22, %do.end9.cleanup_crit_edge ], [ -22, %is_of_node.exit.cleanup_crit_edge ], [ 0, %if.end62 ], [ 0, %is_of_node.exit119 ], [ 0, %if.end71 ], [ 0, %if.then16 ], [ 0, %if.else ], [ -22, %if.else74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %props) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @led_init_default_state_get(ptr noundef %fwnode) #0 align 64 {
entry:
  %state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %state, align 4
  %call = call i32 @fwnode_property_read_string(ptr noundef %fwnode, ptr noundef nonnull @.str.24, ptr noundef nonnull %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %call1 = call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(3) @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 2, %if.then.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/leds/led-core.c", i32 22, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @leds_list_lock, !1, !"leds_list_lock", i1 false, i1 false}
!4 = !{ptr @__ksymtab_leds_list_lock, !5, !"__ksymtab_leds_list_lock", i1 false, i1 false}
!5 = !{!"../drivers/leds/led-core.c", i32 23, i32 1}
!6 = !{ptr @leds_list, !7, !"leds_list", i1 false, i1 false}
!7 = !{!"../drivers/leds/led-core.c", i32 25, i32 1}
!8 = !{ptr @__ksymtab_leds_list, !9, !"__ksymtab_leds_list", i1 false, i1 false}
!9 = !{!"../drivers/leds/led-core.c", i32 26, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/led-core.c", i32 29, i32 25}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/led-core.c", i32 30, i32 23}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/led-core.c", i32 31, i32 25}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/led-core.c", i32 32, i32 24}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/led-core.c", i32 33, i32 25}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/led-core.c", i32 34, i32 26}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/led-core.c", i32 35, i32 26}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/led-core.c", i32 36, i32 22}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/led-core.c", i32 37, i32 25}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/led-core.c", i32 38, i32 23}
!30 = !{ptr @led_colors, !31, !"led_colors", i1 false, i1 false}
!31 = !{!"../drivers/leds/led-core.c", i32 28, i32 20}
!32 = !{ptr @__ksymtab_led_colors, !33, !"__ksymtab_led_colors", i1 false, i1 false}
!33 = !{!"../drivers/leds/led-core.c", i32 40, i32 1}
!34 = !{ptr @led_init_core.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/leds/led-core.c", i32 191, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @led_init_core.__key.13, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/leds/led-core.c", i32 193, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__ksymtab_led_init_core, !41, !"__ksymtab_led_init_core", i1 false, i1 false}
!41 = !{!"../drivers/leds/led-core.c", i32 195, i32 1}
!42 = !{ptr @__ksymtab_led_blink_set, !43, !"__ksymtab_led_blink_set", i1 false, i1 false}
!43 = !{!"../drivers/leds/led-core.c", i32 209, i32 1}
!44 = !{ptr @__ksymtab_led_blink_set_oneshot, !45, !"__ksymtab_led_blink_set_oneshot", i1 false, i1 false}
!45 = !{!"../drivers/leds/led-core.c", i32 230, i32 1}
!46 = !{ptr @__ksymtab_led_stop_software_blink, !47, !"__ksymtab_led_stop_software_blink", i1 false, i1 false}
!47 = !{!"../drivers/leds/led-core.c", i32 239, i32 1}
!48 = !{ptr @__ksymtab_led_set_brightness, !49, !"__ksymtab_led_set_brightness", i1 false, i1 false}
!49 = !{!"../drivers/leds/led-core.c", i32 266, i32 1}
!50 = !{ptr @__ksymtab_led_set_brightness_nopm, !51, !"__ksymtab_led_set_brightness_nopm", i1 false, i1 false}
!51 = !{!"../drivers/leds/led-core.c", i32 278, i32 1}
!52 = !{ptr @__ksymtab_led_set_brightness_nosleep, !53, !"__ksymtab_led_set_brightness_nosleep", i1 false, i1 false}
!53 = !{!"../drivers/leds/led-core.c", i32 289, i32 1}
!54 = !{ptr @__ksymtab_led_set_brightness_sync, !55, !"__ksymtab_led_set_brightness_sync", i1 false, i1 false}
!55 = !{!"../drivers/leds/led-core.c", i32 303, i32 1}
!56 = !{ptr @__ksymtab_led_update_brightness, !57, !"__ksymtab_led_update_brightness", i1 false, i1 false}
!57 = !{!"../drivers/leds/led-core.c", i32 319, i32 1}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/led-core.c", i32 327, i32 44}
!60 = !{ptr @__ksymtab_led_get_default_pattern, !61, !"__ksymtab_led_get_default_pattern", i1 false, i1 false}
!61 = !{!"../drivers/leds/led-core.c", i32 344, i32 1}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/led-core.c", i32 349, i32 2}
!64 = !{ptr @__ksymtab_led_sysfs_disable, !65, !"__ksymtab_led_sysfs_disable", i1 false, i1 false}
!65 = !{!"../drivers/leds/led-core.c", i32 353, i32 1}
!66 = !{ptr @__ksymtab_led_sysfs_enable, !67, !"__ksymtab_led_sysfs_enable", i1 false, i1 false}
!67 = !{!"../drivers/leds/led-core.c", i32 362, i32 1}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/led-core.c", i32 442, i32 51}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/led-core.c", i32 449, i32 41}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/leds/led-core.c", i32 450, i32 54}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/led-core.c", i32 466, i32 4}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @led_compose_name._entry, !75, !"_entry", i1 false, i1 false}
!80 = !{ptr @led_compose_name._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @__ksymtab_led_compose_name, !82, !"__ksymtab_led_compose_name", i1 false, i1 false}
!82 = !{!"../drivers/leds/led-core.c", i32 479, i32 1}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/leds/led-core.c", i32 485, i32 43}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/leds/led-core.c", i32 486, i32 22}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/leds/led-core.c", i32 488, i32 22}
!89 = !{ptr @__ksymtab_led_init_default_state_get, !90, !"__ksymtab_led_init_default_state_get", i1 false, i1 false}
!90 = !{!"../drivers/leds/led-core.c", i32 494, i32 1}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/leds/led-core.c", i32 136, i32 3}
!93 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @set_brightness_delayed._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @set_brightness_delayed._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/leds/led-core.c", i32 373, i32 38}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/leds/led-core.c", i32 376, i32 4}
!100 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @led_parse_fwnode_props._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @led_parse_fwnode_props._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/leds/led-core.c", i32 380, i32 38}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/leds/led-core.c", i32 383, i32 4}
!107 = !{ptr @led_parse_fwnode_props._entry.33, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @led_parse_fwnode_props._entry_ptr.35, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/leds/led-core.c", i32 385, i32 4}
!111 = !{ptr @led_parse_fwnode_props._entry.36, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @led_parse_fwnode_props._entry_ptr.38, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/leds/led-core.c", i32 391, i32 39}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/leds/led-core.c", i32 396, i32 3}
!117 = !{ptr @led_parse_fwnode_props._entry.40, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @led_parse_fwnode_props._entry_ptr.42, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/leds/led-core.c", i32 401, i32 39}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/leds/led-core.c", i32 407, i32 3}
!123 = !{ptr @led_parse_fwnode_props._entry.44, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @led_parse_fwnode_props._entry_ptr.46, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i8 0, i8 2}
