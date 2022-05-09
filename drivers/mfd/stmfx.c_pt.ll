; ModuleID = '/llk/IR_all_yes/drivers/mfd/stmfx.c_pt.bc'
source_filename = "../drivers/mfd/stmfx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stmfx_function_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_stmfx_function_enable\09\09\09\09"
module asm "\09.long\09__crc_stmfx_function_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmfx_function_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22stmfx_function_enable\22\09\09\09\09\09"
module asm "__kstrtabns_stmfx_function_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stmfx_function_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_stmfx_function_disable\09\09\09\09"
module asm "\09.long\09__crc_stmfx_function_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmfx_function_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22stmfx_function_disable\22\09\09\09\09\09"
module asm "__kstrtabns_stmfx_function_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.stmfx = type { ptr, ptr, ptr, i32, ptr, %struct.mutex, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@stmfx_function_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ALTGPIO function already enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmfx_function_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/mfd/stmfx.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmfx_function_enable._entry_ptr = internal global ptr @stmfx_function_enable._entry, section ".printk_index", align 4
@stmfx_function_enable._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TS in use, aGPIO[3:0] unavailable\0A\00", [61 x i8] zeroinitializer }, align 32
@stmfx_function_enable._entry_ptr.7 = internal global ptr @stmfx_function_enable._entry.5, section ".printk_index", align 4
@stmfx_function_enable._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IDD in use, aGPIO[7:4] unavailable\0A\00", [60 x i8] zeroinitializer }, align 32
@stmfx_function_enable._entry_ptr.10 = internal global ptr @stmfx_function_enable._entry.8, section ".printk_index", align 4
@__kstrtab_stmfx_function_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmfx_function_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_stmfx_function_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmfx_function_enable to i32), ptr @__kstrtab_stmfx_function_enable, ptr @__kstrtabns_stmfx_function_enable }, section "___ksymtab_gpl+stmfx_function_enable", align 4
@__kstrtab_stmfx_function_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmfx_function_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_stmfx_function_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmfx_function_disable to i32), ptr @__kstrtab_stmfx_function_disable, ptr @__kstrtabns_stmfx_function_disable }, section "___ksymtab_gpl+stmfx_function_disable", align 4
@__initcall__kmod_stmfx__293_557_stmfx_driver_init6 = internal global ptr @stmfx_driver_init, section ".initcall6.init", align 4
@stmfx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stmfx_probe, ptr @stmfx_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stmfx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_dev_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stmfx_driver_exit = internal global ptr @stmfx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [36 x i8] c"stmfx.description=STMFX core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [54 x i8] c"stmfx.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [29 x i8] c"stmfx.file=drivers/mfd/stmfx\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [21 x i8] c"stmfx.license=GPL v2\00", section ".modinfo", align 1
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stmfx-core\00", [21 x i8] zeroinitializer }, align 32
@stmfx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stmfx-0300\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stmfx_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stmfx_suspend, ptr @stmfx_resume, ptr @stmfx_suspend, ptr @stmfx_resume, ptr @stmfx_suspend, ptr @stmfx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stmfx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stmfx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 8, ptr @stmfx_reg_writeable, ptr null, ptr @stmfx_reg_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 176, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"stmfx:423:(&stmfx_regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@stmfx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 426, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stmfx_probe\00", [20 x i8] zeroinitializer }, align 32
@stmfx_probe._entry_ptr = internal global ptr @stmfx_probe._entry, section ".printk_index", align 4
@stmfx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&stmfx->lock\00", [19 x i8] zeroinitializer }, align 32
@stmfx_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 440, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@stmfx_probe._entry_ptr.18 = internal global ptr @stmfx_probe._entry.16, section ".printk_index", align 4
@stmfx_cells = internal global { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.44, i64 0, i8 0, ptr null, i32 1, ptr @stmfx_pinctrl_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.46, i64 0, i8 0, ptr null, i32 2, ptr @stmfx_idd_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.48, i64 0, i8 0, ptr null, i32 5, ptr @stmfx_ts_resources, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get VDD regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@stmfx_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VDD enable failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stmfx_chip_init\00", [16 x i8] zeroinitializer }, align 32
@stmfx_chip_init._entry_ptr = internal global ptr @stmfx_chip_init._entry, section ".printk_index", align 4
@stmfx_chip_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 349, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error reading chip ID: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stmfx_chip_init._entry_ptr.25 = internal global ptr @stmfx_chip_init._entry.23, section ".printk_index", align 4
@stmfx_chip_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown chip ID: %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@stmfx_chip_init._entry_ptr.28 = internal global ptr @stmfx_chip_init._entry.26, section ".printk_index", align 4
@stmfx_chip_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error reading FW version: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@stmfx_chip_init._entry_ptr.31 = internal global ptr @stmfx_chip_init._entry.29, section ".printk_index", align 4
@stmfx_chip_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 378, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"STMFX id: %#x, fw version: %x.%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stmfx_chip_init._entry_ptr.35 = internal global ptr @stmfx_chip_init._entry.32, section ".printk_index", align 4
@stmfx_chip_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.22, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to reset chip: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@stmfx_chip_init._entry_ptr.38 = internal global ptr @stmfx_chip_init._entry.36, section ".printk_index", align 4
@stmfx_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @stmfx_irq_map, ptr @stmfx_irq_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@stmfx_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stmfx_irq_init\00", [17 x i8] zeroinitializer }, align 32
@stmfx_irq_init._entry_ptr = internal global ptr @stmfx_irq_init._entry, section ".printk_index", align 4
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stmfx\00", [26 x i8] zeroinitializer }, align 32
@stmfx_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_irq_mask, ptr null, ptr @stmfx_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_irq_bus_lock, ptr @stmfx_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stmfx-pinctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,stmfx-0300-pinctrl\00", [42 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmfx-idd\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st,stmfx-0300-idd\00", [46 x i8] zeroinitializer }, align 32
@stmfx_idd_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2, i32 2, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stmfx-ts\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,stmfx-0300-ts\00", [47 x i8] zeroinitializer }, align 32
@stmfx_ts_resources = internal constant { [5 x %struct.resource], [32 x i8] } { [5 x %struct.resource] [%struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 4, i32 4, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 5, i32 5, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 7, i32 7, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@stmfx_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.49, ptr @.str.2, i32 506, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stmfx_resume\00", [19 x i8] zeroinitializer }, align 32
@stmfx_resume._entry_ptr = internal global ptr @stmfx_resume._entry, section ".printk_index", align 4
@stmfx_resume._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.49, ptr @.str.2, i32 514, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@stmfx_resume._entry_ptr.51 = internal global ptr @stmfx_resume._entry.50, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.53 = internal global [20 x i64] [i64 18, i64 32, i64 8, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 64, i64 66, i64 72, i64 73, i64 74, i64 108, i64 109, i64 110, i64 112, i64 113, i64 114]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 134, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 141, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 148, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"stmfx_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 548, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 550, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"stmfx_of_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 542, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"stmfx_dev_pm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 540, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c"stmfx_regmap_config\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 49, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 423, i32 15 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 426, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 430, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 440, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"stmfx_cells\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 76, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 330, i32 57 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 336, i32 44 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 342, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 349, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 365, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 373, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 377, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 382, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"stmfx_irq_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 250, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 276, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 280, i32 50 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 295, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"stmfx_irq_chip\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 196, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 79, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 78, i32 20 }
@___asan_gen_.204 = private unnamed_addr constant [24 x i8] c"stmfx_pinctrl_resources\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 59, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 85, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 84, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c"stmfx_idd_resources\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 63, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 91, i32 11 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 90, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"stmfx_ts_resources\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 68, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 505, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private constant [23 x i8] c"../drivers/mfd/stmfx.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 514, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_stmfx_driver_exit, ptr @__initcall__kmod_stmfx__293_557_stmfx_driver_init6, ptr @__ksymtab_stmfx_function_disable, ptr @__ksymtab_stmfx_function_enable, ptr @stmfx_chip_init._entry, ptr @stmfx_chip_init._entry.23, ptr @stmfx_chip_init._entry.26, ptr @stmfx_chip_init._entry.29, ptr @stmfx_chip_init._entry.32, ptr @stmfx_chip_init._entry.36, ptr @stmfx_chip_init._entry_ptr, ptr @stmfx_chip_init._entry_ptr.25, ptr @stmfx_chip_init._entry_ptr.28, ptr @stmfx_chip_init._entry_ptr.31, ptr @stmfx_chip_init._entry_ptr.35, ptr @stmfx_chip_init._entry_ptr.38, ptr @stmfx_driver_exit, ptr @stmfx_function_enable._entry, ptr @stmfx_function_enable._entry.5, ptr @stmfx_function_enable._entry.8, ptr @stmfx_function_enable._entry_ptr, ptr @stmfx_function_enable._entry_ptr.10, ptr @stmfx_function_enable._entry_ptr.7, ptr @stmfx_irq_init._entry, ptr @stmfx_irq_init._entry_ptr, ptr @stmfx_probe._entry, ptr @stmfx_probe._entry.16, ptr @stmfx_probe._entry_ptr, ptr @stmfx_probe._entry_ptr.18, ptr @stmfx_resume._entry, ptr @stmfx_resume._entry.50, ptr @stmfx_resume._entry_ptr, ptr @stmfx_resume._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @stmfx_driver, ptr @.str.11, ptr @stmfx_of_match, ptr @stmfx_dev_pm_ops, ptr @stmfx_probe._key, ptr @stmfx_regmap_config, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @stmfx_probe.__key, ptr @.str.15, ptr @.str.17, ptr @stmfx_cells, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @stmfx_irq_ops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @stmfx_irq_chip, ptr @.str.43, ptr @.str.44, ptr @stmfx_pinctrl_resources, ptr @.str.45, ptr @.str.46, ptr @stmfx_idd_resources, ptr @.str.47, ptr @.str.48, ptr @stmfx_ts_resources, ptr @.str.49], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_function_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_function_enable._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_function_enable._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_cells to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_chip_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_chip_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_chip_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_chip_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_chip_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_idd_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_ts_resources to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_resume._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmfx_function_enable(ptr nocapture noundef readonly %stmfx, i32 noundef %func) #0 align 64 {
entry:
  %sys_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sys_ctrl) #7
  %0 = ptrtoint ptr %sys_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sys_ctrl, align 4, !annotation !134
  %map = getelementptr inbounds %struct.stmfx, ptr %stmfx, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 64, ptr noundef nonnull %sys_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i32 %func, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sys_ctrl, align 4
  %and4 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %do.end

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stmfx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %and8 = and i32 %func, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end18_crit_edge, label %land.lhs.true10

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true10:                                  ; preds = %if.end7
  %9 = ptrtoint ptr %sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sys_ctrl, align 4
  %and11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true10.if.end18_crit_edge, label %do.end16

