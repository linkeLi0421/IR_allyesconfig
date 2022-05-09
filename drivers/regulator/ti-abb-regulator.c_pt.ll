; ModuleID = '/llk/IR_all_yes/drivers/regulator/ti-abb-regulator.c_pt.bc'
source_filename = "../drivers/regulator/ti-abb-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ti_abb_reg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ti_abb = type { %struct.regulator_desc, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.ti_abb_info = type { i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__UNIQUE_ID_alias296 = internal constant [39 x i8] c"ti_abb_regulator.alias=platform:ti_abb\00", section ".modinfo", align 1
@__initcall__kmod_ti_abb_regulator__297_879_ti_abb_driver_init6 = internal global ptr @ti_abb_driver_init, section ".initcall6.init", align 4
@ti_abb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_abb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_abb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_abb_driver_exit = internal global ptr @ti_abb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [72 x i8] c"ti_abb_regulator.description=Texas Instruments ABB LDO regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [47 x i8] c"ti_abb_regulator.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [57 x i8] c"ti_abb_regulator.file=drivers/regulator/ti-abb-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [32 x i8] c"ti_abb_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ti_abb\00", [25 x i8] zeroinitializer }, align 32
@ti_abb_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,abb-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @abb_regs_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,abb-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @abb_regs_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,abb-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @abb_regs_generic }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unable to match device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti_abb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/ti-abb-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr = internal global ptr @ti_abb_probe._entry, section ".printk_index", align 4
@ti_abb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 717, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Bad data in match\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.8 = internal global ptr @ti_abb_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"base-address\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"control-address\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup-address\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"int-address\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efuse-address\00", [18 x i8] zeroinitializer }, align 32
@ti_abb_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_abb_regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Missing '%s' IO resource\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 765, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to map '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.18 = internal global ptr @ti_abb_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo-address\00", [20 x i8] zeroinitializer }, align 32
@ti_abb_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,ldovbb-override-mask\00", [40 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 786, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Missing '%s' (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.23 = internal global ptr @ti_abb_probe._entry.21, section ".printk_index", align 4
@ti_abb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid property:'%s' set as 0!\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.26 = internal global ptr @ti_abb_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,ldovbb-vset-mask\00", [44 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.29 = internal global ptr @ti_abb_probe._entry.28, section ".printk_index", align 4
@ti_abb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 803, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.31 = internal global ptr @ti_abb_probe._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,tranxdone-status-mask\00", [39 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.34 = internal global ptr @ti_abb_probe._entry.33, section ".printk_index", align 4
@ti_abb_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.36 = internal global ptr @ti_abb_probe._entry.35, section ".printk_index", align 4
@ti_abb_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to alloc regulator init data\0A\00", [55 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.39 = internal global ptr @ti_abb_probe._entry.37, section ".printk_index", align 4
@ti_abb_reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @ti_abb_set_voltage_sel, ptr null, ptr @ti_abb_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to register regulator(%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_abb_probe._entry_ptr.42 = internal global ptr @ti_abb_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,abb_info\00", [20 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No '%s' property?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_abb_init_table\00", [46 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry_ptr = internal global ptr @ti_abb_init_table._entry, section ".printk_index", align 4
@ti_abb_init_table._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"All '%s' list entries need %d vals\0A\00", [60 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry_ptr.48 = internal global ptr @ti_abb_init_table._entry.46, section ".printk_index", align 4
@ti_abb_init_table.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.45, ptr @.str.3, ptr @.str.49, i8 0, i8 -113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%d]v=%d ABB=%d ef=0x%x rbb=0x%x fbb=0x%x vset=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"prop '%s': v=%d,bad efuse/mask\0A\00", [32 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry_ptr.52 = internal global ptr @ti_abb_init_table._entry.50, section ".printk_index", align 4
@ti_abb_init_table.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.45, ptr @.str.3, ptr @.str.53, i8 0, i8 -106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%d]v=%d efusev=0x%x final ABB=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.45, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"prop'%s':v=%d vst=%x LDO base?\0A\00", [32 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry_ptr.56 = internal global ptr @ti_abb_init_table._entry.54, section ".printk_index", align 4
@ti_abb_init_table.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.45, ptr @.str.3, ptr @.str.57, i8 0, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%d]v=%d vset=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:[%d]v=%d, ABB=%d is invalid! Abort!\0A\00", [56 x i8] zeroinitializer }, align 32
@ti_abb_init_table._entry_ptr.60 = internal global ptr @ti_abb_init_table._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,settling-time\00", [47 x i8] zeroinitializer }, align 32
@ti_abb_init_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to get property '%s'(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_abb_init_timings\00", [44 x i8] zeroinitializer }, align 32
@ti_abb_init_timings._entry_ptr = internal global ptr @ti_abb_init_timings._entry, section ".printk_index", align 4
@ti_abb_init_timings._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.63, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_init_timings._entry_ptr.65 = internal global ptr @ti_abb_init_timings._entry.64, section ".printk_index", align 4
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,clock-cycles\00", [16 x i8] zeroinitializer }, align 32
@ti_abb_init_timings._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_init_timings._entry_ptr.68 = internal global ptr @ti_abb_init_timings._entry.67, section ".printk_index", align 4
@ti_abb_init_timings._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.63, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_init_timings._entry_ptr.70 = internal global ptr @ti_abb_init_timings._entry.69, section ".printk_index", align 4
@ti_abb_init_timings._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.63, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Unable to get clk(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@ti_abb_init_timings._entry_ptr.73 = internal global ptr @ti_abb_init_timings._entry.71, section ".printk_index", align 4
@ti_abb_init_timings.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.63, ptr @.str.3, ptr @.str.74, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Clk_rate=%ld, sr2_cnt=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ti_abb_set_voltage_sel = private unnamed_addr constant [23 x i8] c"ti_abb_set_voltage_sel\00", align 1
@ti_abb_set_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.ti_abb_set_voltage_sel, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: No regulator drvdata\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._entry_ptr = internal global ptr @ti_abb_set_voltage_sel._entry, section ".printk_index", align 4
@ti_abb_set_voltage_sel._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @__func__.ti_abb_set_voltage_sel, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: No valid voltage table entries?\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._entry_ptr.80 = internal global ptr @ti_abb_set_voltage_sel._entry.78, section ".printk_index", align 4
@ti_abb_set_voltage_sel._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @__func__.ti_abb_set_voltage_sel, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: sel idx(%d) >= n_voltages(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._entry_ptr.83 = internal global ptr @ti_abb_set_voltage_sel._entry.81, section ".printk_index", align 4
@ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @__func__.ti_abb_set_voltage_sel, ptr @.str.3, ptr @.str.84, i8 0, i8 85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Already at sel=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @__func__.ti_abb_set_voltage_sel, ptr @.str.3, ptr @.str.85, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Same data new idx=%d, old idx=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @__func__.ti_abb_set_voltage_sel, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Volt[%d] idx[%d] mode[%d] Fail(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@ti_abb_set_voltage_sel._entry_ptr.89 = internal global ptr @ti_abb_set_voltage_sel._entry.87, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ti_abb_clear_all_txdone._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ti_abb_clear_all_txdone = private unnamed_addr constant [24 x i8] c"ti_abb_clear_all_txdone\00", align 1
@ti_abb_clear_all_txdone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.ti_abb_clear_all_txdone, ptr @.str.3, i32 209, ptr @.str.91, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:TRANXDONE timeout(%duS) int=0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ti_abb_clear_all_txdone._entry_ptr = internal global ptr @ti_abb_clear_all_txdone._entry, section ".printk_index", align 4
@ti_abb_wait_txdone._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ti_abb_wait_txdone = private unnamed_addr constant [19 x i8] c"ti_abb_wait_txdone\00", align 1
@ti_abb_wait_txdone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.ti_abb_wait_txdone, ptr @.str.3, i32 182, ptr @.str.91, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_wait_txdone._entry_ptr = internal global ptr @ti_abb_wait_txdone._entry, section ".printk_index", align 4
@ti_abb_get_voltage_sel._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ti_abb_get_voltage_sel = private unnamed_addr constant [23 x i8] c"ti_abb_get_voltage_sel\00", align 1
@ti_abb_get_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.ti_abb_get_voltage_sel, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_get_voltage_sel._entry_ptr = internal global ptr @ti_abb_get_voltage_sel._entry, section ".printk_index", align 4
@ti_abb_get_voltage_sel._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ti_abb_get_voltage_sel._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @__func__.ti_abb_get_voltage_sel, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_abb_get_voltage_sel._entry_ptr.94 = internal global ptr @ti_abb_get_voltage_sel._entry.93, section ".printk_index", align 4
@ti_abb_get_voltage_sel._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @__func__.ti_abb_get_voltage_sel, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Corrupted data? idx(%d) >= n_voltages(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@ti_abb_get_voltage_sel._entry_ptr.97 = internal global ptr @ti_abb_get_voltage_sel._entry.95, section ".printk_index", align 4
@abb_regs_v1 = internal constant { %struct.ti_abb_reg, [32 x i8] } { %struct.ti_abb_reg { i32 4, i32 0, i32 65280, i32 4, i32 2, i32 1, i32 4, i32 3 }, [32 x i8] zeroinitializer }, align 32
@abb_regs_v2 = internal constant { %struct.ti_abb_reg, [32 x i8] } { %struct.ti_abb_reg { i32 0, i32 4, i32 65280, i32 4, i32 2, i32 1, i32 4, i32 3 }, [32 x i8] zeroinitializer }, align 32
@abb_regs_generic = internal constant { %struct.ti_abb_reg, [32 x i8] } { %struct.ti_abb_reg { i32 0, i32 0, i32 65280, i32 4, i32 2, i32 1, i32 4, i32 3 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"ti_abb_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 872, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 875, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"ti_abb_of_match\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 677, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 713, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 717, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 728, i32 59 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 736, i32 66 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 740, i32 64 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 745, i32 62 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 750, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 753, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 765, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 769, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 781, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 786, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 790, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 794, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 799, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 803, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 808, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 813, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 817, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 824, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"ti_abb_reg_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 632, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 858, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 511, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 524, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 529, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 569, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 583, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 598, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 605, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 610, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 619, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 424, i32 16 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 429, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 435, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 439, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 442, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 447, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 454, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 490, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 321, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 327, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 334, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 341, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 358, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 370, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 208, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 181, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 390, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 396, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 403, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [12 x i8] c"abb_regs_v1\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 640, i32 32 }
@___asan_gen_.371 = private unnamed_addr constant [12 x i8] c"abb_regs_v2\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 654, i32 32 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"abb_regs_generic\00", align 1
@___asan_gen_.375 = private constant [40 x i8] c"../drivers/regulator/ti-abb-regulator.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 667, i32 32 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_ti_abb_driver_exit, ptr @__initcall__kmod_ti_abb_regulator__297_879_ti_abb_driver_init6, ptr @ti_abb_clear_all_txdone._entry, ptr @ti_abb_clear_all_txdone._entry_ptr, ptr @ti_abb_driver_exit, ptr @ti_abb_get_voltage_sel._entry, ptr @ti_abb_get_voltage_sel._entry.93, ptr @ti_abb_get_voltage_sel._entry.95, ptr @ti_abb_get_voltage_sel._entry_ptr, ptr @ti_abb_get_voltage_sel._entry_ptr.94, ptr @ti_abb_get_voltage_sel._entry_ptr.97, ptr @ti_abb_init_table._entry, ptr @ti_abb_init_table._entry.46, ptr @ti_abb_init_table._entry.50, ptr @ti_abb_init_table._entry.54, ptr @ti_abb_init_table._entry.58, ptr @ti_abb_init_table._entry_ptr, ptr @ti_abb_init_table._entry_ptr.48, ptr @ti_abb_init_table._entry_ptr.52, ptr @ti_abb_init_table._entry_ptr.56, ptr @ti_abb_init_table._entry_ptr.60, ptr @ti_abb_init_timings._entry, ptr @ti_abb_init_timings._entry.64, ptr @ti_abb_init_timings._entry.67, ptr @ti_abb_init_timings._entry.69, ptr @ti_abb_init_timings._entry.71, ptr @ti_abb_init_timings._entry_ptr, ptr @ti_abb_init_timings._entry_ptr.65, ptr @ti_abb_init_timings._entry_ptr.68, ptr @ti_abb_init_timings._entry_ptr.70, ptr @ti_abb_init_timings._entry_ptr.73, ptr @ti_abb_probe._entry, ptr @ti_abb_probe._entry.16, ptr @ti_abb_probe._entry.21, ptr @ti_abb_probe._entry.24, ptr @ti_abb_probe._entry.28, ptr @ti_abb_probe._entry.30, ptr @ti_abb_probe._entry.33, ptr @ti_abb_probe._entry.35, ptr @ti_abb_probe._entry.37, ptr @ti_abb_probe._entry.40, ptr @ti_abb_probe._entry.6, ptr @ti_abb_probe._entry_ptr, ptr @ti_abb_probe._entry_ptr.18, ptr @ti_abb_probe._entry_ptr.23, ptr @ti_abb_probe._entry_ptr.26, ptr @ti_abb_probe._entry_ptr.29, ptr @ti_abb_probe._entry_ptr.31, ptr @ti_abb_probe._entry_ptr.34, ptr @ti_abb_probe._entry_ptr.36, ptr @ti_abb_probe._entry_ptr.39, ptr @ti_abb_probe._entry_ptr.42, ptr @ti_abb_probe._entry_ptr.8, ptr @ti_abb_set_voltage_sel._entry, ptr @ti_abb_set_voltage_sel._entry.78, ptr @ti_abb_set_voltage_sel._entry.81, ptr @ti_abb_set_voltage_sel._entry.87, ptr @ti_abb_set_voltage_sel._entry_ptr, ptr @ti_abb_set_voltage_sel._entry_ptr.80, ptr @ti_abb_set_voltage_sel._entry_ptr.83, ptr @ti_abb_set_voltage_sel._entry_ptr.89, ptr @ti_abb_wait_txdone._entry, ptr @ti_abb_wait_txdone._entry_ptr, ptr @ti_abb_driver, ptr @.str, ptr @ti_abb_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.32, ptr @.str.38, ptr @ti_abb_reg_ops, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.72, ptr @.str.74, ptr @ti_abb_set_voltage_sel._rs, ptr @.str.75, ptr @.str.76, ptr @ti_abb_set_voltage_sel._rs.77, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @ti_abb_set_voltage_sel._rs.86, ptr @.str.88, ptr @ti_abb_clear_all_txdone._rs, ptr @.str.90, ptr @.str.91, ptr @ti_abb_wait_txdone._rs, ptr @ti_abb_get_voltage_sel._rs, ptr @ti_abb_get_voltage_sel._rs.92, ptr @.str.96, ptr @abb_regs_v1, ptr @abb_regs_v2, ptr @abb_regs_generic], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_table._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_table._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_table._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_table._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_timings._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_timings._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_timings._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_init_timings._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_set_voltage_sel._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_set_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_set_voltage_sel._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_set_voltage_sel._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_set_voltage_sel._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_set_voltage_sel._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_set_voltage_sel._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_clear_all_txdone._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_clear_all_txdone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_wait_txdone._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_wait_txdone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_get_voltage_sel._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_get_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_get_voltage_sel._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_get_voltage_sel._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_abb_get_voltage_sel._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb_regs_v1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb_regs_v2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb_regs_generic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_abb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_abb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_abb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_abb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_abb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #8
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ti_abb_of_match, ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 300, i32 noundef 3520) #8
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %regs = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %regs, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end11.if.then17_crit_edge

if.end11.if.then17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end11
  %control_off = getelementptr inbounds %struct.ti_abb_reg, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %control_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %if.else, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end11.if.then17_crit_edge
  %call18 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #8
  %base = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.ptr = getelementptr i8, ptr %call18, i32 %15
  %setup_reg = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %setup_reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %setup_reg, align 4
  %control_off30 = getelementptr inbounds %struct.ti_abb_reg, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %control_off30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control_off30, align 4
  %add.ptr31 = getelementptr i8, ptr %call18, i32 %18
  %control_reg = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %control_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr31, ptr %control_reg, align 4
  br label %if.end48

if.else:                                          ; preds = %lor.lhs.false
  %call32 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.10) #8
  %control_reg33 = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %control_reg33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call32, ptr %control_reg33, align 4
  %cmp.i321 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.else
  %call40 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #8
  %setup_reg41 = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %setup_reg41 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call40, ptr %setup_reg41, align 4
  %cmp.i322 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %if.then44, label %if.end39.if.end48_crit_edge

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end39.if.end48_crit_edge, %if.end24
  %call49 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.12) #8
  %int_base = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %int_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call49, ptr %int_base, align 4
  %cmp.i323 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %call56 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.13) #8
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %do.body59, label %if.end69

do.body59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_probe, %skip_opt)) #8
          to label %if.then65 [label %skip_opt], !srcloc !212

if.then65:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #8
  br label %skip_opt

if.end69:                                         ; preds = %if.end55
  %26 = ptrtoint ptr %call56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call56, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call56, i32 0, i32 1
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %27
  %add.i = add i32 %sub.i, %29
  %call71 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %27, i32 noundef %add.i) #8
  %efuse_base = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %efuse_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call71, ptr %efuse_base, align 4
  %tobool73.not = icmp eq ptr %call71, null
  br i1 %tobool73.not, label %do.end77, label %if.end78

do.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end78:                                         ; preds = %if.end69
  %call79 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.19) #8
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %do.body82, label %if.end100

