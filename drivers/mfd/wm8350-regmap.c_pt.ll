; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm8350-regmap.c_pt.bc'
source_filename = "../drivers/mfd/wm8350-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.wm8350_reg_access = type { i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wm8350 = type { ptr, ptr, i8, %struct.mutex, %struct.completion, %struct.mutex, i32, i32, [7 x i16], %struct.wm8350_codec, %struct.wm8350_gpio, %struct.wm8350_hwmon, %struct.wm8350_pmic, %struct.wm8350_power, %struct.wm8350_rtc, %struct.wm8350_wdt }
%struct.wm8350_codec = type { ptr, ptr }
%struct.wm8350_gpio = type { ptr }
%struct.wm8350_hwmon = type { ptr, ptr }
%struct.wm8350_pmic = type { i32, i32, i32, i32, i16, i16, i16, i16, [12 x ptr], [2 x %struct.wm8350_led] }
%struct.wm8350_led = type { ptr, %struct.work_struct, %struct.spinlock, i32, %struct.led_classdev, i32, i32, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm8350_power = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm8350_rtc = type { ptr, ptr, i32, i32 }
%struct.wm8350_wdt = type { ptr }

@wm8350_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr @wm8350_writeable, ptr @wm8350_readable, ptr @wm8350_volatile, ptr @wm8350_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@wm8350_reg_io_map = internal constant { [256 x %struct.wm8350_reg_access], [384 x i8] } { [256 x %struct.wm8350_reg_access] [%struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 31999, i16 3072, i16 0 }, %struct.wm8350_reg_access { i16 127, i16 0, i16 0 }, %struct.wm8350_reg_access { i16 -16837, i16 -16837, i16 -32768 }, %struct.wm8350_reg_access { i16 -265, i16 -265, i16 -2048 }, %struct.wm8350_reg_access { i16 -32513, i16 -32513, i16 -32768 }, %struct.wm8350_reg_access { i16 -1266, i16 -1266, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -6857, i16 -6857, i16 -1 }, %struct.wm8350_reg_access { i16 4083, i16 4083, i16 -1 }, %struct.wm8350_reg_access { i16 143, i16 143, i16 -1 }, %struct.wm8350_reg_access { i16 27964, i16 27964, i16 -1 }, %struct.wm8350_reg_access { i16 8079, i16 8079, i16 -1 }, %struct.wm8350_reg_access { i16 -28865, i16 -28865, i16 -1 }, %struct.wm8350_reg_access { i16 3, i16 3, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 32639, i16 32639, i16 -1 }, %struct.wm8350_reg_access { i16 1855, i16 1855, i16 -1 }, %struct.wm8350_reg_access { i16 7999, i16 7999, i16 -1 }, %struct.wm8350_reg_access { i16 16383, i16 255, i16 -1 }, %struct.wm8350_reg_access { i16 32639, i16 32639, i16 0 }, %struct.wm8350_reg_access { i16 3903, i16 3903, i16 0 }, %struct.wm8350_reg_access { i16 7999, i16 7999, i16 0 }, %struct.wm8350_reg_access { i16 -4225, i16 -5505, i16 -1 }, %struct.wm8350_reg_access { i16 15359, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 -281, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 13823, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 3903, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 3903, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 -32768, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 8191, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 -4225, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 16383, i16 16383, i16 0 }, %struct.wm8350_reg_access { i16 -281, i16 -281, i16 0 }, %struct.wm8350_reg_access { i16 -2561, i16 -2561, i16 0 }, %struct.wm8350_reg_access { i16 3903, i16 3903, i16 0 }, %struct.wm8350_reg_access { i16 3903, i16 3903, i16 0 }, %struct.wm8350_reg_access { i16 -32768, i16 -32768, i16 0 }, %struct.wm8350_reg_access { i16 8191, i16 8191, i16 0 }, %struct.wm8350_reg_access { i16 -4225, i16 -4225, i16 0 }, %struct.wm8350_reg_access { i16 -13833, i16 -13833, i16 -1 }, %struct.wm8350_reg_access { i16 -32767, i16 -32767, i16 0 }, %struct.wm8350_reg_access { i16 -9, i16 -9, i16 -1 }, %struct.wm8350_reg_access { i16 -1025, i16 -1025, i16 0 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 51, i16 51, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 12339, i16 12339, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -32257, i16 -32257, i16 -1 }, %struct.wm8350_reg_access { i16 -32257, i16 -32257, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 4095, i16 4095, i16 -1 }, %struct.wm8350_reg_access { i16 23, i16 23, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 16384, i16 16384, i16 0 }, %struct.wm8350_reg_access { i16 28672, i16 28672, i16 0 }, %struct.wm8350_reg_access { i16 15360, i16 15360, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -31997, i16 -31997, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -32257, i16 -32257, i16 -1 }, %struct.wm8350_reg_access { i16 -32257, i16 -32257, i16 -1 }, %struct.wm8350_reg_access { i16 4095, i16 4095, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 4095, i16 4095, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 1799, i16 1799, i16 -1 }, %struct.wm8350_reg_access { i16 -16192, i16 -16192, i16 -1 }, %struct.wm8350_reg_access { i16 -16225, i16 -16225, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 3861, i16 3861, i16 -1 }, %struct.wm8350_reg_access { i16 -16384, i16 -16384, i16 -1 }, %struct.wm8350_reg_access { i16 1023, i16 1023, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -7684, i16 -7684, i16 -32768 }, %struct.wm8350_reg_access { i16 -7684, i16 -7684, i16 -32768 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -26617, i16 -26617, i16 -1 }, %struct.wm8350_reg_access { i16 -26613, i16 -26613, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -30455, i16 -30455, i16 -1 }, %struct.wm8350_reg_access { i16 -25081, i16 -25081, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 3822, i16 3822, i16 0 }, %struct.wm8350_reg_access { i16 -7954, i16 -7954, i16 0 }, %struct.wm8350_reg_access { i16 3599, i16 3599, i16 0 }, %struct.wm8350_reg_access { i16 -7967, i16 -7967, i16 0 }, %struct.wm8350_reg_access { i16 -32754, i16 -32754, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -7684, i16 -7684, i16 -1 }, %struct.wm8350_reg_access { i16 -7684, i16 -7684, i16 -1 }, %struct.wm8350_reg_access { i16 -7684, i16 -7684, i16 -1 }, %struct.wm8350_reg_access { i16 -6148, i16 -6148, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -32544, i16 -32544, i16 -1 }, %struct.wm8350_reg_access { i16 -16640, i16 -16640, i16 0 }, %struct.wm8350_reg_access { i16 241, i16 241, i16 0 }, %struct.wm8350_reg_access { i16 248, i16 248, i16 0 }, %struct.wm8350_reg_access { i16 16635, i16 16635, i16 0 }, %struct.wm8350_reg_access { i16 31792, i16 31792, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 8191, i16 8191, i16 0 }, %struct.wm8350_reg_access { i16 8191, i16 8191, i16 0 }, %struct.wm8350_reg_access { i16 8191, i16 8191, i16 0 }, %struct.wm8350_reg_access { i16 8191, i16 8191, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 192, i16 192, i16 0 }, %struct.wm8350_reg_access { i16 8191, i16 8191, i16 0 }, %struct.wm8350_reg_access { i16 8191, i16 8191, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 15, i16 15, i16 0 }, %struct.wm8350_reg_access { i16 -3841, i16 -3841, i16 -24576 }, %struct.wm8350_reg_access { i16 14087, i16 14087, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 32767, i16 28672, i16 -1 }, %struct.wm8350_reg_access { i16 32767, i16 28672, i16 -1 }, %struct.wm8350_reg_access { i16 32767, i16 28672, i16 -1 }, %struct.wm8350_reg_access { i16 32767, i16 28672, i16 -1 }, %struct.wm8350_reg_access { i16 4095, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 4095, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 4095, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 4095, i16 0, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 15, i16 15, i16 0 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 -16385, i16 -16385, i16 -32768 }, %struct.wm8350_reg_access { i16 -1, i16 20479, i16 -20480 }, %struct.wm8350_reg_access { i16 127, i16 127, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -28609, i16 -28609, i16 -1 }, %struct.wm8350_reg_access { i16 -7373, i16 -7373, i16 -1 }, %struct.wm8350_reg_access { i16 -28609, i16 -28609, i16 -1 }, %struct.wm8350_reg_access { i16 -7373, i16 -7373, i16 -1 }, %struct.wm8350_reg_access { i16 -28865, i16 -28865, i16 -1 }, %struct.wm8350_reg_access { i16 13101, i16 13101, i16 0 }, %struct.wm8350_reg_access { i16 45, i16 45, i16 0 }, %struct.wm8350_reg_access { i16 20855, i16 20855, i16 -32768 }, %struct.wm8350_reg_access { i16 1151, i16 1151, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 29567, i16 29567, i16 0 }, %struct.wm8350_reg_access { i16 21339, i16 21339, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 1151, i16 1151, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 29567, i16 29567, i16 0 }, %struct.wm8350_reg_access { i16 1151, i16 1151, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 29567, i16 29567, i16 0 }, %struct.wm8350_reg_access { i16 21339, i16 21339, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 1151, i16 1151, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 29567, i16 29567, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -45, i16 -45, i16 0 }, %struct.wm8350_reg_access { i16 17439, i16 17439, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 13087, i16 13087, i16 0 }, %struct.wm8350_reg_access { i16 17439, i16 17439, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 13087, i16 13087, i16 0 }, %struct.wm8350_reg_access { i16 17439, i16 17439, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 13087, i16 13087, i16 0 }, %struct.wm8350_reg_access { i16 17439, i16 17439, i16 0 }, %struct.wm8350_reg_access { i16 -64, i16 -64, i16 0 }, %struct.wm8350_reg_access { i16 13087, i16 13087, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -28865, i16 -28865, i16 0 }, %struct.wm8350_reg_access { i16 -193, i16 -8129, i16 0 }, %struct.wm8350_reg_access { i16 -4305, i16 -8145, i16 0 }, %struct.wm8350_reg_access { i16 -3073, i16 -19457, i16 -16384 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 0 }, %struct.wm8350_reg_access { i16 2559, i16 511, i16 0 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 -1 }, %struct.wm8350_reg_access { i16 -1, i16 -1, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -28865, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 0, i16 0, i16 -1 }, %struct.wm8350_reg_access { i16 13566, i16 0, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -1, i16 8191, i16 -1 }, %struct.wm8350_reg_access { i16 -1, i16 8191, i16 -1 }, %struct.wm8350_reg_access { i16 -1, i16 8191, i16 -1 }, %struct.wm8350_reg_access { i16 -1, i16 8191, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -1, i16 16, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -1, i16 16, i16 -1 }, %struct.wm8350_reg_access { i16 -1, i16 16, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access { i16 -1, i16 16, i16 -1 }, %struct.wm8350_reg_access zeroinitializer, %struct.wm8350_reg_access zeroinitializer], [384 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"wm8350_regmap\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 324, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"wm8350_reg_io_map\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../drivers/mfd/wm8350-regmap.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 21, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @wm8350_regmap, ptr @wm8350_reg_io_map], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_reg_io_map to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8350_writeable(ptr nocapture noundef readonly %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %unlocked = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %unlocked to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unlocked, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.then:                                          ; preds = %entry
  %4 = and i32 %reg, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %4)
  %5 = icmp eq i32 %4, 140
  %6 = add i32 %reg, -168
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  %or.cond = or i1 %5, %7
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %writable = getelementptr [256 x %struct.wm8350_reg_access], ptr @wm8350_reg_io_map, i32 0, i32 %reg, i32 1
  %8 = ptrtoint ptr %writable to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %writable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool7 = icmp ne i16 %9, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool7, %if.end6 ], [ false, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8350_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [256 x %struct.wm8350_reg_access], ptr @wm8350_reg_io_map, i32 0, i32 %reg
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8350_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vol = getelementptr [256 x %struct.wm8350_reg_access], ptr @wm8350_reg_io_map, i32 0, i32 %reg, i32 2
  %0 = ptrtoint ptr %vol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8350_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %0)
  %switch = icmp eq i32 %0, 24
  ret i1 %switch
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @wm8350_regmap, !1, !"wm8350_regmap", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm8350-regmap.c", i32 324, i32 28}
!2 = !{ptr @wm8350_reg_io_map, !3, !"wm8350_reg_io_map", i1 false, i1 false}
!3 = !{!"../drivers/mfd/wm8350-regmap.c", i32 21, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
