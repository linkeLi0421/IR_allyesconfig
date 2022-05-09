; ModuleID = '/llk/IR_all_yes/drivers/hwmon/jc42.c_pt.bc'
source_filename = "../drivers/hwmon/jc42.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.jc42_chips = type { i16, i16, i16 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.jc42_data = type { ptr, %struct.mutex, i8, i8, i32, i16, i16, [4 x i16] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_jc42__296_595_jc42_driver_init6 = internal global ptr @jc42_driver_init, section ".initcall6.init", align 4
@jc42_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 129, ptr null, ptr @jc42_remove, ptr @jc42_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jc42_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jc42_dev_pm_ops, ptr null, ptr null }, ptr @jc42_id, ptr @jc42_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_jc42_driver_exit = internal global ptr @jc42_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [47 x i8] c"jc42.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [29 x i8] c"jc42.description=JC42 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [29 x i8] c"jc42.file=drivers/hwmon/jc42\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [17 x i8] c"jc42.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jc42\00", [27 x i8] zeroinitializer }, align 32
@jc42_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jedec,jc-42.4-temp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@jc42_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @jc42_suspend, ptr @jc42_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jc42_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"jc42\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 -2], [46 x i8] zeroinitializer }, align 32
@jc42_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smbus-timeout-disable\00", [42 x i8] zeroinitializer }, align 32
@jc42_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @jc42_hwmon_ops, ptr @jc42_info }, [24 x i8] zeroinitializer }, align 32
@jc42_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @jc42_is_visible, ptr @jc42_read, ptr null, ptr @jc42_write }, [16 x i8] zeroinitializer }, align 32
@jc42_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.3, ptr null], [24 x i8] zeroinitializer }, align 32
@jc42_hysteresis = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 1500, i16 3000, i16 6000], [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 231330, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@jc42_chips = internal constant { [26 x %struct.jc42_chips], [36 x i8] } { [26 x %struct.jc42_chips] [%struct.jc42_chips { i16 4564, i16 2049, i16 -1 }, %struct.jc42_chips { i16 31, i16 -32255, i16 -1 }, %struct.jc42_chips { i16 4372, i16 8704, i16 -1 }, %struct.jc42_chips { i16 7272, i16 8704, i16 -256 }, %struct.jc42_chips { i16 4909, i16 13056, i16 -256 }, %struct.jc42_chips { i16 179, i16 8704, i16 -256 }, %struct.jc42_chips { i16 179, i16 10496, i16 -256 }, %struct.jc42_chips { i16 179, i16 12288, i16 -256 }, %struct.jc42_chips { i16 77, i16 15872, i16 -1 }, %struct.jc42_chips { i16 84, i16 512, i16 -4 }, %struct.jc42_chips { i16 84, i16 1024, i16 -4 }, %struct.jc42_chips { i16 84, i16 8192, i16 -4 }, %struct.jc42_chips { i16 84, i16 8448, i16 -4 }, %struct.jc42_chips { i16 84, i16 8704, i16 -4 }, %struct.jc42_chips { i16 84, i16 0, i16 -2 }, %struct.jc42_chips { i16 4401, i16 -24064, i16 -4 }, %struct.jc42_chips { i16 6921, i16 2048, i16 -32 }, %struct.jc42_chips { i16 6921, i16 2560, i16 -16 }, %struct.jc42_chips { i16 6921, i16 8704, i16 -16 }, %struct.jc42_chips { i16 6921, i16 8752, i16 -16 }, %struct.jc42_chips { i16 4401, i16 -24320, i16 -4 }, %struct.jc42_chips { i16 4170, i16 257, i16 -1 }, %struct.jc42_chips { i16 4170, i16 0, i16 -2 }, %struct.jc42_chips { i16 4170, i16 768, i16 -1 }, %struct.jc42_chips { i16 4170, i16 8705, i16 -1 }, %struct.jc42_chips { i16 4170, i16 512, i16 -1 }], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 5, i64 7, i64 8, i64 9, i64 10, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.4 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 5, i64 7, i64 8, i64 9, i64 10, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 9, i64 10]
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"jc42_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 581, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 584, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"jc42_of_ids\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 574, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"jc42_dev_pm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 557, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"jc42_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 567, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 24, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 478, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 486, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"jc42_chip_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 460, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"jc42_hwmon_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 454, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"jc42_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 445, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"jc42_hysteresis\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 159, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"jc42_chips\00", align 1
@___asan_gen_.48 = private constant [24 x i8] c"../drivers/hwmon/jc42.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 167, i32 26 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_jc42_driver_exit, ptr @__initcall__kmod_jc42__296_595_jc42_driver_init6, ptr @jc42_driver_exit, ptr @jc42_driver, ptr @.str, ptr @jc42_of_ids, ptr @jc42_dev_pm_ops, ptr @jc42_id, ptr @normal_i2c, ptr @jc42_probe.__key, ptr @.str.1, ptr @.str.2, ptr @jc42_chip_info, ptr @jc42_hwmon_ops, ptr @jc42_info, ptr @jc42_hysteresis, ptr @.compoundliteral, ptr @.compoundliteral.3, ptr @jc42_chips], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_hysteresis to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jc42_chips to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @jc42_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jc42_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @jc42_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %config = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config, align 2
  %4 = and i16 %3, -1537
  %orig_config = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %orig_config to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %orig_config, align 4
  %7 = and i16 %6, -1537
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %7)
  %cmp.not = icmp eq i16 %4, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i16 %3, 1536
  %or = or i16 %7, %and10
  %8 = tail call i16 @llvm.bswap.i16(i16 %or) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 1, i16 noundef zeroext %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.jc42_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @jc42_probe.__key) #6
  %call.i64 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i = icmp slt i32 %call.i64, 0
  br i1 %cmp.i, label %if.end.cleanup33_crit_edge, label %if.end5

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end5:                                          ; preds = %if.end
  %extended = getelementptr inbounds %struct.jc42_data, ptr %call.i, i32 0, i32 2
  %sum.shift = lshr i32 %call.i64, 10
  %2 = trunc i32 %sum.shift to i8
  %3 = and i8 %2, 1
  %4 = ptrtoint ptr %extended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %extended, align 4
  %call.i65 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  br i1 %call.i65, label %if.then9, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %if.end5
  %call.i66 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i67 = icmp slt i32 %call.i66, 0
  br i1 %cmp.i67, label %if.then9.cleanup33_crit_edge, label %if.end13

