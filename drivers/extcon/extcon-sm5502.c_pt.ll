; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-sm5502.c_pt.bc'
source_filename = "../drivers/extcon/extcon-sm5502.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.sm5502_type = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.muic_irq = type { i32, ptr, i32 }
%struct.reg_data = type { i8, i32, i8 }
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
%struct.sm5502_muic_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, %struct.work_struct, %struct.mutex, %struct.delayed_work }

@__initcall__kmod_extcon_sm5502__291_851_sm5502_muic_i2c_init4 = internal global ptr @sm5502_muic_i2c_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description292 = internal constant [61 x i8] c"extcon_sm5502.description=Silicon Mitus SM5502 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [58 x i8] c"extcon_sm5502.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [48 x i8] c"extcon_sm5502.file=drivers/extcon/extcon-sm5502\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"extcon_sm5502.license=GPL\00", section ".modinfo", align 1
@sm5502_muic_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sm5022_muic_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sm5502_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm5502_muic_pm_ops, ptr null, ptr null }, ptr @sm5502_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sm5502\00", [25 x i8] zeroinitializer }, align 32
@sm5502_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"siliconmitus,sm5502-muic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm5502_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"siliconmitus,sm5504-muic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm5504_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sm5502_muic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sm5502_muic_suspend, ptr @sm5502_muic_resume, ptr @sm5502_muic_suspend, ptr @sm5502_muic_resume, ptr @sm5502_muic_suspend, ptr @sm5502_muic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sm5502_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sm5502\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sm5502_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sm5504\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sm5504_data to i32) }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"parse_irq missing in struct sm5502_type\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sm5022_muic_i2c_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/extcon/extcon-sm5502.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry_ptr = internal global ptr @sm5022_muic_i2c_probe._entry, section ".printk_index", align 4
@sm5022_muic_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&info->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sm5502_muic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @sm5502_muic_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 59, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"extcon_sm5502:706:(&sm5502_muic_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry_ptr.12 = internal global ptr @sm5022_muic_i2c_probe._entry.10, section ".printk_index", align 4
@sm5022_muic_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 721, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry_ptr.15 = internal global ptr @sm5022_muic_i2c_probe._entry.13, section ".printk_index", align 4
@sm5022_muic_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry_ptr.18 = internal global ptr @sm5022_muic_i2c_probe._entry.16, section ".printk_index", align 4
@sm5502_extcon_cable = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 5, i32 6, i32 0], [44 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry_ptr.21 = internal global ptr @sm5022_muic_i2c_probe._entry.19, section ".printk_index", align 4
@sm5022_muic_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe._entry_ptr.24 = internal global ptr @sm5022_muic_i2c_probe._entry.22, section ".printk_index", align 4
@sm5022_muic_i2c_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->wq_detcable)->work)\00", [49 x i8] zeroinitializer }, align 32
@sm5022_muic_i2c_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->wq_detcable)->timer\00", [35 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@sm5502_muic_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to handle MUIC interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sm5502_muic_irq_work\00", [43 x i8] zeroinitializer }, align 32
@sm5502_muic_irq_work._entry_ptr = internal global ptr @sm5502_muic_irq_work._entry, section ".printk_index", align 4
@sm5502_muic_cable_handler.prev_cable_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sm5502_muic_cable_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extcon_sm5502\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sm5502_muic_cable_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot handle this cable_type (0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@sm5502_muic_get_cable_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read ADC register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sm5502_muic_get_cable_type\00", [37 x i8] zeroinitializer }, align 32
@sm5502_muic_get_cable_type._entry_ptr = internal global ptr @sm5502_muic_get_cable_type._entry, section ".printk_index", align 4
@sm5502_muic_get_cable_type._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read DEV_TYPE1 reg\0A\00", [34 x i8] zeroinitializer }, align 32
@sm5502_muic_get_cable_type._entry_ptr.38 = internal global ptr @sm5502_muic_get_cable_type._entry.36, section ".printk_index", align 4
@sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.35, ptr @.str.3, ptr @.str.39, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"cannot identify the cable type: adc(0x%x), dev_type1(0x%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@sm5502_muic_get_cable_type._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sm5502_muic_get_cable_type._entry_ptr.41 = internal global ptr @sm5502_muic_get_cable_type._entry.40, section ".printk_index", align 4
@sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.35, ptr @.str.3, ptr @.str.42, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot identify the cable type: adc(0x%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@sm5502_muic_get_cable_type._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to identify the cable type: adc(0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@sm5502_muic_get_cable_type._entry_ptr.45 = internal global ptr @sm5502_muic_get_cable_type._entry.43, section ".printk_index", align 4
@sm5502_muic_set_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot update DM_CON/DP_CON switch\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sm5502_muic_set_path\00", [43 x i8] zeroinitializer }, align 32
@sm5502_muic_set_path._entry_ptr = internal global ptr @sm5502_muic_set_path._entry, section ".printk_index", align 4
@sm5502_muic_set_path._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown DM_CON/DP_CON switch type (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@sm5502_muic_set_path._entry_ptr.50 = internal global ptr @sm5502_muic_set_path._entry.48, section ".printk_index", align 4
@sm5502_muic_set_path._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot update VBUSIN switch\0A\00", [35 x i8] zeroinitializer }, align 32
@sm5502_muic_set_path._entry_ptr.53 = internal global ptr @sm5502_muic_set_path._entry.51, section ".printk_index", align 4
@sm5502_muic_set_path._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown VBUS switch type (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@sm5502_muic_set_path._entry_ptr.56 = internal global ptr @sm5502_muic_set_path._entry.54, section ".printk_index", align 4
@sm5502_muic_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 624, ptr @.str.59, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot handle is interrupt:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sm5502_muic_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sm5502_muic_irq_handler._entry_ptr = internal global ptr @sm5502_muic_irq_handler._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sm5502_muic_detect_cable_wq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 641, ptr @.str.59, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to detect cable state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sm5502_muic_detect_cable_wq\00", [36 x i8] zeroinitializer }, align 32
@sm5502_muic_detect_cable_wq._entry_ptr = internal global ptr @sm5502_muic_detect_cable_wq._entry, section ".printk_index", align 4
@sm5502_init_dev_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 653, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read DEVICE_ID register: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sm5502_init_dev_type\00", [43 x i8] zeroinitializer }, align 32
@sm5502_init_dev_type._entry_ptr = internal global ptr @sm5502_init_dev_type._entry, section ".printk_index", align 4
@sm5502_init_dev_type._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 663, ptr @.str.66, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device type: version: 0x%x, vendor: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sm5502_init_dev_type._entry_ptr.67 = internal global ptr @sm5502_init_dev_type._entry.64, section ".printk_index", align 4
@sm5502_data = internal constant { %struct.sm5502_type, [36 x i8] } { %struct.sm5502_type { ptr @sm5502_muic_irqs, i32 14, ptr @sm5502_muic_irq_chip, ptr @sm5502_reg_data, i32 4, i32 128, ptr @sm5502_parse_irq }, [36 x i8] zeroinitializer }, align 32
@sm5504_data = internal constant { %struct.sm5502_type, [36 x i8] } { %struct.sm5502_type { ptr @sm5504_muic_irqs, i32 14, ptr @sm5504_muic_irq_chip, ptr @sm5504_reg_data, i32 4, i32 1, ptr @sm5504_parse_irq }, [36 x i8] zeroinitializer }, align 32
@sm5502_muic_irqs = internal global { [14 x %struct.muic_irq], [56 x i8] } { [14 x %struct.muic_irq] [%struct.muic_irq { i32 0, ptr @.str.68, i32 0 }, %struct.muic_irq { i32 1, ptr @.str.69, i32 0 }, %struct.muic_irq { i32 2, ptr @.str.70, i32 0 }, %struct.muic_irq { i32 3, ptr @.str.71, i32 0 }, %struct.muic_irq { i32 4, ptr @.str.72, i32 0 }, %struct.muic_irq { i32 5, ptr @.str.73, i32 0 }, %struct.muic_irq { i32 6, ptr @.str.74, i32 0 }, %struct.muic_irq { i32 7, ptr @.str.75, i32 0 }, %struct.muic_irq { i32 8, ptr @.str.76, i32 0 }, %struct.muic_irq { i32 9, ptr @.str.77, i32 0 }, %struct.muic_irq { i32 10, ptr @.str.78, i32 0 }, %struct.muic_irq { i32 11, ptr @.str.79, i32 0 }, %struct.muic_irq { i32 12, ptr @.str.80, i32 0 }, %struct.muic_irq { i32 13, ptr @.str.81, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sm5502_reg_data = internal global { [4 x %struct.reg_data], [48 x i8] } { [4 x %struct.reg_data] [%struct.reg_data { i8 27, i32 1, i8 1 }, %struct.reg_data { i8 2, i32 1, i8 0 }, %struct.reg_data { i8 5, i32 28, i8 1 }, %struct.reg_data { i8 6, i32 63, i8 1 }], [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-attach\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-detach\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"muic-kp\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-lkp\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-lkr\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"muic-ovp-event\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"muic-ocp-event\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"muic-ovp-ocp-dis\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"muic-vbus-det\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"muic-rev-acce\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-adc-chg\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"muic-stuck-key\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"muic-stuck-key-rcv\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-mhl\00", [23 x i8] zeroinitializer }, align 32
@sm5502_irqs = internal constant { [14 x %struct.regmap_irq], [104 x i8] } { [14 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }], [104 x i8] zeroinitializer }, align 32
@sm5502_muic_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 3, i32 5, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 2, ptr @sm5502_irqs, i32 14, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sm5504_muic_irqs = internal global { [14 x %struct.muic_irq], [56 x i8] } { [14 x %struct.muic_irq] [%struct.muic_irq { i32 0, ptr @.str.68, i32 0 }, %struct.muic_irq { i32 1, ptr @.str.69, i32 0 }, %struct.muic_irq { i32 2, ptr @.str.83, i32 0 }, %struct.muic_irq { i32 3, ptr @.str.84, i32 0 }, %struct.muic_irq { i32 4, ptr @.str.73, i32 0 }, %struct.muic_irq { i32 5, ptr @.str.85, i32 0 }, %struct.muic_irq { i32 6, ptr @.str.78, i32 0 }, %struct.muic_irq { i32 7, ptr @.str.86, i32 0 }, %struct.muic_irq { i32 8, ptr @.str.87, i32 0 }, %struct.muic_irq { i32 9, ptr @.str.88, i32 0 }, %struct.muic_irq { i32 10, ptr @.str.89, i32 0 }, %struct.muic_irq { i32 11, ptr @.str.90, i32 0 }, %struct.muic_irq { i32 12, ptr @.str.74, i32 0 }, %struct.muic_irq { i32 13, ptr @.str.91, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sm5504_reg_data = internal global { [4 x %struct.reg_data], [48 x i8] } { [4 x %struct.reg_data] [%struct.reg_data { i8 27, i32 1, i8 1 }, %struct.reg_data { i8 5, i32 3, i8 0 }, %struct.reg_data { i8 6, i32 7, i8 1 }, %struct.reg_data { i8 2, i32 228, i8 1 }], [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-chg-det\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-dcd-out\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-connect\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-rid-chg\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"muic-uvlo\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-por\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-ovp-fet\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"muic-ocp-latch\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"muic-ovp-ocp-event\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sm5504\00", [25 x i8] zeroinitializer }, align 32
@sm5504_irqs = internal constant { [14 x %struct.regmap_irq], [104 x i8] } { [14 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }], [104 x i8] zeroinitializer }, align 32
@sm5504_muic_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.92, i32 0, i32 0, ptr null, i32 0, i32 3, i32 5, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 2, ptr @sm5504_irqs, i32 14, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 95, i64 128, i64 223, i64 255]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 36]
@__sancov_gen_cov_switch_values.95 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 64]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"sm5502_muic_i2c_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 837, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 839, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"sm5502_dt_match\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 798, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"sm5502_muic_pm_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 827, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"sm5502_i2c_id\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 830, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 698, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 702, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 704, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"sm5502_muic_regmap_config\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 298, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 706, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 709, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 720, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 739, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c"sm5502_extcon_cable\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 129, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 749, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 756, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 768, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 547, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"prev_cable_type\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 474, i32 22 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 506, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 369, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 384, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 391, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 439, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 456, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 463, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 327, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 333, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 347, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 353, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 623, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 641, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 652, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 662, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [12 x i8] c"sm5502_data\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 778, i32 33 }
@___asan_gen_.318 = private unnamed_addr constant [12 x i8] c"sm5504_data\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 788, i32 33 }
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"sm5502_muic_irqs\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 188, i32 24 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"sm5502_reg_data\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 74, i32 24 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 189, i32 28 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 190, i32 28 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 191, i32 25 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 192, i32 26 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 193, i32 26 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 194, i32 31 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 195, i32 31 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 196, i32 33 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 197, i32 30 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 198, i32 30 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 199, i32 29 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 200, i32 31 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 201, i32 35 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 202, i32 26 }
@___asan_gen_.369 = private unnamed_addr constant [12 x i8] c"sm5502_irqs\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 206, i32 32 }
@___asan_gen_.372 = private unnamed_addr constant [21 x i8] c"sm5502_muic_irq_chip\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 226, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"sm5504_muic_irqs\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 237, i32 24 }
@___asan_gen_.378 = private unnamed_addr constant [16 x i8] c"sm5504_reg_data\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 102, i32 24 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 240, i32 29 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 241, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 243, i32 29 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 245, i32 29 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 246, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 247, i32 26 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 248, i32 29 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 249, i32 31 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 251, i32 35 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 276, i32 12 }
@___asan_gen_.411 = private unnamed_addr constant [12 x i8] c"sm5504_irqs\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 255, i32 32 }
@___asan_gen_.414 = private unnamed_addr constant [21 x i8] c"sm5504_muic_irq_chip\00", align 1
@___asan_gen_.415 = private constant [34 x i8] c"../drivers/extcon/extcon-sm5502.c\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 275, i32 37 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__initcall__kmod_extcon_sm5502__291_851_sm5502_muic_i2c_init4, ptr @sm5022_muic_i2c_probe._entry, ptr @sm5022_muic_i2c_probe._entry.10, ptr @sm5022_muic_i2c_probe._entry.13, ptr @sm5022_muic_i2c_probe._entry.16, ptr @sm5022_muic_i2c_probe._entry.19, ptr @sm5022_muic_i2c_probe._entry.22, ptr @sm5022_muic_i2c_probe._entry_ptr, ptr @sm5022_muic_i2c_probe._entry_ptr.12, ptr @sm5022_muic_i2c_probe._entry_ptr.15, ptr @sm5022_muic_i2c_probe._entry_ptr.18, ptr @sm5022_muic_i2c_probe._entry_ptr.21, ptr @sm5022_muic_i2c_probe._entry_ptr.24, ptr @sm5502_init_dev_type._entry, ptr @sm5502_init_dev_type._entry.64, ptr @sm5502_init_dev_type._entry_ptr, ptr @sm5502_init_dev_type._entry_ptr.67, ptr @sm5502_muic_detect_cable_wq._entry, ptr @sm5502_muic_detect_cable_wq._entry_ptr, ptr @sm5502_muic_get_cable_type._entry, ptr @sm5502_muic_get_cable_type._entry.36, ptr @sm5502_muic_get_cable_type._entry.40, ptr @sm5502_muic_get_cable_type._entry.43, ptr @sm5502_muic_get_cable_type._entry_ptr, ptr @sm5502_muic_get_cable_type._entry_ptr.38, ptr @sm5502_muic_get_cable_type._entry_ptr.41, ptr @sm5502_muic_get_cable_type._entry_ptr.45, ptr @sm5502_muic_irq_handler._entry, ptr @sm5502_muic_irq_handler._entry_ptr, ptr @sm5502_muic_irq_work._entry, ptr @sm5502_muic_irq_work._entry_ptr, ptr @sm5502_muic_set_path._entry, ptr @sm5502_muic_set_path._entry.48, ptr @sm5502_muic_set_path._entry.51, ptr @sm5502_muic_set_path._entry.54, ptr @sm5502_muic_set_path._entry_ptr, ptr @sm5502_muic_set_path._entry_ptr.50, ptr @sm5502_muic_set_path._entry_ptr.53, ptr @sm5502_muic_set_path._entry_ptr.56, ptr @sm5502_muic_i2c_driver, ptr @.str, ptr @sm5502_dt_match, ptr @sm5502_muic_pm_ops, ptr @sm5502_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sm5022_muic_i2c_probe.__key, ptr @.str.6, ptr @sm5022_muic_i2c_probe.__key.7, ptr @.str.8, ptr @sm5022_muic_i2c_probe._key, ptr @sm5502_muic_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @sm5502_extcon_cable, ptr @.str.20, ptr @.str.23, ptr @sm5022_muic_i2c_probe.__key.25, ptr @.str.26, ptr @sm5022_muic_i2c_probe.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @sm5502_muic_cable_handler.prev_cable_type, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @sm5502_data, ptr @sm5504_data, ptr @sm5502_muic_irqs, ptr @sm5502_reg_data, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @sm5502_irqs, ptr @sm5502_muic_irq_chip, ptr @sm5504_muic_irqs, ptr @sm5504_reg_data, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @sm5504_irqs, ptr @sm5504_muic_irq_chip], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_extcon_cable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5022_muic_i2c_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_cable_handler.prev_cable_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_get_cable_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_get_cable_type._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_get_cable_type._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_get_cable_type._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_set_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_set_path._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_set_path._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_set_path._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_detect_cable_wq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_init_dev_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_init_dev_type._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5504_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_irqs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_reg_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_irqs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5502_muic_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5504_muic_irqs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5504_reg_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5504_irqs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm5504_muic_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm5502_muic_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sm5502_muic_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm5022_muic_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %reg_data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup122_crit_edge, label %if.end

entry.cleanup122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 268, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup122_crit_edge, label %if.end4

if.end.cleanup122_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %i2c7 = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %i2c7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c, ptr %i2c7, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq8 = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %irq8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq8, align 4
  %call10 = tail call ptr @device_get_match_data(ptr noundef %dev) #7
  %type = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %type, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end4.cleanup122_crit_edge, label %if.end14

if.end4.cleanup122_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end14:                                         ; preds = %if.end4
  %parse_irq = getelementptr inbounds %struct.sm5502_type, ptr %call10, i32 0, i32 6
  %9 = ptrtoint ptr %parse_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parse_irq, align 4
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %do.end, label %do.body20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #10
  br label %cleanup122

do.body20:                                        ; preds = %if.end14
  %mutex = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @sm5022_muic_i2c_probe.__key) #7
  %irq_work = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #7
  %13 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @sm5022_muic_i2c_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry27 = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry27, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sm5502_muic_irq_work, ptr %func, align 4
  %call31 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @sm5502_muic_regmap_config, ptr noundef nonnull @sm5022_muic_i2c_probe._key, ptr noundef nonnull @.str.9) #7
  %regmap = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call31, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end41

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call31 to i32
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11, i32 noundef %18) #10
  br label %cleanup122

if.end41:                                         ; preds = %do.body20
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %23 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq8, align 4
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type, align 4
  %irq_chip = getelementptr inbounds %struct.sm5502_type, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_chip, align 4
  %irq_data = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 5
  %call46 = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %22, ptr noundef %call31, i32 noundef %24, i32 noundef 8322, i32 noundef 0, ptr noundef %28, ptr noundef %irq_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp.not = icmp eq i32 %call46, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end50

for.cond.preheader:                               ; preds = %if.end41
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type, align 4
  %num_muic_irqs204 = getelementptr inbounds %struct.sm5502_type, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %num_muic_irqs204 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_muic_irqs204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp55205.not = icmp eq i32 %32, 0
  br i1 %cmp55205.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %35 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.14, i32 noundef %36, i32 noundef %call46) #10
  br label %cleanup122

for.cond:                                         ; preds = %if.end62
  %inc = add nuw i32 %i.0206, 1
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %type, align 4
  %num_muic_irqs = getelementptr inbounds %struct.sm5502_type, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %num_muic_irqs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_muic_irqs, align 4
  %cmp55 = icmp ult i32 %inc, %40
  br i1 %cmp55, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %41 = phi ptr [ %38, %for.cond.for.body_crit_edge ], [ %30, %for.cond.preheader.for.body_crit_edge ]
  %i.0206 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %arrayidx = getelementptr %struct.muic_irq, ptr %43, i32 %i.0206
  %44 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_data, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %call59 = tail call i32 @regmap_irq_get_virq(ptr noundef %45, i32 noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %for.body.cleanup122_crit_edge, label %if.end62

for.body.cleanup122_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end62:                                         ; preds = %for.body
  %virq63 = getelementptr %struct.muic_irq, ptr %43, i32 %i.0206, i32 2
  %48 = ptrtoint ptr %virq63 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call59, ptr %virq63, align 4
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %name = getelementptr %struct.muic_irq, ptr %43, i32 %i.0206, i32 1
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 4
  %call65 = tail call i32 @devm_request_threaded_irq(ptr noundef %50, i32 noundef %call59, ptr noundef null, ptr noundef nonnull @sm5502_muic_irq_handler, i32 noundef 24576, ptr noundef %52, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %for.cond, label %do.end70

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.17, i32 noundef %56, i32 noundef %call65) #10
  br label %cleanup122

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %call76 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %58, ptr noundef nonnull @sm5502_extcon_cable) #7
  %edev = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 1
  %59 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call76, ptr %edev, align 4
  %cmp.i196 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i196, label %do.end82, label %if.end84

do.end82:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.20) #10
  br label %cleanup122

if.end84:                                         ; preds = %for.end
  %call87 = tail call i32 @devm_extcon_dev_register(ptr noundef %61, ptr noundef %call76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.body96, label %do.end92

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.23) #10
  br label %cleanup122

do.body96:                                        ; preds = %if.end84
  %wq_detcable = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %wq_detcable, i32 noundef 0) #7
  %64 = ptrtoint ptr %wq_detcable to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %wq_detcable, align 4
  %lockdep_map104 = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map104, ptr noundef nonnull @.str.26, ptr noundef nonnull @sm5022_muic_i2c_probe.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry107 = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %65 = ptrtoint ptr %entry107 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry107, ptr %entry107, align 4
  %prev.i197 = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i197 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry107, ptr %prev.i197, align 4
  %func110 = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %67 = ptrtoint ptr %func110 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @sm5502_muic_detect_cable_wq, ptr %func110, align 4
  %timer = getelementptr inbounds %struct.sm5502_muic_info, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @sm5022_muic_i2c_probe.__key.27) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %68 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i198 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %wq_detcable, i32 noundef 1700) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i) #7
  %69 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %reg_data.i, align 4, !annotation !214
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call.i199 = call i32 @regmap_read(ptr noundef %71, i32 noundef 1, ptr noundef nonnull %reg_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.62, i32 noundef %call.i199) #10
  br label %sm5502_init_dev_type.exit

