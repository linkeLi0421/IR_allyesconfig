; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-pca9685.c_pt.bc'
source_filename = "../drivers/pwm/pwm-pca9685.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pca9685 = type { %struct.pwm_chip, ptr, %struct.mutex, [1 x i32], %struct.gpio_chip, [1 x i32] }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_pca9685__289_674_pca9685_i2c_driver_init6 = internal global ptr @pca9685_i2c_driver_init, section ".initcall6.init", align 4
@pca9685_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pca9685_pwm_probe, ptr @pca9685_pwm_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pca9685_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca9685_pwm_pm, ptr null, ptr null }, ptr @pca9685_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca9685_i2c_driver_exit = internal global ptr @pca9685_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"pwm_pca9685.author=Steffen Trumtrar <s.trumtrar@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [47 x i8] c"pwm_pca9685.description=PWM driver for PCA9685\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"pwm_pca9685.file=drivers/pwm/pwm-pca9685\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"pwm_pca9685.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pca9685-pwm\00", [20 x i8] zeroinitializer }, align 32
@pca9685_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9685-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pca9685_pwm_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca9685_pwm_runtime_suspend, ptr @pca9685_pwm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@pca9685_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca9685\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pca9685_pwm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca9685_regmap_i2c_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pwm_pca9685:527:(&pca9685_regmap_i2c_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@pca9685_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 531, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize register map: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca9685_pwm_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/pwm/pwm-pca9685.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca9685_pwm_probe._entry_ptr = internal global ptr @pca9685_pwm_probe._entry, section ".printk_index", align 4
@pca9685_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pca->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"invert\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open-drain\00", [21 x i8] zeroinitializer }, align 32
@pca9685_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @pca9685_pwm_request, ptr @pca9685_pwm_free, ptr null, ptr @pca9685_pwm_apply, ptr @pca9685_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pca9685_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"regmap_read of register 0x%x failed: %pe\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pca9685_read_reg\00", [47 x i8] zeroinitializer }, align 32
@pca9685_read_reg._entry_ptr = internal global ptr @pca9685_read_reg._entry, section ".printk_index", align 4
@pca9685_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"regmap_write to register 0x%x failed: %pe\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca9685_write_reg\00", [46 x i8] zeroinitializer }, align 32
@pca9685_write_reg._entry_ptr = internal global ptr @pca9685_write_reg._entry, section ".printk_index", align 4
@__pca9685_pwm_apply._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 376, ptr @.str.5, ptr @.str.6 }, align 1
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pwm not changed: period out of bounds!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__pca9685_pwm_apply\00", [44 x i8] zeroinitializer }, align 32
@__pca9685_pwm_apply._entry_ptr = internal global ptr @__pca9685_pwm_apply._entry, section ".printk_index", align 4
@__pca9685_pwm_apply._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, align 1
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pwm not changed: periods of enabled pwms must match!\0A\00", [42 x i8] zeroinitializer }, align 32
@__pca9685_pwm_apply._entry_ptr.18 = internal global ptr @__pca9685_pwm_apply._entry.16, section ".printk_index", align 4
@pca9685_pwm_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca9685_pwm_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca9685_set_sleep_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"regmap_update_bits of register 0x%x failed: %pe\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pca9685_set_sleep_mode\00", [41 x i8] zeroinitializer }, align 32
@pca9685_set_sleep_mode._entry_ptr = internal global ptr @pca9685_set_sleep_mode._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"pca9685_i2c_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 662, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 664, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"pca9685_dt_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 650, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"pca9685_pwm_pm\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 657, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"pca9685_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 635, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"pca9685_regmap_i2c_config\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 509, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 527, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 530, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 537, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 543, i32 46 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 548, i32 46 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"pca9685_pwm_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 501, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 117, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 129, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 376, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 388, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 326, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [29 x i8] c"../drivers/pwm/pwm-pca9685.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 352, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_pca9685_i2c_driver_exit, ptr @__initcall__kmod_pwm_pca9685__289_674_pca9685_i2c_driver_init6, ptr @__pca9685_pwm_apply._entry, ptr @__pca9685_pwm_apply._entry.16, ptr @__pca9685_pwm_apply._entry_ptr, ptr @__pca9685_pwm_apply._entry_ptr.18, ptr @pca9685_i2c_driver_exit, ptr @pca9685_pwm_probe._entry, ptr @pca9685_pwm_probe._entry_ptr, ptr @pca9685_read_reg._entry, ptr @pca9685_read_reg._entry_ptr, ptr @pca9685_set_sleep_mode._entry, ptr @pca9685_set_sleep_mode._entry_ptr, ptr @pca9685_write_reg._entry, ptr @pca9685_write_reg._entry_ptr, ptr @pca9685_i2c_driver, ptr @.str, ptr @pca9685_dt_ids, ptr @pca9685_pwm_pm, ptr @pca9685_id, ptr @pca9685_pwm_probe._key, ptr @pca9685_regmap_i2c_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pca9685_pwm_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pca9685_pwm_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @pca9685_pwm_gpio_probe.lock_key, ptr @pca9685_pwm_gpio_probe.request_key, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_pwm_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_pwm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_regmap_i2c_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_pwm_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_pwm_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9685_set_sleep_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca9685_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca9685_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pca9685_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !78
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 488, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @pca9685_regmap_i2c_config, ptr noundef nonnull @pca9685_pwm_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %2) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @pca9685_pwm_probe.__key) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i101 = call i32 @regmap_read(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i, label %if.end15, label %pca9685_read_reg.exit

pca9685_read_reg.exit:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = inttoptr i32 %call.i101 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef nonnull %8) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call.i102 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and = and i32 %10, -17
  %masksel = select i1 %call.i102, i32 16, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %reg, align 4
  %call.i103 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %and23 = and i32 %12, -5
  %masksel140 = select i1 %call.i103, i32 0, i32 4
  %storemerge100 = or i32 %and23, %masksel140
  store i32 %storemerge100, ptr %reg, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i105 = call i32 @regmap_write(ptr noundef %16, i32 noundef 1, i32 noundef %storemerge100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end30, label %pca9685_write_reg.exit

pca9685_write_reg.exit:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %17 = inttoptr i32 %call.i105 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull %17) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i109 = call i32 @regmap_read(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %if.end30.pca9685_read_reg.exit112_crit_edge, label %do.end.i111

if.end30.pca9685_read_reg.exit112_crit_edge:      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_read_reg.exit112

do.end.i111:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %22 = inttoptr i32 %call.i109 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull %22) #9
  br label %pca9685_read_reg.exit112