do.body82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_probe, %skip_opt)) #8
          to label %if.then96 [label %skip_opt], !srcloc !212

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19) #8
  br label %skip_opt

if.end100:                                        ; preds = %if.end78
  %call101 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call79) #8
  %ldo_base = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %ldo_base to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call101, ptr %ldo_base, align 4
  %cmp.i324 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %if.then104, label %if.end107

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call101 to i32
  br label %cleanup

if.end107:                                        ; preds = %if.end100
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %ldovbb_override_mask = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 10
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %34, ptr noundef nonnull @.str.20, ptr noundef %ldovbb_override_mask, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool110.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool110.not, label %if.end115, label %do.end114

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %call.i.i) #11
  br label %cleanup

if.end115:                                        ; preds = %if.end107
  %35 = ptrtoint ptr %ldovbb_override_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ldovbb_override_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool117.not = icmp eq i32 %36, 0
  br i1 %tobool117.not, label %do.end121, label %if.end122

do.end121:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end122:                                        ; preds = %if.end115
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %ldovbb_vset_mask = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 11
  %call.i.i325 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.27, ptr noundef %ldovbb_vset_mask, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i325)
  %tobool126.not = icmp sgt i32 %call.i.i325, -1
  br i1 %tobool126.not, label %if.end131, label %do.end130