land.lhs.true10.if.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end16:                                         ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stmfx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true10.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %and19 = and i32 %func, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end29_crit_edge, label %land.lhs.true21

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true21:                                  ; preds = %if.end18
  %13 = ptrtoint ptr %sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sys_ctrl, align 4
  %and22 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true21.if.end29_crit_edge, label %do.end27

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end27:                                         ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stmfx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true21.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  %17 = trunc i32 %func to i8
  %18 = and i8 %17, 1
  %19 = and i32 %func, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  %21 = or i8 %18, 8
  %mask.1.i = select i1 %20, i8 %18, i8 %21
  %22 = lshr i8 %17, 2
  %23 = and i8 %22, 6
  %24 = or i8 %mask.1.i, %23
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  %conv = zext i8 %24 to i32
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 64, i32 noundef %conv, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end27, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %do.end16 ], [ -16, %do.end27 ], [ %call.i, %if.end29 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sys_ctrl) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmfx_function_disable(ptr nocapture noundef readonly %stmfx, i32 noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %func to i8
  %1 = and i8 %0, 1
  %2 = and i32 %func, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %4 = or i8 %1, 8
  %mask.1.i = select i1 %3, i8 %1, i8 %4
  %5 = lshr i8 %0, 2
  %6 = and i8 %5, 6
  %7 = or i8 %mask.1.i, %6
  %map = getelementptr inbounds %struct.stmfx, ptr %stmfx, i32 0, i32 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %conv = zext i8 %7 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 64, i32 noundef %conv, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stmfx_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @stmfx_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  %version.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @stmfx_regmap_config, ptr noundef nonnull @stmfx_probe._key, ptr noundef nonnull @.str.12) #7
  %map = getelementptr inbounds %struct.stmfx, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %3) #10
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.stmfx, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @stmfx_probe.__key) #7
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %id.i, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %version.i) #7
  %7 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %version.i, align 1, !annotation !134
  %8 = getelementptr inbounds [2 x i8], ptr %version.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !134
  %call1.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.19) #7
  %vdd.i = getelementptr inbounds %struct.stmfx, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i, ptr %vdd.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %call1.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %11, i32 0
  %12 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i.i, label %if.else.i [
    i32 0, label %if.end8.i
    i32 -19, label %if.end8.thread.i
  ]