pca9685_read_reg.exit112:                         ; preds = %do.end.i111, %if.end30.pca9685_read_reg.exit112_crit_edge
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %and32 = and i32 %24, -16
  store i32 %and32, ptr %reg, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i114 = call i32 @regmap_write(ptr noundef %28, i32 noundef 0, i32 noundef %and32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %pca9685_read_reg.exit112.pca9685_write_reg.exit117_crit_edge, label %do.end.i116

pca9685_read_reg.exit112.pca9685_write_reg.exit117_crit_edge: ; preds = %pca9685_read_reg.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit117

do.end.i116:                                      ; preds = %pca9685_read_reg.exit112
  call void @__sanitizer_cov_trace_pc() #8
  %29 = inttoptr i32 %call.i114 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull %29) #9
  br label %pca9685_write_reg.exit117

pca9685_write_reg.exit117:                        ; preds = %do.end.i116, %pca9685_read_reg.exit112.pca9685_write_reg.exit117_crit_edge
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i119 = call i32 @regmap_write(ptr noundef %33, i32 noundef 252, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %pca9685_write_reg.exit117.pca9685_write_reg.exit122_crit_edge, label %do.end.i121

pca9685_write_reg.exit117.pca9685_write_reg.exit122_crit_edge: ; preds = %pca9685_write_reg.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit122

do.end.i121:                                      ; preds = %pca9685_write_reg.exit117
  call void @__sanitizer_cov_trace_pc() #8
  %34 = inttoptr i32 %call.i119 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.12, i32 noundef 252, ptr noundef nonnull %34) #9
  br label %pca9685_write_reg.exit122

pca9685_write_reg.exit122:                        ; preds = %do.end.i121, %pca9685_write_reg.exit117.pca9685_write_reg.exit122_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i124 = call i32 @regmap_write(ptr noundef %38, i32 noundef 253, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i125 = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i125, label %pca9685_write_reg.exit122.pca9685_write_reg.exit127_crit_edge, label %do.end.i126

pca9685_write_reg.exit122.pca9685_write_reg.exit127_crit_edge: ; preds = %pca9685_write_reg.exit122
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit127

do.end.i126:                                      ; preds = %pca9685_write_reg.exit122
  call void @__sanitizer_cov_trace_pc() #8
  %39 = inttoptr i32 %call.i124 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.12, i32 noundef 253, ptr noundef nonnull %39) #9
  br label %pca9685_write_reg.exit127

pca9685_write_reg.exit127:                        ; preds = %do.end.i126, %pca9685_write_reg.exit122.pca9685_write_reg.exit127_crit_edge
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call.i129 = call i32 @regmap_write(ptr noundef %43, i32 noundef 250, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i130, label %pca9685_write_reg.exit127.pca9685_write_reg.exit132_crit_edge, label %do.end.i131

pca9685_write_reg.exit127.pca9685_write_reg.exit132_crit_edge: ; preds = %pca9685_write_reg.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit132

do.end.i131:                                      ; preds = %pca9685_write_reg.exit127
  call void @__sanitizer_cov_trace_pc() #8
  %44 = inttoptr i32 %call.i129 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.12, i32 noundef 250, ptr noundef nonnull %44) #9
  br label %pca9685_write_reg.exit132

pca9685_write_reg.exit132:                        ; preds = %do.end.i131, %pca9685_write_reg.exit127.pca9685_write_reg.exit132_crit_edge
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call.i134 = call i32 @regmap_write(ptr noundef %48, i32 noundef 251, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %pca9685_write_reg.exit132.pca9685_write_reg.exit137_crit_edge, label %do.end.i136

pca9685_write_reg.exit132.pca9685_write_reg.exit137_crit_edge: ; preds = %pca9685_write_reg.exit132
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit137

do.end.i136:                                      ; preds = %pca9685_write_reg.exit132
  call void @__sanitizer_cov_trace_pc() #8
  %49 = inttoptr i32 %call.i134 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.12, i32 noundef 251, ptr noundef nonnull %49) #9
  br label %pca9685_write_reg.exit137

pca9685_write_reg.exit137:                        ; preds = %do.end.i136, %pca9685_write_reg.exit132.pca9685_write_reg.exit137_crit_edge
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pca9685_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %51 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 17, ptr %npwm, align 4
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev, ptr %call.i, align 4
  %call43 = call i32 @pwmchip_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %pca9685_write_reg.exit137.cleanup_crit_edge, label %if.end45

pca9685_write_reg.exit137.cleanup_crit_edge:      ; preds = %pca9685_write_reg.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %pca9685_write_reg.exit137
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end45.pca9685_pwm_gpio_probe.exit_crit_edge

if.end45.pca9685_pwm_gpio_probe.exit_crit_edge:   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_gpio_probe.exit

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %pca9685_pwm_gpio_probe.exit