if.end.i:                                         ; preds = %do.body96
  %74 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_data.i, align 4
  %and.i = and i32 %75, 3
  %and1.i = lshr i32 %75, 3
  %shr2.i = and i32 %and1.i, 31
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.65, i32 noundef %shr2.i, i32 noundef %and.i) #10
  %78 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %type, align 4
  %num_reg_data44.i = getelementptr inbounds %struct.sm5502_type, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %num_reg_data44.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_reg_data44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp45.not.i = icmp eq i32 %81, 0
  br i1 %cmp45.not.i, label %if.end.i.sm5502_init_dev_type.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.sm5502_init_dev_type.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm5502_init_dev_type.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %82 = phi ptr [ %94, %for.body.i.for.body.i_crit_edge ], [ %79, %if.end.i.for.body.i_crit_edge ]
  %i.046.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %reg_data8.i = getelementptr inbounds %struct.sm5502_type, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %reg_data8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_data8.i, align 4
  %invert.i = getelementptr %struct.reg_data, ptr %84, i32 %i.046.i, i32 2
  %85 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %invert.i, align 4, !range !215
  %val14.i = getelementptr %struct.reg_data, ptr %84, i32 %i.046.i, i32 1
  %87 = ptrtoint ptr %val14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val14.i, align 4
  %sext.i = add nsw i8 %86, -1
  %neg.i = sext i8 %sext.i to i32
  %val.0.i = xor i32 %88, %neg.i
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 4
  %arrayidx23.i = getelementptr %struct.reg_data, ptr %84, i32 %i.046.i
  %91 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx23.i, align 4
  %conv.i = zext i8 %92 to i32
  %call24.i = call i32 @regmap_write(ptr noundef %90, i32 noundef %conv.i, i32 noundef %val.0.i) #7
  %inc.i = add nuw i32 %i.046.i, 1
  %93 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %type, align 4
  %num_reg_data.i = getelementptr inbounds %struct.sm5502_type, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %num_reg_data.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_reg_data.i, align 4
  %cmp.i200 = icmp ult i32 %inc.i, %96
  br i1 %cmp.i200, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sm5502_init_dev_type.exit_crit_edge