if.end8.thread.i:                                 ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %vdd.i, align 4
  br label %if.end18.i

if.else.i:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %spec.select.i.i, ptr noundef nonnull @.str.20) #7
  br label %stmfx_chip_init.exit

if.end8.i:                                        ; preds = %do.body10
  %tobool10.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end18.i_crit_edge, label %if.then11.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.end8.i
  %call13.i = tail call i32 @regulator_enable(ptr noundef nonnull %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then11.i.if.end18.i_crit_edge, label %do.end.i

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call13.i) #10
  br label %stmfx_chip_init.exit

if.end18.i:                                       ; preds = %if.then11.i.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge, %if.end8.thread.i
  %map.i = getelementptr inbounds %struct.stmfx, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 4
  %call19.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %do.end41.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call19.i) #10
  br label %err.i

do.end41.i:                                       ; preds = %if.end18.i
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %neg.i = and i32 %17, 255
  %and.i = xor i32 %neg.i, 255
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %19 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shl.i)
  %cmp42.not.i = icmp eq i32 %and.i, %shl.i
  br i1 %cmp42.not.i, label %if.end49.i, label %do.end47.i

do.end47.i:                                       ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %17) #10
  br label %err.i

if.end49.i:                                       ; preds = %do.end41.i
  %20 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i, align 4
  %call51.i = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef 1, ptr noundef nonnull %version.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %do.end61.i, label %do.end56.i