pca9685_pwm_gpio_probe.exit:                      ; preds = %if.end.i.i, %if.end45.pca9685_pwm_gpio_probe.exit_crit_edge
  %retval.0.i.i = phi ptr [ %58, %if.end.i.i ], [ %56, %if.end45.pca9685_pwm_gpio_probe.exit_crit_edge ]
  %gpio.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i.i, ptr %gpio.i, align 4
  %parent.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 2
  %60 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %parent.i, align 4
  %request.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 5
  %61 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pca9685_pwm_gpio_request, ptr %request.i, align 4
  %free.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 6
  %62 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pca9685_pwm_gpio_free, ptr %free.i, align 4
  %get_direction.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 7
  %63 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @pca9685_pwm_gpio_get_direction, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 8
  %64 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pca9685_pwm_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 9
  %65 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @pca9685_pwm_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 10
  %66 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @pca9685_pwm_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 12
  %67 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @pca9685_pwm_gpio_set, ptr %set.i, align 4
  %base.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 19
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %base.i, align 4
  %ngpio.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 20
  %69 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 16, ptr %ngpio.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.pca9685, ptr %call.i, i32 0, i32 4, i32 23
  %70 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %can_sleep.i, align 4
  %call14.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %54, ptr noundef %gpio.i, ptr noundef nonnull %call.i, ptr noundef nonnull @pca9685_pwm_gpio_probe.lock_key, ptr noundef nonnull @pca9685_pwm_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp47 = icmp slt i32 %call14.i, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %pca9685_pwm_gpio_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @pwmchip_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end50:                                         ; preds = %pca9685_pwm_gpio_probe.exit
  call void @pm_runtime_enable(ptr noundef %dev) #6
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 15
  %71 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i138 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i138, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pca9685_set_sleep_mode(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %call.i139 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  br label %cleanup

if.else57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pca9685_set_sleep_mode(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %if.then54, %if.then48, %pca9685_write_reg.exit137.cleanup_crit_edge, %pca9685_write_reg.exit, %pca9685_read_reg.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call14.i, %if.then48 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i101, %pca9685_read_reg.exit ], [ %call.i105, %pca9685_write_reg.exit ], [ %call43, %pca9685_write_reg.exit137.cleanup_crit_edge ], [ 0, %if.else57 ], [ 0, %if.then54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #6
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.pca9685, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = inttoptr i32 %call.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull %7) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pca9685_set_sleep_mode(ptr nocapture noundef readonly %pca, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pca, align 4
  %regmap = getelementptr inbounds %struct.pca9685, ptr %pca, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %cond = select i1 %enable, i32 16, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 16, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = inttoptr i32 %call.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull %4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 107374000) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_request(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %lock.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp.i = icmp sgt i32 %1, 15
  %pwms_inuse.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %pwms_inuse.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwms_inuse.i, align 4
  %and3.i.i = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge, label %if.then.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge

if.then.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit.thread

if.then.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit

if.else.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %pwms_inuse.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pwms_inuse.i, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge, label %if.else.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge

if.else.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit.thread

if.else.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit

pca9685_pwm_test_and_set_inuse.exit.thread:       ; preds = %if.else.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge, %if.then.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

pca9685_pwm_test_and_set_inuse.exit:              ; preds = %if.else.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge, %if.then.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge
  %call10.i = tail call i32 @_test_and_set_bit(i32 noundef %1, ptr noundef %pwms_inuse.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.i.not = icmp eq i32 %call10.i, 0
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br i1 %tobool11.i.not, label %if.end, label %pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge

pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge: ; preds = %pca9685_pwm_test_and_set_inuse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pca9685_pwm_test_and_set_inuse.exit
  %7 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp = icmp ult i32 %8, 16
  br i1 %cmp, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %9 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwpwm, align 8
  %pwms_enabled = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %10, ptr noundef %pwms_enabled) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge, %pca9685_pwm_test_and_set_inuse.exit.thread
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -16, %pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge ], [ -16, %pca9685_pwm_test_and_set_inuse.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca9685_pwm_free(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp1.i = icmp sgt i32 %1, 15
  %mul.i = shl i32 %1, 2
  %add.i = add i32 %mul.i, 9
  %cond.i = select i1 %cmp1.i, i32 253, i32 %add.i
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %regmap.i.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %cond.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.pca9685_pwm_set_duty.exit_crit_edge, label %do.end.i.i

entry.pca9685_pwm_set_duty.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_set_duty.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = inttoptr i32 %call.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %cond.i, ptr noundef nonnull %6) #9
  br label %pca9685_pwm_set_duty.exit

pca9685_pwm_set_duty.exit:                        ; preds = %do.end.i.i, %entry.pca9685_pwm_set_duty.exit_crit_edge
  %7 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwpwm, align 8
  %pwms_enabled = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %pwms_enabled) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #6
  %11 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm, align 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %pwms_inuse.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %12, ptr noundef %pwms_inuse.i) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val.i, align 4
  %polarity.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %polarity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %if.end187.i, label %entry.__pca9685_pwm_apply.exit_crit_edge

entry.__pca9685_pwm_apply.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__pca9685_pwm_apply.exit

if.end187.i:                                      ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %state, align 8
  %mul.i = mul i64 %4, 25
  %add.i = add i64 %mul.i, 2048000
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add.i, i32 0) #10, !srcloc !79
  %asmresult.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #10, !srcloc !80
  %asmresult10.i.i = extractvalue { i64, i32 } %6, 0
  %_tmp.0.i = lshr i64 %asmresult10.i.i, 21
  %sub190.i = add nsw i64 %_tmp.0.i, -1
  %7 = add nsw i64 %_tmp.0.i, -257
  call void @__sanitizer_cov_trace_const_cmp8(i64 -253, i64 %7)
  %8 = icmp ult i64 %7, -253
  br i1 %8, label %do.end.i, label %if.end196.i