if.then9.cleanup33_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i68 = trunc i32 %call.i66 to i16
  %5 = or i16 %conv.i68, -32768
  %call.i71 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 34, i16 noundef zeroext %5) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end5.if.end15_crit_edge
  %call.i72 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp.i73 = icmp slt i32 %call.i72, 0
  %conv.i74 = trunc i32 %call.i72 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i74) #6
  %conv1.i75 = zext i16 %6 to i32
  %cond.i76 = select i1 %cmp.i73, i32 %call.i72, i32 %conv1.i75
  br i1 %cmp.i73, label %if.end15.cleanup33_crit_edge, label %if.end20

if.end15.cleanup33_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end20:                                         ; preds = %if.end15
  %conv21 = trunc i32 %cond.i76 to i16
  %orig_config = getelementptr inbounds %struct.jc42_data, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %orig_config to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv21, ptr %orig_config, align 4
  %and22 = and i32 %cond.i76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end28_crit_edge, label %if.then24

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %8 = trunc i32 %cond.i76 to i16
  %conv26 = and i16 %8, -257
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv26) #6
  %call.i77 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 1, i16 noundef zeroext %9) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end20.if.end28_crit_edge
  %conv29.pre-phi = phi i16 [ %conv26, %if.then24 ], [ %6, %if.end20.if.end28_crit_edge ]
  %config30 = getelementptr inbounds %struct.jc42_data, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %config30 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv29.pre-phi, ptr %config30, align 2
  %call31 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef nonnull @jc42_chip_info, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %call31 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %11, i32 0
  br label %cleanup33

