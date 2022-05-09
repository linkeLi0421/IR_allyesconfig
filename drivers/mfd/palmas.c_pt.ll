; ModuleID = '/llk/IR_all_yes/drivers/mfd/palmas.c_pt.bc'
source_filename = "../drivers/mfd/palmas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+palmas_ext_control_req_config\22, \22a\22\09"
module asm "\09.weak\09__crc_palmas_ext_control_req_config\09\09\09\09"
module asm "\09.long\09__crc_palmas_ext_control_req_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_palmas_ext_control_req_config:\09\09\09\09\09"
module asm "\09.asciz \09\22palmas_ext_control_req_config\22\09\09\09\09\09"
module asm "__kstrtabns_palmas_ext_control_req_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.palmas_driver_data = type { ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.palmas_pmic_driver_data = type { i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.palmas_sleep_requestor_info = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.palmas_platform_data = type { i32, i32, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@palmas_ext_control_req_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Resource reg 0x%02x update failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"palmas_ext_control_req_config\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mfd/palmas.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@palmas_ext_control_req_config._entry_ptr = internal global ptr @palmas_ext_control_req_config._entry, section ".printk_index", align 4
@palmas_ext_control_req_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 368, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"POWER_CTRL register update failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@palmas_ext_control_req_config._entry_ptr.7 = internal global ptr @palmas_ext_control_req_config._entry.5, section ".printk_index", align 4
@__kstrtab_palmas_ext_control_req_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_palmas_ext_control_req_config = external dso_local constant [0 x i8], align 1
@__ksymtab_palmas_ext_control_req_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @palmas_ext_control_req_config to i32), ptr @__kstrtab_palmas_ext_control_req_config, ptr @__kstrtabns_palmas_ext_control_req_config }, section "___ksymtab_gpl+palmas_ext_control_req_config", align 4
@__initcall__kmod_palmas__293_747_palmas_i2c_init4 = internal global ptr @palmas_i2c_init, section ".initcall4.init", align 4
@palmas_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @palmas_i2c_probe, ptr @palmas_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @palmas_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_palmas_i2c_exit = internal global ptr @palmas_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [50 x i8] c"palmas.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [60 x i8] c"palmas.description=Palmas chip family multi-function driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [31 x i8] c"palmas.file=drivers/mfd/palmas\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"palmas.license=GPL\00", section ".modinfo", align 1
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"palmas\00", [25 x i8] zeroinitializer }, align 32
@of_palmas_match_tbl = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps659038\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps659038_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65917\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65917_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@palmas_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"palmas\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"twl6035\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"twl6037\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps65913\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@palmas_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 556, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't attach client %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"palmas_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@palmas_i2c_probe._entry_ptr = internal global ptr @palmas_i2c_probe._entry, section ".printk_index", align 4
@palmas_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@palmas_regmap_config = internal constant { [3 x %struct.regmap_config], [156 x i8] } { [3 x %struct.regmap_config] [%struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 254, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 213, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 220, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [156 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"palmas:563:(&palmas_regmap_config[i])->lock\00", [52 x i8] zeroinitializer }, align 32
@palmas_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate regmap %d, err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@palmas_i2c_probe._entry_ptr.14 = internal global ptr @palmas_i2c_probe._entry.12, section ".printk_index", align 4
@palmas_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 574, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ missing: skipping irq request\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@palmas_i2c_probe._entry_ptr.18 = internal global ptr @palmas_i2c_probe._entry.15, section ".printk_index", align 4
@palmas_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.2, i32 587, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"POLARITY_CTRL update failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@palmas_i2c_probe._entry_ptr.21 = internal global ptr @palmas_i2c_probe._entry.19, section ".printk_index", align 4
@palmas_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.2, i32 666, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Muxing GPIO %x, PWM %x, LED %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@palmas_i2c_probe._entry_ptr.25 = internal global ptr @palmas_i2c_probe._entry.22, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@palmas_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,mux-pad1\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,mux-pad2\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,power-ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,system-power-controller\00", [37 x i8] zeroinitializer }, align 32
@palmas_set_pdata_irq_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid IRQ: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"palmas_set_pdata_irq_flag\00", [38 x i8] zeroinitializer }, align 32
@palmas_set_pdata_irq_flag._entry_ptr = internal global ptr @palmas_set_pdata_irq_flag._entry, section ".printk_index", align 4
@palmas_set_pdata_irq_flag._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 385, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Irq flag is 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@palmas_set_pdata_irq_flag._entry_ptr.34 = internal global ptr @palmas_set_pdata_irq_flag._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti,palmas-override-powerhold\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,tps65917\00", [20 x i8] zeroinitializer }, align 32
@palmas_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 448, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to write PRIMARY_SECONDARY_PAD2 %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"palmas_power_off\00", [47 x i8] zeroinitializer }, align 32
@palmas_power_off._entry_ptr = internal global ptr @palmas_power_off._entry, section ".printk_index", align 4
@palmas_power_off._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Unable to write to DEV_CTRL_DEV_ON: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@palmas_power_off._entry_ptr.41 = internal global ptr @palmas_power_off._entry.39, section ".printk_index", align 4
@palmas_data = internal global { %struct.palmas_driver_data, [24 x i8] } { %struct.palmas_driver_data { ptr @palmas_features, ptr @palmas_irq_chip }, [24 x i8] zeroinitializer }, align 32
@tps659038_data = internal global { %struct.palmas_driver_data, [24 x i8] } { %struct.palmas_driver_data { ptr @tps659038_features, ptr @palmas_irq_chip }, [24 x i8] zeroinitializer }, align 32
@tps65917_data = internal global { %struct.palmas_driver_data, [24 x i8] } { %struct.palmas_driver_data { ptr @tps659038_features, ptr @tps65917_irq_chip }, [24 x i8] zeroinitializer }, align 32
@palmas_features = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@palmas_irqs = internal constant { [32 x %struct.regmap_irq], [288 x i8] } { [32 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }], [288 x i8] zeroinitializer }, align 32
@palmas_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.8, i32 0, i32 0, ptr null, i32 0, i32 16, i32 17, i32 0, i32 0, i32 0, i32 0, ptr null, i32 5, i8 0, i8 0, i32 4, ptr @palmas_irqs, i32 32, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tps659038_features = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps65917\00", [23 x i8] zeroinitializer }, align 32
@tps65917_irqs = internal constant { [32 x %struct.regmap_irq], [288 x i8] } { [32 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 15, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 31, %struct.regmap_irq_type zeroinitializer }], [288 x i8] zeroinitializer }, align 32
@tps65917_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.43, i32 0, i32 0, ptr null, i32 0, i32 16, i32 17, i32 0, i32 0, i32 0, i32 0, ptr null, i32 5, i8 0, i8 0, i32 4, ptr @tps65917_irqs, i32 32, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 24]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 64, i64 96]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 358, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 367, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"palmas_i2c_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 732, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 734, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"of_palmas_match_tbl\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 488, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"palmas_i2c_id\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 723, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 555, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"palmas_regmap_config\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 23, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 562, i32 23 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 566, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 574, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 587, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 664, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"palmas_dev\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 423, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 396, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 402, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 409, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 420, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 380, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 385, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 431, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 436, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 446, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 461, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"palmas_data\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 473, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"tps659038_data\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 478, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"tps65917_data\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 483, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"palmas_features\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 465, i32 21 }
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"palmas_irqs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 171, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"palmas_irq_chip\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 298, i32 31 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"tps659038_features\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 466, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 312, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"tps65917_irqs\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 44, i32 32 }
@___asan_gen_.208 = private unnamed_addr constant [18 x i8] c"tps65917_irq_chip\00", align 1
@___asan_gen_.209 = private constant [24 x i8] c"../drivers/mfd/palmas.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 311, i32 31 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_palmas_i2c_exit, ptr @__initcall__kmod_palmas__293_747_palmas_i2c_init4, ptr @__ksymtab_palmas_ext_control_req_config, ptr @palmas_ext_control_req_config._entry, ptr @palmas_ext_control_req_config._entry.5, ptr @palmas_ext_control_req_config._entry_ptr, ptr @palmas_ext_control_req_config._entry_ptr.7, ptr @palmas_i2c_exit, ptr @palmas_i2c_probe._entry, ptr @palmas_i2c_probe._entry.12, ptr @palmas_i2c_probe._entry.15, ptr @palmas_i2c_probe._entry.19, ptr @palmas_i2c_probe._entry.22, ptr @palmas_i2c_probe._entry_ptr, ptr @palmas_i2c_probe._entry_ptr.14, ptr @palmas_i2c_probe._entry_ptr.18, ptr @palmas_i2c_probe._entry_ptr.21, ptr @palmas_i2c_probe._entry_ptr.25, ptr @palmas_power_off._entry, ptr @palmas_power_off._entry.39, ptr @palmas_power_off._entry_ptr, ptr @palmas_power_off._entry_ptr.41, ptr @palmas_set_pdata_irq_flag._entry, ptr @palmas_set_pdata_irq_flag._entry.32, ptr @palmas_set_pdata_irq_flag._entry_ptr, ptr @palmas_set_pdata_irq_flag._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @palmas_i2c_driver, ptr @.str.8, ptr @of_palmas_match_tbl, ptr @palmas_i2c_id, ptr @.str.9, ptr @.str.10, ptr @palmas_i2c_probe._key, ptr @palmas_regmap_config, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @palmas_dev, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @palmas_data, ptr @tps659038_data, ptr @tps65917_data, ptr @palmas_features, ptr @palmas_irqs, ptr @palmas_irq_chip, ptr @tps659038_features, ptr @.str.43, ptr @tps65917_irqs, ptr @tps65917_irq_chip], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ext_control_req_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ext_control_req_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_palmas_match_tbl to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_regmap_config to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_set_pdata_irq_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_set_pdata_irq_flag._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_power_off._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps659038_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_irqs to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps659038_features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_irqs to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @palmas_ext_control_req_config(ptr nocapture noundef readonly %palmas, i32 noundef %id, i32 noundef %ext_ctrl, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pmic_ddata1 = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 9
  %0 = ptrtoint ptr %pmic_ddata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmic_ddata1, align 4
  %and = and i32 %ext_ctrl, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %id)
  %cmp = icmp ugt i32 %id, 25
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %and4 = and i32 %ext_ctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.end3.if.end16_crit_edge

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else:                                          ; preds = %if.end3
  %and7 = and i32 %ext_ctrl, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and11 = and i32 %ext_ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select65 = select i1 %tobool12.not, i32 0, i32 14
  br label %if.end16