for.body.i.sm5502_init_dev_type.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm5502_init_dev_type.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sm5502_init_dev_type.exit:                        ; preds = %for.body.i.sm5502_init_dev_type.exit_crit_edge, %if.end.i.sm5502_init_dev_type.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i) #7
  br label %cleanup122

cleanup122:                                       ; preds = %sm5502_init_dev_type.exit, %do.end92, %do.end82, %do.end70, %for.body.cleanup122_crit_edge, %do.end50, %if.then34, %do.end, %if.end4.cleanup122_crit_edge, %if.end.cleanup122_crit_edge, %entry.cleanup122_crit_edge
  %retval.2 = phi i32 [ %18, %if.then34 ], [ %call46, %do.end50 ], [ -12, %do.end82 ], [ %call87, %do.end92 ], [ 0, %sm5502_init_dev_type.exit ], [ -22, %do.end ], [ -22, %entry.cleanup122_crit_edge ], [ -12, %if.end.cleanup122_crit_edge ], [ -22, %if.end4.cleanup122_crit_edge ], [ %call65, %do.end70 ], [ -22, %for.body.cleanup122_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm5502_muic_irq_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  %edev = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %irq_attach = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %irq_attach to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_attach, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @sm5502_muic_cable_handler(ptr noundef %add.ptr, i1 noundef zeroext true)
  %4 = ptrtoint ptr %irq_attach to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %irq_attach, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ]
  %irq_detach = getelementptr i8, ptr %work, i32 -3
  %5 = ptrtoint ptr %irq_detach to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %irq_detach, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @sm5502_muic_cable_handler(ptr noundef %add.ptr, i1 noundef zeroext false)
  %7 = ptrtoint ptr %irq_detach to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %irq_detach, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %ret.1 = phi i32 [ %call7, %if.then6 ], [ %ret.0, %if.end4.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp = icmp slt i32 %ret.1, 0
  br i1 %cmp, label %do.end, label %if.end9.if.end11_crit_edge

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.29) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end9.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm5502_muic_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.sm5502_muic_info, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %num_muic_irqs = getelementptr inbounds %struct.sm5502_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_muic_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_muic_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %irq_type.028 = phi i32 [ -1, %for.body.lr.ph ], [ %irq_type.1, %for.inc.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %virq = getelementptr %struct.muic_irq, ptr %5, i32 %i.026, i32 2
  %6 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %irq)
  %cmp2 = icmp eq i32 %7, %irq
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.muic_irq, ptr %5, i32 %i.026
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %irq_type.1 = phi i32 [ %9, %if.then ], [ %irq_type.028, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %irq_type.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %irq_type.1, %for.inc.for.end_crit_edge ]
  %parse_irq = getelementptr inbounds %struct.sm5502_type, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %parse_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parse_irq, align 4
  %call = tail call i32 %11(ptr noundef %data, i32 noundef %irq_type.0.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %do.end, label %if.end10

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.57, i32 noundef %irq_type.0.lcssa) #10
  br label %cleanup