do.end130:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, i32 noundef %call.i.i325) #11
  br label %cleanup

if.end131:                                        ; preds = %if.end122
  %39 = ptrtoint ptr %ldovbb_vset_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ldovbb_vset_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool133.not = icmp eq i32 %40, 0
  br i1 %tobool133.not, label %do.end137, label %if.end131.skip_opt_crit_edge

if.end131.skip_opt_crit_edge:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_opt

do.end137:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #11
  br label %cleanup

skip_opt:                                         ; preds = %if.end131.skip_opt_crit_edge, %if.then96, %do.body82, %if.then65, %do.body59
  %of_node140 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %41 = ptrtoint ptr %of_node140 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node140, align 8
  %txdone_mask = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 9
  %call.i.i326 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %42, ptr noundef nonnull @.str.32, ptr noundef %txdone_mask, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i326)
  %tobool142.not = icmp sgt i32 %call.i.i326, -1
  br i1 %tobool142.not, label %if.end147, label %do.end146

do.end146:                                        ; preds = %skip_opt
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, i32 noundef %call.i.i326) #11
  br label %cleanup

if.end147:                                        ; preds = %skip_opt
  %43 = ptrtoint ptr %txdone_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %txdone_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool149.not = icmp eq i32 %44, 0
  br i1 %tobool149.not, label %do.end153, label %if.end154

do.end153:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end154:                                        ; preds = %if.end147
  %45 = ptrtoint ptr %of_node140 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node140, align 8
  %call157 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef %46, ptr noundef nonnull %call.i) #8
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %do.end162, label %if.end163

do.end162:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end163:                                        ; preds = %if.end154
  %call164 = tail call fastcc i32 @ti_abb_init_table(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end163.cleanup_crit_edge

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end167:                                        ; preds = %if.end163
  %call168 = tail call fastcc i32 @ti_abb_init_timings(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end171:                                        ; preds = %if.end167
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end171.dev_name.exit_crit_edge

if.end171.dev_name.exit_crit_edge:                ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end171.dev_name.exit_crit_edge
  %retval.0.i327 = phi ptr [ %50, %if.end.i ], [ %48, %if.end171.dev_name.exit_crit_edge ]
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i327, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 13
  %52 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %owner, align 4
  %type = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 12
  %53 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %type, align 4
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 10
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ti_abb_reg_ops, ptr %ops, align 4
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 8
  %55 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp = icmp ugt i32 %56, 1
  br i1 %cmp, label %if.then174, label %dev_name.exit.if.end175_crit_edge

dev_name.exit.if.end175_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then174:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %valid_ops_mask = getelementptr inbounds %struct.regulator_init_data, ptr %call157, i32 0, i32 1, i32 11
  %57 = ptrtoint ptr %valid_ops_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %valid_ops_mask, align 4
  %or = or i32 %58, 1
  store i32 %or, ptr %valid_ops_mask, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %dev_name.exit.if.end175_crit_edge
  %always_on = getelementptr inbounds %struct.regulator_init_data, ptr %call157, i32 0, i32 1, i32 28
  %59 = ptrtoint ptr %always_on to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load = load i16, ptr %always_on, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %always_on, align 4
  %60 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev1, ptr %config, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %61 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call157, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %62 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data, align 4
  %63 = ptrtoint ptr %of_node140 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node140, align 8
  %of_node179 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %65 = ptrtoint ptr %of_node179 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %of_node179, align 4
  %call180 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %config) #8
  %cmp.i328 = icmp ugt ptr %call180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then182, label %if.end187

if.then182:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %call180 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef %66) #11
  br label %cleanup

if.end187:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call180, ptr %driver_data.i.i, align 4
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %sr2_en_mask = getelementptr inbounds %struct.ti_abb_reg, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %sr2_en_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sr2_en_mask, align 4
  %setup_reg189 = getelementptr inbounds %struct.ti_abb, ptr %call.i, i32 0, i32 3
  %72 = ptrtoint ptr %setup_reg189 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %setup_reg189, align 4
  call fastcc void @ti_abb_rmw(i32 noundef %71, i32 noundef 1, ptr noundef %73)
  br label %cleanup

