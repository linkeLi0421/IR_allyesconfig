; ModuleID = '/llk/IR_all_yes/drivers/mfd/rohm-bd71828.c_pt.bc'
source_filename = "../drivers/mfd/rohm-bd71828.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.gpio_keys_button = type { i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.gpio_keys_platform_data = type { ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq_sub_irq_map = type { i32, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.regmap_irq_chip = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i16, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_rohm_bd71828__289_574_bd71828_drv_init6 = internal global ptr @bd71828_drv_init, section ".initcall6.init", align 4
@bd71828_drv = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @bd71828_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bd71828_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bd71828_drv_exit = internal global ptr @bd71828_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [72 x i8] c"rohm_bd71828.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [65 x i8] c"rohm_bd71828.description=ROHM BD71828 Power Management IC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"rohm_bd71828.file=drivers/mfd/rohm-bd71828\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"rohm_bd71828.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rohm-bd71828\00", [19 x i8] zeroinitializer }, align 32
@bd71828_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,bd71828\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,bd71815\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71828_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/rohm-bd71828.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry_ptr = internal global ptr @bd71828_i2c_probe._entry, section ".printk_index", align 4
@bd71828_mfd_cells = internal global { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.27, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @bd71828_rtc_irqs, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.31, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @bd71828_powerkey_data, i32 28, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@bd71828_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 237, ptr null, ptr null, ptr @bd71828_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bd71815_mfd_cells = internal global { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 47, ptr @bd71815_power_irqs, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @bd71815_rtc_irqs, i8 0, i8 0, ptr null, i32 0 }], [104 x i8] zeroinitializer }, align 32
@bd71815_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 254, ptr null, ptr null, ptr @bd71815_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown device type\00", [44 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry_ptr.8 = internal global ptr @bd71828_i2c_probe._entry.6, section ".printk_index", align 4
@bd71828_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rohm_bd71828:517:(regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize Regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry_ptr.12 = internal global ptr @bd71828_i2c_probe._entry.10, section ".printk_index", align 4
@bd71828_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to add IRQ chip\0A\00", [40 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry_ptr.15 = internal global ptr @bd71828_i2c_probe._entry.13, section ".printk_index", align 4
@bd71828_i2c_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rohm_bd71828\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Registered %d IRQs for chip\0A\00", [35 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get the power-key IRQ\0A\00", [63 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry_ptr.20 = internal global ptr @bd71828_i2c_probe._entry.18, section ".printk_index", align 4
@button = internal global { %struct.gpio_keys_button, [52 x i8] } { %struct.gpio_keys_button { i32 116, i32 -1, i32 0, ptr null, i32 1, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create subdevices\0A\00", [35 x i8] zeroinitializer }, align 32
@bd71828_i2c_probe._entry_ptr.23 = internal global ptr @bd71828_i2c_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd71828-pmic\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd71828-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71828-led\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rohm,bd71828-leds\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71828-clk\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd71827-power\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71828-rtc\00", [20 x i8] zeroinitializer }, align 32
@bd71828_rtc_irqs = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 69, i32 69, ptr @.str.32, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 70, i32 70, ptr @.str.33, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 71, i32 71, ptr @.str.34, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-keys\00", [22 x i8] zeroinitializer }, align 32
@bd71828_powerkey_data = internal global { %struct.gpio_keys_platform_data, [36 x i8] } { %struct.gpio_keys_platform_data { ptr @button, i32 1, i32 0, i8 0, ptr null, ptr null, ptr @.str.35 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71828-rtc-alm-0\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71828-rtc-alm-1\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71828-rtc-alm-2\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bd71828-pwrkey\00", [17 x i8] zeroinitializer }, align 32
@bd71828_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @bd71828_volatile_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@bd71828_volatile_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 4 }, %struct.regmap_range { i32 6, i32 6 }, %struct.regmap_range { i32 76, i32 82 }, %struct.regmap_range { i32 101, i32 210 }, %struct.regmap_range { i32 223, i32 237 }], [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71828_irq\00", [20 x i8] zeroinitializer }, align 32
@bd718xx_sub_irq_offsets = internal global { [8 x %struct.regmap_irq_sub_irq_map], [32 x i8] } { [8 x %struct.regmap_irq_sub_irq_map] [%struct.regmap_irq_sub_irq_map { i32 1, ptr @bit0_offsets }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @bit1_offsets }, %struct.regmap_irq_sub_irq_map { i32 4, ptr @bit2_offsets }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @bit3_offsets }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @bit4_offsets }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @bit5_offsets }, %struct.regmap_irq_sub_irq_map { i32 2, ptr @bit6_offsets }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @bit7_offsets }], [32 x i8] zeroinitializer }, align 32
@bd71828_irqs = internal global { [72 x %struct.regmap_irq], [640 x i8] } { [72 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 7, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 7, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 8, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 8, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 8, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 11, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 11, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 11, i32 4, %struct.regmap_irq_type zeroinitializer }], [640 x i8] zeroinitializer }, align 32
@bd71828_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.36, i32 223, i32 8, ptr @bd718xx_sub_irq_offsets, i32 1, i32 224, i32 211, i32 0, i32 224, i32 0, i32 0, ptr null, i32 1, i8 96, i8 0, i32 12, ptr @bd71828_irqs, i32 72, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bit0_offsets = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 11], [28 x i8] zeroinitializer }, align 32
@bit1_offsets = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 10], [28 x i8] zeroinitializer }, align 32
@bit2_offsets = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 7, i32 8, i32 9], [16 x i8] zeroinitializer }, align 32
@bit3_offsets = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@bit4_offsets = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@bit5_offsets = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@bit6_offsets = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 2], [24 x i8] zeroinitializer }, align 32
@bit7_offsets = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd71815-pmic\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71815-clk\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71815-gpo\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd71815-power\00", [18 x i8] zeroinitializer }, align 32
@bd71815_power_irqs = internal global { [47 x %struct.resource], [352 x i8] } { [47 x %struct.resource] [%struct.resource { i32 8, i32 8, ptr @.str.43, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 9, i32 9, ptr @.str.44, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 10, i32 10, ptr @.str.45, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 11, i32 11, ptr @.str.46, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr @.str.47, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 13, i32 13, ptr @.str.48, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 14, i32 14, ptr @.str.49, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 16, i32 16, ptr @.str.50, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 17, i32 17, ptr @.str.51, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 18, i32 18, ptr @.str.52, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 19, i32 19, ptr @.str.53, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 20, i32 20, ptr @.str.54, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 20, i32 20, ptr @.str.55, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 22, i32 22, ptr @.str.56, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 23, i32 23, ptr @.str.57, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 24, i32 24, ptr @.str.58, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 25, i32 25, ptr @.str.59, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 26, i32 26, ptr @.str.60, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 27, i32 27, ptr @.str.61, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 28, i32 28, ptr @.str.62, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 29, i32 29, ptr @.str.63, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 30, i32 30, ptr @.str.64, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 31, i32 31, ptr @.str.65, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 32, i32 32, ptr @.str.66, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 33, i32 33, ptr @.str.67, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 34, i32 34, ptr @.str.68, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 35, i32 35, ptr @.str.69, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 36, i32 36, ptr @.str.70, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 37, i32 37, ptr @.str.71, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 38, i32 38, ptr @.str.72, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 39, i32 39, ptr @.str.73, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 40, i32 40, ptr @.str.74, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 41, i32 41, ptr @.str.75, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 42, i32 42, ptr @.str.76, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 43, i32 43, ptr @.str.77, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 44, i32 44, ptr @.str.78, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 45, i32 45, ptr @.str.79, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 46, i32 46, ptr @.str.80, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 47, i32 47, ptr @.str.81, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 48, i32 48, ptr @.str.82, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 49, i32 49, ptr @.str.83, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 50, i32 50, ptr @.str.84, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 51, i32 51, ptr @.str.85, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 52, i32 52, ptr @.str.71, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 53, i32 53, ptr @.str.72, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 54, i32 54, ptr @.str.86, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 55, i32 55, ptr @.str.87, i32 1024, i32 0, ptr null, ptr null, ptr null }], [352 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71815-rtc\00", [20 x i8] zeroinitializer }, align 32
@bd71815_rtc_irqs = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 60, i32 60, ptr @.str.88, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 61, i32 61, ptr @.str.89, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 62, i32 62, ptr @.str.90, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd71815-dcin-rmv\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd71815-clps-out\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd71815-clps-in\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-dcin-ovp-res\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-dcin-ovp-det\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-dcin-mon-res\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-dcin-mon-det\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-vsys-uv-res\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-vsys-uv-det\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-vsys-low-res\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-vsys-low-det\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-vsys-mon-res\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-vsys-mon-det\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-chg-wdg-temp\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd71815-chg-wdg\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-rechg-res\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-rechg-det\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bd71815-ranged-temp-transit\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bd71815-chg-state-change\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bd71815-bat-temp-normal\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bd71815-bat-temp-erange\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd71815-bat-rmv\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd71815-bat-det\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-therm-rmv\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-therm-det\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd71815-bat-dead\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bd71815-bat-short-res\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bd71815-bat-short-det\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-low-res\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-low-det\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-bat-over-res\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bd71815-bat-over-det\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-mon-res\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-mon-det\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-cc-mon1\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-cc-mon2\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-cc-mon3\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-oc1-res\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-oc1-det\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-oc2-res\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-oc2-det\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-oc3-res\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71815-bat-oc3-det\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bd71815-bat-hi-res\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bd71815-bat-hi-det\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-rtc-alm-0\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-rtc-alm-1\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-rtc-alm-2\00", [46 x i8] zeroinitializer }, align 32
@bd71815_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @bd71815_volatile_ranges, i32 8, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@bd71815_volatile_ranges = internal constant { [8 x %struct.regmap_range], [32 x i8] } { [8 x %struct.regmap_range] [%struct.regmap_range { i32 30, i32 36 }, %struct.regmap_range { i32 55, i32 64 }, %struct.regmap_range { i32 91, i32 113 }, %struct.regmap_range { i32 120, i32 126 }, %struct.regmap_range { i32 138, i32 138 }, %struct.regmap_range { i32 151, i32 164 }, %struct.regmap_range { i32 192, i32 230 }, %struct.regmap_range { i32 232, i32 241 }], [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd71815_irq\00", [20 x i8] zeroinitializer }, align 32
@bd71815_irqs = internal constant { [63 x %struct.regmap_irq], [548 x i8] } { [63 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 6, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 7, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 7, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 8, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 8, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 8, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 9, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 10, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 11, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 11, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 11, i32 4, %struct.regmap_irq_type zeroinitializer }], [548 x i8] zeroinitializer }, align 32
@bd71815_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.91, i32 151, i32 8, ptr @bd718xx_sub_irq_offsets, i32 1, i32 152, i32 139, i32 0, i32 152, i32 0, i32 0, ptr null, i32 1, i8 96, i8 0, i32 12, ptr @bd71815_irqs, i32 63, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rohm,clkout-open-drain\00", [41 x i8] zeroinitializer }, align 32
@set_clk_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad clk32kout mode configuration\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_clk_mode\00", [19 x i8] zeroinitializer }, align 32
@set_clk_mode._entry_ptr = internal global ptr @set_clk_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"bd71828_drv\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 567, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 569, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"bd71828_of_match\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 555, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 483, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"bd71828_mfd_cells\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 112, i32 24 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"bd71828_regmap\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 203, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [18 x i8] c"bd71815_mfd_cells\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 96, i32 24 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"bd71815_regmap\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 195, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 513, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 517, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 519, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 526, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 530, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 536, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 22, i32 32 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 550, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 113, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 114, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 115, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 115, i32 44 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 120, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 121, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 123, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"bd71828_rtc_irqs\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 40, i32 30 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 127, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"bd71828_powerkey_data\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 28, i32 39 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 41, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 42, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 43, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 31, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"bd71828_volatile_regs\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 190, i32 41 }
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"bd71828_volatile_ranges\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 161, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 411, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant [24 x i8] c"bd718xx_sub_irq_offsets\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 226, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant [13 x i8] c"bd71828_irqs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 319, i32 26 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"bd71828_irq_chip\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 410, i32 31 }
@___asan_gen_.241 = private unnamed_addr constant [13 x i8] c"bit0_offsets\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 217, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"bit1_offsets\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 218, i32 21 }
@___asan_gen_.247 = private unnamed_addr constant [13 x i8] c"bit2_offsets\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 219, i32 21 }
@___asan_gen_.250 = private unnamed_addr constant [13 x i8] c"bit3_offsets\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 220, i32 21 }
@___asan_gen_.253 = private unnamed_addr constant [13 x i8] c"bit4_offsets\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 221, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"bit5_offsets\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 222, i32 21 }
@___asan_gen_.259 = private unnamed_addr constant [13 x i8] c"bit6_offsets\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 223, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"bit7_offsets\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 224, i32 21 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 97, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 98, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 99, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 101, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant [19 x i8] c"bd71815_power_irqs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 46, i32 24 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 106, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"bd71815_rtc_irqs\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 34, i32 30 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 47, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 48, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 49, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 50, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 51, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 52, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 53, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 54, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 55, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 56, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 57, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 58, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 59, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 60, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 61, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 62, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 63, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 64, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 65, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 66, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 67, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 68, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 69, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 70, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 71, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 72, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 73, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 74, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 75, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 76, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 77, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 78, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 79, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 80, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 81, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 82, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 83, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 84, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 85, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 86, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 87, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 88, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 89, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 92, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 93, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 35, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 36, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 37, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [22 x i8] c"bd71815_volatile_regs\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 185, i32 41 }
@___asan_gen_.433 = private unnamed_addr constant [24 x i8] c"bd71815_volatile_ranges\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 133, i32 34 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 428, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant [13 x i8] c"bd71815_irqs\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 237, i32 32 }
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"bd71815_irq_chip\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 427, i32 31 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 450, i32 43 }
@___asan_gen_.448 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.455 = private constant [30 x i8] c"../drivers/mfd/rohm-bd71828.c\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 457, i32 3 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_bd71828_drv_exit, ptr @__initcall__kmod_rohm_bd71828__289_574_bd71828_drv_init6, ptr @bd71828_drv_exit, ptr @bd71828_i2c_probe._entry, ptr @bd71828_i2c_probe._entry.10, ptr @bd71828_i2c_probe._entry.13, ptr @bd71828_i2c_probe._entry.18, ptr @bd71828_i2c_probe._entry.21, ptr @bd71828_i2c_probe._entry.6, ptr @bd71828_i2c_probe._entry_ptr, ptr @bd71828_i2c_probe._entry_ptr.12, ptr @bd71828_i2c_probe._entry_ptr.15, ptr @bd71828_i2c_probe._entry_ptr.20, ptr @bd71828_i2c_probe._entry_ptr.23, ptr @bd71828_i2c_probe._entry_ptr.8, ptr @set_clk_mode._entry, ptr @set_clk_mode._entry_ptr, ptr @bd71828_drv, ptr @.str, ptr @bd71828_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bd71828_mfd_cells, ptr @bd71828_regmap, ptr @bd71815_mfd_cells, ptr @bd71815_regmap, ptr @.str.7, ptr @bd71828_i2c_probe._key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @button, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @bd71828_rtc_irqs, ptr @.str.31, ptr @bd71828_powerkey_data, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @bd71828_volatile_regs, ptr @bd71828_volatile_ranges, ptr @.str.36, ptr @bd718xx_sub_irq_offsets, ptr @bd71828_irqs, ptr @bd71828_irq_chip, ptr @bit0_offsets, ptr @bit1_offsets, ptr @bit2_offsets, ptr @bit3_offsets, ptr @bit4_offsets, ptr @bit5_offsets, ptr @bit6_offsets, ptr @bit7_offsets, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @bd71815_power_irqs, ptr @.str.42, ptr @bd71815_rtc_irqs, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @bd71815_volatile_regs, ptr @bd71815_volatile_ranges, ptr @.str.91, ptr @bd71815_irqs, ptr @bd71815_irq_chip, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_drv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_mfd_cells to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_mfd_cells to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @button to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_rtc_irqs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_powerkey_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_volatile_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_sub_irq_offsets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_irqs to i32), i32 2592, i32 3232, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit0_offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit1_offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit2_offsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit3_offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit4_offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit5_offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit6_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit7_offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_power_irqs to i32), i32 1504, i32 1856, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_rtc_irqs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_volatile_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_irqs to i32), i32 2268, i32 2816, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_clk_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bd71828_drv) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd71828_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @bd71828_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %open_drain.i = alloca i32, align 4
  %irq_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_data) #6
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %irq_data, align 4, !annotation !253
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %3 = ptrtoint ptr %call to i32
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end5 [
    i32 5, label %if.end.sw.epilog_crit_edge
    i32 4, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %regmap_config.0 = phi ptr [ @bd71815_regmap, %sw.bb2 ], [ @bd71828_regmap, %if.end.sw.epilog_crit_edge ]
  %irqchip.0 = phi ptr [ @bd71815_irq_chip, %sw.bb2 ], [ @bd71828_irq_chip, %if.end.sw.epilog_crit_edge ]
  %mfd.0 = phi ptr [ @bd71815_mfd_cells, %sw.bb2 ], [ @bd71828_mfd_cells, %if.end.sw.epilog_crit_edge ]
  %cells.0 = phi i32 [ 5, %sw.bb2 ], [ 7, %if.end.sw.epilog_crit_edge ]
  %tobool37.not = phi i1 [ true, %sw.bb2 ], [ false, %if.end.sw.epilog_crit_edge ]
  %button_irq.0 = phi i32 [ 0, %sw.bb2 ], [ 16, %if.end.sw.epilog_crit_edge ]
  %clkmode_reg.0 = phi i32 [ 29, %sw.bb2 ], [ 75, %if.end.sw.epilog_crit_edge ]
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull %regmap_config.0, ptr noundef nonnull @bd71828_i2c_probe._key, ptr noundef nonnull @.str.9) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end15

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end15:                                         ; preds = %sw.epilog
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call18 = call i32 @devm_regmap_add_irq_chip(ptr noundef %dev, ptr noundef %call7, i32 noundef %7, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull %irqchip.0, ptr noundef nonnull %irq_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body26, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

do.body26:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd71828_i2c_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bd71828_i2c_probe, %if.then32)) #6
          to label %do.end36 [label %if.then32], !srcloc !254

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %num_irqs = getelementptr inbounds %struct.regmap_irq_chip, ptr %irqchip.0, i32 0, i32 16
  %8 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_irqs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd71828_i2c_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %9) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body26
  br i1 %tobool37.not, label %do.end36.if.end46_crit_edge, label %if.then38