do.end.i:                                         ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14) #9
  br label %__pca9685_pwm_apply.exit

if.end196.i:                                      ; preds = %if.end187.i
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %11 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool197.not.i = icmp eq i8 %12, 0
  br i1 %tobool197.not.i, label %if.then198.i, label %if.end199.i

if.then198.i:                                     ; preds = %if.end196.i
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %13 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwpwm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %14)
  %cmp1.i.i = icmp sgt i32 %14, 15
  %mul.i.i = shl i32 %14, 2
  %add.i.i = add i32 %mul.i.i, 9
  %cond.i.i = select i1 %cmp1.i.i, i32 253, i32 %add.i.i
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %regmap.i.i.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %cond.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then198.i.if.then_crit_edge, label %do.end.i.i.i

if.then198.i.if.then_crit_edge:                   ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end.i.i.i:                                     ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = inttoptr i32 %call.i.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef %cond.i.i, ptr noundef nonnull %19) #9
  br label %if.then

if.end199.i:                                      ; preds = %if.end196.i
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %regmap.i.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 254, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end199.i.pca9685_read_reg.exit.i_crit_edge, label %do.end.i.i

if.end199.i.pca9685_read_reg.exit.i_crit_edge:    ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_read_reg.exit.i

do.end.i.i:                                       ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = inttoptr i32 %call.i.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef 254, ptr noundef nonnull %24) #9
  br label %pca9685_read_reg.exit.i

pca9685_read_reg.exit.i:                          ; preds = %do.end.i.i, %if.end199.i.pca9685_read_reg.exit.i_crit_edge
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  %conv201.i = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub190.i, i64 %conv201.i)
  %cmp202.not.i = icmp eq i64 %sub190.i, %conv201.i
  br i1 %cmp202.not.i, label %pca9685_read_reg.exit.i.if.end215.i_crit_edge, label %if.then204.i

pca9685_read_reg.exit.i.if.end215.i_crit_edge:    ; preds = %pca9685_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215.i

if.then204.i:                                     ; preds = %pca9685_read_reg.exit.i
  %hwpwm205.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %27 = ptrtoint ptr %hwpwm205.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwpwm205.i, align 8
  %pwms_enabled.i.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 3
  %29 = ptrtoint ptr %pwms_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pwms_enabled.i.i, align 4
  %and3.i11.i.i = and i32 %30, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i11.i.i)
  %tobool.not.i.i630.i = icmp eq i32 %and3.i11.i.i, 0
  br i1 %tobool.not.i.i630.i, label %if.then204.i.if.end212.i_crit_edge, label %cond.false.i.i.i.i

if.then204.i.if.end212.i_crit_edge:               ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212.i

cond.false.i.i.i.i:                               ; preds = %if.then204.i
  %call.i.i.i.i.i = call i32 @__sw_hweight32(i32 noundef %and3.i11.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i.i.i, 1
  br i1 %cmp.i.i, label %cond.false.i.i.i.i.do.end210.i_crit_edge, label %pca9685_prescaler_can_change.exit.i

cond.false.i.i.i.i.do.end210.i_crit_edge:         ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end210.i

pca9685_prescaler_can_change.exit.i:              ; preds = %cond.false.i.i.i.i
  %div3.i.i.i = lshr i32 %28, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %pwms_enabled.i.i, i32 %div3.i.i.i
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %28, 31
  %33 = shl nuw i32 1, %and.i.i.i
  %34 = and i32 %32, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %pca9685_prescaler_can_change.exit.i.do.end210.i_crit_edge, label %pca9685_prescaler_can_change.exit.i.if.end212.i_crit_edge

pca9685_prescaler_can_change.exit.i.if.end212.i_crit_edge: ; preds = %pca9685_prescaler_can_change.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212.i

pca9685_prescaler_can_change.exit.i.do.end210.i_crit_edge: ; preds = %pca9685_prescaler_can_change.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end210.i

do.end210.i:                                      ; preds = %pca9685_prescaler_can_change.exit.i.do.end210.i_crit_edge, %cond.false.i.i.i.i.do.end210.i_crit_edge
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.17) #9
  br label %__pca9685_pwm_apply.exit

if.end212.i:                                      ; preds = %pca9685_prescaler_can_change.exit.i.if.end212.i_crit_edge, %if.then204.i.if.end212.i_crit_edge
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %39 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i632.i = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 0, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i632.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i632.i, 0
  br i1 %tobool2.not.i.i, label %if.end212.i.pca9685_set_sleep_mode.exit.i_crit_edge, label %do.end.i633.i

if.end212.i.pca9685_set_sleep_mode.exit.i_crit_edge: ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_set_sleep_mode.exit.i

do.end.i633.i:                                    ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = inttoptr i32 %call.i.i632.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull %41) #9
  br label %pca9685_set_sleep_mode.exit.i

pca9685_set_sleep_mode.exit.i:                    ; preds = %do.end.i633.i, %if.end212.i.pca9685_set_sleep_mode.exit.i_crit_edge
  %conv213.i = trunc i64 %sub190.i to i32
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 4
  %44 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i, align 4
  %call.i636.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 254, i32 noundef %conv213.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i636.i)
  %tobool.not.i637.i = icmp eq i32 %call.i636.i, 0
  br i1 %tobool.not.i637.i, label %pca9685_set_sleep_mode.exit.i.pca9685_write_reg.exit.i_crit_edge, label %do.end.i638.i

pca9685_set_sleep_mode.exit.i.pca9685_write_reg.exit.i_crit_edge: ; preds = %pca9685_set_sleep_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit.i

do.end.i638.i:                                    ; preds = %pca9685_set_sleep_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = inttoptr i32 %call.i636.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.12, i32 noundef 254, ptr noundef nonnull %46) #9
  br label %pca9685_write_reg.exit.i