if.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_work = getelementptr inbounds %struct.sm5502_muic_info, ptr %data, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %irq_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm5502_muic_detect_cable_wq(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -168
  %call1 = tail call fastcc i32 @sm5502_muic_cable_handler(ptr noundef %add.ptr, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.60) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm5502_muic_cable_handler(ptr nocapture noundef readonly %info, i1 noundef zeroext %attached) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %attached, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @sm5502_muic_get_cable_type(ptr noundef %info)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @sm5502_muic_cable_handler.prev_cable_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cable_type.0 = phi i32 [ %call, %if.then ], [ %0, %if.else ]
  store i32 %cable_type.0, ptr @sm5502_muic_cable_handler.prev_cable_type, align 4
  %1 = zext i32 %cable_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cable_type.0, label %do.body [
    i32 95, label %if.end.sw.epilog_crit_edge
    i32 223, label %sw.bb1
    i32 128, label %if.end.sw.bb2_crit_edge
    i32 255, label %if.end.sw.bb2_crit_edge41
  ]

if.end.sw.bb2_crit_edge41:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge41
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm5502_muic_cable_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm5502_muic_cable_handler, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !216

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm5502_muic_cable_handler.__UNIQUE_ID_ddebug290, ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %cable_type.0) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %con_sw.0 = phi i32 [ 36, %sw.bb2 ], [ 0, %sw.bb1 ], [ 36, %if.end.sw.epilog_crit_edge ]
  %vbus_sw.0 = phi i32 [ 0, %sw.bb2 ], [ 1, %sw.bb1 ], [ 3, %if.end.sw.epilog_crit_edge ]
  %cmp16 = phi i1 [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ true, %if.end.sw.epilog_crit_edge ]
  %id.0 = phi i32 [ 2, %sw.bb2 ], [ 6, %sw.bb1 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %spec.select.i = select i1 %attached, i32 %con_sw.0, i32 0
  %spec.select35.i = select i1 %attached, i32 %vbus_sw.0, i32 0
  %4 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %spec.select.i, label %do.end5.i [
    i32 0, label %sw.epilog.sw.bb.i_crit_edge
    i32 36, label %sw.epilog.sw.bb.i_crit_edge42
  ]

sw.epilog.sw.bb.i_crit_edge42:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sw.epilog.sw.bb.i_crit_edge, %sw.epilog.sw.bb.i_crit_edge42
  %regmap.i = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 19, i32 noundef 252, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.46) #10
  br label %cleanup