if.end16:                                         ; preds = %if.else10, %if.else.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %preq_mask_bit.0 = phi i32 [ 0, %if.end3.if.end16_crit_edge ], [ 1, %if.else.if.end16_crit_edge ], [ %and11, %if.else10 ]
  %reg_add.0 = phi i32 [ 6, %if.end3.if.end16_crit_edge ], [ 10, %if.else.if.end16_crit_edge ], [ %spec.select65, %if.else10 ]
  %sleep_req_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sleep_req_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sleep_req_info, align 4
  %bit_pos17 = getelementptr %struct.palmas_sleep_requestor_info, ptr %3, i32 %id, i32 2
  %4 = ptrtoint ptr %bit_pos17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit_pos17, align 4
  %reg_offset = getelementptr %struct.palmas_sleep_requestor_info, ptr %3, i32 %id, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %add = add i32 %7, %reg_add.0
  %shl = shl nuw i32 1, %5
  %add.i = add i32 %add, 212
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %shl. = select i1 %enable, i32 %shl, i32 0
  %call.i.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef %shl, i32 noundef %shl., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp27 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp27, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %palmas, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %add, i32 noundef %call.i.i68) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end16
  %shl30 = shl nuw nsw i32 1, %preq_mask_bit.0
  %regmap.i69 = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 2
  %12 = ptrtoint ptr %regmap.i69 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i69, align 4
  %call.i.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 161, i32 noundef %shl30, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp32 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp32, label %do.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %palmas, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %call.i.i70) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end29.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i68, %do.end ], [ %call.i.i70, %do.end36 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i70, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_i2c_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @palmas_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @palmas_i2c_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @palmas_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %prop.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !122
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  %tobool.not.not = xor i1 %tobool.not, true
  %tobool2.not = icmp eq ptr %4, null
  %or.cond = select i1 %tobool.not.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #5
  %7 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %prop.i, align 4, !annotation !122
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mux_from_pdata.i = getelementptr inbounds %struct.palmas_platform_data, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %mux_from_pdata.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mux_from_pdata.i, align 4
  %9 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prop.i, align 4
  %conv.i = trunc i32 %10 to i8
  %pad1.i = getelementptr inbounds %struct.palmas_platform_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %pad1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %pad1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call.i.i32.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i32.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i32.i, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mux_from_pdata4.i = getelementptr inbounds %struct.palmas_platform_data, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %mux_from_pdata4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mux_from_pdata4.i, align 4
  %13 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prop.i, align 4
  %conv5.i = trunc i32 %14 to i8
  %pad2.i = getelementptr inbounds %struct.palmas_platform_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %pad2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv5.i, ptr %pad2.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %call.i.i33.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.28, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i33.i)
  %tobool8.not.i = icmp sgt i32 %call.i.i33.i, -1
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.if.end12.i_crit_edge

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prop.i, align 4
  %conv10.i = trunc i32 %17 to i8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end12.i_crit_edge
  %.sink.i = phi i8 [ %conv10.i, %if.then9.i ], [ 7, %if.end6.i.if.end12.i_crit_edge ]
  %18 = getelementptr inbounds %struct.palmas_platform_data, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink.i, ptr %18, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not.i = icmp eq i32 %21, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end7.thread_crit_edge, label %if.then14.i