pca9685_write_reg.exit.i:                         ; preds = %do.end.i638.i, %pca9685_set_sleep_mode.exit.i.pca9685_write_reg.exit.i_crit_edge
  %47 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip, align 4
  %49 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i641.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i641.i)
  %tobool2.not.i642.i = icmp eq i32 %call.i.i641.i, 0
  br i1 %tobool2.not.i642.i, label %if.end.i644.i, label %do.end.i643.i

do.end.i643.i:                                    ; preds = %pca9685_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = inttoptr i32 %call.i.i641.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull %51) #9
  br label %if.end215.i

if.end.i644.i:                                    ; preds = %pca9685_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 107374000) #6
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.end.i644.i, %do.end.i643.i, %pca9685_read_reg.exit.i.if.end215.i_crit_edge
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %53 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %duty_cycle.i, align 8
  %mul216.i = shl i64 %54, 12
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %state, align 8
  %add219.i = add i64 %56, -1
  %sub220.i = add i64 %add219.i, %mul216.i
  %conv223.i = trunc i64 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub220.i)
  %cmp424.i = icmp ult i64 %sub220.i, 4294967296
  br i1 %cmp424.i, label %if.then432.i, label %if.else438.i, !prof !82

if.then432.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv433.i = trunc i64 %sub220.i to i32
  %div436.i = udiv i32 %conv433.i, %conv223.i
  br label %if.end442.i

if.else438.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv223.i, i64 %sub220.i) #10, !srcloc !83
  %asmresult1.i.i = extractvalue { i64, i64 } %57, 1
  %extract.t679.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end442.i

if.end442.i:                                      ; preds = %if.else438.i, %if.then432.i
  %_tmp217.0.off0.i = phi i32 [ %div436.i, %if.then432.i ], [ %extract.t679.i, %if.else438.i ]
  %hwpwm445.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %58 = ptrtoint ptr %hwpwm445.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwpwm445.i, align 8
  call fastcc void @pca9685_pwm_set_duty(ptr noundef %chip, i32 noundef %59, i32 noundef %_tmp217.0.off0.i) #6
  br label %if.then

__pca9685_pwm_apply.exit:                         ; preds = %do.end210.i, %do.end.i, %entry.__pca9685_pwm_apply.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -16, %do.end210.i ], [ -22, %entry.__pca9685_pwm_apply.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end6

if.then:                                          ; preds = %if.end442.i, %do.end.i.i.i, %if.then198.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %60 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %enabled.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not = icmp eq i8 %61, 0
  %hwpwm3 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %62 = ptrtoint ptr %hwpwm3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hwpwm3, align 8
  %pwms_enabled4 = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %63, ptr noundef %pwms_enabled4) #6
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef %63, ptr noundef %pwms_enabled4) #6
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2, %__pca9685_pwm_apply.exit
  %retval.0.i18 = phi i32 [ 0, %if.then2 ], [ 0, %if.else ], [ %retval.0.i, %__pca9685_pwm_apply.exit ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %retval.0.i18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca9685_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %regmap.i = getelementptr inbounds %struct.pca9685, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 254, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.pca9685_read_reg.exit_crit_edge, label %do.end.i

entry.pca9685_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_read_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %call.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 254, ptr noundef nonnull %5) #9
  br label %pca9685_read_reg.exit

pca9685_read_reg.exit:                            ; preds = %do.end.i, %entry.pca9685_read_reg.exit_crit_edge
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %8 = mul i32 %7, 163840
  %mul = add i32 %8, 163840
  %conv = zext i32 %mul to i64
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %state, align 8
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %10 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %polarity, align 8
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %11 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp = icmp ugt i32 %12, 15
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  br i1 %cmp, label %if.then, label %if.end194

if.then:                                          ; preds = %pca9685_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

if.end194:                                        ; preds = %pca9685_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %enabled, align 4
  %15 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwpwm, align 8
  %call5 = call fastcc i32 @pca9685_pwm_get_duty(ptr noundef %chip, i32 noundef %16)
  %conv6 = zext i32 %call5 to i64
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %state, align 8
  %mul8 = mul i64 %18, %conv6
  %shr = lshr i64 %mul8, 12
  br label %cleanup

cleanup:                                          ; preds = %if.end194, %if.then
  %shr.sink = phi i64 [ 0, %if.then ], [ %shr, %if.end194 ]
  %19 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shr.sink, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pca9685_pwm_set_duty(ptr nocapture noundef readonly %pca, i32 noundef %channel, i32 noundef %duty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %pca, i32 0, i32 7
  %0 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duty)
  %cmp = icmp eq i32 %duty, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp1 = icmp sgt i32 %channel, 15
  %mul = shl i32 %channel, 2
  %add = add i32 %mul, 9
  %cond = select i1 %cmp1, i32 253, i32 %add
  %2 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pca, align 4
  %regmap.i = getelementptr inbounds %struct.pca9685, ptr %pca, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %cond, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %do.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = inttoptr i32 %call.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %cond, ptr noundef nonnull %6) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %duty)
  %cmp2 = icmp ugt i32 %duty, 4095
  br i1 %cmp2, label %if.then3, label %if.end20

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp4 = icmp sgt i32 %channel, 15
  %mul7 = shl i32 %channel, 2
  %add8 = add i32 %mul7, 7
  %cond10 = select i1 %cmp4, i32 251, i32 %add8
  %7 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pca, align 4
  %regmap.i93 = getelementptr inbounds %struct.pca9685, ptr %pca, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i93 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i93, align 4
  %call.i94 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %cond10, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i95, label %if.then3.pca9685_write_reg.exit97_crit_edge, label %do.end.i96

if.then3.pca9685_write_reg.exit97_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit97