cleanup:                                          ; preds = %if.end187, %if.then182, %if.end167.cleanup_crit_edge, %if.end163.cleanup_crit_edge, %do.end162, %do.end153, %do.end146, %do.end137, %do.end130, %do.end121, %do.end114, %if.then104, %do.end77, %if.then52, %if.then44, %if.then36, %if.then21, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %11, %if.then21 ], [ %25, %if.then52 ], [ %32, %if.then104 ], [ %call.i.i, %do.end114 ], [ %call.i.i325, %do.end130 ], [ %call.i.i326, %do.end146 ], [ %66, %if.then182 ], [ 0, %if.end187 ], [ -12, %do.end162 ], [ -22, %do.end153 ], [ -22, %do.end137 ], [ -22, %do.end121 ], [ -12, %do.end77 ], [ %21, %if.then36 ], [ %23, %if.then44 ], [ -22, %do.end6 ], [ -19, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ %call164, %if.end163.cleanup_crit_edge ], [ %call168, %if.end167.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_abb_init_table(ptr noundef %dev, ptr nocapture noundef %abb, ptr nocapture noundef writeonly %rinit_data) unnamed_addr #2 align 64 {
entry:
  %efuse_offset = alloca i32, align 4
  %rbb_mask = alloca i32, align 4
  %fbb_mask = alloca i32, align 4
  %vset_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43) #11
  br label %cleanup153

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  %call.i.frozen = freeze i32 %call.i
  %div = udiv i32 %call.i.frozen, 6
  %2 = mul i32 %div, 6
  %rem.decomposed = sub i32 %call.i.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool1.not = icmp eq i32 %rem.decomposed, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end6, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43, i32 noundef 6) #11
  br label %cleanup153

if.end6:                                          ; preds = %if.end
  %3 = shl nuw i32 %div, 3
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %3, i32 noundef 3520) #8
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup153_crit_edge, label %if.end10

if.end6.cleanup153_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.end10:                                         ; preds = %if.end6
  %info11 = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 12
  %4 = ptrtoint ptr %info11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i, ptr %info11, align 4
  %5 = shl nuw nsw i32 %div, 2
  %call5.i.i254 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %5, i32 noundef 3520) #8
  %tobool13.not = icmp eq ptr %call5.i.i254, null
  br i1 %tobool13.not, label %if.end10.cleanup153_crit_edge, label %if.end15

if.end10.cleanup153_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.end15:                                         ; preds = %if.end10
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %abb, i32 0, i32 8
  %6 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %n_voltages, align 4
  %volt_table17 = getelementptr inbounds %struct.regulator_desc, ptr %abb, i32 0, i32 23
  %7 = ptrtoint ptr %volt_table17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i254, ptr %volt_table17, align 4
  %current_info_idx = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 13
  %8 = ptrtoint ptr %current_info_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -22, ptr %current_info_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %9 = icmp ult i32 %call.i, 6
  br i1 %9, label %if.end15.for.end_crit_edge, label %for.body.lr.ph

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %efuse_base = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 6
  %ldo_base = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 7
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %info.0277 = phi ptr [ %call5.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0275 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %volt_table.0273 = phi ptr [ %call5.i.i254, %for.body.lr.ph ], [ %incdec.ptr150, %for.inc.for.body_crit_edge ]
  %min_uV.0272 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %40, %for.inc.for.body_crit_edge ]
  %max_uV.0271 = phi i32 [ 0, %for.body.lr.ph ], [ %41, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %efuse_offset) #8
  %10 = ptrtoint ptr %efuse_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %efuse_offset, align 4, !annotation !213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbb_mask) #8
  %11 = ptrtoint ptr %rbb_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rbb_mask, align 4, !annotation !213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbb_mask) #8
  %12 = ptrtoint ptr %fbb_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %fbb_mask, align 4, !annotation !213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vset_mask) #8
  %13 = ptrtoint ptr %vset_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %vset_mask, align 4, !annotation !213
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %mul = mul nuw i32 %i.0275, 6
  %call20 = call i32 @of_property_read_u32_index(ptr noundef %15, ptr noundef nonnull @.str.43, i32 noundef %mul, ptr noundef %volt_table.0273) #8
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %add = or i32 %mul, 1
  %call23 = call i32 @of_property_read_u32_index(ptr noundef %17, ptr noundef nonnull @.str.43, i32 noundef %add, ptr noundef %info.0277) #8
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %add26 = add nuw i32 %mul, 2
  %call27 = call i32 @of_property_read_u32_index(ptr noundef %19, ptr noundef nonnull @.str.43, i32 noundef %add26, ptr noundef nonnull %efuse_offset) #8
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %add30 = add nuw i32 %mul, 3
  %call31 = call i32 @of_property_read_u32_index(ptr noundef %21, ptr noundef nonnull @.str.43, i32 noundef %add30, ptr noundef nonnull %rbb_mask) #8
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %add34 = add nuw i32 %mul, 4
  %call35 = call i32 @of_property_read_u32_index(ptr noundef %23, ptr noundef nonnull @.str.43, i32 noundef %add34, ptr noundef nonnull %fbb_mask) #8
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %add38 = add nuw i32 %mul, 5
  %call39 = call i32 @of_property_read_u32_index(ptr noundef %25, ptr noundef nonnull @.str.43, i32 noundef %add38, ptr noundef nonnull %vset_mask) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_init_table.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_init_table, %do.end50)) #8
          to label %if.then46 [label %do.end50], !srcloc !212

if.then46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %volt_table.0273 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %volt_table.0273, align 4
  %28 = ptrtoint ptr %info.0277 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info.0277, align 4
  %30 = ptrtoint ptr %efuse_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %efuse_offset, align 4
  %32 = ptrtoint ptr %rbb_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rbb_mask, align 4
  %34 = ptrtoint ptr %fbb_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fbb_mask, align 4
  %36 = ptrtoint ptr %vset_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vset_mask, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_init_table.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %i.0275, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %for.body
  %38 = ptrtoint ptr %volt_table.0273 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %volt_table.0273, align 4
  %40 = call i32 @llvm.umin.i32(i32 %min_uV.0272, i32 %39)
  %41 = call i32 @llvm.umax.i32(i32 %max_uV.0271, i32 %39)
  %42 = ptrtoint ptr %efuse_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %efuse_base, align 4
  %tobool57.not = icmp eq ptr %43, null
  %44 = ptrtoint ptr %efuse_offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %efuse_offset, align 4
  br i1 %tobool57.not, label %if.then58, label %if.end71

if.then58:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool59.not = icmp eq i32 %45, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %if.then58.do.end69_crit_edge

if.then58.do.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

lor.lhs.false60:                                  ; preds = %if.then58
  %46 = ptrtoint ptr %rbb_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rbb_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool61.not = icmp eq i32 %47, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %lor.lhs.false60.do.end69_crit_edge

lor.lhs.false60.do.end69_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

lor.lhs.false62:                                  ; preds = %lor.lhs.false60
  %48 = ptrtoint ptr %fbb_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fbb_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool63.not = icmp eq i32 %49, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %lor.lhs.false62.do.end69_crit_edge

lor.lhs.false62.do.end69_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

lor.lhs.false64:                                  ; preds = %lor.lhs.false62
  %50 = ptrtoint ptr %vset_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vset_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool65.not = icmp eq i32 %51, 0
  br i1 %tobool65.not, label %lor.lhs.false64.check_abb_crit_edge, label %lor.lhs.false64.do.end69_crit_edge

lor.lhs.false64.do.end69_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

lor.lhs.false64.check_abb_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_abb

do.end69:                                         ; preds = %lor.lhs.false64.do.end69_crit_edge, %lor.lhs.false62.do.end69_crit_edge, %lor.lhs.false60.do.end69_crit_edge, %if.then58.do.end69_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.43, i32 noundef %39) #11
  br label %check_abb

if.end71:                                         ; preds = %do.end50
  %add.ptr = getelementptr i8, ptr %43, i32 %45
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !214
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  %54 = ptrtoint ptr %rbb_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rbb_mask, align 4
  %and = and i32 %55, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.else, label %if.end71.do.body92.sink.split_crit_edge

if.end71.do.body92.sink.split_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body92.sink.split

if.else:                                          ; preds = %if.end71
  %56 = ptrtoint ptr %fbb_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fbb_mask, align 4
  %and79 = and i32 %57, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else83, label %if.else.do.body92.sink.split_crit_edge

if.else.do.body92.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body92.sink.split