do.end56.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call51.i) #10
  br label %err.i

do.end61.i:                                       ; preds = %if.end49.i
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %version.i, align 1
  %conv63.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %8, align 1
  %conv65.i = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %23, i32 noundef %conv63.i, i32 noundef %conv65.i) #10
  %call66.i = call fastcc i32 @stmfx_chip_reset(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %stmfx_chip_init.exit.thread, label %do.end71.i

stmfx_chip_init.exit.thread:                      ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %if.end18

do.end71.i:                                       ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call66.i) #10
  br label %err.i

err.i:                                            ; preds = %do.end71.i, %do.end56.i, %do.end47.i, %do.end24.i
  %ret.0.i = phi i32 [ %call19.i, %do.end24.i ], [ -22, %do.end47.i ], [ %call51.i, %do.end56.i ], [ %call66.i, %do.end71.i ]
  %28 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdd.i, align 4
  %tobool75.not.i = icmp eq ptr %29, null
  br i1 %tobool75.not.i, label %err.i.stmfx_chip_init.exit_crit_edge, label %if.then76.i

err.i.stmfx_chip_init.exit_crit_edge:             ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stmfx_chip_init.exit

if.then76.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  %call78.i = call i32 @regulator_disable(ptr noundef nonnull %29) #7
  br label %stmfx_chip_init.exit

stmfx_chip_init.exit:                             ; preds = %if.then76.i, %err.i.stmfx_chip_init.exit_crit_edge, %do.end.i, %if.else.i
  %retval.0.i = phi i32 [ %call13.i, %do.end.i ], [ %call78.i, %if.then76.i ], [ %call7.i, %if.else.i ], [ %ret.0.i, %err.i.stmfx_chip_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  %30 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %retval.0.i, label %if.end17 [
    i32 0, label %stmfx_chip_init.exit.if.end18_crit_edge
    i32 -110, label %stmfx_chip_init.exit.cleanup_crit_edge
  ]

stmfx_chip_init.exit.cleanup_crit_edge:           ; preds = %stmfx_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

stmfx_chip_init.exit.if.end18_crit_edge:          ; preds = %stmfx_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end17:                                         ; preds = %stmfx_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %stmfx_chip_init.exit.if.end18_crit_edge, %stmfx_chip_init.exit.thread
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp19 = icmp slt i32 %32, 0
  br i1 %cmp19, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %32) #10
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  br label %err_chip_exit

if.end26:                                         ; preds = %if.end18
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %40, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %40, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i.i, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @stmfx_irq_ops, ptr noundef %36) #7
  %irq_domain.i = getelementptr inbounds %struct.stmfx, ptr %36, i32 0, i32 4
  %41 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i, ptr %irq_domain.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %36, align 4
  br i1 %tobool.not.i, label %do.end.i66, label %if.end.i

do.end.i66:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.39) #10
  br label %err_chip_exit