cleanup33:                                        ; preds = %if.end28, %if.end15.cleanup33_crit_edge, %if.then9.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.1 = phi i32 [ %spec.select.i, %if.end28 ], [ -12, %entry.cleanup33_crit_edge ], [ %call.i64, %if.end.cleanup33_crit_edge ], [ %call.i72, %if.end15.cleanup33_crit_edge ], [ %call.i66, %if.then9.cleanup33_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i53 = icmp slt i32 %call.i, 0
  %call.i55 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  %call.i60 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  %conv.i62 = trunc i32 %call.i60 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i62) #6
  %conv1.i63 = zext i16 %6 to i32
  %cond.i64 = select i1 %cmp.i61, i32 %call.i60, i32 %conv1.i63
  %call.i65 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i66 = icmp slt i32 %call.i65, 0
  %conv.i67 = trunc i32 %call.i65 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i67) #6
  %conv1.i68 = zext i16 %7 to i32
  %cond.i69 = select i1 %cmp.i66, i32 %call.i65, i32 %conv1.i68
  %or.cond = select i1 %cmp.i53, i1 true, i1 %cmp.i56
  %or.cond50 = select i1 %or.cond, i1 true, i1 %cmp.i61
  %or.cond51 = select i1 %or.cond50, i1 true, i1 %cmp.i66
  br i1 %or.cond51, label %if.end.cleanup32_crit_edge, label %if.end12

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end12:                                         ; preds = %if.end
  %8 = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  %9 = and i32 %call.i55, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  %or.cond52 = select i1 %tobool13.not, i1 %tobool16.not, i1 false
  br i1 %or.cond52, label %if.end12.for.body_crit_edge, label %if.end12.cleanup32_crit_edge

if.end12.cleanup32_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr [26 x %struct.jc42_chips], ptr @jc42_chips, i32 0, i32 %i.070
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i64, i32 %conv)
  %cmp21 = icmp eq i32 %cond.i64, %conv
  br i1 %cmp21, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %devid_mask = getelementptr [26 x %struct.jc42_chips], ptr @jc42_chips, i32 0, i32 %i.070, i32 2
  %12 = ptrtoint ptr %devid_mask to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %devid_mask, align 2
  %conv23 = zext i16 %13 to i32
  %and24 = and i32 %cond.i69, %conv23
  %devid25 = getelementptr [26 x %struct.jc42_chips], ptr @jc42_chips, i32 0, i32 %i.070, i32 1
  %14 = ptrtoint ptr %devid25 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %devid25, align 2
  %conv26 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %conv26)
  %cmp27 = icmp eq i32 %and24, %conv26
  br i1 %cmp27, label %if.then29, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #6
  br label %cleanup32

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.inc.cleanup32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

cleanup32:                                        ; preds = %for.inc.cleanup32_crit_edge, %if.then29, %if.end12.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.2 = phi i32 [ -19, %entry.cleanup32_crit_edge ], [ -19, %if.end.cleanup32_crit_edge ], [ -19, %if.end12.cleanup32_crit_edge ], [ 0, %if.then29 ], [ -19, %for.inc.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @jc42_is_visible(ptr nocapture noundef readonly %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.jc42_data, ptr %_data, i32 0, i32 6
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %config1, align 2
  %conv = zext i16 %1 to i32
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %sw.default [
    i32 5, label %entry.sw.bb_crit_edge
    i32 7, label %entry.sw.bb_crit_edge28
    i32 9, label %sw.bb4
    i32 10, label %sw.bb12
    i32 1, label %entry.sw.epilog_crit_edge
    i32 8, label %entry.sw.epilog_crit_edge29
    i32 15, label %entry.sw.epilog_crit_edge30
    i32 16, label %entry.sw.epilog_crit_edge31
    i32 17, label %entry.sw.epilog_crit_edge32
  ]

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge28
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i16 420, i16 292
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and5 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %spec.select26 = select i1 %tobool6.not, i16 420, i16 292
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and13 = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select27 = select i1 %tobool14.not, i16 420, i16 292
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31, %entry.sw.epilog_crit_edge32
  %mode.0 = phi i16 [ 0, %sw.default ], [ 292, %entry.sw.epilog_crit_edge ], [ 292, %entry.sw.epilog_crit_edge29 ], [ 292, %entry.sw.epilog_crit_edge30 ], [ 292, %entry.sw.epilog_crit_edge31 ], [ 292, %entry.sw.epilog_crit_edge32 ], [ %spec.select, %sw.bb ], [ %spec.select26, %sw.bb4 ], [ %spec.select27, %sw.bb12 ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock.i = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %last_updated.i = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated.i, align 4
  %add.i = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %valid.i = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.jc42_update_device.exit_crit_edge

lor.lhs.false.i.jc42_update_device.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jc42_update_device.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.if.then5.i_crit_edge, label %if.end.i

if.then.i.if.then5.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end.2.i.if.then5.i_crit_edge, %if.end.1.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge, %if.then.i.if.then5.i_crit_edge
  %cond.i.lcssa.i = phi i32 [ %call.i.i, %if.then.i.if.then5.i_crit_edge ], [ %call.i.1.i, %if.end.i.if.then5.i_crit_edge ], [ %call.i.2.i, %if.end.1.i.if.then5.i_crit_edge ], [ %call.i.3.i, %if.end.2.i.if.then5.i_crit_edge ]
  %9 = inttoptr i32 %cond.i.lcssa.i to ptr
  br label %jc42_update_device.exit

if.end.i:                                         ; preds = %if.then.i
  %conv.i.i = trunc i32 %call.i.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %arrayidx7.i = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 0
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx7.i, align 2
  %call.i.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp.i.1.i, label %if.end.i.if.then5.i_crit_edge, label %if.end.1.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

if.end.1.i:                                       ; preds = %if.end.i
  %conv.i.1.i = trunc i32 %call.i.1.i to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv.i.1.i) #6
  %arrayidx7.1.i = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx7.1.i, align 2
  %call.i.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp.i.2.i, label %if.end.1.i.if.then5.i_crit_edge, label %if.end.2.i

if.end.1.i.if.then5.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %conv.i.2.i = trunc i32 %call.i.2.i to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv.i.2.i) #6
  %arrayidx7.2.i = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx7.2.i, align 2
  %call.i.3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp.i.3.i = icmp slt i32 %call.i.3.i, 0
  br i1 %cmp.i.3.i, label %if.end.2.i.if.then5.i_crit_edge, label %if.end.3.i

if.end.2.i.if.then5.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.3.i = trunc i32 %call.i.3.i to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv.i.3.i) #6
  %arrayidx7.3.i = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx7.3.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_updated.i, align 4
  %valid9.i = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %valid9.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %valid9.i, align 1
  br label %jc42_update_device.exit