do.end5.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.49, i32 noundef %spec.select.i) #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb.i
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 19, i32 noundef 3, i32 noundef %spec.select35.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp10.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end13

do.end14.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.52) #10
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog.i
  %edev = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edev, align 4
  %call15 = tail call i32 @extcon_set_state_sync(ptr noundef %16, i32 noundef %id.0, i1 noundef zeroext %attached) #7
  br i1 %cmp16, label %if.then17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edev, align 4
  %call20 = tail call i32 @extcon_set_state_sync(ptr noundef %18, i32 noundef 5, i1 noundef zeroext %attached) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %do.end14.i, %do.end5.i, %do.end.i, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then17 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %do.body ], [ %call.i36.i, %do.end14.i ], [ %call.i.i, %do.end.i ], [ -22, %do.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm5502_muic_get_cable_type(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %adc = alloca i32, align 4
  %dev_type1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc) #7
  %0 = ptrtoint ptr %adc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %adc, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_type1) #7
  %1 = ptrtoint ptr %dev_type1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dev_type1, align 4, !annotation !214
  %regmap = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 7, ptr noundef nonnull %adc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adc, align 4
  %and = and i32 %7, 31
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %and, label %if.end.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %if.end.cleanup_crit_edge
    i32 2, label %if.end.cleanup_crit_edge87
    i32 3, label %if.end.cleanup_crit_edge88
    i32 4, label %if.end.cleanup_crit_edge89
    i32 5, label %if.end.cleanup_crit_edge90
    i32 6, label %if.end.cleanup_crit_edge91
    i32 7, label %if.end.cleanup_crit_edge92
    i32 8, label %if.end.cleanup_crit_edge93
    i32 9, label %if.end.cleanup_crit_edge94
    i32 10, label %if.end.cleanup_crit_edge95
    i32 11, label %if.end.cleanup_crit_edge96
    i32 12, label %if.end.cleanup_crit_edge97
    i32 13, label %if.end.cleanup_crit_edge98
    i32 14, label %if.end.cleanup_crit_edge99
    i32 15, label %if.end.cleanup_crit_edge100
    i32 16, label %if.end.cleanup_crit_edge101
    i32 17, label %if.end.cleanup_crit_edge102
    i32 18, label %if.end.cleanup_crit_edge103
    i32 19, label %if.end.cleanup_crit_edge104
    i32 20, label %if.end.cleanup_crit_edge105
    i32 21, label %if.end.cleanup_crit_edge106
    i32 22, label %if.end.cleanup_crit_edge107
    i32 23, label %if.end.cleanup_crit_edge108
    i32 24, label %if.end.cleanup_crit_edge109
    i32 25, label %if.end.cleanup_crit_edge110
    i32 26, label %if.end.cleanup_crit_edge111
    i32 27, label %if.end.cleanup_crit_edge112
    i32 28, label %if.end.cleanup_crit_edge113
    i32 29, label %if.end.cleanup_crit_edge114
    i32 30, label %if.end.cleanup_crit_edge115
    i32 31, label %sw.bb23
  ]