do.end36.if.end46_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then38:                                        ; preds = %do.end36
  %10 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_data, align 4
  %call39 = call i32 @regmap_irq_get_virq(ptr noundef %11, i32 noundef %button_irq.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %call39, ptr getelementptr inbounds (%struct.gpio_keys_button, ptr @button, i32 0, i32 10), align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %do.end36.if.end46_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %open_drain.i) #6
  %12 = ptrtoint ptr %open_drain.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %open_drain.i, align 4, !annotation !253
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.93, ptr noundef nonnull %open_drain.i, i32 noundef 1, i32 noundef 0) #6
  %15 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %15, label %if.end46.set_clk_mode.exit_crit_edge [
    i32 0, label %if.end2.i
    i32 -22, label %set_clk_mode.exit.thread
  ]

if.end46.set_clk_mode.exit_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_clk_mode.exit

set_clk_mode.exit.thread:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %open_drain.i) #6
  br label %if.end51

if.end2.i:                                        ; preds = %if.end46
  %17 = ptrtoint ptr %open_drain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %open_drain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp3.i = icmp ugt i32 %18, 1
  br i1 %cmp3.i, label %set_clk_mode.exit.thread101, label %if.end5.i

set_clk_mode.exit.thread101:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %open_drain.i) #6
  br label %cleanup

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not.i = icmp eq i32 %18, 0
  %. = select i1 %tobool6.not.i, i32 2, i32 0
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %call7, i32 noundef %clkmode_reg.0, i32 noundef 2, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %set_clk_mode.exit

