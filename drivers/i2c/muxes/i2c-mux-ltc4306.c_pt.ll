; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-mux-ltc4306.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-ltc4306.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.chip_desc = type { i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.ltc4306 = type { ptr, %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }

@__initcall__kmod_i2c_mux_ltc4306__288_316_ltc4306_driver_init6 = internal global ptr @ltc4306_driver_init, section ".initcall6.init", align 4
@ltc4306_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ltc4306_remove, ptr @ltc4306_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc4306_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc4306_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc4306_driver_exit = internal global ptr @ltc4306_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [72 x i8] c"i2c_mux_ltc4306.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [85 x i8] c"i2c_mux_ltc4306.description=Linear Technology LTC4306, LTC4305 I2C mux/switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"i2c_mux_ltc4306.file=drivers/i2c/muxes/i2c-mux-ltc4306\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"i2c_mux_ltc4306.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc4306\00", [24 x i8] zeroinitializer }, align 32
@ltc4306_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc4305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chips }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc4306\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 2) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ltc4306_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc4305\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ltc4306\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@chips = internal constant { [2 x %struct.chip_desc], [28 x i8] } { [2 x %struct.chip_desc] [%struct.chip_desc { i8 2, i8 0 }, %struct.chip_desc { i8 4, i8 2 }], [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c-mux-idle-disconnect\00", [40 x i8] zeroinitializer }, align 32
@ltc4306_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc4306_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @ltc4306_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"i2c_mux_ltc4306:238:(&ltc4306_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@ltc4306_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 242, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc4306_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/muxes/i2c-mux-ltc4306.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc4306_probe._entry_ptr = internal global ptr @ltc4306_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ltc4306_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 262, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"probe failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ltc4306_probe._entry_ptr.12 = internal global ptr @ltc4306_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ltc,downstream-accelerators-enable\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ltc,upstream-accelerators-enable\00", [63 x i8] zeroinitializer }, align 32
@ltc4306_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 292, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"registered %d multiplexed busses for I2C switch %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ltc4306_probe._entry_ptr.18 = internal global ptr @ltc4306_probe._entry.15, section ".printk_index", align 4
@ltc4306_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc4306_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"ltc4306_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 306, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 308, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"ltc4306_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 201, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"ltc4306_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 194, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"chips\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 53, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 225, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"ltc4306_regmap_config\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 68, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 238, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 241, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 247, i32 47 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 262, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 267, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 271, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 290, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.95 = private constant [39 x i8] c"../drivers/i2c/muxes/i2c-mux-ltc4306.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 175, i32 9 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ltc4306_driver_exit, ptr @__initcall__kmod_i2c_mux_ltc4306__288_316_ltc4306_driver_init6, ptr @ltc4306_driver_exit, ptr @ltc4306_probe._entry, ptr @ltc4306_probe._entry.15, ptr @ltc4306_probe._entry.9, ptr @ltc4306_probe._entry_ptr, ptr @ltc4306_probe._entry_ptr.12, ptr @ltc4306_probe._entry_ptr.18, ptr @ltc4306_driver, ptr @.str, ptr @ltc4306_of_match, ptr @ltc4306_id, ptr @chips, ptr @.str.1, ptr @ltc4306_probe._key, ptr @ltc4306_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @ltc4306_gpio_init.lock_key, ptr @ltc4306_gpio_init.request_key], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chips to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4306_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc4306_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc4306_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc4306_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @i2c_match_id(ptr noundef nonnull @ltc4306_id, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.chip_desc], ptr @chips, i32 0, i32 %3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chip.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %arrayidx, %if.then ]
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %4 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip.0, align 1
  %conv = zext i8 %5 to i32
  %cond = select i1 %call.i, ptr @ltc4306_deselect_mux, ptr null
  %call7 = tail call ptr @i2c_mux_alloc(ptr noundef %1, ptr noundef %dev, i32 noundef %conv, i32 noundef 356, i32 noundef 1, ptr noundef nonnull @ltc4306_select_mux, ptr noundef %cond) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %call7, i32 0, i32 3
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %chip12 = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %chip12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chip.0, ptr %chip12, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ltc4306_regmap_config, ptr noundef nonnull @ltc4306_probe._key, ptr noundef nonnull @.str.2) #6
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %7, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %11) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %call22 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 3) #6
  %cmp.i118 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %tobool27.not = icmp eq ptr %call22, null
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  tail call void @gpiod_set_value(ptr noundef nonnull %call22, i32 noundef 1) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %call.i119 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %spec.select = select i1 %call.i119, i32 64, i32 0
  %call.i120 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %or46 = or i32 %spec.select, 128
  %val.1 = select i1 %call.i120, i32 %or46, i32 %spec.select
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1, i32 noundef %val.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end38.cleanup_crit_edge, label %if.end53

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end38
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %call.i121 = tail call ptr @regmap_get_device(ptr noundef %19) #6
  %20 = ptrtoint ptr %chip12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip12, align 4
  %num_gpios.i = getelementptr inbounds %struct.chip_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_gpios.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end53.for.cond.preheader_crit_edge, label %if.end.i

if.end53.for.cond.preheader_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.end.i:                                         ; preds = %if.end53
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call.i121, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.ltc4306_gpio_init.exit_crit_edge

if.end.i.ltc4306_gpio_init.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc4306_gpio_init.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call.i121 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i121, align 4
  br label %ltc4306_gpio_init.exit