if.end.cleanup_crit_edge115:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge114:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge113:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge112:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge111:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge110:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge109:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge108:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge107:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge106:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge105:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge104:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge103:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge102:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge101:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge100:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge99:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge98:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge97:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge96:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge95:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge94:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge93:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge92:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge91:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge90:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge89:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge88:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge87:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %10, i32 noundef 10, ptr noundef nonnull %dev_type1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %13 = ptrtoint ptr %dev_type1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_type1, align 4
  %type = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type, align 4
  %otg_dev_type1 = getelementptr inbounds %struct.sm5502_type, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %otg_dev_type1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %otg_dev_type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp = icmp eq i32 %14, %18
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %do.body11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm5502_muic_get_cable_type, %if.then16)) #7
          to label %cleanup [label %if.then16], !srcloc !216

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %21 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %adc, align 4
  %23 = ptrtoint ptr %dev_type1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_type1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug288, ptr noundef %20, ptr noundef nonnull @.str.39, i32 noundef %22, i32 noundef %24) #7
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_read(ptr noundef %26, i32 noundef 10, ptr noundef nonnull %dev_type1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end32:                                         ; preds = %sw.bb23
  %29 = ptrtoint ptr %dev_type1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_type1, align 4
  %type33 = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 4
  %31 = ptrtoint ptr %type33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type33, align 4
  %otg_dev_type134 = getelementptr inbounds %struct.sm5502_type, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %otg_dev_type134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %otg_dev_type134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %34)
  %cmp35 = icmp eq i32 %30, %34
  br i1 %cmp35, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %35 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %30, label %do.body40 [
    i32 4, label %if.end37.cleanup_crit_edge
    i32 64, label %sw.bb39
  ]

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb39:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm5502_muic_get_cable_type, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !216

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  %38 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %adc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug289, ptr noundef %37, ptr noundef nonnull @.str.42, i32 noundef %39) #7
  br label %cleanup

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