jc42_update_device.exit:                          ; preds = %if.end.3.i, %if.then5.i, %lor.lhs.false.i.jc42_update_device.exit_crit_edge
  %ret.0.i = phi ptr [ %9, %if.then5.i ], [ %1, %if.end.3.i ], [ %1, %lor.lhs.false.i.jc42_update_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  %cmp.i76 = icmp ugt ptr %ret.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then, label %if.end

if.then:                                          ; preds = %jc42_update_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ret.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %jc42_update_device.exit
  %22 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb5
    i32 7, label %sw.bb9
    i32 9, label %sw.bb13
    i32 8, label %sw.bb17
    i32 10, label %sw.bb23
    i32 15, label %sw.bb34
    i32 16, label %sw.bb40
    i32 17, label %sw.bb46
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %temp3 = getelementptr inbounds %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7
  %23 = ptrtoint ptr %temp3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %temp3, align 4
  %conv4.i = zext i16 %24 to i32
  %shl.i.i = shl i32 %conv4.i, 19
  %conv2.i = ashr exact i32 %shl.i.i, 19
  %mul.i = mul nsw i32 %conv2.i, 125
  %div.i = sdiv i32 %mul.i, 2
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7 = getelementptr %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx7, align 4
  %conv4.i77 = zext i16 %27 to i32
  %shl.i.i78 = shl i32 %conv4.i77, 19
  %conv2.i79 = ashr exact i32 %shl.i.i78, 19
  %mul.i80 = mul nsw i32 %conv2.i79, 125
  %div.i81 = sdiv i32 %mul.i80, 2
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i81, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11 = getelementptr %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx11, align 2
  %conv4.i82 = zext i16 %30 to i32
  %shl.i.i83 = shl i32 %conv4.i82, 19
  %conv2.i84 = ashr exact i32 %shl.i.i83, 19
  %mul.i85 = mul nsw i32 %conv2.i84, 125
  %div.i86 = sdiv i32 %mul.i85, 2
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div.i86, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15 = getelementptr %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx15, align 2
  %conv4.i87 = zext i16 %33 to i32
  %shl.i.i88 = shl i32 %conv4.i87, 19
  %conv2.i89 = ashr exact i32 %shl.i.i88, 19
  %mul.i90 = mul nsw i32 %conv2.i89, 125
  %div.i91 = sdiv i32 %mul.i90, 2
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div.i91, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx19, align 2
  %conv4.i92 = zext i16 %36 to i32
  %shl.i.i93 = shl i32 %conv4.i92, 19
  %conv2.i94 = ashr exact i32 %shl.i.i93, 19
  %mul.i95 = mul nsw i32 %conv2.i94, 125
  %div.i96 = sdiv i32 %mul.i95, 2
  %config = getelementptr inbounds %struct.jc42_data, ptr %ret.0.i, i32 0, i32 6
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %config, align 2
  %39 = lshr i16 %38, 9
  %40 = and i16 %39, 3
  %41 = zext i16 %40 to i32
  %arrayidx21 = getelementptr [4 x i16], ptr @jc42_hysteresis, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %43 to i32
  %sub = sub nsw i32 %div.i96, %conv22
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub, ptr %val, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx25 = getelementptr %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx25, align 2
  %conv4.i97 = zext i16 %46 to i32
  %shl.i.i98 = shl i32 %conv4.i97, 19
  %conv2.i99 = ashr exact i32 %shl.i.i98, 19
  %mul.i100 = mul nsw i32 %conv2.i99, 125
  %div.i101 = sdiv i32 %mul.i100, 2
  %config27 = getelementptr inbounds %struct.jc42_data, ptr %ret.0.i, i32 0, i32 6
  %47 = ptrtoint ptr %config27 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %config27, align 2
  %49 = lshr i16 %48, 9
  %50 = and i16 %49, 3
  %51 = zext i16 %50 to i32
  %arrayidx31 = getelementptr [4 x i16], ptr @jc42_hysteresis, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %53 to i32
  %sub33 = sub nsw i32 %div.i101, %conv32
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub33, ptr %val, align 4
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %temp35 = getelementptr inbounds %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7
  %55 = ptrtoint ptr %temp35 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %temp35, align 4
  %57 = lshr i16 %56, 13
  %58 = and i16 %57, 1
  %and39 = zext i16 %58 to i32
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and39, ptr %val, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %temp41 = getelementptr inbounds %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7
  %60 = ptrtoint ptr %temp41 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %temp41, align 4
  %62 = lshr i16 %61, 14
  %63 = and i16 %62, 1
  %and45 = zext i16 %63 to i32
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and45, ptr %val, align 4
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %temp47 = getelementptr inbounds %struct.jc42_data, ptr %ret.0.i, i32 0, i32 7
  %65 = ptrtoint ptr %temp47 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %temp47, align 4
  %67 = lshr i16 %66, 15
  %68 = zext i16 %67 to i32
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb46, %sw.bb40, %sw.bb34, %sw.bb23, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %21, %if.then ], [ 0, %sw.bb46 ], [ 0, %sw.bb40 ], [ 0, %sw.bb34 ], [ 0, %sw.bb23 ], [ 0, %sw.bb17 ], [ 0, %sw.bb13 ], [ 0, %sw.bb9 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %attr, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 7, label %sw.bb6
    i32 9, label %sw.bb15
    i32 10, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extended = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %extended to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %extended, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %cond.i = select i1 %tobool.not, i32 0, i32 -40000
  %7 = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 %val) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 125000) #6
  %mul.i = shl nsw i32 %8, 1
  %div.i = sdiv i32 %mul.i, 125
  %9 = trunc i32 %div.i to i16
  %conv.i = and i16 %9, 8191
  %arrayidx = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %arrayidx, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 3, i16 noundef zeroext %11) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extended7 = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %extended7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extended7, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %cond.i81 = select i1 %tobool8.not, i32 0, i32 -40000
  %14 = tail call i32 @llvm.smax.i32(i32 %cond.i81, i32 %val) #6
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 125000) #6
  %mul.i82 = shl nsw i32 %15, 1
  %div.i83 = sdiv i32 %mul.i82, 125
  %16 = trunc i32 %div.i83 to i16
  %conv.i84 = and i16 %16, 8191
  %arrayidx11 = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i84, ptr %arrayidx11, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i84) #6
  %call.i85 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 2, i16 noundef zeroext %18) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extended16 = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %extended16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %extended16, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  %cond.i86 = select i1 %tobool17.not, i32 0, i32 -40000
  %21 = tail call i32 @llvm.smax.i32(i32 %cond.i86, i32 %val) #6
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 125000) #6
  %mul.i87 = shl nsw i32 %22, 1
  %div.i88 = sdiv i32 %mul.i87, 125
  %23 = trunc i32 %div.i88 to i16
  %conv.i89 = and i16 %23, 8191
  %arrayidx20 = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i89, ptr %arrayidx20, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i89) #6
  %call.i90 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 4, i16 noundef zeroext %25) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %extended25 = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %extended25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %extended25, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  %sub = select i1 %tobool26.not, i32 -6000, i32 -46000
  %28 = tail call i32 @llvm.smax.i32(i32 %sub, i32 %val)
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 125000)
  %arrayidx35 = getelementptr %struct.jc42_data, ptr %1, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx35, align 2
  %conv4.i = zext i16 %31 to i32
  %shl.i.i = shl i32 %conv4.i, 19
  %conv2.i = ashr exact i32 %shl.i.i, 19
  %mul.i91 = mul nsw i32 %conv2.i, 125
  %div.i92 = sdiv i32 %mul.i91, 2
  %sub37 = sub nsw i32 %div.i92, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub37)
  %cmp38 = icmp sgt i32 %sub37, 0
  br i1 %cmp38, label %if.then, label %sw.bb24.if.end45_crit_edge