if.else83:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool84.not = icmp eq i32 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool86.not = icmp eq i32 %57, 0
  %or.cond247 = select i1 %tobool84.not, i1 %tobool86.not, i1 false
  br i1 %or.cond247, label %if.else83.do.body92_crit_edge, label %if.else83.do.body92.sink.split_crit_edge

if.else83.do.body92.sink.split_crit_edge:         ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body92.sink.split

if.else83.do.body92_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body92

do.body92.sink.split:                             ; preds = %if.else83.do.body92.sink.split_crit_edge, %if.else.do.body92.sink.split_crit_edge, %if.end71.do.body92.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.end71.do.body92.sink.split_crit_edge ], [ 1, %if.else.do.body92.sink.split_crit_edge ], [ 0, %if.else83.do.body92.sink.split_crit_edge ]
  %58 = ptrtoint ptr %info.0277 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %info.0277, align 4
  br label %do.body92

do.body92:                                        ; preds = %do.body92.sink.split, %if.else83.do.body92_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_init_table.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_init_table, %do.end110)) #8
          to label %if.then106 [label %do.end110], !srcloc !212

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %volt_table.0273 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %volt_table.0273, align 4
  %61 = ptrtoint ptr %info.0277 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %info.0277, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_init_table.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %i.0275, i32 noundef %60, i32 noundef %53, i32 noundef %62) #8
  br label %do.end110

do.end110:                                        ; preds = %if.then106, %do.body92
  %63 = ptrtoint ptr %ldo_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ldo_base, align 4
  %tobool111.not = icmp eq ptr %64, null
  %65 = ptrtoint ptr %vset_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vset_mask, align 4
  br i1 %tobool111.not, label %if.then112, label %if.end119

if.then112:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool113.not = icmp eq i32 %66, 0
  br i1 %tobool113.not, label %if.then112.for.inc_crit_edge, label %do.end117

if.then112.for.inc_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end117:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %volt_table.0273 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %volt_table.0273, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.43, i32 noundef %68, i32 noundef %66) #11
  br label %for.inc

if.end119:                                        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #10
  %and120 = and i32 %66, %53
  %69 = call i32 @llvm.cttz.i32(i32 %66, i1 false) #8, !range !216
  %shr = lshr i32 %and120, %69
  %vset = getelementptr inbounds %struct.ti_abb_info, ptr %info.0277, i32 0, i32 1
  %70 = ptrtoint ptr %vset to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shr, ptr %vset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_init_table.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_init_table, %check_abb)) #8
          to label %if.then136 [label %check_abb], !srcloc !212

if.then136:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %volt_table.0273 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %volt_table.0273, align 4
  %73 = ptrtoint ptr %vset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vset, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_init_table.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %i.0275, i32 noundef %72, i32 noundef %74) #8
  br label %check_abb

check_abb:                                        ; preds = %if.then136, %if.end119, %do.end69, %lor.lhs.false64.check_abb_crit_edge
  %75 = ptrtoint ptr %info.0277 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %info.0277, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i32 %76, label %cleanup [
    i32 0, label %check_abb.for.inc_crit_edge
    i32 1, label %check_abb.for.inc_crit_edge310
    i32 3, label %check_abb.for.inc_crit_edge311
  ]

check_abb.for.inc_crit_edge311:                   ; preds = %check_abb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

check_abb.for.inc_crit_edge310:                   ; preds = %check_abb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

check_abb.for.inc_crit_edge:                      ; preds = %check_abb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup:                                          ; preds = %check_abb
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %volt_table.0273 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %volt_table.0273, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.45, i32 noundef %i.0275, i32 noundef %79, i32 noundef %76) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vset_mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbb_mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbb_mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse_offset) #8
  br label %cleanup153

for.inc:                                          ; preds = %check_abb.for.inc_crit_edge, %check_abb.for.inc_crit_edge310, %check_abb.for.inc_crit_edge311, %do.end117, %if.then112.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vset_mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbb_mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbb_mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse_offset) #8
  %inc = add nuw nsw i32 %i.0275, 1
  %incdec.ptr = getelementptr %struct.ti_abb_info, ptr %info.0277, i32 1
  %incdec.ptr150 = getelementptr i32, ptr %volt_table.0273, i32 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.for.end_crit_edge
  %max_uV.0.lcssa = phi i32 [ 0, %if.end15.for.end_crit_edge ], [ %41, %for.inc.for.end_crit_edge ]
  %min_uV.0.lcssa = phi i32 [ 2147483647, %if.end15.for.end_crit_edge ], [ %40, %for.inc.for.end_crit_edge ]
  %min_uV151 = getelementptr inbounds %struct.regulator_init_data, ptr %rinit_data, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %min_uV151 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %min_uV.0.lcssa, ptr %min_uV151, align 4
  %max_uV152 = getelementptr inbounds %struct.regulator_init_data, ptr %rinit_data, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %max_uV152 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %max_uV.0.lcssa, ptr %max_uV152, align 4
  br label %cleanup153

cleanup153:                                       ; preds = %for.end, %cleanup, %if.end10.cleanup153_crit_edge, %if.end6.cleanup153_crit_edge, %do.end5, %do.end
  %retval.2 = phi i32 [ %call.i, %do.end ], [ -22, %do.end5 ], [ -22, %cleanup ], [ 0, %for.end ], [ -12, %if.end6.cleanup153_crit_edge ], [ -12, %if.end10.cleanup153_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_abb_init_timings(ptr noundef %dev, ptr noundef %abb) unnamed_addr #2 align 64 {
entry:
  %clock_cycles = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_cycles) #8
  %0 = ptrtoint ptr %clock_cycles to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clock_cycles, align 4, !annotation !213
  %regs1 = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 8
  %1 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %settling_time = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 14
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.61, ptr noundef %settling_time, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %call.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %settling_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %settling_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.61) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i104 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.66, ptr noundef nonnull %clock_cycles, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i104)
  %tobool11.not = icmp sgt i32 %call.i.i104, -1
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.66, i32 noundef %call.i.i104) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %clock_cycles to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock_cycles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.66) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.63, i32 noundef %12) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call34 = call i32 @clk_get_rate(ptr noundef %call23) #8
  %add = add i32 %call34, 500000
  %div35 = udiv i32 %add, 1000000
  %13 = ptrtoint ptr %clock_cycles to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clock_cycles, align 4
  %mul = mul i32 %14, 10
  %div39 = udiv i32 %add, 2000000
  %add40 = add i32 %mul, %div39
  %div41 = udiv i32 %add40, %div35
  %15 = ptrtoint ptr %settling_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %settling_time, align 4
  %mul44 = mul i32 %16, 10
  %div47103 = lshr i32 %div41, 1
  %add48 = add i32 %mul44, %div47103
  %div49 = udiv i32 %add48, %div41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_init_timings.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_init_timings, %do.end62)) #8
          to label %if.then57 [label %do.end62], !srcloc !212