cleanup:                                          ; preds = %if.then52, %do.body40, %sw.bb39, %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end30, %if.then16, %do.body11, %if.end9.cleanup_crit_edge, %do.end7, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge87, %if.end.cleanup_crit_edge88, %if.end.cleanup_crit_edge89, %if.end.cleanup_crit_edge90, %if.end.cleanup_crit_edge91, %if.end.cleanup_crit_edge92, %if.end.cleanup_crit_edge93, %if.end.cleanup_crit_edge94, %if.end.cleanup_crit_edge95, %if.end.cleanup_crit_edge96, %if.end.cleanup_crit_edge97, %if.end.cleanup_crit_edge98, %if.end.cleanup_crit_edge99, %if.end.cleanup_crit_edge100, %if.end.cleanup_crit_edge101, %if.end.cleanup_crit_edge102, %if.end.cleanup_crit_edge103, %if.end.cleanup_crit_edge104, %if.end.cleanup_crit_edge105, %if.end.cleanup_crit_edge106, %if.end.cleanup_crit_edge107, %if.end.cleanup_crit_edge108, %if.end.cleanup_crit_edge109, %if.end.cleanup_crit_edge110, %if.end.cleanup_crit_edge111, %if.end.cleanup_crit_edge112, %if.end.cleanup_crit_edge113, %if.end.cleanup_crit_edge114, %if.end.cleanup_crit_edge115, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call25, %do.end30 ], [ %call2, %do.end7 ], [ -22, %if.then16 ], [ -22, %if.then52 ], [ 223, %sw.bb39 ], [ %and, %if.end.cleanup_crit_edge ], [ %and, %if.end.cleanup_crit_edge87 ], [ %and, %if.end.cleanup_crit_edge88 ], [ %and, %if.end.cleanup_crit_edge89 ], [ %and, %if.end.cleanup_crit_edge90 ], [ %and, %if.end.cleanup_crit_edge91 ], [ %and, %if.end.cleanup_crit_edge92 ], [ %and, %if.end.cleanup_crit_edge93 ], [ %and, %if.end.cleanup_crit_edge94 ], [ %and, %if.end.cleanup_crit_edge95 ], [ %and, %if.end.cleanup_crit_edge96 ], [ %and, %if.end.cleanup_crit_edge97 ], [ %and, %if.end.cleanup_crit_edge98 ], [ %and, %if.end.cleanup_crit_edge99 ], [ %and, %if.end.cleanup_crit_edge100 ], [ %and, %if.end.cleanup_crit_edge101 ], [ %and, %if.end.cleanup_crit_edge102 ], [ %and, %if.end.cleanup_crit_edge103 ], [ %and, %if.end.cleanup_crit_edge104 ], [ %and, %if.end.cleanup_crit_edge105 ], [ %and, %if.end.cleanup_crit_edge106 ], [ %and, %if.end.cleanup_crit_edge107 ], [ %and, %if.end.cleanup_crit_edge108 ], [ %and, %if.end.cleanup_crit_edge109 ], [ %and, %if.end.cleanup_crit_edge110 ], [ %and, %if.end.cleanup_crit_edge111 ], [ %and, %if.end.cleanup_crit_edge112 ], [ %and, %if.end.cleanup_crit_edge113 ], [ %and, %if.end.cleanup_crit_edge114 ], [ %and, %if.end.cleanup_crit_edge115 ], [ 128, %if.end9.cleanup_crit_edge ], [ 255, %if.end32.cleanup_crit_edge ], [ 95, %if.end37.cleanup_crit_edge ], [ -22, %do.body11 ], [ -22, %do.body40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_type1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sm5502_muic_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 2
  ret i1 %switch
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sm5502_parse_irq(ptr nocapture noundef writeonly %info, i32 noundef %irq_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %irq_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %irq_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_attach = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 7
  %1 = ptrtoint ptr %irq_attach to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %irq_attach, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_detach = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 8
  %2 = ptrtoint ptr %irq_detach to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %irq_detach, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sm5504_parse_irq(ptr nocapture noundef writeonly %info, i32 noundef %irq_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %irq_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %irq_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_attach = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 7
  %1 = ptrtoint ptr %irq_attach to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %irq_attach, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_detach = getelementptr inbounds %struct.sm5502_muic_info, ptr %info, i32 0, i32 8
  %2 = ptrtoint ptr %irq_detach to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %irq_detach, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm5502_muic_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.sm5502_muic_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm5502_muic_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.sm5502_muic_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @__initcall__kmod_extcon_sm5502__291_851_sm5502_muic_i2c_init4, !1, !"__initcall__kmod_extcon_sm5502__291_851_sm5502_muic_i2c_init4", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-sm5502.c", i32 851, i32 1}
!2 = !{ptr @__UNIQUE_ID_description292, !3, !"__UNIQUE_ID_description292", i1 false, i1 false}
!3 = !{!"../drivers/extcon/extcon-sm5502.c", i32 853, i32 1}
!4 = !{ptr @__UNIQUE_ID_author293, !5, !"__UNIQUE_ID_author293", i1 false, i1 false}
!5 = !{!"../drivers/extcon/extcon-sm5502.c", i32 854, i32 1}
!6 = !{ptr @__UNIQUE_ID_file294, !7, !"__UNIQUE_ID_file294", i1 false, i1 false}
!7 = !{!"../drivers/extcon/extcon-sm5502.c", i32 855, i32 1}
!8 = !{ptr @__UNIQUE_ID_license295, !7, !"__UNIQUE_ID_license295", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/extcon/extcon-sm5502.c", i32 839, i32 11}
!11 = !{ptr @sm5502_muic_i2c_driver, !12, !"sm5502_muic_i2c_driver", i1 false, i1 false}
!12 = !{!"../drivers/extcon/extcon-sm5502.c", i32 837, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/extcon/extcon-sm5502.c", i32 698, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sm5022_muic_i2c_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @sm5022_muic_i2c_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @sm5022_muic_i2c_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/extcon/extcon-sm5502.c", i32 702, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sm5022_muic_i2c_probe.__key.7, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/extcon/extcon-sm5502.c", i32 704, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sm5022_muic_i2c_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/extcon/extcon-sm5502.c", i32 706, i32 17}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/extcon/extcon-sm5502.c", i32 709, i32 3}
!32 = !{ptr @sm5022_muic_i2c_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sm5022_muic_i2c_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/extcon/extcon-sm5502.c", i32 720, i32 3}
!36 = !{ptr @sm5022_muic_i2c_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sm5022_muic_i2c_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/extcon/extcon-sm5502.c", i32 739, i32 4}
!40 = !{ptr @sm5022_muic_i2c_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sm5022_muic_i2c_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/extcon/extcon-sm5502.c", i32 749, i32 3}
!44 = !{ptr @sm5022_muic_i2c_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sm5022_muic_i2c_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/extcon/extcon-sm5502.c", i32 756, i32 3}
!48 = !{ptr @sm5022_muic_i2c_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sm5022_muic_i2c_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @sm5022_muic_i2c_probe.__key.25, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/extcon/extcon-sm5502.c", i32 768, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sm5022_muic_i2c_probe.__key.27, !51, !"__key", i1 false, i1 false}
!54 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/extcon/extcon-sm5502.c", i32 547, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sm5502_muic_irq_work._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sm5502_muic_irq_work._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @sm5502_muic_cable_handler.prev_cable_type, !61, !"prev_cable_type", i1 false, i1 false}
!61 = !{!"../drivers/extcon/extcon-sm5502.c", i32 474, i32 22}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/extcon/extcon-sm5502.c", i32 506, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sm5502_muic_cable_handler.__UNIQUE_ID_ddebug290, !63, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/extcon/extcon-sm5502.c", i32 369, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sm5502_muic_get_cable_type._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sm5502_muic_get_cable_type._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/extcon/extcon-sm5502.c", i32 384, i32 4}
!74 = !{ptr @sm5502_muic_get_cable_type._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sm5502_muic_get_cable_type._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/extcon/extcon-sm5502.c", i32 391, i32 4}
!78 = !{ptr @sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug288, !77, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!79 = !{ptr @sm5502_muic_get_cable_type._entry.40, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/extcon/extcon-sm5502.c", i32 439, i32 4}
!81 = !{ptr @sm5502_muic_get_cable_type._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/extcon/extcon-sm5502.c", i32 456, i32 4}
!84 = !{ptr @sm5502_muic_get_cable_type.__UNIQUE_ID_ddebug289, !83, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/extcon/extcon-sm5502.c", i32 463, i32 3}
!87 = !{ptr @sm5502_muic_get_cable_type._entry.43, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @sm5502_muic_get_cable_type._entry_ptr.45, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/extcon/extcon-sm5502.c", i32 327, i32 4}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @sm5502_muic_set_path._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @sm5502_muic_set_path._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/extcon/extcon-sm5502.c", i32 333, i32 3}
!96 = !{ptr @sm5502_muic_set_path._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sm5502_muic_set_path._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/extcon/extcon-sm5502.c", i32 347, i32 4}
!100 = !{ptr @sm5502_muic_set_path._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sm5502_muic_set_path._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/extcon/extcon-sm5502.c", i32 353, i32 3}
!104 = !{ptr @sm5502_muic_set_path._entry.54, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @sm5502_muic_set_path._entry_ptr.56, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @sm5502_muic_regmap_config, !107, !"sm5502_muic_regmap_config", i1 false, i1 false}
!107 = !{!"../drivers/extcon/extcon-sm5502.c", i32 298, i32 35}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/extcon/extcon-sm5502.c", i32 623, i32 3}
!110 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @sm5502_muic_irq_handler._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @sm5502_muic_irq_handler._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @sm5502_extcon_cable, !115, !"sm5502_extcon_cable", i1 false, i1 false}
!115 = !{!"../drivers/extcon/extcon-sm5502.c", i32 129, i32 27}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/extcon/extcon-sm5502.c", i32 641, i32 3}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sm5502_muic_detect_cable_wq._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @sm5502_muic_detect_cable_wq._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/extcon/extcon-sm5502.c", i32 652, i32 3}
!123 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sm5502_init_dev_type._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @sm5502_init_dev_type._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/extcon/extcon-sm5502.c", i32 662, i32 2}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @sm5502_init_dev_type._entry.64, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @sm5502_init_dev_type._entry_ptr.67, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @sm5502_dt_match, !132, !"sm5502_dt_match", i1 false, i1 false}
!132 = !{!"../drivers/extcon/extcon-sm5502.c", i32 798, i32 34}
!133 = !{ptr @sm5502_data, !134, !"sm5502_data", i1 false, i1 false}
!134 = !{!"../drivers/extcon/extcon-sm5502.c", i32 778, i32 33}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/extcon/extcon-sm5502.c", i32 189, i32 28}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/extcon/extcon-sm5502.c", i32 190, i32 28}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/extcon/extcon-sm5502.c", i32 191, i32 25}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/extcon/extcon-sm5502.c", i32 192, i32 26}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/extcon/extcon-sm5502.c", i32 193, i32 26}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/extcon/extcon-sm5502.c", i32 194, i32 31}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/extcon/extcon-sm5502.c", i32 195, i32 31}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/extcon/extcon-sm5502.c", i32 196, i32 33}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/extcon/extcon-sm5502.c", i32 197, i32 30}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/extcon/extcon-sm5502.c", i32 198, i32 30}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/extcon/extcon-sm5502.c", i32 199, i32 29}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/extcon/extcon-sm5502.c", i32 200, i32 31}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/extcon/extcon-sm5502.c", i32 201, i32 35}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/extcon/extcon-sm5502.c", i32 202, i32 26}
!163 = !{ptr @sm5502_muic_irqs, !164, !"sm5502_muic_irqs", i1 false, i1 false}
!164 = !{!"../drivers/extcon/extcon-sm5502.c", i32 188, i32 24}
!165 = !{ptr @sm5502_muic_irq_chip, !166, !"sm5502_muic_irq_chip", i1 false, i1 false}
!166 = !{!"../drivers/extcon/extcon-sm5502.c", i32 226, i32 37}
!167 = !{ptr @sm5502_irqs, !168, !"sm5502_irqs", i1 false, i1 false}
!168 = !{!"../drivers/extcon/extcon-sm5502.c", i32 206, i32 32}
!169 = !{ptr @sm5502_reg_data, !170, !"sm5502_reg_data", i1 false, i1 false}
!170 = !{!"../drivers/extcon/extcon-sm5502.c", i32 74, i32 24}
!171 = !{ptr @sm5504_data, !172, !"sm5504_data", i1 false, i1 false}
!172 = !{!"../drivers/extcon/extcon-sm5502.c", i32 788, i32 33}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/extcon/extcon-sm5502.c", i32 240, i32 29}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/extcon/extcon-sm5502.c", i32 241, i32 29}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/extcon/extcon-sm5502.c", i32 243, i32 29}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/extcon/extcon-sm5502.c", i32 245, i32 29}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/extcon/extcon-sm5502.c", i32 246, i32 27}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/extcon/extcon-sm5502.c", i32 247, i32 26}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/extcon/extcon-sm5502.c", i32 248, i32 29}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/extcon/extcon-sm5502.c", i32 249, i32 31}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/extcon/extcon-sm5502.c", i32 251, i32 35}
!191 = !{ptr @sm5504_muic_irqs, !192, !"sm5504_muic_irqs", i1 false, i1 false}
!192 = !{!"../drivers/extcon/extcon-sm5502.c", i32 237, i32 24}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/extcon/extcon-sm5502.c", i32 276, i32 12}
!195 = !{ptr @sm5504_muic_irq_chip, !196, !"sm5504_muic_irq_chip", i1 false, i1 false}
!196 = !{!"../drivers/extcon/extcon-sm5502.c", i32 275, i32 37}
!197 = !{ptr @sm5504_irqs, !198, !"sm5504_irqs", i1 false, i1 false}
!198 = !{!"../drivers/extcon/extcon-sm5502.c", i32 255, i32 32}
!199 = !{ptr @sm5504_reg_data, !200, !"sm5504_reg_data", i1 false, i1 false}
!200 = !{!"../drivers/extcon/extcon-sm5502.c", i32 102, i32 24}
!201 = !{ptr @sm5502_muic_pm_ops, !202, !"sm5502_muic_pm_ops", i1 false, i1 false}
!202 = !{!"../drivers/extcon/extcon-sm5502.c", i32 827, i32 8}
!203 = !{ptr @sm5502_i2c_id, !204, !"sm5502_i2c_id", i1 false, i1 false}
!204 = !{!"../drivers/extcon/extcon-sm5502.c", i32 830, i32 35}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{!"auto-init"}
!215 = !{i8 0, i8 2}
!216 = !{i64 2149009279, i64 2149009284, i64 2149009297, i64 2149009341, i64 2149009375, i64 2149009396}