if.end.i:                                         ; preds = %if.end26
  %of_node5.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %of_node5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node5.i, align 8
  %call.i.i = call ptr @of_find_property(ptr noundef %45, ptr noundef nonnull @.str.41, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %spec.select.i = zext i1 %tobool.i.not.i to i32
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %call.i51.i = call ptr @irq_get_irq_data(i32 noundef %47) #7
  %tobool.not.i.i = icmp eq ptr %call.i51.i, null
  br i1 %tobool.not.i.i, label %if.end.i.irq_get_trigger_type.exit.i_crit_edge, label %cond.true.i.i

if.end.i.irq_get_trigger_type.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_trigger_type.exit.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i51.i, i32 0, i32 3
  %48 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %common.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %and.i.i.i = and i32 %51, 15
  br label %irq_get_trigger_type.exit.i

irq_get_trigger_type.exit.i:                      ; preds = %cond.true.i.i, %if.end.i.irq_get_trigger_type.exit.i_crit_edge
  %cond.i.i = phi i32 [ %and.i.i.i, %cond.true.i.i ], [ 0, %if.end.i.irq_get_trigger_type.exit.i_crit_edge ]
  %52 = and i32 %cond.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %53 = icmp eq i32 %52, 0
  %or14.i = or i32 %spec.select.i, 2
  %irqoutpin.1.i = select i1 %53, i32 %spec.select.i, i32 %or14.i
  %map.i67 = getelementptr inbounds %struct.stmfx, ptr %36, i32 0, i32 1
  %54 = ptrtoint ptr %map.i67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i67, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %55, i32 noundef 65, i32 noundef %irqoutpin.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %irq_get_trigger_type.exit.i.irq_exit.i_crit_edge

irq_get_trigger_type.exit.i.irq_exit.i_crit_edge: ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_exit.i

if.end19.i:                                       ; preds = %irq_get_trigger_type.exit.i
  %56 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %36, align 4
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 4
  %or22.i = or i32 %cond.i.i, 8192
  %call23.i = call i32 @devm_request_threaded_irq(ptr noundef %57, i32 noundef %59, ptr noundef null, ptr noundef nonnull @stmfx_irq_handler, i32 noundef %or22.i, ptr noundef nonnull @.str.42, ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end30, label %if.end19.i.irq_exit.i_crit_edge

if.end19.i.irq_exit.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_exit.i

irq_exit.i:                                       ; preds = %if.end19.i.irq_exit.i_crit_edge, %irq_get_trigger_type.exit.i.irq_exit.i_crit_edge
  %ret.0.i68 = phi i32 [ %call16.i, %irq_get_trigger_type.exit.i.irq_exit.i_crit_edge ], [ %call23.i, %if.end19.i.irq_exit.i_crit_edge ]
  call fastcc void @stmfx_irq_exit(ptr noundef %client) #7
  br label %err_chip_exit

if.end30:                                         ; preds = %if.end19.i
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  %irq28.i = getelementptr inbounds %struct.stmfx, ptr %36, i32 0, i32 3
  %62 = ptrtoint ptr %irq28.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %irq28.i, align 4
  %irq_domain = getelementptr inbounds %struct.stmfx, ptr %call.i, i32 0, i32 4
  %63 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %irq_domain, align 4
  %call31 = call i32 @devm_mfd_add_devices(ptr noundef %dev1, i32 noundef -1, ptr noundef nonnull @stmfx_cells, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef %64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %err_irq_exit

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_irq_exit:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @stmfx_irq_exit(ptr noundef %client)
  br label %err_chip_exit

err_chip_exit:                                    ; preds = %err_irq_exit, %irq_exit.i, %do.end.i66, %do.end23
  %ret.0 = phi i32 [ %34, %do.end23 ], [ %call31, %err_irq_exit ], [ -22, %do.end.i66 ], [ %ret.0.i68, %irq_exit.i ]
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i, align 4
  %map.i71 = getelementptr inbounds %struct.stmfx, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %map.i71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map.i71, align 4
  %call1.i72 = call i32 @regmap_write(ptr noundef %68, i32 noundef 66, i32 noundef 0) #7
  %69 = ptrtoint ptr %map.i71 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map.i71, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 64, i32 noundef 0) #7
  %vdd.i73 = getelementptr inbounds %struct.stmfx, ptr %66, i32 0, i32 2
  %71 = ptrtoint ptr %vdd.i73 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vdd.i73, align 4
  %tobool.not.i74 = icmp eq ptr %72, null
  br i1 %tobool.not.i74, label %err_chip_exit.cleanup_crit_edge, label %if.then.i

err_chip_exit.cleanup_crit_edge:                  ; preds = %err_chip_exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %err_chip_exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 @regulator_disable(ptr noundef nonnull %72) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_chip_exit.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end17, %stmfx_chip_init.exit.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %retval.0.i, %if.end17 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %stmfx_chip_init.exit.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %ret.0, %err_chip_exit.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @stmfx_irq_exit(ptr noundef %client)
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 66, i32 noundef 0) #7
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 64, i32 noundef 0) #7
  %vdd.i = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.stmfx_chip_exit.exit_crit_edge, label %if.then.i

entry.stmfx_chip_exit.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stmfx_chip_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @regulator_disable(ptr noundef nonnull %7) #7
  br label %stmfx_chip_exit.exit