if.then57:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %call59 = call i32 @clk_get_rate(ptr noundef %18) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_init_timings.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.63, i32 noundef %call59, i32 noundef %div49) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %if.end32
  %sr2_wtcnt_value_mask = getelementptr inbounds %struct.ti_abb_reg, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %sr2_wtcnt_value_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sr2_wtcnt_value_mask, align 4
  %setup_reg = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 3
  %21 = ptrtoint ptr %setup_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %setup_reg, align 4
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !214
  %24 = call i32 @llvm.bswap.i32(i32 %23) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %neg.i = xor i32 %20, -1
  %and.i = and i32 %24, %neg.i
  %25 = call i32 @llvm.cttz.i32(i32 %20, i1 false) #8, !range !216
  %shl.i = shl i32 %div49, %25
  %and3.i = and i32 %shl.i, %20
  %or.i = or i32 %and.i, %and3.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  call void @arm_heavy_mb() #8
  %26 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %26) #8, !srcloc !219
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.then26, %do.end21, %do.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i104, %do.end15 ], [ %12, %if.then26 ], [ 0, %do.end62 ], [ -22, %do.end21 ], [ -22, %do.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_cycles) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_abb_rmw(i32 noundef %mask, i32 noundef %value, ptr noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #8, !srcloc !214
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %neg = xor i32 %mask, -1
  %and = and i32 %1, %neg
  %2 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 false) #8, !range !216
  %shl = shl i32 %value, %2
  %and3 = and i32 %shl, %mask
  %or = or i32 %and, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %3) #8, !srcloc !219
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_abb_set_voltage_sel(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %dev2 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_set_voltage_sel._rs, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end9.do.body14_crit_edge, label %lor.lhs.false

if.end9.do.body14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

lor.lhs.false:                                    ; preds = %if.end9
  %info11 = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info11, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %lor.lhs.false.do.body14_crit_edge, label %if.end24

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %if.end9.do.body14_crit_edge
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_set_voltage_sel._rs.77, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #11
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sel)
  %cmp.not = icmp ugt i32 %3, %sel
  br i1 %cmp.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel, i32 noundef %sel, i32 noundef %3) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %current_info_idx = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %current_info_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_info_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sel)
  %cmp32 = icmp eq i32 %7, %sel
  br i1 %cmp32, label %do.body34, label %if.end44

do.body34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_set_voltage_sel, %cleanup)) #8
          to label %if.then40 [label %cleanup], !srcloc !212

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug288, ptr noundef %dev2, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel, i32 noundef %sel) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end31
  %arrayidx = getelementptr %struct.ti_abb_info, ptr %5, i32 %sel
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %7)
  %cmp47 = icmp eq i32 %7, -22
  br i1 %cmp47, label %if.end44.just_set_abb_crit_edge, label %if.end49

if.end44.just_set_abb_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %just_set_abb

if.end49:                                         ; preds = %if.end44
  %arrayidx52 = getelementptr %struct.ti_abb_info, ptr %5, i32 %7
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx, ptr noundef dereferenceable(8) %arrayidx52, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool54.not = icmp eq i32 %bcmp, 0
  br i1 %tobool54.not, label %do.body56, label %if.end49.just_set_abb_crit_edge

if.end49.just_set_abb_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %just_set_abb

do.body56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_abb_set_voltage_sel, %if.then78)) #8
          to label %if.then70 [label %if.then78], !srcloc !212

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %current_info_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_info_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug289, ptr noundef %dev2, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel, i32 noundef %sel, i32 noundef %9) #8
  br label %if.then78

just_set_abb:                                     ; preds = %if.end49.just_set_abb_crit_edge, %if.end44.just_set_abb_crit_edge
  %regs1.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 4
  %call.i = tail call fastcc i32 @ti_abb_clear_all_txdone(ptr noundef %dev2, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %just_set_abb.do.body80_crit_edge

just_set_abb.do.body80_crit_edge:                 ; preds = %just_set_abb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

if.end.i:                                         ; preds = %just_set_abb
  %fbb_sel_mask.i = getelementptr inbounds %struct.ti_abb_reg, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %fbb_sel_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fbb_sel_mask.i, align 4
  %rbb_sel_mask.i = getelementptr inbounds %struct.ti_abb_reg, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %rbb_sel_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rbb_sel_mask.i, align 4
  %or.i = or i32 %15, %13
  %setup_reg.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %setup_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup_reg.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !214
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %neg.i.i = xor i32 %or.i, -1
  %and.i.i = and i32 %19, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %20) #8, !srcloc !219
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %22, label %if.end.i.sw.epilog.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb7.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %rbb_sel_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rbb_sel_mask.i, align 4
  %26 = ptrtoint ptr %setup_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setup_reg.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !214
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %neg.i63.i = xor i32 %25, -1
  %and.i64.i = and i32 %29, %neg.i63.i
  %30 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #8, !range !216
  %shl.i.i = shl nuw i32 1, %30
  %and3.i.i = and i32 %shl.i.i, %25
  %or.i.i = or i32 %and.i64.i, %and3.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %31) #8, !srcloc !219
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %fbb_sel_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fbb_sel_mask.i, align 4
  %34 = ptrtoint ptr %setup_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %setup_reg.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !214
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %neg.i65.i = xor i32 %33, -1
  %and.i66.i = and i32 %37, %neg.i65.i
  %38 = tail call i32 @llvm.cttz.i32(i32 %33, i1 false) #8, !range !216
  %shl.i67.i = shl nuw i32 1, %38
  %and3.i68.i = and i32 %shl.i67.i, %33
  %or.i69.i = or i32 %and.i66.i, %and3.i68.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i69.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %39) #8, !srcloc !219
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %opp_sel_mask.i = getelementptr inbounds %struct.ti_abb_reg, ptr %11, i32 0, i32 7
  %40 = ptrtoint ptr %opp_sel_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opp_sel_mask.i, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %control_reg.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 4
  %44 = ptrtoint ptr %control_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %control_reg.i, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !214
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %neg.i70.i = xor i32 %41, -1
  %and.i71.i = and i32 %47, %neg.i70.i
  %48 = tail call i32 @llvm.cttz.i32(i32 %41, i1 false) #8, !range !216
  %shl.i72.i = shl i32 %43, %48
  %and3.i73.i = and i32 %shl.i72.i, %41
  %or.i74.i = or i32 %and.i71.i, %and3.i73.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i74.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %49) #8, !srcloc !219
  %ldo_base.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 7
  %50 = ptrtoint ptr %ldo_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ldo_base.i, align 4
  %tobool13.not.i = icmp eq ptr %51, null
  br i1 %tobool13.not.i, label %sw.epilog.i.if.end16.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end16.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %if.then15.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #8, !srcloc !214
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  %ldovbb_override_mask.i.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 10
  %56 = ptrtoint ptr %ldovbb_override_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ldovbb_override_mask.i.i, align 4
  %ldovbb_vset_mask.i.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 11
  %58 = ptrtoint ptr %ldovbb_vset_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ldovbb_vset_mask.i.i, align 4
  %or.i75.i = or i32 %59, %57
  %neg.i76.i = xor i32 %or.i75.i, -1
  %and.i77.i = and i32 %55, %neg.i76.i
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %61, label %if.then15.i.ti_abb_program_ldovbb.exit.i_crit_edge [
    i32 3, label %if.then15.i.sw.bb.i.i_crit_edge
    i32 1, label %if.then15.i.sw.bb.i.i_crit_edge140
  ]

if.then15.i.sw.bb.i.i_crit_edge140:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.then15.i.sw.bb.i.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.then15.i.ti_abb_program_ldovbb.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ti_abb_program_ldovbb.exit.i

sw.bb.i.i:                                        ; preds = %if.then15.i.sw.bb.i.i_crit_edge, %if.then15.i.sw.bb.i.i_crit_edge140
  %or3.i.i = or i32 %and.i77.i, %57
  %vset.i.i = getelementptr %struct.ti_abb_info, ptr %5, i32 %sel, i32 1
  %63 = ptrtoint ptr %vset.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vset.i.i, align 4
  %65 = tail call i32 @llvm.cttz.i32(i32 %59, i1 false) #8, !range !216
  %shl.i78.i = shl i32 %64, %65
  %or6.i.i = or i32 %or3.i.i, %shl.i78.i
  br label %ti_abb_program_ldovbb.exit.i