if.end12.i.if.end7.thread_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.thread

if.then14.i:                                      ; preds = %if.end12.i
  %call.i.i = call ptr @irq_get_irq_data(i32 noundef %21) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %23) #8
  br label %if.end7.thread

if.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %common.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i.i = and i32 %27, 15
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i.i.i, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %and.i.i.i) #8
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %if.end.i.i, %do.end.i.i, %if.end12.i.if.end7.thread_crit_edge
  %call.i34.i = call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i34.i, null
  %pm_off.i = getelementptr inbounds %struct.palmas_platform_data, ptr %call.i, i32 0, i32 6
  %frombool.i = zext i1 %tobool.i.i to i8
  %29 = ptrtoint ptr %pm_off.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool.i, ptr %pm_off.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #5
  br label %if.end10

if.end7:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.end7.cleanup_crit_edge, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.end7.thread
  %pdata.0413 = phi ptr [ %call.i, %if.end7.thread ], [ %4, %if.end7.if.end10_crit_edge ]
  %call.i408 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i408, null
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i408, ptr %driver_data.i.i, align 4
  %31 = ptrtoint ptr %call.i408 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %call.i408, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %irq17 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 5
  %34 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %irq17, align 4
  %call19 = call ptr @of_match_device(ptr noundef nonnull @of_palmas_match_tbl, ptr noundef %dev) #5
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end14.cleanup_crit_edge, label %if.end46

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.else.2.do.end_crit_edge, %if.else.1.do.end_crit_edge
  %i.0416.lcssa = phi i32 [ 1, %if.else.1.do.end_crit_edge ], [ 2, %if.else.2.do.end_crit_edge ]
  %arrayidx31.lcssa = phi ptr [ %arrayidx31.1, %if.else.1.do.end_crit_edge ], [ %arrayidx31.2, %if.else.2.do.end_crit_edge ]
  %35 = ptrtoint ptr %call.i408 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i408, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.9, i32 noundef %i.0416.lcssa) #8
  %37 = ptrtoint ptr %arrayidx31.lcssa to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx31.lcssa, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %err_i2c