stmfx_chip_exit.exit:                             ; preds = %if.then.i, %entry.stmfx_chip_exit.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.then.i ], [ 0, %entry.stmfx_chip_exit.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stmfx_irq_exit(ptr nocapture noundef readonly %client) unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_domain = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #7
  %7 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.1 = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge, label %if.then.i.1

irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge: ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.1

if.then.i.1:                                      ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.1

irq_find_mapping.exit.1:                          ; preds = %if.then.i.1, %irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %11, %if.then.i.1 ], [ 0, %irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.1) #7
  %12 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.2 = call ptr @__irq_resolve_mapping(ptr noundef %13, i32 noundef 2, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.i.2, label %irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge, label %if.then.i.2

irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge: ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.2

if.then.i.2:                                      ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.2

irq_find_mapping.exit.2:                          ; preds = %if.then.i.2, %irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %16, %if.then.i.2 ], [ 0, %irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.2) #7
  %17 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.3 = call ptr @__irq_resolve_mapping(ptr noundef %18, i32 noundef 3, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.3 = icmp eq ptr %call.i.3, null
  br i1 %tobool.not.i.3, label %irq_find_mapping.exit.2.irq_find_mapping.exit.3_crit_edge, label %if.then.i.3

irq_find_mapping.exit.2.irq_find_mapping.exit.3_crit_edge: ; preds = %irq_find_mapping.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.3

if.then.i.3:                                      ; preds = %irq_find_mapping.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.3

irq_find_mapping.exit.3:                          ; preds = %if.then.i.3, %irq_find_mapping.exit.2.irq_find_mapping.exit.3_crit_edge
  %retval.0.i.3 = phi i32 [ %21, %if.then.i.3 ], [ 0, %irq_find_mapping.exit.2.irq_find_mapping.exit.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.3) #7
  %22 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.4 = call ptr @__irq_resolve_mapping(ptr noundef %23, i32 noundef 4, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.4 = icmp eq ptr %call.i.4, null
  br i1 %tobool.not.i.4, label %irq_find_mapping.exit.3.irq_find_mapping.exit.4_crit_edge, label %if.then.i.4

irq_find_mapping.exit.3.irq_find_mapping.exit.4_crit_edge: ; preds = %irq_find_mapping.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.4

if.then.i.4:                                      ; preds = %irq_find_mapping.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.4

irq_find_mapping.exit.4:                          ; preds = %if.then.i.4, %irq_find_mapping.exit.3.irq_find_mapping.exit.4_crit_edge
  %retval.0.i.4 = phi i32 [ %26, %if.then.i.4 ], [ 0, %irq_find_mapping.exit.3.irq_find_mapping.exit.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.4) #7
  %27 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.5 = call ptr @__irq_resolve_mapping(ptr noundef %28, i32 noundef 5, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.5 = icmp eq ptr %call.i.5, null
  br i1 %tobool.not.i.5, label %irq_find_mapping.exit.4.irq_find_mapping.exit.5_crit_edge, label %if.then.i.5

irq_find_mapping.exit.4.irq_find_mapping.exit.5_crit_edge: ; preds = %irq_find_mapping.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.5

if.then.i.5:                                      ; preds = %irq_find_mapping.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.5

irq_find_mapping.exit.5:                          ; preds = %if.then.i.5, %irq_find_mapping.exit.4.irq_find_mapping.exit.5_crit_edge
  %retval.0.i.5 = phi i32 [ %31, %if.then.i.5 ], [ 0, %irq_find_mapping.exit.4.irq_find_mapping.exit.5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.5) #7
  %32 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %34 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.6 = call ptr @__irq_resolve_mapping(ptr noundef %33, i32 noundef 6, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.6 = icmp eq ptr %call.i.6, null
  br i1 %tobool.not.i.6, label %irq_find_mapping.exit.5.irq_find_mapping.exit.6_crit_edge, label %if.then.i.6

irq_find_mapping.exit.5.irq_find_mapping.exit.6_crit_edge: ; preds = %irq_find_mapping.exit.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.6

if.then.i.6:                                      ; preds = %irq_find_mapping.exit.5
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.6

irq_find_mapping.exit.6:                          ; preds = %if.then.i.6, %irq_find_mapping.exit.5.irq_find_mapping.exit.6_crit_edge
  %retval.0.i.6 = phi i32 [ %36, %if.then.i.6 ], [ 0, %irq_find_mapping.exit.5.irq_find_mapping.exit.6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.6) #7
  %37 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i.7 = call ptr @__irq_resolve_mapping(ptr noundef %38, i32 noundef 7, ptr noundef nonnull %irq.i) #7
  %tobool.not.i.7 = icmp eq ptr %call.i.7, null
  br i1 %tobool.not.i.7, label %irq_find_mapping.exit.6.irq_find_mapping.exit.7_crit_edge, label %if.then.i.7

irq_find_mapping.exit.6.irq_find_mapping.exit.7_crit_edge: ; preds = %irq_find_mapping.exit.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.7

if.then.i.7:                                      ; preds = %irq_find_mapping.exit.6
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.7

irq_find_mapping.exit.7:                          ; preds = %if.then.i.7, %irq_find_mapping.exit.6.irq_find_mapping.exit.7_crit_edge
  %retval.0.i.7 = phi i32 [ %41, %if.then.i.7 ], [ 0, %irq_find_mapping.exit.6.irq_find_mapping.exit.7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.7) #7
  %42 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_domain, align 4
  call void @irq_domain_remove(ptr noundef %43) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stmfx_reg_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %reg)
  %cmp = icmp ugt i32 %reg, 63
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stmfx_reg_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %reg, label %sw.default [
    i32 64, label %entry.return_crit_edge
    i32 66, label %entry.return_crit_edge1
    i32 8, label %entry.return_crit_edge2
    i32 12, label %entry.return_crit_edge3
    i32 13, label %entry.return_crit_edge4
    i32 14, label %entry.return_crit_edge5
    i32 16, label %entry.return_crit_edge6
    i32 17, label %entry.return_crit_edge7
    i32 18, label %entry.return_crit_edge8
    i32 72, label %entry.return_crit_edge9
    i32 73, label %entry.return_crit_edge10
    i32 74, label %entry.return_crit_edge11
    i32 108, label %entry.return_crit_edge12
    i32 109, label %entry.return_crit_edge13
    i32 110, label %entry.return_crit_edge14
    i32 112, label %entry.return_crit_edge15
    i32 113, label %entry.return_crit_edge16
    i32 114, label %entry.return_crit_edge17
  ]

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stmfx_chip_reset(ptr nocapture noundef readonly %stmfx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.stmfx, ptr %stmfx, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 64, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %bits = alloca i32, align 4
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #7
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pending, align 4, !annotation !134
  %map = getelementptr inbounds %struct.stmfx, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %pending) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pending, align 4
  %and = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call4 = call i32 @regmap_write(ptr noundef %6, i32 noundef 68, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pending, align 4
  %9 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bits, align 4
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call9)
  %cmp23 = icmp slt i32 %call9, 8
  br i1 %cmp23, label %for.body.lr.ph, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %irq_domain = getelementptr inbounds %struct.stmfx, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.body.lr.ph
  %n.024 = phi i32 [ %call9, %for.body.lr.ph ], [ %call11, %irq_find_mapping.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i, align 4, !annotation !134
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef %n.024, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i) #7
  %add = add nsw i32 %n.024, 1
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 8, i32 noundef %add) #7
  %cmp = icmp slt i32 %call11, 8
  br i1 %cmp, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.cleanup_crit_edge

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %irq_find_mapping.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %irq_find_mapping.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_irq_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @stmfx_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #7
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %virq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stmfx_irq_mask(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %irq_src = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_src to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_src, align 4
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv1 = and i8 %5, %7
  store i8 %conv1, ptr %irq_src, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stmfx_irq_unmask(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %irq_src = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_src to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_src, align 4
  %6 = trunc i32 %shl to i8
  %conv1 = or i8 %5, %6
  store i8 %conv1, ptr %irq_src, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_irq_bus_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_irq_bus_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %irq_src = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_src to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_src, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 66, i32 noundef %conv) #7
  %lock = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %bkp_sysctrl = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @regmap_raw_read(ptr noundef %3, i32 noundef 64, ptr noundef %bkp_sysctrl, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %bkp_irqoutpin = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 65, ptr noundef %bkp_irqoutpin, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %7) #7
  %vdd = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then8 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vdd = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %call2) #10
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %map.i = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 64, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.37, i32 noundef %call.i) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  tail call void @msleep(i32 noundef 10) #7
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 4
  %bkp_sysctrl = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 7
  %call15 = tail call i32 @regmap_raw_write(ptr noundef %11, i32 noundef 64, ptr noundef %bkp_sysctrl, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 4
  %bkp_irqoutpin = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 8
  %call20 = tail call i32 @regmap_raw_write(ptr noundef %13, i32 noundef 65, ptr noundef %bkp_irqoutpin, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 4
  %irq_src = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 6
  %call25 = tail call i32 @regmap_raw_write(ptr noundef %15, i32 noundef 66, ptr noundef %irq_src, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call.i, %do.end12 ], [ 0, %if.end28 ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/stmfx.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @stmfx_function_enable._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @stmfx_function_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/stmfx.c", i32 141, i32 3}
!10 = !{ptr @stmfx_function_enable._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @stmfx_function_enable._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/stmfx.c", i32 148, i32 3}
!14 = !{ptr @stmfx_function_enable._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @stmfx_function_enable._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_stmfx_function_enable, !17, !"__ksymtab_stmfx_function_enable", i1 false, i1 false}
!17 = !{!"../drivers/mfd/stmfx.c", i32 156, i32 1}
!18 = !{ptr @__ksymtab_stmfx_function_disable, !19, !"__ksymtab_stmfx_function_disable", i1 false, i1 false}
!19 = !{!"../drivers/mfd/stmfx.c", i32 164, i32 1}
!20 = !{ptr @__initcall__kmod_stmfx__293_557_stmfx_driver_init6, !21, !"__initcall__kmod_stmfx__293_557_stmfx_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/mfd/stmfx.c", i32 557, i32 1}
!22 = !{ptr @__exitcall_stmfx_driver_exit, !21, !"__exitcall_stmfx_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description294, !24, !"__UNIQUE_ID_description294", i1 false, i1 false}
!24 = !{!"../drivers/mfd/stmfx.c", i32 559, i32 1}
!25 = !{ptr @__UNIQUE_ID_author295, !26, !"__UNIQUE_ID_author295", i1 false, i1 false}
!26 = !{!"../drivers/mfd/stmfx.c", i32 560, i32 1}
!27 = !{ptr @__UNIQUE_ID_file296, !28, !"__UNIQUE_ID_file296", i1 false, i1 false}
!28 = !{!"../drivers/mfd/stmfx.c", i32 561, i32 1}
!29 = !{ptr @__UNIQUE_ID_license297, !28, !"__UNIQUE_ID_license297", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/stmfx.c", i32 550, i32 11}
!32 = !{ptr @stmfx_driver, !33, !"stmfx_driver", i1 false, i1 false}
!33 = !{!"../drivers/mfd/stmfx.c", i32 548, i32 26}
!34 = !{ptr @stmfx_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/mfd/stmfx.c", i32 423, i32 15}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/stmfx.c", i32 426, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @stmfx_probe._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @stmfx_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @stmfx_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/mfd/stmfx.c", i32 430, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/stmfx.c", i32 440, i32 3}
!47 = !{ptr @stmfx_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @stmfx_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @stmfx_regmap_config, !50, !"stmfx_regmap_config", i1 false, i1 false}
!50 = !{!"../drivers/mfd/stmfx.c", i32 49, i32 35}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/stmfx.c", i32 330, i32 57}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/stmfx.c", i32 336, i32 44}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/stmfx.c", i32 342, i32 4}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stmfx_chip_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @stmfx_chip_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/stmfx.c", i32 349, i32 3}
!62 = !{ptr @stmfx_chip_init._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @stmfx_chip_init._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/stmfx.c", i32 365, i32 3}
!66 = !{ptr @stmfx_chip_init._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @stmfx_chip_init._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/stmfx.c", i32 373, i32 3}
!70 = !{ptr @stmfx_chip_init._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @stmfx_chip_init._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/stmfx.c", i32 377, i32 2}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @stmfx_chip_init._entry.32, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @stmfx_chip_init._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/stmfx.c", i32 382, i32 3}
!79 = !{ptr @stmfx_chip_init._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @stmfx_chip_init._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/stmfx.c", i32 276, i32 3}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stmfx_irq_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @stmfx_irq_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/stmfx.c", i32 280, i32 50}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/stmfx.c", i32 295, i32 6}
!90 = !{ptr @stmfx_irq_ops, !91, !"stmfx_irq_ops", i1 false, i1 false}
!91 = !{!"../drivers/mfd/stmfx.c", i32 250, i32 36}
!92 = !{ptr @stmfx_irq_chip, !93, !"stmfx_irq_chip", i1 false, i1 false}
!93 = !{!"../drivers/mfd/stmfx.c", i32 196, i32 24}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/stmfx.c", i32 79, i32 11}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/stmfx.c", i32 78, i32 20}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/stmfx.c", i32 85, i32 11}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/stmfx.c", i32 84, i32 20}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/stmfx.c", i32 91, i32 11}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mfd/stmfx.c", i32 90, i32 20}
!106 = !{ptr @stmfx_cells, !107, !"stmfx_cells", i1 false, i1 false}
!107 = !{!"../drivers/mfd/stmfx.c", i32 76, i32 24}
!108 = !{ptr @stmfx_pinctrl_resources, !109, !"stmfx_pinctrl_resources", i1 false, i1 false}
!109 = !{!"../drivers/mfd/stmfx.c", i32 59, i32 30}
!110 = !{ptr @stmfx_idd_resources, !111, !"stmfx_idd_resources", i1 false, i1 false}
!111 = !{!"../drivers/mfd/stmfx.c", i32 63, i32 30}
!112 = !{ptr @stmfx_ts_resources, !113, !"stmfx_ts_resources", i1 false, i1 false}
!113 = !{!"../drivers/mfd/stmfx.c", i32 68, i32 30}
!114 = !{ptr @stmfx_of_match, !115, !"stmfx_of_match", i1 false, i1 false}
!115 = !{!"../drivers/mfd/stmfx.c", i32 542, i32 34}
!116 = !{ptr @stmfx_dev_pm_ops, !117, !"stmfx_dev_pm_ops", i1 false, i1 false}
!117 = !{!"../drivers/mfd/stmfx.c", i32 540, i32 8}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mfd/stmfx.c", i32 505, i32 4}
!120 = !{ptr @stmfx_resume._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @stmfx_resume._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @stmfx_resume._entry.50, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/mfd/stmfx.c", i32 514, i32 3}
!124 = !{ptr @stmfx_resume._entry_ptr.51, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