ti_abb_program_ldovbb.exit.i:                     ; preds = %sw.bb.i.i, %if.then15.i.ti_abb_program_ldovbb.exit.i_crit_edge
  %val.0.i.i = phi i32 [ %and.i77.i, %if.then15.i.ti_abb_program_ldovbb.exit.i_crit_edge ], [ %or6.i.i, %sw.bb.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #8
  %67 = ptrtoint ptr %ldo_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ldo_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !219
  br label %if.end16.i

if.end16.i:                                       ; preds = %ti_abb_program_ldovbb.exit.i, %land.lhs.true.i.if.end16.i_crit_edge, %sw.epilog.i.if.end16.i_crit_edge
  %opp_change_mask.i = getelementptr inbounds %struct.ti_abb_reg, ptr %11, i32 0, i32 6
  %69 = ptrtoint ptr %opp_change_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %opp_change_mask.i, align 4
  %71 = ptrtoint ptr %control_reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %control_reg.i, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #8, !srcloc !214
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %neg.i79.i = xor i32 %70, -1
  %and.i80.i = and i32 %74, %neg.i79.i
  %75 = tail call i32 @llvm.cttz.i32(i32 %70, i1 false) #8, !range !216
  %shl.i81.i = shl nuw i32 1, %75
  %and3.i82.i = and i32 %shl.i81.i, %70
  %or.i83.i = or i32 %and.i80.i, %and3.i82.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i83.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %76) #8, !srcloc !219
  %settling_time.i.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 14
  %int_base.i.i.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 5
  %txdone_mask.i.i.i = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end16.i
  %inc15.i.i = phi i32 [ 1, %if.end16.i ], [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %77 = ptrtoint ptr %int_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %int_base.i.i.i, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #8, !srcloc !214
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  %81 = ptrtoint ptr %txdone_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %txdone_mask.i.i.i, align 4
  %and.i.i.i = and i32 %82, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.end22.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748) #8
  %inc.i.i = add i32 %inc15.i.i, 1
  %84 = ptrtoint ptr %settling_time.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %settling_time.i.i, align 4
  %cmp.not.i.i = icmp ugt i32 %inc15.i.i, %85
  br i1 %cmp.not.i.i, label %do.body.i.i, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %call1.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_wait_txdone._rs, ptr noundef nonnull @__func__.ti_abb_wait_txdone) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i.do.body80_crit_edge, label %do.end.i.i

do.body.i.i.do.body80_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %int_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %int_base.i.i.i, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !214
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.ti_abb_wait_txdone, i32 noundef %inc.i.i, i32 noundef %89) #11
  br label %do.body80