ltc4306_gpio_init.exit:                           ; preds = %if.end.i.i, %if.end.i.ltc4306_gpio_init.exit_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %if.end.i.ltc4306_gpio_init.exit_crit_edge ]
  %gpiochip.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %gpiochip.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i.i, ptr %gpiochip.i, align 4
  %base.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 19
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %base.i, align 4
  %30 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_gpios.i, align 1
  %conv.i = zext i8 %31 to i16
  %ngpio.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 20
  %32 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %parent.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i121, ptr %parent.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 23
  %34 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %can_sleep.i, align 4
  %get_direction.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 7
  %35 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ltc4306_gpio_get_direction, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ltc4306_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ltc4306_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 10
  %38 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ltc4306_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 12
  %39 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ltc4306_gpio_set, ptr %set.i, align 4
  %set_config.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 14
  %40 = ptrtoint ptr %set_config.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ltc4306_gpio_set_config, ptr %set_config.i, align 4
  %owner.i = getelementptr inbounds %struct.ltc4306, ptr %7, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %owner.i, align 4
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 2, i32 noundef 192) #6
  %call18.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %call.i121, ptr noundef %gpiochip.i, ptr noundef %7, ptr noundef nonnull @ltc4306_gpio_init.lock_key, ptr noundef nonnull @ltc4306_gpio_init.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp55 = icmp slt i32 %call18.i, 0
  br i1 %cmp55, label %ltc4306_gpio_init.exit.cleanup_crit_edge, label %ltc4306_gpio_init.exit.for.cond.preheader_crit_edge

ltc4306_gpio_init.exit.for.cond.preheader_crit_edge: ; preds = %ltc4306_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

ltc4306_gpio_init.exit.cleanup_crit_edge:         ; preds = %ltc4306_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %ltc4306_gpio_init.exit.for.cond.preheader_crit_edge, %if.end53.for.cond.preheader_crit_edge
  %44 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chip.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp61124.not = icmp eq i8 %45, 0
  br i1 %cmp61124.not, label %for.cond.preheader.do.end69_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end69_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %num.0125 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call63 = tail call i32 @i2c_mux_add_adapter(ptr noundef nonnull %call7, i32 noundef 0, i32 noundef %num.0125, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.inc, label %if.then65

if.then65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_mux_del_adapters(ptr noundef nonnull %call7) #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %num.0125, 1
  %46 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chip.0, align 1
  %conv60 = zext i8 %47 to i32
  %cmp61 = icmp ult i32 %inc, %conv60
  br i1 %cmp61, label %for.inc.for.body_crit_edge, label %for.inc.do.end69_crit_edge

for.inc.do.end69_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end69:                                         ; preds = %for.inc.do.end69_crit_edge, %for.cond.preheader.do.end69_crit_edge
  %num.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.end69_crit_edge ], [ %inc, %for.inc.do.end69_crit_edge ]
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %num.0.lcssa, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.then65, %ltc4306_gpio_init.exit.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.end36, %if.then24, %if.then16, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then16 ], [ %12, %if.then24 ], [ -19, %do.end36 ], [ %call63, %if.then65 ], [ 0, %do.end69 ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end38.cleanup_crit_edge ], [ %call18.i, %ltc4306_gpio_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_select_mux(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sub = sub i32 7, %chan
  %shl = shl nuw i32 1, %sub
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_deselect_mux(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 240, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc4306_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg)
  %cmp = icmp eq i32 %reg, 1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !63
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %sub = sub i32 7, %offset
  %5 = lshr i32 %4, %sub
  %6 = and i32 %5, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %sub = sub i32 7, %offset
  %shl = shl nuw i32 1, %sub
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 2, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %sub.i = sub i32 5, %offset
  %shl.i = shl nuw i32 1, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %sub = sub i32 7, %offset
  %shl = shl nuw i32 1, %sub
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 2, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !63
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %sub = sub i32 1, %offset
  %5 = lshr i32 %4, %sub
  %6 = and i32 %5, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc4306_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %sub = sub i32 5, %offset
  %shl = shl nuw i32 1, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4306_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 6, label %entry.sw.epilog_crit_edge
    i8 8, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = sub i32 4, %offset
  %.pre8 = shl nuw i32 1, %.pre
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 4, %offset
  %shl = shl nuw i32 1, %sub
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %shl4.pre-phi = phi i32 [ %.pre8, %entry.sw.epilog_crit_edge ], [ %shl, %sw.bb2 ]
  %val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %shl, %sw.bb2 ]
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 2, i32 noundef %shl4.pre-phi, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_i2c_mux_ltc4306__288_316_ltc4306_driver_init6, !1, !"__initcall__kmod_i2c_mux_ltc4306__288_316_ltc4306_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_ltc4306_driver_exit, !1, !"__exitcall_ltc4306_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 308, i32 11}
!12 = !{ptr @ltc4306_driver, !13, !"ltc4306_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 306, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 225, i32 12}
!16 = !{ptr @ltc4306_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 238, i32 17}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 241, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ltc4306_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ltc4306_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 247, i32 47}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 262, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ltc4306_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ltc4306_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 267, i32 11}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 271, i32 11}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 290, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ltc4306_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ltc4306_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @chips, !44, !"chips", i1 false, i1 false}
!44 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 53, i32 31}
!45 = !{ptr @ltc4306_regmap_config, !46, !"ltc4306_regmap_config", i1 false, i1 false}
!46 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 68, i32 35}
!47 = !{ptr @ltc4306_gpio_init.lock_key, !48, !"lock_key", i1 false, i1 false}
!48 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 175, i32 9}
!49 = !{ptr @ltc4306_gpio_init.request_key, !48, !"request_key", i1 false, i1 false}
!50 = !{ptr @ltc4306_of_match, !51, !"ltc4306_of_match", i1 false, i1 false}
!51 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 201, i32 34}
!52 = !{ptr @ltc4306_id, !53, !"ltc4306_id", i1 false, i1 false}
!53 = !{!"../drivers/i2c/muxes/i2c-mux-ltc4306.c", i32 194, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