set_clk_mode.exit:                                ; preds = %if.end5.i, %if.end46.set_clk_mode.exit_crit_edge
  %retval.0.i97 = phi i32 [ %15, %if.end46.set_clk_mode.exit_crit_edge ], [ %call.i.i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %open_drain.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i97)
  %tobool49.not = icmp eq i32 %retval.0.i97, 0
  br i1 %tobool49.not, label %set_clk_mode.exit.if.end51_crit_edge, label %set_clk_mode.exit.cleanup_crit_edge

set_clk_mode.exit.cleanup_crit_edge:              ; preds = %set_clk_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

set_clk_mode.exit.if.end51_crit_edge:             ; preds = %set_clk_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.end51:                                         ; preds = %set_clk_mode.exit.if.end51_crit_edge, %set_clk_mode.exit.thread
  %19 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_data, align 4
  %call53 = call ptr @regmap_irq_get_domain(ptr noundef %20) #6
  %call54 = call i32 @devm_mfd_add_devices(ptr noundef %dev, i32 noundef -2, ptr noundef nonnull %mfd.0, i32 noundef %cells.0, ptr noundef null, i32 noundef 0, ptr noundef %call53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end51.cleanup_crit_edge, label %do.end59

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end51.cleanup_crit_edge, %set_clk_mode.exit.cleanup_crit_edge, %set_clk_mode.exit.thread101, %do.end43, %do.end23, %do.end12, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ %5, %do.end12 ], [ %call18, %do.end23 ], [ %call39, %do.end43 ], [ -22, %do.end ], [ %retval.0.i97, %set_clk_mode.exit.cleanup_crit_edge ], [ %call54, %do.end59 ], [ 0, %if.end51.cleanup_crit_edge ], [ -22, %set_clk_mode.exit.thread101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !240, !241, !242}
!llvm.module.flags = !{!244, !245, !246, !247, !248, !249, !250, !251}
!llvm.ident = !{!252}