do.end.i96:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %11 = inttoptr i32 %call.i94 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %cond10, ptr noundef nonnull %11) #9
  br label %pca9685_write_reg.exit97

pca9685_write_reg.exit97:                         ; preds = %do.end.i96, %if.then3.pca9685_write_reg.exit97_crit_edge
  %add16 = add i32 %mul7, 9
  %cond18 = select i1 %cmp4, i32 253, i32 %add16
  %12 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pca, align 4
  %14 = ptrtoint ptr %regmap.i93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i93, align 4
  %call.i99 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %cond18, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %pca9685_write_reg.exit97.cleanup_crit_edge, label %do.end.i101

pca9685_write_reg.exit97.cleanup_crit_edge:       ; preds = %pca9685_write_reg.exit97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i101:                                      ; preds = %pca9685_write_reg.exit97
  call void @__sanitizer_cov_trace_pc() #8
  %16 = inttoptr i32 %call.i99 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %cond18, ptr noundef nonnull %16) #9
  br label %cleanup

if.end20:                                         ; preds = %if.else
  %usage_power = getelementptr %struct.pwm_device, ptr %1, i32 %channel, i32 7, i32 4
  %17 = ptrtoint ptr %usage_power to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %usage_power, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %channel)
  %cmp21 = icmp slt i32 %channel, 16
  %or.cond = and i1 %cmp21, %tobool.not
  %mul23 = shl i32 %channel, 12
  %div = sdiv i32 %mul23, 16
  %on.0 = select i1 %or.cond, i32 %div, i32 0
  %add26 = add nsw i32 %on.0, %duty
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp27 = icmp sgt i32 %channel, 15
  %mul30 = shl i32 %channel, 2
  %add31 = add i32 %mul30, 6
  %cond33 = select i1 %cmp27, i32 250, i32 %add31
  %and = and i32 %on.0, 255
  %19 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pca, align 4
  %regmap.i103 = getelementptr inbounds %struct.pca9685, ptr %pca, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i103 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i103, align 4
  %call.i104 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %cond33, i32 noundef %and) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %if.end20.pca9685_write_reg.exit107_crit_edge, label %do.end.i106

if.end20.pca9685_write_reg.exit107_crit_edge:     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit107

do.end.i106:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %23 = inttoptr i32 %call.i104 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef %cond33, ptr noundef nonnull %23) #9
  br label %pca9685_write_reg.exit107

pca9685_write_reg.exit107:                        ; preds = %do.end.i106, %if.end20.pca9685_write_reg.exit107_crit_edge
  %add39 = add i32 %mul30, 7
  %cond41 = select i1 %cmp27, i32 251, i32 %add39
  %shr = lshr i32 %on.0, 8
  %and42 = and i32 %shr, 15
  %24 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pca, align 4
  %26 = ptrtoint ptr %regmap.i103 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i103, align 4
  %call.i109 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %cond41, i32 noundef %and42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %pca9685_write_reg.exit107.pca9685_write_reg.exit112_crit_edge, label %do.end.i111

pca9685_write_reg.exit107.pca9685_write_reg.exit112_crit_edge: ; preds = %pca9685_write_reg.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit112

do.end.i111:                                      ; preds = %pca9685_write_reg.exit107
  call void @__sanitizer_cov_trace_pc() #8
  %28 = inttoptr i32 %call.i109 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef %cond41, ptr noundef nonnull %28) #9
  br label %pca9685_write_reg.exit112

pca9685_write_reg.exit112:                        ; preds = %do.end.i111, %pca9685_write_reg.exit107.pca9685_write_reg.exit112_crit_edge
  %add48 = add i32 %mul30, 8
  %cond50 = select i1 %cmp27, i32 252, i32 %add48
  %and51 = and i32 %add26, 255
  %29 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pca, align 4
  %31 = ptrtoint ptr %regmap.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i103, align 4
  %call.i114 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %cond50, i32 noundef %and51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %pca9685_write_reg.exit112.pca9685_write_reg.exit117_crit_edge, label %do.end.i116

pca9685_write_reg.exit112.pca9685_write_reg.exit117_crit_edge: ; preds = %pca9685_write_reg.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_write_reg.exit117

do.end.i116:                                      ; preds = %pca9685_write_reg.exit112
  call void @__sanitizer_cov_trace_pc() #8
  %33 = inttoptr i32 %call.i114 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %cond50, ptr noundef nonnull %33) #9
  br label %pca9685_write_reg.exit117

pca9685_write_reg.exit117:                        ; preds = %do.end.i116, %pca9685_write_reg.exit112.pca9685_write_reg.exit117_crit_edge
  %add57 = add i32 %mul30, 9
  %cond59 = select i1 %cmp27, i32 253, i32 %add57
  %rem = lshr i32 %add26, 8
  %shr60 = and i32 %rem, 15
  %34 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pca, align 4
  %36 = ptrtoint ptr %regmap.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i103, align 4
  %call.i119 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %cond59, i32 noundef %shr60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %pca9685_write_reg.exit117.cleanup_crit_edge, label %do.end.i121

pca9685_write_reg.exit117.cleanup_crit_edge:      ; preds = %pca9685_write_reg.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i121:                                      ; preds = %pca9685_write_reg.exit117
  call void @__sanitizer_cov_trace_pc() #8
  %38 = inttoptr i32 %call.i119 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.12, i32 noundef %cond59, ptr noundef nonnull %38) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i121, %pca9685_write_reg.exit117.cleanup_crit_edge, %do.end.i101, %pca9685_write_reg.exit97.cleanup_crit_edge, %do.end.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pca9685_pwm_get_duty(ptr nocapture noundef readonly %pca, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  %off = alloca i32, align 4
  %on = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %pca, i32 0, i32 7
  %0 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwms, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #6
  %2 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %off, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %on) #6
  %3 = ptrtoint ptr %on to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %on, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp = icmp sgt i32 %channel, 15
  br i1 %cmp, label %do.end, label %if.end21, !prof !84

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 179, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %entry
  %mul = shl i32 %channel, 2
  %add = add i32 %mul, 9
  %5 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pca, align 4
  %regmap.i = getelementptr inbounds %struct.pca9685, ptr %pca, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %off) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end21.pca9685_read_reg.exit_crit_edge, label %do.end.i