if.end46:                                         ; preds = %if.end14
  %data = getelementptr inbounds %struct.of_device_id, ptr %call19, i32 0, i32 3
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %features23 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 4
  %46 = ptrtoint ptr %features23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %features23, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %addr27 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 1
  %i2c_clients = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 1
  %47 = ptrtoint ptr %i2c_clients to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %i2c, ptr %i2c_clients, align 4
  %call50 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @palmas_regmap_config, ptr noundef nonnull @palmas_i2c_probe._key, ptr noundef nonnull @.str.11) #5
  %arrayidx51 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 2, i32 0
  %48 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call50, ptr %arrayidx51, align 4
  %cmp.i409 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i409, label %if.end46.if.then55_crit_edge, label %if.else.1

if.end46.if.then55_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

if.then55:                                        ; preds = %if.end46.2.if.then55_crit_edge, %if.end46.1.if.then55_crit_edge, %if.end46.if.then55_crit_edge
  %call50.lcssa = phi ptr [ %call50, %if.end46.if.then55_crit_edge ], [ %call50.1, %if.end46.1.if.then55_crit_edge ], [ %call50.2, %if.end46.2.if.then55_crit_edge ]
  %i.0416.lcssa418 = phi i32 [ 0, %if.end46.if.then55_crit_edge ], [ 1, %if.end46.1.if.then55_crit_edge ], [ 2, %if.end46.2.if.then55_crit_edge ]
  %49 = ptrtoint ptr %call50.lcssa to i32
  %50 = ptrtoint ptr %call.i408 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i408, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.13, i32 noundef %i.0416.lcssa418, i32 noundef %49) #8
  br label %err_i2c

if.else.1:                                        ; preds = %if.end46
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 8
  %54 = ptrtoint ptr %addr27 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr27, align 2
  %conv28.1 = add i16 %55, 1
  %call29.1 = call ptr @i2c_new_dummy_device(ptr noundef %53, i16 noundef zeroext %conv28.1) #5
  %arrayidx31.1 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call29.1, ptr %arrayidx31.1, align 4
  %cmp.i.1 = icmp ugt ptr %call29.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.else.1.do.end_crit_edge, label %if.end46.1

if.else.1.do.end_crit_edge:                       ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end46.1:                                       ; preds = %if.else.1
  %call41.1 = call ptr @of_node_get(ptr noundef %1) #5
  %57 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx31.1, align 4
  %of_node45.1 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4, i32 27
  %59 = ptrtoint ptr %of_node45.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call41.1, ptr %of_node45.1, align 8
  %arrayidx48.1 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx48.1, align 4
  %call50.1 = call ptr @__devm_regmap_init_i2c(ptr noundef %61, ptr noundef getelementptr inbounds ([3 x %struct.regmap_config], ptr @palmas_regmap_config, i32 0, i32 1), ptr noundef nonnull @palmas_i2c_probe._key, ptr noundef nonnull @.str.11) #5
  %arrayidx51.1 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call50.1, ptr %arrayidx51.1, align 4
  %cmp.i409.1 = icmp ugt ptr %call50.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i409.1, label %if.end46.1.if.then55_crit_edge, label %if.else.2

if.end46.1.if.then55_crit_edge:                   ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

if.else.2:                                        ; preds = %if.end46.1
  %63 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter, align 8
  %65 = ptrtoint ptr %addr27 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %addr27, align 2
  %conv28.2 = add i16 %66, 2
  %call29.2 = call ptr @i2c_new_dummy_device(ptr noundef %64, i16 noundef zeroext %conv28.2) #5
  %arrayidx31.2 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call29.2, ptr %arrayidx31.2, align 4
  %cmp.i.2 = icmp ugt ptr %call29.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.else.2.do.end_crit_edge, label %if.end46.2

if.else.2.do.end_crit_edge:                       ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end46.2:                                       ; preds = %if.else.2
  %call41.2 = call ptr @of_node_get(ptr noundef %1) #5
  %68 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx31.2, align 4
  %of_node45.2 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4, i32 27
  %70 = ptrtoint ptr %of_node45.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call41.2, ptr %of_node45.2, align 8
  %arrayidx48.2 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx48.2, align 4
  %call50.2 = call ptr @__devm_regmap_init_i2c(ptr noundef %72, ptr noundef getelementptr inbounds ([3 x %struct.regmap_config], ptr @palmas_regmap_config, i32 0, i32 2), ptr noundef nonnull @palmas_i2c_probe._key, ptr noundef nonnull @.str.11) #5
  %arrayidx51.2 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 2, i32 2
  %73 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call50.2, ptr %arrayidx51.2, align 4
  %cmp.i409.2 = icmp ugt ptr %call50.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i409.2, label %if.end46.2.if.then55_crit_edge, label %for.inc.2

if.end46.2.if.then55_crit_edge:                   ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

for.inc.2:                                        ; preds = %if.end46.2
  %74 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool65.not = icmp eq i32 %75, 0
  br i1 %tobool65.not, label %do.end69, label %if.end71

do.end69:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %call.i408 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i408, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.16) #8
  br label %no_irq

if.end71:                                         ; preds = %for.inc.2
  %78 = ptrtoint ptr %pdata.0413 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pdata.0413, align 4
  %and = shl i32 %79, 5
  %80 = and i32 %and, 128
  %81 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %reg, align 4
  %82 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx51, align 4
  %call.i.i410 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 249, i32 noundef 128, i32 noundef %80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i410)
  %cmp77 = icmp slt i32 %call.i.i410, 0
  br i1 %cmp77, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %call.i408 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i408, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.20, i32 noundef %call.i.i410) #8
  br label %err_i2c