!0 = !{ptr @__initcall__kmod_rohm_bd71828__289_574_bd71828_drv_init6, !1, !"__initcall__kmod_rohm_bd71828__289_574_bd71828_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rohm-bd71828.c", i32 574, i32 1}
!2 = !{ptr @__exitcall_bd71828_drv_exit, !1, !"__exitcall_bd71828_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/mfd/rohm-bd71828.c", i32 576, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/mfd/rohm-bd71828.c", i32 577, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/mfd/rohm-bd71828.c", i32 578, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/rohm-bd71828.c", i32 569, i32 11}
!12 = !{ptr @bd71828_drv, !13, !"bd71828_drv", i1 false, i1 false}
!13 = !{!"../drivers/mfd/rohm-bd71828.c", i32 567, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/rohm-bd71828.c", i32 483, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bd71828_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bd71828_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/rohm-bd71828.c", i32 513, i32 3}
!24 = !{ptr @bd71828_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bd71828_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @bd71828_i2c_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/mfd/rohm-bd71828.c", i32 517, i32 11}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/rohm-bd71828.c", i32 519, i32 3}
!31 = !{ptr @bd71828_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bd71828_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/rohm-bd71828.c", i32 526, i32 3}
!35 = !{ptr @bd71828_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bd71828_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/rohm-bd71828.c", i32 530, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @bd71828_i2c_probe.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/rohm-bd71828.c", i32 536, i32 4}
!43 = !{ptr @bd71828_i2c_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bd71828_i2c_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/rohm-bd71828.c", i32 550, i32 3}
!47 = !{ptr @bd71828_i2c_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bd71828_i2c_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/rohm-bd71828.c", i32 113, i32 12}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/rohm-bd71828.c", i32 114, i32 12}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/rohm-bd71828.c", i32 115, i32 12}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/rohm-bd71828.c", i32 115, i32 44}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/rohm-bd71828.c", i32 120, i32 12}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/rohm-bd71828.c", i32 121, i32 12}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/rohm-bd71828.c", i32 123, i32 11}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/rohm-bd71828.c", i32 127, i32 11}
!65 = !{ptr @bd71828_mfd_cells, !66, !"bd71828_mfd_cells", i1 false, i1 false}
!66 = !{!"../drivers/mfd/rohm-bd71828.c", i32 112, i32 24}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/rohm-bd71828.c", i32 41, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/rohm-bd71828.c", i32 42, i32 2}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/rohm-bd71828.c", i32 43, i32 2}
!73 = !{ptr @bd71828_rtc_irqs, !74, !"bd71828_rtc_irqs", i1 false, i1 false}
!74 = !{!"../drivers/mfd/rohm-bd71828.c", i32 40, i32 30}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/rohm-bd71828.c", i32 31, i32 10}
!77 = !{ptr @bd71828_powerkey_data, !78, !"bd71828_powerkey_data", i1 false, i1 false}
!78 = !{!"../drivers/mfd/rohm-bd71828.c", i32 28, i32 39}
!79 = !{ptr @bd71828_regmap, !80, !"bd71828_regmap", i1 false, i1 false}
!80 = !{!"../drivers/mfd/rohm-bd71828.c", i32 203, i32 35}
!81 = !{ptr @bd71828_volatile_regs, !82, !"bd71828_volatile_regs", i1 false, i1 false}
!82 = !{!"../drivers/mfd/rohm-bd71828.c", i32 190, i32 41}
!83 = !{ptr @bd71828_volatile_ranges, !84, !"bd71828_volatile_ranges", i1 false, i1 false}
!84 = !{!"../drivers/mfd/rohm-bd71828.c", i32 161, i32 34}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/rohm-bd71828.c", i32 411, i32 10}
!87 = !{ptr @bd71828_irq_chip, !88, !"bd71828_irq_chip", i1 false, i1 false}
!88 = !{!"../drivers/mfd/rohm-bd71828.c", i32 410, i32 31}
!89 = !{ptr @bd718xx_sub_irq_offsets, !90, !"bd718xx_sub_irq_offsets", i1 false, i1 false}
!90 = !{!"../drivers/mfd/rohm-bd71828.c", i32 226, i32 38}
!91 = !{ptr @bit0_offsets, !92, !"bit0_offsets", i1 false, i1 false}
!92 = !{!"../drivers/mfd/rohm-bd71828.c", i32 217, i32 21}
!93 = !{ptr @bit1_offsets, !94, !"bit1_offsets", i1 false, i1 false}
!94 = !{!"../drivers/mfd/rohm-bd71828.c", i32 218, i32 21}
!95 = !{ptr @bit2_offsets, !96, !"bit2_offsets", i1 false, i1 false}
!96 = !{!"../drivers/mfd/rohm-bd71828.c", i32 219, i32 21}
!97 = !{ptr @bit3_offsets, !98, !"bit3_offsets", i1 false, i1 false}
!98 = !{!"../drivers/mfd/rohm-bd71828.c", i32 220, i32 21}
!99 = !{ptr @bit4_offsets, !100, !"bit4_offsets", i1 false, i1 false}
!100 = !{!"../drivers/mfd/rohm-bd71828.c", i32 221, i32 21}
!101 = !{ptr @bit5_offsets, !102, !"bit5_offsets", i1 false, i1 false}
!102 = !{!"../drivers/mfd/rohm-bd71828.c", i32 222, i32 21}
!103 = !{ptr @bit6_offsets, !104, !"bit6_offsets", i1 false, i1 false}
!104 = !{!"../drivers/mfd/rohm-bd71828.c", i32 223, i32 21}
!105 = !{ptr @bit7_offsets, !106, !"bit7_offsets", i1 false, i1 false}
!106 = !{!"../drivers/mfd/rohm-bd71828.c", i32 224, i32 21}
!107 = !{ptr @bd71828_irqs, !108, !"bd71828_irqs", i1 false, i1 false}
!108 = !{!"../drivers/mfd/rohm-bd71828.c", i32 319, i32 26}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/rohm-bd71828.c", i32 97, i32 12}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mfd/rohm-bd71828.c", i32 98, i32 12}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/rohm-bd71828.c", i32 99, i32 12}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mfd/rohm-bd71828.c", i32 101, i32 11}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/rohm-bd71828.c", i32 106, i32 11}
!119 = !{ptr @bd71815_mfd_cells, !120, !"bd71815_mfd_cells", i1 false, i1 false}
!120 = !{!"../drivers/mfd/rohm-bd71828.c", i32 96, i32 24}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/rohm-bd71828.c", i32 47, i32 2}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mfd/rohm-bd71828.c", i32 48, i32 2}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/rohm-bd71828.c", i32 49, i32 2}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/rohm-bd71828.c", i32 50, i32 2}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mfd/rohm-bd71828.c", i32 51, i32 2}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mfd/rohm-bd71828.c", i32 52, i32 2}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mfd/rohm-bd71828.c", i32 53, i32 2}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mfd/rohm-bd71828.c", i32 54, i32 2}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/rohm-bd71828.c", i32 55, i32 2}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/rohm-bd71828.c", i32 56, i32 2}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mfd/rohm-bd71828.c", i32 57, i32 2}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mfd/rohm-bd71828.c", i32 58, i32 2}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mfd/rohm-bd71828.c", i32 59, i32 2}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mfd/rohm-bd71828.c", i32 60, i32 2}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mfd/rohm-bd71828.c", i32 61, i32 2}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mfd/rohm-bd71828.c", i32 62, i32 2}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mfd/rohm-bd71828.c", i32 63, i32 2}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mfd/rohm-bd71828.c", i32 64, i32 2}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mfd/rohm-bd71828.c", i32 65, i32 2}
!159 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mfd/rohm-bd71828.c", i32 66, i32 2}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mfd/rohm-bd71828.c", i32 67, i32 2}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mfd/rohm-bd71828.c", i32 68, i32 2}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mfd/rohm-bd71828.c", i32 69, i32 2}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mfd/rohm-bd71828.c", i32 70, i32 2}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mfd/rohm-bd71828.c", i32 71, i32 2}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mfd/rohm-bd71828.c", i32 72, i32 2}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mfd/rohm-bd71828.c", i32 73, i32 2}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mfd/rohm-bd71828.c", i32 74, i32 2}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mfd/rohm-bd71828.c", i32 75, i32 2}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mfd/rohm-bd71828.c", i32 76, i32 2}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mfd/rohm-bd71828.c", i32 77, i32 2}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mfd/rohm-bd71828.c", i32 78, i32 2}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mfd/rohm-bd71828.c", i32 79, i32 2}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mfd/rohm-bd71828.c", i32 80, i32 2}
!189 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mfd/rohm-bd71828.c", i32 81, i32 2}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mfd/rohm-bd71828.c", i32 82, i32 2}
!193 = !{ptr @.str.79, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mfd/rohm-bd71828.c", i32 83, i32 2}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mfd/rohm-bd71828.c", i32 84, i32 2}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mfd/rohm-bd71828.c", i32 85, i32 2}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mfd/rohm-bd71828.c", i32 86, i32 2}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mfd/rohm-bd71828.c", i32 87, i32 2}
!203 = !{ptr @.str.84, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mfd/rohm-bd71828.c", i32 88, i32 2}
!205 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mfd/rohm-bd71828.c", i32 89, i32 2}
!207 = !{ptr @.str.86, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mfd/rohm-bd71828.c", i32 92, i32 2}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mfd/rohm-bd71828.c", i32 93, i32 2}
!211 = !{ptr @bd71815_power_irqs, !212, !"bd71815_power_irqs", i1 false, i1 false}
!212 = !{!"../drivers/mfd/rohm-bd71828.c", i32 46, i32 24}
!213 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mfd/rohm-bd71828.c", i32 35, i32 2}
!215 = !{ptr @.str.89, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/mfd/rohm-bd71828.c", i32 36, i32 2}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mfd/rohm-bd71828.c", i32 37, i32 2}
!219 = !{ptr @bd71815_rtc_irqs, !220, !"bd71815_rtc_irqs", i1 false, i1 false}
!220 = !{!"../drivers/mfd/rohm-bd71828.c", i32 34, i32 30}
!221 = !{ptr @bd71815_regmap, !222, !"bd71815_regmap", i1 false, i1 false}
!222 = !{!"../drivers/mfd/rohm-bd71828.c", i32 195, i32 35}
!223 = !{ptr @bd71815_volatile_regs, !224, !"bd71815_volatile_regs", i1 false, i1 false}
!224 = !{!"../drivers/mfd/rohm-bd71828.c", i32 185, i32 41}
!225 = !{ptr @bd71815_volatile_ranges, !226, !"bd71815_volatile_ranges", i1 false, i1 false}
!226 = !{!"../drivers/mfd/rohm-bd71828.c", i32 133, i32 34}
!227 = !{ptr @.str.91, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mfd/rohm-bd71828.c", i32 428, i32 10}
!229 = !{ptr @bd71815_irq_chip, !230, !"bd71815_irq_chip", i1 false, i1 false}
!230 = !{!"../drivers/mfd/rohm-bd71828.c", i32 427, i32 31}
!231 = !{ptr @bd71815_irqs, !232, !"bd71815_irqs", i1 false, i1 false}
!232 = !{!"../drivers/mfd/rohm-bd71828.c", i32 237, i32 32}
!233 = !{ptr @button, !234, !"button", i1 false, i1 false}
!234 = !{!"../drivers/mfd/rohm-bd71828.c", i32 22, i32 32}
!235 = !{ptr @.str.93, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mfd/rohm-bd71828.c", i32 450, i32 43}
!237 = !{ptr @.str.94, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mfd/rohm-bd71828.c", i32 457, i32 3}
!239 = !{ptr @.str.95, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @set_clk_mode._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @set_clk_mode._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @bd71828_of_match, !243, !"bd71828_of_match", i1 false, i1 false}
!243 = !{!"../drivers/mfd/rohm-bd71828.c", i32 555, i32 34}
!244 = !{i32 1, !"wchar_size", i32 2}
!245 = !{i32 1, !"min_enum_size", i32 4}
!246 = !{i32 8, !"branch-target-enforcement", i32 0}
!247 = !{i32 8, !"sign-return-address", i32 0}
!248 = !{i32 8, !"sign-return-address-all", i32 0}
!249 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!250 = !{i32 7, !"uwtable", i32 1}
!251 = !{i32 7, !"frame-pointer", i32 2}
!252 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!253 = !{!"auto-init"}
!254 = !{i64 2149011561, i64 2149011566, i64 2149011579, i64 2149011623, i64 2149011657, i64 2149011678}