if.end21.pca9685_read_reg.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_read_reg.exit

do.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %9 = inttoptr i32 %call.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %add, ptr noundef nonnull %9) #9
  br label %pca9685_read_reg.exit

pca9685_read_reg.exit:                            ; preds = %do.end.i, %if.end21.pca9685_read_reg.exit_crit_edge
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %off, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end24, label %pca9685_read_reg.exit.cleanup_crit_edge

pca9685_read_reg.exit.cleanup_crit_edge:          ; preds = %pca9685_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %pca9685_read_reg.exit
  %add26 = add i32 %mul, 7
  %12 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pca, align 4
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i65 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add26, ptr noundef nonnull %on) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %if.end24.pca9685_read_reg.exit68_crit_edge, label %do.end.i67

if.end24.pca9685_read_reg.exit68_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_read_reg.exit68

do.end.i67:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %16 = inttoptr i32 %call.i65 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %add26, ptr noundef nonnull %16) #9
  br label %pca9685_read_reg.exit68

pca9685_read_reg.exit68:                          ; preds = %do.end.i67, %if.end24.pca9685_read_reg.exit68_crit_edge
  %17 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %on, align 4
  %and28 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %pca9685_read_reg.exit68.cleanup_crit_edge

pca9685_read_reg.exit68.cleanup_crit_edge:        ; preds = %pca9685_read_reg.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %pca9685_read_reg.exit68
  %add33 = add i32 %mul, 8
  %19 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pca, align 4
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i70 = call i32 @regmap_read(ptr noundef %22, i32 noundef %add33, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end31.pca9685_read_reg.exit73_crit_edge, label %do.end.i72

if.end31.pca9685_read_reg.exit73_crit_edge:       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_read_reg.exit73

do.end.i72:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %23 = inttoptr i32 %call.i70 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.10, i32 noundef %add33, ptr noundef nonnull %23) #9
  br label %pca9685_read_reg.exit73

pca9685_read_reg.exit73:                          ; preds = %do.end.i72, %if.end31.pca9685_read_reg.exit73_crit_edge
  %24 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %off, align 4
  %and35 = shl i32 %25, 8
  %shl = and i32 %and35, 3840
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and36 = and i32 %27, 255
  %or = or i32 %shl, %and36
  store i32 %or, ptr %off, align 4
  %usage_power = getelementptr %struct.pwm_device, ptr %1, i32 %channel, i32 7, i32 4
  %28 = ptrtoint ptr %usage_power to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %usage_power, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool37.not = icmp eq i8 %29, 0
  br i1 %tobool37.not, label %pca9685_read_reg.exit73.cleanup_crit_edge, label %if.end39