sw.bb24.if.end45_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2250, i32 %sub37)
  %cmp39 = icmp ult i32 %sub37, 2250
  br i1 %cmp39, label %if.then.if.end45_crit_edge, label %if.else

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4500, i32 %sub37)
  %cmp41 = icmp ult i32 %sub37, 4500
  %. = select i1 %cmp41, i16 1024, i16 1536
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then.if.end45_crit_edge, %sw.bb24.if.end45_crit_edge
  %hyst.0 = phi i16 [ 0, %sw.bb24.if.end45_crit_edge ], [ 512, %if.then.if.end45_crit_edge ], [ %., %if.else ]
  %config = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %config, align 2
  %34 = and i16 %33, -1537
  %or = or i16 %34, %hyst.0
  store i16 %or, ptr %config, align 2
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %or) #6
  %call.i93 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %36, i8 noundef zeroext 1, i16 noundef zeroext %37) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end45, %sw.bb15, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i93, %if.end45 ], [ %call.i90, %sw.bb15 ], [ %call.i85, %sw.bb6 ], [ %call.i, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config, align 2
  %4 = or i16 %3, 256
  store i16 %4, ptr %config, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %6, i8 noundef zeroext 1, i16 noundef zeroext %7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jc42_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config = getelementptr inbounds %struct.jc42_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config, align 2
  %4 = and i16 %3, -257
  store i16 %4, ptr %config, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %6, i8 noundef zeroext 1, i16 noundef zeroext %7) #6
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_jc42__296_595_jc42_driver_init6, !1, !"__initcall__kmod_jc42__296_595_jc42_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/jc42.c", i32 595, i32 1}
!2 = !{ptr @__exitcall_jc42_driver_exit, !1, !"__exitcall_jc42_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/jc42.c", i32 597, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/jc42.c", i32 598, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/jc42.c", i32 599, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/jc42.c", i32 584, i32 11}
!12 = !{ptr @jc42_driver, !13, !"jc42_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/jc42.c", i32 581, i32 26}
!14 = !{ptr @jc42_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/jc42.c", i32 478, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/jc42.c", i32 486, i32 37}
!19 = !{ptr @jc42_chip_info, !20, !"jc42_chip_info", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/jc42.c", i32 460, i32 37}
!21 = !{ptr @jc42_hwmon_ops, !22, !"jc42_hwmon_ops", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/jc42.c", i32 454, i32 31}
!23 = distinct !{null, !24, !"temp_regs", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/jc42.c", i32 204, i32 17}
!25 = !{ptr @jc42_hysteresis, !26, !"jc42_hysteresis", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/jc42.c", i32 159, i32 12}
!27 = !{ptr @jc42_info, !28, !"jc42_info", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/jc42.c", i32 445, i32 41}
!29 = !{ptr @jc42_of_ids, !30, !"jc42_of_ids", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/jc42.c", i32 574, i32 34}
!31 = !{ptr @jc42_dev_pm_ops, !32, !"jc42_dev_pm_ops", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/jc42.c", i32 557, i32 32}
!33 = !{ptr @jc42_id, !34, !"jc42_id", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/jc42.c", i32 567, i32 35}
!35 = !{ptr @jc42_chips, !36, !"jc42_chips", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/jc42.c", i32 167, i32 26}
!37 = !{ptr @normal_i2c, !38, !"normal_i2c", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/jc42.c", i32 24, i32 29}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i8 0, i8 2}