if.end84:                                         ; preds = %if.end71
  %86 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %reg, align 4
  %87 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx51.1, align 4
  %call87 = call i32 @regmap_write(ptr noundef %88, i32 noundef 36, i32 noundef 1) #5
  %89 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx51.1, align 4
  %91 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq17, align 4
  %93 = ptrtoint ptr %pdata.0413 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pdata.0413, align 4
  %or = or i32 %94, 8192
  %irq_chip = getelementptr inbounds %struct.palmas_driver_data, ptr %41, i32 0, i32 1
  %95 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %irq_chip, align 4
  %irq_data = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 8
  %call92 = call i32 @regmap_add_irq_chip(ptr noundef %90, i32 noundef %92, i32 noundef %or, i32 noundef 0, ptr noundef %96, ptr noundef %irq_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end84.err_i2c_crit_edge, label %if.end84.no_irq_crit_edge

if.end84.no_irq_crit_edge:                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_irq

if.end84.err_i2c_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_i2c

no_irq:                                           ; preds = %if.end84.no_irq_crit_edge, %do.end69
  %mux_from_pdata = getelementptr inbounds %struct.palmas_platform_data, ptr %pdata.0413, i32 0, i32 3
  %97 = ptrtoint ptr %mux_from_pdata to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mux_from_pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool97.not = icmp eq i32 %98, 0
  br i1 %tobool97.not, label %if.else106, label %if.then98

if.then98:                                        ; preds = %no_irq
  %pad1 = getelementptr inbounds %struct.palmas_platform_data, ptr %pdata.0413, i32 0, i32 4
  %99 = ptrtoint ptr %pad1 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pad1, align 4
  %conv99 = zext i8 %100 to i32
  %101 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv99, ptr %reg, align 4
  %102 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx51, align 4
  %call102 = call i32 @regmap_write(ptr noundef %103, i32 noundef 250, i32 noundef %conv99) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then98.if.end113_crit_edge, label %if.then98.err_irq_crit_edge

if.then98.err_irq_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.then98.if.end113_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.else106:                                       ; preds = %no_irq
  %104 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx51, align 4
  %call109 = call i32 @regmap_read(ptr noundef %105, i32 noundef 250, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.else106.if.end113_crit_edge, label %if.else106.err_irq_crit_edge

if.else106.err_irq_crit_edge:                     ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.else106.if.end113_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.end113:                                        ; preds = %if.else106.if.end113_crit_edge, %if.then98.if.end113_crit_edge
  %106 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reg, align 4
  %and114 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.then116, label %if.end113.if.end120_crit_edge

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %108 = ptrtoint ptr %gpio_muxed to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %gpio_muxed, align 4
  %110 = or i8 %109, 1
  store i8 %110, ptr %gpio_muxed, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end113.if.end120_crit_edge
  %and121 = and i32 %107, 24
  %111 = zext i32 %and121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and121, label %if.end120.if.end146_crit_edge [
    i32 0, label %if.then123
    i32 16, label %if.then132
    i32 24, label %if.then140
  ]

if.end120.if.end146_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed124 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %112 = ptrtoint ptr %gpio_muxed124 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %gpio_muxed124, align 4
  %114 = or i8 %113, 2
  store i8 %114, ptr %gpio_muxed124, align 4
  br label %if.end146

if.then132:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %led_muxed = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 15
  %115 = ptrtoint ptr %led_muxed to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %led_muxed, align 1
  %117 = or i8 %116, 1
  store i8 %117, ptr %led_muxed, align 1
  br label %if.end146

if.then140:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %pwm_muxed = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 16
  %118 = ptrtoint ptr %pwm_muxed to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %pwm_muxed, align 2
  %120 = or i8 %119, 1
  store i8 %120, ptr %pwm_muxed, align 2
  br label %if.end146

if.end146:                                        ; preds = %if.then140, %if.then132, %if.then123, %if.end120.if.end146_crit_edge
  %and147 = and i32 %107, 96
  %121 = zext i32 %and147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %and147, label %if.end146.if.end174_crit_edge [
    i32 0, label %if.then149
    i32 64, label %if.then158
    i32 96, label %if.then167
  ]

if.end146.if.end174_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed150 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %122 = ptrtoint ptr %gpio_muxed150 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %gpio_muxed150, align 4
  %124 = or i8 %123, 4
  store i8 %124, ptr %gpio_muxed150, align 4
  br label %if.end174

if.then158:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  %led_muxed159 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 15
  %125 = ptrtoint ptr %led_muxed159 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %led_muxed159, align 1
  %127 = or i8 %126, 2
  store i8 %127, ptr %led_muxed159, align 1
  br label %if.end174

if.then167:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  %pwm_muxed168 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 16
  %128 = ptrtoint ptr %pwm_muxed168 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %pwm_muxed168, align 2
  %130 = or i8 %129, 2
  store i8 %130, ptr %pwm_muxed168, align 2
  br label %if.end174

if.end174:                                        ; preds = %if.then167, %if.then158, %if.then149, %if.end146.if.end174_crit_edge
  %and175 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.then177, label %if.end174.if.end182_crit_edge

if.end174.if.end182_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end182

if.then177:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed178 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %131 = ptrtoint ptr %gpio_muxed178 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %gpio_muxed178, align 4
  %133 = or i8 %132, 8
  store i8 %133, ptr %gpio_muxed178, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.end174.if.end182_crit_edge
  %134 = ptrtoint ptr %mux_from_pdata to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mux_from_pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool184.not = icmp eq i32 %135, 0
  br i1 %tobool184.not, label %if.else193, label %if.then185

if.then185:                                       ; preds = %if.end182
  %pad2 = getelementptr inbounds %struct.palmas_platform_data, ptr %pdata.0413, i32 0, i32 5
  %136 = ptrtoint ptr %pad2 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %pad2, align 1
  %conv186 = zext i8 %137 to i32
  %138 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv186, ptr %reg, align 4
  %139 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx51, align 4
  %call189 = call i32 @regmap_write(ptr noundef %140, i32 noundef 251, i32 noundef %conv186) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then185.if.end200_crit_edge, label %if.then185.err_irq_crit_edge

if.then185.err_irq_crit_edge:                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.then185.if.end200_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end200

if.else193:                                       ; preds = %if.end182
  %141 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx51, align 4
  %call196 = call i32 @regmap_read(ptr noundef %142, i32 noundef 251, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.else193.if.end200_crit_edge, label %if.else193.err_irq_crit_edge

if.else193.err_irq_crit_edge:                     ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.else193.if.end200_crit_edge:                   ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end200

if.end200:                                        ; preds = %if.else193.if.end200_crit_edge, %if.then185.if.end200_crit_edge
  %143 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %reg, align 4
  %and201 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.then203, label %if.end200.if.end208_crit_edge

if.end200.if.end208_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed204 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %145 = ptrtoint ptr %gpio_muxed204 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %gpio_muxed204, align 4
  %147 = or i8 %146, 16
  store i8 %147, ptr %gpio_muxed204, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then203, %if.end200.if.end208_crit_edge
  %and209 = and i32 %144, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.then211, label %if.end208.if.end216_crit_edge

if.end208.if.end216_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

if.then211:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed212 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %148 = ptrtoint ptr %gpio_muxed212 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %gpio_muxed212, align 4
  %150 = or i8 %149, 32
  store i8 %150, ptr %gpio_muxed212, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then211, %if.end208.if.end216_crit_edge
  %and217 = and i32 %144, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.then219, label %if.end216.if.end224_crit_edge

if.end216.if.end224_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end224

if.then219:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed220 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %151 = ptrtoint ptr %gpio_muxed220 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %gpio_muxed220, align 4
  %153 = or i8 %152, 64
  store i8 %153, ptr %gpio_muxed220, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then219, %if.end216.if.end224_crit_edge
  %and225 = and i32 %144, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.then227, label %if.end224.do.end235_crit_edge

if.end224.do.end235_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end235

if.then227:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_muxed228 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %154 = ptrtoint ptr %gpio_muxed228 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %gpio_muxed228, align 4
  %156 = or i8 %155, -128
  store i8 %156, ptr %gpio_muxed228, align 4
  br label %do.end235

do.end235:                                        ; preds = %if.then227, %if.end224.do.end235_crit_edge
  %157 = ptrtoint ptr %call.i408 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call.i408, align 4
  %gpio_muxed237 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 14
  %159 = ptrtoint ptr %gpio_muxed237 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %gpio_muxed237, align 4
  %conv238 = zext i8 %160 to i32
  %pwm_muxed239 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 16
  %161 = ptrtoint ptr %pwm_muxed239 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %pwm_muxed239, align 2
  %conv240 = zext i8 %162 to i32
  %led_muxed241 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 15
  %163 = ptrtoint ptr %led_muxed241 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %led_muxed241, align 1
  %conv242 = zext i8 %164 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %158, ptr noundef nonnull @.str.23, i32 noundef %conv238, i32 noundef %conv240, i32 noundef %conv242) #8
  %power_ctrl = getelementptr inbounds %struct.palmas_platform_data, ptr %pdata.0413, i32 0, i32 2
  %165 = ptrtoint ptr %power_ctrl to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %power_ctrl, align 4
  %conv243 = zext i8 %166 to i32
  %167 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv243, ptr %reg, align 4
  %168 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx51, align 4
  %call246 = call i32 @regmap_write(ptr noundef %169, i32 noundef 161, i32 noundef %conv243) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end249, label %do.end235.err_irq_crit_edge

do.end235.err_irq_crit_edge:                      ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.end249:                                        ; preds = %do.end235
  br i1 %tobool.not, label %if.end249.cleanup_crit_edge, label %if.then251

if.end249.cleanup_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then251:                                       ; preds = %if.end249
  %call253 = call i32 @devm_of_platform_populate(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.then251.err_irq_crit_edge, label %if.else257

if.then251.err_irq_crit_edge:                     ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.else257:                                       ; preds = %if.then251
  %pm_off = getelementptr inbounds %struct.palmas_platform_data, ptr %pdata.0413, i32 0, i32 6
  %170 = ptrtoint ptr %pm_off to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %pm_off, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool258.not = icmp eq i8 %171, 0
  br i1 %tobool258.not, label %if.else257.cleanup_crit_edge, label %land.lhs.true260

if.else257.cleanup_crit_edge:                     ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true260:                                 ; preds = %if.else257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %172 = load ptr, ptr @pm_power_off, align 4
  %tobool261.not = icmp eq ptr %172, null
  br i1 %tobool261.not, label %if.then262, label %land.lhs.true260.cleanup_crit_edge

land.lhs.true260.cleanup_crit_edge:               ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then262:                                       ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call.i408, ptr @palmas_dev, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @palmas_power_off, ptr @pm_power_off, align 4
  br label %cleanup

err_irq:                                          ; preds = %if.then251.err_irq_crit_edge, %do.end235.err_irq_crit_edge, %if.else193.err_irq_crit_edge, %if.then185.err_irq_crit_edge, %if.else106.err_irq_crit_edge, %if.then98.err_irq_crit_edge
  %ret.1 = phi i32 [ %call102, %if.then98.err_irq_crit_edge ], [ %call189, %if.then185.err_irq_crit_edge ], [ %call246, %do.end235.err_irq_crit_edge ], [ %call253, %if.then251.err_irq_crit_edge ], [ %call196, %if.else193.err_irq_crit_edge ], [ %call109, %if.else106.err_irq_crit_edge ]
  %173 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %irq17, align 4
  %irq_data267 = getelementptr inbounds %struct.palmas, ptr %call.i408, i32 0, i32 8
  %175 = ptrtoint ptr %irq_data267 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %irq_data267, align 4
  call void @regmap_del_irq_chip(i32 noundef %174, ptr noundef %176) #5
  br label %err_i2c

err_i2c:                                          ; preds = %err_irq, %if.end84.err_i2c_crit_edge, %do.end82, %if.then55, %do.end
  %ret.2 = phi i32 [ %49, %if.then55 ], [ %39, %do.end ], [ %call.i.i410, %do.end82 ], [ %call92, %if.end84.err_i2c_crit_edge ], [ %ret.1, %err_irq ]
  %arrayidx273 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 1, i32 1
  %177 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx273, align 4
  %tobool274.not = icmp eq ptr %178, null
  br i1 %tobool274.not, label %err_i2c.for.inc279_crit_edge, label %if.then275

err_i2c.for.inc279_crit_edge:                     ; preds = %err_i2c
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc279

if.then275:                                       ; preds = %err_i2c
  call void @__sanitizer_cov_trace_pc() #7
  call void @i2c_unregister_device(ptr noundef nonnull %178) #5
  br label %for.inc279

for.inc279:                                       ; preds = %if.then275, %err_i2c.for.inc279_crit_edge
  %arrayidx273.1 = getelementptr %struct.palmas, ptr %call.i408, i32 0, i32 1, i32 2
  %179 = ptrtoint ptr %arrayidx273.1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx273.1, align 4
  %tobool274.not.1 = icmp eq ptr %180, null
  br i1 %tobool274.not.1, label %for.inc279.cleanup_crit_edge, label %if.then275.1

for.inc279.cleanup_crit_edge:                     ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then275.1:                                     ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #7
  call void @i2c_unregister_device(ptr noundef nonnull %180) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then275.1, %for.inc279.cleanup_crit_edge, %if.then262, %land.lhs.true260.cleanup_crit_edge, %if.else257.cleanup_crit_edge, %if.end249.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -61, %if.end14.cleanup_crit_edge ], [ %call253, %land.lhs.true260.cleanup_crit_edge ], [ %call253, %if.then262 ], [ %call253, %if.else257.cleanup_crit_edge ], [ 0, %if.end249.cleanup_crit_edge ], [ %ret.2, %if.then275.1 ], [ %ret.2, %for.inc279.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_i2c_remove(ptr nocapture noundef readonly %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %3, ptr noundef %5) #5
  %arrayidx = getelementptr %struct.palmas, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %7) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.palmas, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %9) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %10 = load ptr, ptr @palmas_dev, align 4
  %cmp3 = icmp eq ptr %1, %10
  br i1 %cmp3, label %if.then4, label %for.inc.1.if.end5_crit_edge

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  store ptr null, ptr @palmas_dev, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.inc.1.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @palmas_power_off() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @palmas_dev, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.35, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 48, i32 12
  %5 = load ptr, ptr @palmas_dev, align 4
  %regmap = getelementptr inbounds %struct.palmas, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 251, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool4.not = icmp eq i32 %call.i25, 0
  br i1 %tobool4.not, label %if.then.if.end8_crit_edge, label %do.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = load ptr, ptr @palmas_dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.37, i32 noundef %call.i25) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %11 = load ptr, ptr @palmas_dev, align 4
  %regmap9 = getelementptr inbounds %struct.palmas, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap9, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 160, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool12.not = icmp eq i32 %call.i26, 0
  br i1 %tobool12.not, label %if.end8.if.end18_crit_edge, label %do.end16

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %call.i26) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end8.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/palmas.c", i32 358, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @palmas_ext_control_req_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @palmas_ext_control_req_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/palmas.c", i32 367, i32 3}
!10 = !{ptr @palmas_ext_control_req_config._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @palmas_ext_control_req_config._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_palmas_ext_control_req_config, !13, !"__ksymtab_palmas_ext_control_req_config", i1 false, i1 false}
!13 = !{!"../drivers/mfd/palmas.c", i32 373, i32 1}
!14 = !{ptr @__initcall__kmod_palmas__293_747_palmas_i2c_init4, !15, !"__initcall__kmod_palmas__293_747_palmas_i2c_init4", i1 false, i1 false}
!15 = !{!"../drivers/mfd/palmas.c", i32 747, i32 1}
!16 = !{ptr @__exitcall_palmas_i2c_exit, !17, !"__exitcall_palmas_i2c_exit", i1 false, i1 false}
!17 = !{!"../drivers/mfd/palmas.c", i32 753, i32 1}
!18 = !{ptr @__UNIQUE_ID_author294, !19, !"__UNIQUE_ID_author294", i1 false, i1 false}
!19 = !{!"../drivers/mfd/palmas.c", i32 755, i32 1}
!20 = !{ptr @__UNIQUE_ID_description295, !21, !"__UNIQUE_ID_description295", i1 false, i1 false}
!21 = !{!"../drivers/mfd/palmas.c", i32 756, i32 1}
!22 = !{ptr @__UNIQUE_ID_file296, !23, !"__UNIQUE_ID_file296", i1 false, i1 false}
!23 = !{!"../drivers/mfd/palmas.c", i32 757, i32 1}
!24 = !{ptr @__UNIQUE_ID_license297, !23, !"__UNIQUE_ID_license297", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/palmas.c", i32 734, i32 14}
!27 = !{ptr @palmas_i2c_driver, !28, !"palmas_i2c_driver", i1 false, i1 false}
!28 = !{!"../drivers/mfd/palmas.c", i32 732, i32 26}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/palmas.c", i32 555, i32 5}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @palmas_i2c_probe._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @palmas_i2c_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @palmas_i2c_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/mfd/palmas.c", i32 562, i32 23}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/palmas.c", i32 566, i32 4}
!39 = !{ptr @palmas_i2c_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @palmas_i2c_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/palmas.c", i32 574, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @palmas_i2c_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @palmas_i2c_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/palmas.c", i32 587, i32 3}
!48 = !{ptr @palmas_i2c_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @palmas_i2c_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/palmas.c", i32 664, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @palmas_i2c_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @palmas_i2c_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/palmas.c", i32 396, i32 35}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/palmas.c", i32 402, i32 35}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/palmas.c", i32 409, i32 35}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/palmas.c", i32 420, i32 4}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/palmas.c", i32 380, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @palmas_set_pdata_irq_flag._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @palmas_set_pdata_irq_flag._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/palmas.c", i32 385, i32 2}
!70 = !{ptr @palmas_set_pdata_irq_flag._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @palmas_set_pdata_irq_flag._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @palmas_regmap_config, !73, !"palmas_regmap_config", i1 false, i1 false}
!73 = !{!"../drivers/mfd/palmas.c", i32 23, i32 35}
!74 = !{ptr @palmas_dev, !75, !"palmas_dev", i1 false, i1 false}
!75 = !{!"../drivers/mfd/palmas.c", i32 423, i32 23}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/palmas.c", i32 431, i32 32}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/palmas.c", i32 436, i32 35}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/palmas.c", i32 446, i32 4}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @palmas_power_off._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @palmas_power_off._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/palmas.c", i32 461, i32 3}
!87 = !{ptr @palmas_power_off._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @palmas_power_off._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @of_palmas_match_tbl, !90, !"of_palmas_match_tbl", i1 false, i1 false}
!90 = !{!"../drivers/mfd/palmas.c", i32 488, i32 34}
!91 = !{ptr @palmas_data, !92, !"palmas_data", i1 false, i1 false}
!92 = !{!"../drivers/mfd/palmas.c", i32 473, i32 34}
!93 = !{ptr @palmas_features, !94, !"palmas_features", i1 false, i1 false}
!94 = !{!"../drivers/mfd/palmas.c", i32 465, i32 21}
!95 = !{ptr @palmas_irq_chip, !96, !"palmas_irq_chip", i1 false, i1 false}
!96 = !{!"../drivers/mfd/palmas.c", i32 298, i32 31}
!97 = !{ptr @palmas_irqs, !98, !"palmas_irqs", i1 false, i1 false}
!98 = !{!"../drivers/mfd/palmas.c", i32 171, i32 32}
!99 = !{ptr @tps659038_data, !100, !"tps659038_data", i1 false, i1 false}
!100 = !{!"../drivers/mfd/palmas.c", i32 478, i32 34}
!101 = !{ptr @tps659038_features, !102, !"tps659038_features", i1 false, i1 false}
!102 = !{!"../drivers/mfd/palmas.c", i32 466, i32 21}
!103 = !{ptr @tps65917_data, !104, !"tps65917_data", i1 false, i1 false}
!104 = !{!"../drivers/mfd/palmas.c", i32 483, i32 34}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/palmas.c", i32 312, i32 10}
!107 = !{ptr @tps65917_irq_chip, !108, !"tps65917_irq_chip", i1 false, i1 false}
!108 = !{!"../drivers/mfd/palmas.c", i32 311, i32 31}
!109 = !{ptr @tps65917_irqs, !110, !"tps65917_irqs", i1 false, i1 false}
!110 = !{!"../drivers/mfd/palmas.c", i32 44, i32 32}
!111 = !{ptr @palmas_i2c_id, !112, !"palmas_i2c_id", i1 false, i1 false}
!112 = !{!"../drivers/mfd/palmas.c", i32 723, i32 35}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{i8 0, i8 2}