pca9685_read_reg.exit73.cleanup_crit_edge:        ; preds = %pca9685_read_reg.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %pca9685_read_reg.exit73
  %add41 = add i32 %mul, 6
  %30 = ptrtoint ptr %pca to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pca, align 4
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call.i75 = call i32 @regmap_read(ptr noundef %33, i32 noundef %add41, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end39.if.end45_crit_edge, label %if.then44

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %34 = inttoptr i32 %call.i75 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, i32 noundef %add41, ptr noundef nonnull %34) #9
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end39.if.end45_crit_edge
  %36 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %on, align 4
  %and46 = shl i32 %37, 8
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %and48 = and i32 %39, 255
  %or49 = or i32 %and46, %and48
  %40 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %off, align 4
  %sub = sub i32 %41, %or49
  %and50 = and i32 %sub, 4095
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %pca9685_read_reg.exit73.cleanup_crit_edge, %pca9685_read_reg.exit68.cleanup_crit_edge, %pca9685_read_reg.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %and50, %if.end45 ], [ 0, %pca9685_read_reg.exit.cleanup_crit_edge ], [ 4096, %pca9685_read_reg.exit68.cleanup_crit_edge ], [ %or, %pca9685_read_reg.exit73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %on) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_gpio_request(ptr noundef %gpio, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %lock.i = getelementptr inbounds %struct.pca9685, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp.i = icmp sgt i32 %offset, 15
  %pwms_inuse.i = getelementptr inbounds %struct.pca9685, ptr %call, i32 0, i32 5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %pwms_inuse.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pwms_inuse.i, align 4
  %and3.i.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge, label %if.then.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge

if.then.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit.thread

if.then.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit

if.else.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %pwms_inuse.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pwms_inuse.i, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.else.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge, label %if.else.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge

if.else.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit.thread

if.else.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_test_and_set_inuse.exit

pca9685_pwm_test_and_set_inuse.exit.thread:       ; preds = %if.else.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge, %if.then.i.pca9685_pwm_test_and_set_inuse.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

pca9685_pwm_test_and_set_inuse.exit:              ; preds = %if.else.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge, %if.then.i.pca9685_pwm_test_and_set_inuse.exit_crit_edge
  %call10.i = tail call i32 @_test_and_set_bit(i32 noundef %offset, ptr noundef %pwms_inuse.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.i.not = icmp eq i32 %call10.i, 0
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br i1 %tobool11.i.not, label %if.end, label %pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge

pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge: ; preds = %pca9685_pwm_test_and_set_inuse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pca9685_pwm_test_and_set_inuse.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge, %pca9685_pwm_test_and_set_inuse.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %pca9685_pwm_test_and_set_inuse.exit.cleanup_crit_edge ], [ -16, %pca9685_pwm_test_and_set_inuse.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca9685_pwm_gpio_free(ptr noundef %gpio, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp1.i = icmp sgt i32 %offset, 15
  %mul.i = shl i32 %offset, 2
  %add.i = add i32 %mul.i, 9
  %cond.i = select i1 %cmp1.i, i32 253, i32 %add.i
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap.i.i = getelementptr inbounds %struct.pca9685, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %cond.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.pca9685_pwm_set_duty.exit_crit_edge, label %do.end.i.i

entry.pca9685_pwm_set_duty.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_pwm_set_duty.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = inttoptr i32 %call.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %cond.i, ptr noundef nonnull %4) #9
  br label %pca9685_pwm_set_duty.exit

pca9685_pwm_set_duty.exit:                        ; preds = %do.end.i.i, %entry.pca9685_pwm_set_duty.exit_crit_edge
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #6
  %lock.i = getelementptr inbounds %struct.pca9685, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %pwms_inuse.i = getelementptr inbounds %struct.pca9685, ptr %call, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %offset, ptr noundef %pwms_inuse.i) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pca9685_pwm_gpio_get_direction(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pca9685_pwm_gpio_direction_input(ptr nocapture noundef readnone %gpio, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_gpio_direction_output(ptr noundef %gpio, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 4096
  tail call fastcc void @pca9685_pwm_set_duty(ptr noundef %call.i, i32 noundef %offset, i32 noundef %cond.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_gpio_get(ptr noundef %gpio, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %call1 = tail call fastcc i32 @pca9685_pwm_get_duty(ptr noundef %call, i32 noundef %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca9685_pwm_gpio_set(ptr noundef %gpio, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 0, i32 4096
  tail call fastcc void @pca9685_pwm_set_duty(ptr noundef %call, i32 noundef %offset, i32 noundef %cond)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.pca9685, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %entry.pca9685_set_sleep_mode.exit_crit_edge, label %do.end.i

entry.pca9685_set_sleep_mode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pca9685_set_sleep_mode.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = inttoptr i32 %call.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull %6) #9
  br label %pca9685_set_sleep_mode.exit

pca9685_set_sleep_mode.exit:                      ; preds = %do.end.i, %entry.pca9685_set_sleep_mode.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9685_pwm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.pca9685, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = inttoptr i32 %call.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull %6) #9
  br label %pca9685_set_sleep_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 107374000) #6
  br label %pca9685_set_sleep_mode.exit

pca9685_set_sleep_mode.exit:                      ; preds = %if.end.i, %do.end.i
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_pwm_pca9685__289_674_pca9685_i2c_driver_init6, !1, !"__initcall__kmod_pwm_pca9685__289_674_pca9685_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-pca9685.c", i32 674, i32 1}
!2 = !{ptr @__exitcall_pca9685_i2c_driver_exit, !1, !"__exitcall_pca9685_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-pca9685.c", i32 676, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-pca9685.c", i32 677, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-pca9685.c", i32 678, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-pca9685.c", i32 664, i32 11}
!12 = !{ptr @pca9685_i2c_driver, !13, !"pca9685_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-pca9685.c", i32 662, i32 26}
!14 = !{ptr @pca9685_pwm_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-pca9685.c", i32 527, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pwm/pwm-pca9685.c", i32 530, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pca9685_pwm_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pca9685_pwm_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @pca9685_pwm_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/pwm/pwm-pca9685.c", i32 537, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-pca9685.c", i32 543, i32 46}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-pca9685.c", i32 548, i32 46}
!32 = !{ptr @pca9685_regmap_i2c_config, !33, !"pca9685_regmap_i2c_config", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-pca9685.c", i32 509, i32 35}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-pca9685.c", i32 117, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pca9685_read_reg._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pca9685_read_reg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pwm/pwm-pca9685.c", i32 129, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pca9685_write_reg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @pca9685_write_reg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @pca9685_pwm_ops, !45, !"pca9685_pwm_ops", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-pca9685.c", i32 501, i32 29}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pwm/pwm-pca9685.c", i32 376, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__pca9685_pwm_apply._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @__pca9685_pwm_apply._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-pca9685.c", i32 388, i32 4}
!53 = !{ptr @__pca9685_pwm_apply._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @__pca9685_pwm_apply._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @pca9685_pwm_gpio_probe.lock_key, !56, !"lock_key", i1 false, i1 false}
!56 = !{!"../drivers/pwm/pwm-pca9685.c", i32 326, i32 9}
!57 = !{ptr @pca9685_pwm_gpio_probe.request_key, !56, !"request_key", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pwm/pwm-pca9685.c", i32 352, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pca9685_set_sleep_mode._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @pca9685_set_sleep_mode._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @pca9685_dt_ids, !64, !"pca9685_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/pwm/pwm-pca9685.c", i32 650, i32 34}
!65 = !{ptr @pca9685_pwm_pm, !66, !"pca9685_pwm_pm", i1 false, i1 false}
!66 = !{!"../drivers/pwm/pwm-pca9685.c", i32 657, i32 32}
!67 = !{ptr @pca9685_id, !68, !"pca9685_id", i1 false, i1 false}
!68 = !{!"../drivers/pwm/pwm-pca9685.c", i32 635, i32 35}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i64 1503794, i64 1503821, i64 1503843, i64 1503871}
!80 = !{i64 1504202, i64 1504229, i64 1504262, i64 1504283, i64 1504310, i64 1504336}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148989338, i64 2148989618, i64 2148989952, i64 2148990286}
!84 = !{!"branch_weights", i32 1, i32 2000}