if.end22.i:                                       ; preds = %while.body.i.i
  %call23.i = tail call fastcc i32 @ti_abb_clear_all_txdone(ptr noundef %dev2, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.do.body80_crit_edge

if.end22.i.do.body80_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

if.end26.i:                                       ; preds = %if.end22.i
  %90 = ptrtoint ptr %ldo_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ldo_base.i, align 4
  %tobool28.not.i = icmp eq ptr %91, null
  br i1 %tobool28.not.i, label %if.end26.i.if.then78_crit_edge, label %land.lhs.true29.i

if.end26.i.if.then78_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

land.lhs.true29.i:                                ; preds = %if.end26.i
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp31.i = icmp eq i32 %93, 0
  br i1 %cmp31.i, label %if.then32.i, label %land.lhs.true29.i.if.then78_crit_edge

land.lhs.true29.i.if.then78_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

if.then32.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ti_abb_program_ldovbb(ptr noundef nonnull %call, ptr noundef %arrayidx) #8
  br label %if.then78

if.then78:                                        ; preds = %if.then32.i, %land.lhs.true29.i.if.then78_crit_edge, %if.end26.i.if.then78_crit_edge, %if.then70, %do.body56
  %94 = ptrtoint ptr %current_info_idx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sel, ptr %current_info_idx, align 4
  br label %cleanup

do.body80:                                        ; preds = %if.end22.i.do.body80_crit_edge, %do.end.i.i, %do.body.i.i.do.body80_crit_edge, %just_set_abb.do.body80_crit_edge
  %ret.0 = phi i32 [ %call.i, %just_set_abb.do.body80_crit_edge ], [ %call23.i, %if.end22.i.do.body80_crit_edge ], [ -110, %do.end.i.i ], [ -110, %do.body.i.i.do.body80_crit_edge ]
  %call81 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_set_voltage_sel._rs.86, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.body80.cleanup_crit_edge, label %do.end86

do.body80.cleanup_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end86:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 23
  %95 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %volt_table, align 4
  %arrayidx87 = getelementptr i32, ptr %96, i32 %sel
  %97 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx87, align 4
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel, i32 noundef %98, i32 noundef %sel, i32 noundef %100, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %do.body80.cleanup_crit_edge, %if.then78, %if.then40, %do.body34, %do.end29, %do.end20, %do.body14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end29 ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ], [ -22, %do.end20 ], [ -22, %do.body14.cleanup_crit_edge ], [ 0, %if.then40 ], [ %ret.0, %do.body80.cleanup_crit_edge ], [ %ret.0, %do.end86 ], [ 0, %if.then78 ], [ 0, %do.body34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_abb_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %dev2 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_get_voltage_sel._rs, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end9.do.body13_crit_edge, label %lor.lhs.false

if.end9.do.body13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

lor.lhs.false:                                    ; preds = %if.end9
  %info = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %lor.lhs.false.do.body13_crit_edge, label %if.end23

lor.lhs.false.do.body13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

do.body13:                                        ; preds = %lor.lhs.false.do.body13_crit_edge, %if.end9.do.body13_crit_edge
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_get_voltage_sel._rs.92, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %do.end19

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #11
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %current_info_idx = getelementptr inbounds %struct.ti_abb, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %current_info_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_info_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.not = icmp slt i32 %7, %3
  br i1 %cmp.not, label %if.end23.cleanup_crit_edge, label %do.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel, i32 noundef %7, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end23.cleanup_crit_edge, %do.end19, %do.body13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end28 ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ], [ -22, %do.end19 ], [ -22, %do.body13.cleanup_crit_edge ], [ %7, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_abb_clear_all_txdone(ptr noundef %dev, ptr nocapture noundef readonly %abb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %settling_time = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 14
  %txdone_mask.i = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 9
  %int_base.i = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %inc18 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %txdone_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txdone_mask.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = ptrtoint ptr %int_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %int_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #8, !srcloc !219
  %5 = ptrtoint ptr %int_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %int_base.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !214
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  %9 = ptrtoint ptr %txdone_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txdone_mask.i, align 4
  %and.i = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %inc = add i32 %inc18, 1
  %12 = ptrtoint ptr %settling_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %settling_time, align 4
  %cmp.not = icmp ugt i32 %inc18, %13
  br i1 %cmp.not, label %do.body, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.body:                                          ; preds = %if.end
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_clear_all_txdone._rs, ptr noundef nonnull @__func__.ti_abb_clear_all_txdone) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %int_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %int_base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !214
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.ti_abb_clear_all_txdone, i32 noundef %inc, i32 noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ -110, %do.body.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_abb_program_ldovbb(ptr nocapture noundef readonly %abb, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ldo_base = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 7
  %0 = ptrtoint ptr %ldo_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldo_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !214
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  %ldovbb_override_mask = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 10
  %4 = ptrtoint ptr %ldovbb_override_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ldovbb_override_mask, align 4
  %ldovbb_vset_mask = getelementptr inbounds %struct.ti_abb, ptr %abb, i32 0, i32 11
  %6 = ptrtoint ptr %ldovbb_vset_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ldovbb_vset_mask, align 4
  %or = or i32 %7, %5
  %neg = xor i32 %or, -1
  %and = and i32 %3, %neg
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %9, label %entry.do.body_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge1
  ]

entry.sw.bb_crit_edge1:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge1
  %or3 = or i32 %and, %5
  %vset = getelementptr inbounds %struct.ti_abb_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %vset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vset, align 4
  %13 = tail call i32 @llvm.cttz.i32(i32 %7, i1 false) #8, !range !216
  %shl = shl i32 %12, %13
  %or6 = or i32 %or3, %shl
  br label %do.body

do.body:                                          ; preds = %sw.bb, %entry.do.body_crit_edge
  %val.0 = phi i32 [ %and, %entry.do.body_crit_edge ], [ %or6, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %15 = ptrtoint ptr %ldo_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ldo_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !219
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !67, !68, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !128, !130, !131, !133, !134, !136, !137, !138, !140, !141, !143, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !199, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__UNIQUE_ID_alias296, !1, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!1 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 870, i32 1}
!2 = !{ptr @__initcall__kmod_ti_abb_regulator__297_879_ti_abb_driver_init6, !3, !"__initcall__kmod_ti_abb_regulator__297_879_ti_abb_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 879, i32 1}
!4 = !{ptr @__exitcall_ti_abb_driver_exit, !3, !"__exitcall_ti_abb_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 881, i32 1}
!7 = !{ptr @__UNIQUE_ID_author299, !8, !"__UNIQUE_ID_author299", i1 false, i1 false}
!8 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 882, i32 1}
!9 = !{ptr @__UNIQUE_ID_file300, !10, !"__UNIQUE_ID_file300", i1 false, i1 false}
!10 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 883, i32 1}
!11 = !{ptr @__UNIQUE_ID_license301, !10, !"__UNIQUE_ID_license301", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 875, i32 14}
!14 = !{ptr @ti_abb_driver, !15, !"ti_abb_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 872, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 713, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ti_abb_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ti_abb_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 717, i32 3}
!26 = !{ptr @ti_abb_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ti_abb_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 728, i32 59}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 736, i32 66}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 740, i32 64}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 745, i32 62}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 750, i32 10}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 753, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ti_abb_probe.__UNIQUE_ID_ddebug294, !39, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 765, i32 3}
!44 = !{ptr @ti_abb_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ti_abb_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 769, i32 10}
!48 = !{ptr @ti_abb_probe.__UNIQUE_ID_ddebug295, !49, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!49 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 772, i32 3}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 781, i32 10}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 786, i32 3}
!54 = !{ptr @ti_abb_probe._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ti_abb_probe._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 790, i32 3}
!58 = !{ptr @ti_abb_probe._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ti_abb_probe._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 794, i32 10}
!62 = !{ptr @ti_abb_probe._entry.28, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 799, i32 3}
!64 = !{ptr @ti_abb_probe._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ti_abb_probe._entry.30, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 803, i32 3}
!67 = !{ptr @ti_abb_probe._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 808, i32 10}
!70 = !{ptr @ti_abb_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 813, i32 3}
!72 = !{ptr @ti_abb_probe._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ti_abb_probe._entry.35, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 817, i32 3}
!75 = !{ptr @ti_abb_probe._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 824, i32 3}
!78 = !{ptr @ti_abb_probe._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ti_abb_probe._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 858, i32 3}
!82 = !{ptr @ti_abb_probe._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ti_abb_probe._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 511, i32 16}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 524, i32 3}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ti_abb_init_table._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ti_abb_init_table._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 529, i32 3}
!93 = !{ptr @ti_abb_init_table._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ti_abb_init_table._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 569, i32 3}
!97 = !{ptr @ti_abb_init_table.__UNIQUE_ID_ddebug291, !96, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 583, i32 5}
!100 = !{ptr @ti_abb_init_table._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ti_abb_init_table._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 598, i32 3}
!104 = !{ptr @ti_abb_init_table.__UNIQUE_ID_ddebug292, !103, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 605, i32 5}
!107 = !{ptr @ti_abb_init_table._entry.54, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ti_abb_init_table._entry_ptr.56, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 610, i32 3}
!111 = !{ptr @ti_abb_init_table.__UNIQUE_ID_ddebug293, !110, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 619, i32 4}
!114 = !{ptr @ti_abb_init_table._entry.58, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ti_abb_init_table._entry_ptr.60, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 424, i32 16}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 429, i32 3}
!120 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ti_abb_init_timings._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ti_abb_init_timings._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @ti_abb_init_timings._entry.64, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 435, i32 3}
!125 = !{ptr @ti_abb_init_timings._entry_ptr.65, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 439, i32 10}
!128 = !{ptr @ti_abb_init_timings._entry.67, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 442, i32 3}
!130 = !{ptr @ti_abb_init_timings._entry_ptr.68, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @ti_abb_init_timings._entry.69, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 447, i32 3}
!133 = !{ptr @ti_abb_init_timings._entry_ptr.70, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 454, i32 3}
!136 = !{ptr @ti_abb_init_timings._entry.71, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ti_abb_init_timings._entry_ptr.73, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 490, i32 2}
!140 = !{ptr @ti_abb_init_timings.__UNIQUE_ID_ddebug290, !139, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!141 = !{ptr @ti_abb_reg_ops, !142, !"ti_abb_reg_ops", i1 false, i1 false}
!142 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 632, i32 35}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 321, i32 3}
!145 = !{ptr @ti_abb_set_voltage_sel._rs, !144, !"_rs", i1 false, i1 false}
!146 = !{ptr @__func__.ti_abb_set_voltage_sel, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @ti_abb_set_voltage_sel._entry, !144, !"_entry", i1 false, i1 false}
!149 = !{ptr @ti_abb_set_voltage_sel._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @ti_abb_set_voltage_sel._rs.77, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 327, i32 3}
!152 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ti_abb_set_voltage_sel._entry.78, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ti_abb_set_voltage_sel._entry_ptr.80, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 334, i32 3}
!157 = !{ptr @ti_abb_set_voltage_sel._entry.81, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ti_abb_set_voltage_sel._entry_ptr.83, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 341, i32 3}
!161 = !{ptr @ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug288, !160, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 358, i32 3}
!164 = !{ptr @ti_abb_set_voltage_sel.__UNIQUE_ID_ddebug289, !163, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!165 = !{ptr @ti_abb_set_voltage_sel._rs.86, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 370, i32 3}
!167 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ti_abb_set_voltage_sel._entry.87, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ti_abb_set_voltage_sel._entry_ptr.89, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @ti_abb_clear_all_txdone._rs, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 208, i32 2}
!172 = !{ptr @__func__.ti_abb_clear_all_txdone, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @ti_abb_clear_all_txdone._entry, !171, !"_entry", i1 false, i1 false}
!176 = !{ptr @ti_abb_clear_all_txdone._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @ti_abb_wait_txdone._rs, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 181, i32 2}
!179 = !{ptr @__func__.ti_abb_wait_txdone, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ti_abb_wait_txdone._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ti_abb_wait_txdone._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @ti_abb_get_voltage_sel._rs, !183, !"_rs", i1 false, i1 false}
!183 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 390, i32 3}
!184 = !{ptr @__func__.ti_abb_get_voltage_sel, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ti_abb_get_voltage_sel._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @ti_abb_get_voltage_sel._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @ti_abb_get_voltage_sel._rs.92, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 396, i32 3}
!189 = !{ptr @ti_abb_get_voltage_sel._entry.93, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ti_abb_get_voltage_sel._entry_ptr.94, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 403, i32 3}
!193 = !{ptr @ti_abb_get_voltage_sel._entry.95, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ti_abb_get_voltage_sel._entry_ptr.97, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @ti_abb_of_match, !196, !"ti_abb_of_match", i1 false, i1 false}
!196 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 677, i32 34}
!197 = !{ptr @abb_regs_v1, !198, !"abb_regs_v1", i1 false, i1 false}
!198 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 640, i32 32}
!199 = !{ptr @abb_regs_v2, !200, !"abb_regs_v2", i1 false, i1 false}
!200 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 654, i32 32}
!201 = !{ptr @abb_regs_generic, !202, !"abb_regs_generic", i1 false, i1 false}
!202 = !{!"../drivers/regulator/ti-abb-regulator.c", i32 667, i32 32}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i64 2148744344, i64 2148744349, i64 2148744362, i64 2148744406, i64 2148744440, i64 2148744461}
!213 = !{!"auto-init"}
!214 = !{i64 3092352}
!215 = !{i64 2155162312}
!216 = !{i32 0, i32 33}
!217 = !{i64 2155104195}
!218 = !{i64 2155104395}
!219 = !{i64 3091934}
!220 = !{i64 2155114283}
!221 = !{i64 2155114497}
!222 = !{i64 2155105195}
!223 = !{i64 2155109801}
!224 = !{i64 2155105587}
!225 = !{i64 2155113809}
