; ModuleID = '/llk/IR_all_yes/drivers/mfd/asic3.c_pt.bc'
source_filename = "../drivers/mfd/asic3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+asic3_write_register\22, \22a\22\09"
module asm "\09.weak\09__crc_asic3_write_register\09\09\09\09"
module asm "\09.long\09__crc_asic3_write_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asic3_write_register:\09\09\09\09\09"
module asm "\09.asciz \09\22asic3_write_register\22\09\09\09\09\09"
module asm "__kstrtabns_asic3_write_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+asic3_read_register\22, \22a\22\09"
module asm "\09.weak\09__crc_asic3_read_register\09\09\09\09"
module asm "\09.long\09__crc_asic3_read_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asic3_read_register:\09\09\09\09\09"
module asm "\09.asciz \09\22asic3_read_register\22\09\09\09\09\09"
module asm "__kstrtabns_asic3_read_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.asic3_clk = type { i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ds1wm_driver_data = type { i32, i32, i32, i8, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.asic3 = type { ptr, i32, i32, i32, %struct.raw_spinlock, [4 x i16], %struct.gpio_chip, ptr, ptr, [12 x %struct.asic3_clk] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.78 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.asic3_platform_data = type { ptr, i32, i32, i32, i32, ptr }
%struct.asic3_led = type { ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_asic3_write_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_asic3_write_register = external dso_local constant [0 x i8], align 1
@__ksymtab_asic3_write_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asic3_write_register to i32), ptr @__kstrtab_asic3_write_register, ptr @__kstrtabns_asic3_write_register }, section "___ksymtab_gpl+asic3_write_register", align 4
@__kstrtab_asic3_read_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_asic3_read_register = external dso_local constant [0 x i8], align 1
@__ksymtab_asic3_read_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asic3_read_register to i32), ptr @__kstrtab_asic3_read_register, ptr @__kstrtabns_asic3_read_register }, section "___ksymtab_gpl+asic3_read_register", align 4
@__initcall__kmod_asic3__318_1070_asic3_init4 = internal global ptr @asic3_init, section ".initcall4.init", align 4
@asic3_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @asic3_remove, ptr @asic3_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"asic3\00", [26 x i8] zeroinitializer }, align 32
@asic3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&asic->lock\00", [20 x i8] zeroinitializer }, align 32
@asic3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 963, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no MEM resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"asic3_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/mfd/asic3.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asic3_probe._entry_ptr = internal global ptr @asic3_probe._entry, section ".printk_index", align 4
@asic3_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 969, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Couldn't ioremap\0A\00", [46 x i8] zeroinitializer }, align 32
@asic3_probe._entry_ptr.9 = internal global ptr @asic3_probe._entry.7, section ".printk_index", align 4
@asic3_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 983, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Couldn't probe IRQs\0A\00", [43 x i8] zeroinitializer }, align 32
@asic3_probe._entry_ptr.12 = internal global ptr @asic3_probe._entry.10, section ".printk_index", align 4
@asic3_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1000, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPIO probe failed\0A\00", [45 x i8] zeroinitializer }, align 32
@asic3_probe._entry_ptr.15 = internal global ptr @asic3_probe._entry.13, section ".printk_index", align 4
@asic3_clk_init = internal unnamed_addr constant [12 x %struct.asic3_clk] [%struct.asic3_clk { i32 0, i32 4, i32 0 }, %struct.asic3_clk { i32 0, i32 8, i32 5000000 }, %struct.asic3_clk { i32 0, i32 16, i32 0 }, %struct.asic3_clk { i32 0, i32 32, i32 0 }, %struct.asic3_clk { i32 0, i32 64, i32 0 }, %struct.asic3_clk { i32 0, i32 128, i32 0 }, %struct.asic3_clk { i32 0, i32 256, i32 0 }, %struct.asic3_clk { i32 0, i32 512, i32 24576000 }, %struct.asic3_clk { i32 0, i32 1024, i32 12288000 }, %struct.asic3_clk { i32 0, i32 2048, i32 0 }, %struct.asic3_clk { i32 0, i32 8192, i32 32768 }, %struct.asic3_clk { i32 0, i32 16384, i32 24576000 }], section ".init.data", align 4
@asic3_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1014, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASIC3 Core driver\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@asic3_probe._entry_ptr.19 = internal global ptr @asic3_probe._entry.16, section ".printk_index", align 4
@asic3_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr @asic3_mask_gpio_irq, ptr @asic3_mask_gpio_irq, ptr null, ptr @asic3_unmask_gpio_irq, ptr null, ptr null, ptr null, ptr @asic3_gpio_irq_type, ptr @asic3_gpio_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@asic3_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr @asic3_mask_irq, ptr @asic3_mask_irq, ptr null, ptr @asic3_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASIC3-GPIO\00", [21 x i8] zeroinitializer }, align 32
@asic3_gpio_irq_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 341, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq type not changed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asic3_gpio_irq_type\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@asic3_gpio_irq_type._entry_ptr = internal global ptr @asic3_gpio_irq_type._entry, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ASIC3\00", [26 x i8] zeroinitializer }, align 32
@asic3_irq_demux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"interrupt processing overrun\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asic3_irq_demux\00", [16 x i8] zeroinitializer }, align 32
@asic3_irq_demux._entry_ptr = internal global ptr @asic3_irq_demux._entry, section ".printk_index", align 4
@asic3_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid base (0x%x) for gpio %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asic3_gpio_get\00", [17 x i8] zeroinitializer }, align 32
@asic3_gpio_get._entry_ptr = internal global ptr @asic3_gpio_get._entry, section ".printk_index", align 4
@asic3_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asic3_gpio_set\00", [17 x i8] zeroinitializer }, align 32
@asic3_gpio_set._entry_ptr = internal global ptr @asic3_gpio_set._entry, section ".printk_index", align 4
@asic3_gpio_direction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.30, ptr @.str.4, i32 452, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asic3_gpio_direction\00", [43 x i8] zeroinitializer }, align 32
@asic3_gpio_direction._entry_ptr = internal global ptr @asic3_gpio_direction._entry, section ".printk_index", align 4
@asic3_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@asic3_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@asic3_mfd_probe.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asic3_mfd_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no SDIO MEM resource\0A\00", [42 x i8] zeroinitializer }, align 32
@asic3_mfd_probe.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.33, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no SDIO IRQ resource\0A\00", [42 x i8] zeroinitializer }, align 32
@ds1wm_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 3072, i32 3091, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 69, i32 69, ptr null, i32 1025, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@asic3_mfd_probe.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.34, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't ioremap SD_CONFIG\0A\00", [36 x i8] zeroinitializer }, align 32
@asic3_mmc_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 4096, i32 5119, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ds1wm_pdata = internal global { %struct.ds1wm_driver_data, [44 x i8] } { %struct.ds1wm_driver_data { i32 1, i32 0, i32 1, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@asic3_cell_ds1wm = internal constant { %struct.mfd_cell, [40 x i8] } { %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr @ds1wm_enable, ptr @ds1wm_disable, ptr null, ptr null, ptr @ds1wm_pdata, i32 20, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @ds1wm_resources, i8 0, i8 0, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@asic3_cell_mmc = internal constant { %struct.mfd_cell, [40 x i8] } { %struct.mfd_cell { ptr @.str.36, i32 0, i32 0, ptr @asic3_mmc_enable, ptr @asic3_mmc_disable, ptr @asic3_mmc_disable, ptr @asic3_mmc_enable, ptr @asic3_mmc_data, i32 52, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @asic3_mmc_resources, i8 0, i8 0, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@asic3_cell_leds = internal global { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr @asic3_leds_enable, ptr @asic3_leds_disable, ptr @asic3_leds_suspend, ptr @asic3_leds_enable, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 1, i32 0, ptr @asic3_leds_enable, ptr @asic3_leds_disable, ptr @asic3_leds_suspend, ptr @asic3_leds_enable, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 2, i32 0, ptr @asic3_leds_enable, ptr @asic3_leds_disable, ptr @asic3_leds_suspend, ptr @asic3_leds_enable, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ds1wm\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmio-mmc\00", [23 x i8] zeroinitializer }, align 32
@asic3_mmc_data = internal global { %struct.tmio_mmc_data, [44 x i8] } { %struct.tmio_mmc_data { ptr null, ptr null, i32 24576000, i32 0, i32 0, i32 0, i32 3145728, i32 0, i32 0, i32 0, i16 0, ptr @asic3_mmc_pwr, ptr @asic3_mmc_clk_div }, [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"leds-asic3\00", [21 x i8] zeroinitializer }, align 32
@clock_ledn = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 5, i32 6], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"asic3_device_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1053, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1055, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 957, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 963, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 969, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 983, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1000, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1014, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"asic3_gpio_irq_chip\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 368, i32 24 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"asic3_irq_chip\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 377, i32 24 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 369, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 341, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 378, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 205, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 497, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 518, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 451, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 596, i32 9 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 877, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 881, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"ds1wm_resources\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 643, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 897, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"asic3_mmc_resources\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 725, i32 24 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"ds1wm_pdata\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 638, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"asic3_cell_ds1wm\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 694, i32 30 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"asic3_cell_mmc\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 789, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"asic3_cell_leds\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 840, i32 24 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 695, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 790, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"asic3_mmc_data\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 718, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 842, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"clock_ledn\00", align 1
@___asan_gen_.198 = private constant [23 x i8] c"../drivers/mfd/asic3.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 801, i32 18 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__initcall__kmod_asic3__318_1070_asic3_init4, ptr @__ksymtab_asic3_read_register, ptr @__ksymtab_asic3_write_register, ptr @asic3_gpio_direction._entry, ptr @asic3_gpio_direction._entry_ptr, ptr @asic3_gpio_get._entry, ptr @asic3_gpio_get._entry_ptr, ptr @asic3_gpio_irq_type._entry, ptr @asic3_gpio_irq_type._entry_ptr, ptr @asic3_gpio_set._entry, ptr @asic3_gpio_set._entry_ptr, ptr @asic3_irq_demux._entry, ptr @asic3_irq_demux._entry_ptr, ptr @asic3_probe._entry, ptr @asic3_probe._entry.10, ptr @asic3_probe._entry.13, ptr @asic3_probe._entry.16, ptr @asic3_probe._entry.7, ptr @asic3_probe._entry_ptr, ptr @asic3_probe._entry_ptr.12, ptr @asic3_probe._entry_ptr.15, ptr @asic3_probe._entry_ptr.19, ptr @asic3_probe._entry_ptr.9, ptr @asic3_device_driver, ptr @.str, ptr @asic3_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @asic3_gpio_irq_chip, ptr @asic3_irq_chip, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @asic3_gpio_probe.lock_key, ptr @asic3_gpio_probe.request_key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ds1wm_resources, ptr @.str.34, ptr @asic3_mmc_resources, ptr @ds1wm_pdata, ptr @asic3_cell_ds1wm, ptr @asic3_cell_mmc, ptr @asic3_cell_leds, ptr @.str.35, ptr @.str.36, ptr @asic3_mmc_data, ptr @.str.37, ptr @clock_ledn], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_gpio_irq_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_irq_demux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_gpio_direction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_mmc_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_cell_ds1wm to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_cell_mmc to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_cell_leds to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_mmc_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_ledn to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asic3_write_register(ptr nocapture noundef readonly %asic, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %value to i16
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 4
  %bus_shift = getelementptr inbounds %struct.asic3, ptr %asic, i32 0, i32 1
  %2 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift, align 4
  %shr = lshr i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #7, !srcloc !117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asic3_read_register(ptr nocapture noundef readonly %asic, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 4
  %bus_shift = getelementptr inbounds %struct.asic3, ptr %asic, i32 0, i32 1
  %2 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift, align 4
  %shr = lshr i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shr
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !118
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv = zext i16 %5 to i32
  ret i32 %conv
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @asic3_device_driver, ptr noundef nonnull @asic3_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_probe(ptr noundef %pdev) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 568, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @asic3_probe.__key, i16 noundef signext 2) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev4 = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev4, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call14 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %add.i) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %call.i, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %irq_base = getelementptr inbounds %struct.asic3_platform_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_base, align 4
  %irq_base23 = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %irq_base23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq_base23, align 4
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %18 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call5, align 4
  %sub.i100 = add i32 %17, 1
  %add.i101 = sub i32 %sub.i100, %19
  %shr = lshr i32 %add.i101, 12
  %sub = sub nsw i32 2, %shr
  %bus_shift = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %bus_shift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %bus_shift, align 4
  %shr.i = lshr i32 2564, %sub
  %add.ptr.i = getelementptr i8, ptr %call14, i32 %shr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #7, !srcloc !117
  %call25 = tail call fastcc i32 @asic3_irq_probe(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.11) #10
  br label %out_unmap

if.end31:                                         ; preds = %if.end22
  %gpio = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %gpio, align 4
  %gpio_base = getelementptr inbounds %struct.asic3_platform_data, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpio_base, align 4
  %base = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6, i32 19
  %26 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6, i32 20
  %27 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 64, ptr %ngpio, align 4
  %get = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6, i32 10
  %28 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @asic3_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6, i32 12
  %29 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @asic3_gpio_set, ptr %set, align 4
  %direction_input = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6, i32 8
  %30 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @asic3_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6, i32 9
  %31 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @asic3_gpio_direction_output, ptr %direction_output, align 4
  %to_irq = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 6, i32 15
  %32 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @asic3_gpio_to_irq, ptr %to_irq, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %gpio_config_num = getelementptr inbounds %struct.asic3_platform_data, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %gpio_config_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gpio_config_num, align 4
  %call39 = tail call fastcc i32 @asic3_gpio_probe(ptr noundef %pdev, ptr noundef %34, i32 noundef %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.14) #10
  tail call fastcc void @asic3_irq_remove(ptr noundef %pdev)
  br label %out_unmap

if.end46:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %clocks = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 9
  %39 = call ptr @memcpy(ptr %clocks, ptr @asic3_clk_init, i32 144)
  tail call fastcc void @asic3_mfd_probe(ptr noundef %pdev, ptr noundef %1, ptr noundef nonnull %call5) #11
  tail call fastcc void @asic3_set_register(ptr noundef nonnull %call.i, i32 noundef 4352, i32 noundef 5120, i1 noundef zeroext true)
  %40 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.17) #10
  br label %cleanup

out_unmap:                                        ; preds = %do.end44, %do.end29
  %ret.0 = phi i32 [ %call25, %do.end29 ], [ %call39, %do.end44 ]
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  tail call void @iounmap(ptr noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unmap, %if.end46, %do.end20, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unmap ], [ 0, %if.end46 ], [ -12, %do.end20 ], [ -12, %do.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 4352, %5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shr.i.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %7 = and i16 %6, -21
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i = lshr i32 4352, %11
  %add.ptr.i21.i = getelementptr i8, ptr %9, i32 %shr.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %7) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #7
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @mfd_remove_devices(ptr noundef %dev.i) #7
  %tmio_cnf.i = getelementptr inbounds %struct.asic3, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %tmio_cnf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tmio_cnf.i, align 4
  tail call void @iounmap(ptr noundef %15) #7
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %gpio.i = getelementptr inbounds %struct.asic3, ptr %17, i32 0, i32 6
  tail call void @gpiochip_remove(ptr noundef %gpio.i) #7
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %irq_base1.i = getelementptr inbounds %struct.asic3, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %irq_base1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_base1.i, align 4
  %add2.i = add i32 %21, 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %21)
  %cmp10.i = icmp ult i32 %21, -70
  br i1 %cmp10.i, label %entry.for.body.i_crit_edge, label %entry.asic3_irq_remove.exit_crit_edge

entry.asic3_irq_remove.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_irq_remove.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %irq.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %21, %entry.for.body.i_crit_edge ]
  tail call void @irq_modify_status(i32 noundef %irq.011.i, i32 noundef 0, i32 noundef 3072) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq.011.i, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %call3.i = tail call i32 @irq_set_chip_data(i32 noundef %irq.011.i, ptr noundef null) #7
  %inc.i = add nuw i32 %irq.011.i, 1
  %cmp.i = icmp ult i32 %inc.i, %add2.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.asic3_irq_remove.exit_crit_edge

for.body.i.asic3_irq_remove.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_irq_remove.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

asic3_irq_remove.exit:                            ; preds = %for.body.i.asic3_irq_remove.exit_crit_edge, %entry.asic3_irq_remove.exit_crit_edge
  %irq_nr.i = getelementptr inbounds %struct.asic3, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %irq_nr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_nr.i, align 4
  tail call void @__irq_set_handler(i32 noundef %23, ptr noundef null, i32 noundef 1, ptr noundef null) #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i = lshr i32 2564, %27
  %add.ptr.i = getelementptr i8, ptr %25, i32 %shr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #7, !srcloc !117
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %29) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @asic3_shutdown(ptr nocapture noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asic3_set_register(ptr noundef %asic, i32 noundef %reg, i32 noundef %bits, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.asic3, ptr %asic, i32 0, i32 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %asic, i32 0, i32 1
  %2 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 %reg, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shr.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i = zext i16 %5 to i32
  %or = or i32 %conv.i, %bits
  %neg = xor i32 %bits, -1
  %and = and i32 %conv.i, %neg
  %val.0 = select i1 %set, i32 %or, i32 %and
  %conv.i18 = trunc i32 %val.0 to i16
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 4
  %8 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_shift.i, align 4
  %shr.i20 = lshr i32 %reg, %9
  %add.ptr.i21 = getelementptr i8, ptr %7, i32 %shr.i20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i18) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 %10) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asic3_irq_remove(ptr nocapture noundef readonly %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_base1 = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base1, align 4
  %add2 = add i32 %3, 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %3)
  %cmp10 = icmp ult i32 %3, -70
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %irq.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  tail call void @irq_modify_status(i32 noundef %irq.011, i32 noundef 0, i32 noundef 3072) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq.011, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %call3 = tail call i32 @irq_set_chip_data(i32 noundef %irq.011, ptr noundef null) #7
  %inc = add nuw i32 %irq.011, 1
  %cmp = icmp ult i32 %inc, %add2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %irq_nr = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_nr, align 4
  tail call void @__irq_set_handler(i32 noundef %5, ptr noundef null, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asic3_irq_probe(ptr noundef %pdev) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_nr = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq_nr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %irq_nr, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 2564, %6
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1024) #7, !srcloc !117
  %irq_base2 = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %irq_base2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_base2, align 4
  %add3 = add i32 %8, 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %8)
  %cmp443 = icmp ult i32 %8, -70
  br i1 %cmp443, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %irq.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %irq_base2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_base2, align 4
  %add6 = add i32 %10, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.044, i32 %add6)
  %cmp7 = icmp ult i32 %irq.044, %add6
  %asic3_gpio_irq_chip.asic3_irq_chip = select i1 %cmp7, ptr @asic3_gpio_irq_chip, ptr @asic3_irq_chip
  %call10 = tail call i32 @irq_set_chip(i32 noundef %irq.044, ptr noundef nonnull %asic3_gpio_irq_chip.asic3_irq_chip) #7
  %call12 = tail call i32 @irq_set_chip_data(i32 noundef %irq.044, ptr noundef %1) #7
  tail call void @__irq_set_handler(i32 noundef %irq.044, ptr noundef nonnull @handle_level_irq, i32 noundef 0, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %irq.044, i32 noundef 3072, i32 noundef 0) #7
  %inc = add nuw i32 %irq.044, 1
  %cmp4 = icmp ult i32 %inc, %add3
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_shift.i, align 4
  %shr.i41 = lshr i32 2816, %14
  %add.ptr.i42 = getelementptr i8, ptr %12, i32 %shr.i41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i42, i16 256) #7, !srcloc !117
  %15 = ptrtoint ptr %irq_nr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_nr, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %16, ptr noundef nonnull @asic3_irq_demux, ptr noundef %1) #7
  %17 = ptrtoint ptr %irq_nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_nr, align 4
  %call15 = tail call i32 @irq_set_irq_type(i32 noundef %18, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = shl i32 %offset, 4
  %mul2 = and i32 %0, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %mul2)
  %cmp = icmp ugt i32 %mul2, 768
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %mul2, i32 noundef %offset) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = and i32 %offset, 15
  %add3 = or i32 %mul2, 48
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 %add3, %6
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shr.i
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i = zext i16 %8 to i32
  %9 = lshr i32 %conv.i, %sub
  %10 = and i32 %9, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = shl i32 %offset, 4
  %mul = and i32 %0, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %mul)
  %cmp = icmp ugt i32 %mul, 768
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %mul, i32 noundef %offset) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = and i32 %offset, 15
  %shl = shl nuw nsw i32 1, %sub
  %lock = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %add8 = or i32 %mul, 8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 %add8, %6
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shr.i
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %or = or i32 %shl, %conv.i
  %neg = xor i32 %shl, -1
  %and = and i32 %conv.i, %neg
  %out_reg.0 = select i1 %tobool.not, i32 %and, i32 %or
  %conv.i39 = trunc i32 %out_reg.0 to i16
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %11 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_shift.i, align 4
  %shr.i41 = lshr i32 %add8, %12
  %add.ptr.i42 = getelementptr i8, ptr %10, i32 %shr.i41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i39) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i42, i16 %13) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asic3_gpio_direction(ptr noundef %chip, i32 noundef %offset, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asic3_gpio_direction(ptr noundef %chip, i32 noundef %offset, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %irq_base = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base, align 4
  %add = add i32 %1, %offset
  ret i32 %add
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asic3_gpio_probe(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %gpio_config, i32 noundef %num) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %alt_reg = alloca [4 x i16], align 8
  %out_reg = alloca [4 x i16], align 8
  %dir_reg = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alt_reg) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_reg) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dir_reg) #7
  %2 = ptrtoint ptr %alt_reg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %alt_reg, align 8
  %3 = ptrtoint ptr %out_reg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %out_reg, align 8
  %4 = ptrtoint ptr %dir_reg to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %dir_reg, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 -1) #7, !srcloc !117
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 256, %10
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -1) #7, !srcloc !117
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_shift.i, align 4
  %shr.i94 = lshr i32 512, %14
  %add.ptr.i95 = getelementptr i8, ptr %12, i32 %shr.i94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i95, i16 -1) #7, !srcloc !117
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_shift.i, align 4
  %shr.i97 = lshr i32 768, %18
  %add.ptr.i98 = getelementptr i8, ptr %16, i32 %shr.i97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i98, i16 -1) #7, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp108 = icmp sgt i32 %num, 0
  br i1 %cmp108, label %entry.for.body_crit_edge, label %entry.for.body46.preheader_crit_edge

entry.for.body46.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %gpio_config, i32 %i.0109
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %and5 = lshr i16 %20, 7
  %21 = and i16 %and5, 127
  %and8 = lshr i16 %20, 14
  %22 = and i16 %and8, 1
  %23 = lshr i16 %20, 15
  %24 = lshr i16 %20, 4
  %25 = and i16 %24, 7
  %26 = zext i16 %25 to i32
  %27 = and i16 %20, 15
  %shl = shl i16 %21, %27
  %arrayidx24 = getelementptr [4 x i16], ptr %alt_reg, i32 0, i32 %26
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx24, align 2
  %or = or i16 %shl, %29
  store i16 %or, ptr %arrayidx24, align 2
  %shl29 = shl nuw i16 %23, %27
  %arrayidx31 = getelementptr [4 x i16], ptr %out_reg, i32 0, i32 %26
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx31, align 2
  %or33 = or i16 %31, %shl29
  store i16 %or33, ptr %arrayidx31, align 2
  %shl37 = shl nuw i16 %22, %27
  %arrayidx39 = getelementptr [4 x i16], ptr %dir_reg, i32 0, i32 %26
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx39, align 2
  %or41 = or i16 %33, %shl37
  store i16 %or41, ptr %arrayidx39, align 2
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.body46.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.body46.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46.preheader

for.body46.preheader:                             ; preds = %for.body.for.body46.preheader_crit_edge, %entry.for.body46.preheader_crit_edge
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.preheader
  %i.1110 = phi i32 [ %inc62, %for.body46.for.body46_crit_edge ], [ 0, %for.body46.preheader ]
  %mul47 = shl i32 %i.1110, 8
  %add48 = or i32 %mul47, 4
  %arrayidx49 = getelementptr [4 x i16], ptr %dir_reg, i32 0, i32 %i.1110
  %34 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx49, align 2
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_shift.i, align 4
  %shr.i100 = lshr i32 %add48, %39
  %add.ptr.i101 = getelementptr i8, ptr %37, i32 %shr.i100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %40 = tail call i16 @llvm.bswap.i16(i16 %35) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i101, i16 %40) #7, !srcloc !117
  %add53 = or i32 %mul47, 8
  %arrayidx54 = getelementptr [4 x i16], ptr %out_reg, i32 0, i32 %i.1110
  %41 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx54, align 2
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bus_shift.i, align 4
  %shr.i103 = lshr i32 %add53, %46
  %add.ptr.i104 = getelementptr i8, ptr %44, i32 %shr.i103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %47 = tail call i16 @llvm.bswap.i16(i16 %42) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i104, i16 %47) #7, !srcloc !117
  %add58 = or i32 %mul47, 40
  %arrayidx59 = getelementptr [4 x i16], ptr %alt_reg, i32 0, i32 %i.1110
  %48 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx59, align 2
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bus_shift.i, align 4
  %shr.i106 = lshr i32 %add58, %53
  %add.ptr.i107 = getelementptr i8, ptr %51, i32 %shr.i106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %54 = tail call i16 @llvm.bswap.i16(i16 %49) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i107, i16 %54) #7, !srcloc !117
  %inc62 = add nuw nsw i32 %i.1110, 1
  %exitcond111.not = icmp eq i32 %inc62, 4
  br i1 %exitcond111.not, label %for.end63, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46

for.end63:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  %gpio = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 6
  %call64 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio, ptr noundef %1, ptr noundef nonnull @asic3_gpio_probe.lock_key, ptr noundef nonnull @asic3_gpio_probe.request_key) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dir_reg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_reg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alt_reg) #7
  ret i32 %call64
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asic3_mfd_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pdata, ptr noundef %mem) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asic3_mfd_probe.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asic3_mfd_probe, %if.then6)) #7
          to label %if.end7 [label %if.then6], !srcloc !120

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @asic3_mfd_probe.__UNIQUE_ID_ddebug315, ptr noundef %3, ptr noundef nonnull @.str.32) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.body10, label %if.end7.if.end27_crit_edge

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asic3_mfd_probe.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asic3_mfd_probe, %if.then22)) #7
          to label %if.end27 [label %if.then22], !srcloc !120

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @asic3_mfd_probe.__UNIQUE_ID_ddebug316, ptr noundef %5, ptr noundef nonnull @.str.33) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %do.body10, %if.end7.if.end27_crit_edge
  tail call fastcc void @asic3_set_register(ptr noundef %1, i32 noundef 4352, i32 noundef 32, i1 noundef zeroext false)
  %bus_shift = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift, align 4
  %8 = load i32, ptr @ds1wm_resources, align 4
  %shr = lshr i32 %8, %7
  store i32 %shr, ptr @ds1wm_resources, align 4
  %9 = load i32, ptr getelementptr inbounds ([2 x %struct.resource], ptr @ds1wm_resources, i32 0, i32 0, i32 1), align 4
  %shr29 = lshr i32 %9, %7
  store i32 %shr29, ptr getelementptr inbounds ([2 x %struct.resource], ptr @ds1wm_resources, i32 0, i32 0, i32 1), align 4
  br i1 %tobool.not, label %if.end27.if.end58_crit_edge, label %if.then31

if.end27.if.end58_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then31:                                        ; preds = %if.end27
  %10 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_shift, align 4
  %shr33 = lshr i32 1024, %11
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  %add = add i32 %shr33, %13
  %shr35 = lshr i32 512, %11
  %call36 = tail call ptr @ioremap(i32 noundef %add, i32 noundef %shr35) #7
  %tmio_cnf = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %tmio_cnf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call36, ptr %tmio_cnf, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.then39, label %if.then31.if.end58_crit_edge

if.then31.if.end58_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then39:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asic3_mfd_probe.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asic3_mfd_probe, %if.then52)) #7
          to label %out [label %if.then52], !srcloc !120

if.then52:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @asic3_mfd_probe.__UNIQUE_ID_ddebug317, ptr noundef %16, ptr noundef nonnull @.str.34) #7
  br label %out

if.end58:                                         ; preds = %if.then31.if.end58_crit_edge, %if.end27.if.end58_crit_edge
  %17 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_shift, align 4
  %19 = load i32, ptr @asic3_mmc_resources, align 4
  %shr60 = lshr i32 %19, %18
  store i32 %shr60, ptr @asic3_mmc_resources, align 4
  %20 = load i32, ptr getelementptr inbounds ([2 x %struct.resource], ptr @asic3_mmc_resources, i32 0, i32 0, i32 1), align 4
  %shr62 = lshr i32 %20, %18
  store i32 %shr62, ptr getelementptr inbounds ([2 x %struct.resource], ptr @asic3_mmc_resources, i32 0, i32 0, i32 1), align 4
  %clock_rate = getelementptr inbounds %struct.asic3_platform_data, ptr %pdata, i32 0, i32 4
  %21 = ptrtoint ptr %clock_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clock_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool63.not = icmp eq i32 %22, 0
  br i1 %tobool63.not, label %if.end58.if.end71_crit_edge, label %if.then64

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then64:                                        ; preds = %if.end58
  store i32 %22, ptr getelementptr inbounds (%struct.ds1wm_driver_data, ptr @ds1wm_pdata, i32 0, i32 1), align 4
  %dev66 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %irq_base = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_base, align 4
  %call67 = tail call i32 @mfd_add_devices(ptr noundef %dev66, i32 noundef %24, ptr noundef nonnull @asic3_cell_ds1wm, i32 noundef 1, ptr noundef %mem, i32 noundef %26, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then64.out_crit_edge, label %if.then64.if.end71_crit_edge

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then64.out_crit_edge:                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end71:                                         ; preds = %if.then64.if.end71_crit_edge, %if.end58.if.end71_crit_edge
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp73 = icmp sgt i32 %call8, -1
  %or.cond = select i1 %tobool.not.not, i1 %cmp73, i1 false
  br i1 %or.cond, label %if.then74, label %if.end71.if.end81_crit_edge

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then74:                                        ; preds = %if.end71
  %dev75 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %id76 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %27 = ptrtoint ptr %id76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id76, align 4
  %call77 = tail call i32 @mfd_add_devices(ptr noundef %dev75, i32 noundef %28, ptr noundef nonnull @asic3_cell_mmc, i32 noundef 1, ptr noundef nonnull %call1, i32 noundef %call8, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then74.out_crit_edge, label %if.then74.if.end81_crit_edge

if.then74.if.end81_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then74.out_crit_edge:                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end81:                                         ; preds = %if.then74.if.end81_crit_edge, %if.end71.if.end81_crit_edge
  %leds = getelementptr inbounds %struct.asic3_platform_data, ptr %pdata, i32 0, i32 5
  %29 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %leds, align 4
  %tobool82.not = icmp eq ptr %30, null
  br i1 %tobool82.not, label %if.end81.out_crit_edge, label %if.end81.for.body_crit_edge

if.end81.for.body_crit_edge:                      ; preds = %if.end81
  br label %for.body

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end81.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end81.for.body_crit_edge ]
  %31 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %leds, align 4
  %arrayidx = getelementptr %struct.asic3_led, ptr %32, i32 %i.010
  %platform_data = getelementptr [3 x %struct.mfd_cell], ptr @asic3_cell_leds, i32 0, i32 %i.010, i32 7
  %33 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx, ptr %platform_data, align 4
  %pdata_size = getelementptr [3 x %struct.mfd_cell], ptr @asic3_cell_leds, i32 0, i32 %i.010, i32 8
  %34 = ptrtoint ptr %pdata_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12, ptr %pdata_size, align 8
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev88 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call89 = tail call i32 @mfd_add_devices(ptr noundef %dev88, i32 noundef 0, ptr noundef nonnull @asic3_cell_leds, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  br label %out

out:                                              ; preds = %for.end, %if.end81.out_crit_edge, %if.then74.out_crit_edge, %if.then64.out_crit_edge, %if.then52, %if.then39
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_irq_demux(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_ack, align 4
  tail call void %5(ptr noundef %irq_data.i) #7
  %lock = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %irq_base = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc80.5.for.body_crit_edge, %entry
  %iter.0147 = phi i32 [ 0, %entry ], [ %inc88, %for.inc80.5.for.body_crit_edge ]
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 2820, %9
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shr.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i = zext i16 %11 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %and = and i32 %conv.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %for.body.if.end96_crit_edge, label %for.body.for.body19_crit_edge

for.body.for.body19_crit_edge:                    ; preds = %for.body
  br label %for.body19

for.body.if.end96_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

for.body19:                                       ; preds = %for.inc64.for.body19_crit_edge, %for.body.for.body19_crit_edge
  %bank.0143 = phi i32 [ %inc65, %for.inc64.for.body19_crit_edge ], [ 0, %for.body.for.body19_crit_edge ]
  %shl = shl nuw nsw i32 1, %bank.0143
  %and20 = and i32 %shl, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  br i1 %tobool.not, label %for.body19.for.inc64_crit_edge, label %if.then21

for.body19.for.inc64_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

if.then21:                                        ; preds = %for.body19
  %mul = shl i32 %bank.0143, 8
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %add32 = or i32 %mul, 36
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_shift.i, align 4
  %shr.i132 = lshr i32 %add32, %15
  %add.ptr.i133 = getelementptr i8, ptr %13, i32 %shr.i132
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i133) #7, !srcloc !118
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i134 = zext i16 %17 to i32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_shift.i, align 4
  %shr.i136 = lshr i32 %add32, %21
  %add.ptr.i137 = getelementptr i8, ptr %19, i32 %shr.i136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i137, i16 0) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29) #7
  %mul53 = shl i32 %bank.0143, 4
  %arrayidx = getelementptr %struct.asic3, ptr %1, i32 0, i32 5, i32 %bank.0143
  %add.i = or i32 %mul, 16
  br label %for.body47

for.body47:                                       ; preds = %cleanup.for.body47_crit_edge, %if.then21
  %i.0141 = phi i32 [ 0, %if.then21 ], [ %inc, %cleanup.for.body47_crit_edge ]
  %shl48 = shl nuw nsw i32 1, %i.0141
  %and49 = and i32 %shl48, %conv.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %for.body47.cleanup_crit_edge, label %if.end52

for.body47.cleanup_crit_edge:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %for.body47
  %22 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_base, align 4
  %add54 = add nuw nsw i32 %i.0141, %mul53
  %add55 = add i32 %add54, %23
  %call56 = tail call i32 @generic_handle_irq(i32 noundef %add55) #7
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %shl48, %conv57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end52.cleanup_crit_edge, label %if.then60

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus_shift.i, align 4
  %shr.i.i = lshr i32 %add.i, %29
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %shr.i.i
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %32 = trunc i32 %shl48 to i16
  %conv.i21.i = xor i16 %31, %32
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus_shift.i, align 4
  %shr.i23.i = lshr i32 %add.i, %36
  %add.ptr.i24.i = getelementptr i8, ptr %34, i32 %shr.i23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv.i21.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24.i, i16 %37) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end52.cleanup_crit_edge, %for.body47.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %cleanup.for.inc64_crit_edge, label %cleanup.for.body47_crit_edge

cleanup.for.body47_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

cleanup.for.inc64_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

for.inc64:                                        ; preds = %cleanup.for.inc64_crit_edge, %for.body19.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %bank.0143, 1
  %exitcond148.not = icmp eq i32 %inc65, 4
  br i1 %exitcond148.not, label %for.body70.preheader, label %for.inc64.for.body19_crit_edge

for.inc64.for.body19_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.body70.preheader:                             ; preds = %for.inc64
  %and73 = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %for.body70.preheader.for.inc80_crit_edge, label %if.then75

for.body70.preheader.for.inc80_crit_edge:         ; preds = %for.body70.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc80

if.then75:                                        ; preds = %for.body70.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq_base, align 4
  %add77 = add i32 %39, 64
  %call78 = tail call i32 @generic_handle_irq(i32 noundef %add77) #7
  br label %for.inc80

for.inc80:                                        ; preds = %if.then75, %for.body70.preheader.for.inc80_crit_edge
  %and73.1 = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.1)
  %tobool74.not.1 = icmp eq i32 %and73.1, 0
  br i1 %tobool74.not.1, label %for.inc80.for.inc80.1_crit_edge, label %if.then75.1

for.inc80.for.inc80.1_crit_edge:                  ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc80.1

if.then75.1:                                      ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq_base, align 4
  %add77.1 = add i32 %41, 65
  %call78.1 = tail call i32 @generic_handle_irq(i32 noundef %add77.1) #7
  br label %for.inc80.1

for.inc80.1:                                      ; preds = %if.then75.1, %for.inc80.for.inc80.1_crit_edge
  %and73.2 = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.2)
  %tobool74.not.2 = icmp eq i32 %and73.2, 0
  br i1 %tobool74.not.2, label %for.inc80.1.for.inc80.2_crit_edge, label %if.then75.2

for.inc80.1.for.inc80.2_crit_edge:                ; preds = %for.inc80.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc80.2

if.then75.2:                                      ; preds = %for.inc80.1
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq_base, align 4
  %add77.2 = add i32 %43, 66
  %call78.2 = tail call i32 @generic_handle_irq(i32 noundef %add77.2) #7
  br label %for.inc80.2

for.inc80.2:                                      ; preds = %if.then75.2, %for.inc80.1.for.inc80.2_crit_edge
  %and73.3 = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.3)
  %tobool74.not.3 = icmp eq i32 %and73.3, 0
  br i1 %tobool74.not.3, label %for.inc80.2.for.inc80.3_crit_edge, label %if.then75.3

for.inc80.2.for.inc80.3_crit_edge:                ; preds = %for.inc80.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc80.3

if.then75.3:                                      ; preds = %for.inc80.2
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq_base, align 4
  %add77.3 = add i32 %45, 67
  %call78.3 = tail call i32 @generic_handle_irq(i32 noundef %add77.3) #7
  br label %for.inc80.3

for.inc80.3:                                      ; preds = %if.then75.3, %for.inc80.2.for.inc80.3_crit_edge
  %and73.4 = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.4)
  %tobool74.not.4 = icmp eq i32 %and73.4, 0
  br i1 %tobool74.not.4, label %for.inc80.3.for.inc80.4_crit_edge, label %if.then75.4

for.inc80.3.for.inc80.4_crit_edge:                ; preds = %for.inc80.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc80.4

if.then75.4:                                      ; preds = %for.inc80.3
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq_base, align 4
  %add77.4 = add i32 %47, 68
  %call78.4 = tail call i32 @generic_handle_irq(i32 noundef %add77.4) #7
  br label %for.inc80.4

for.inc80.4:                                      ; preds = %if.then75.4, %for.inc80.3.for.inc80.4_crit_edge
  %and73.5 = and i32 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.5)
  %tobool74.not.5 = icmp eq i32 %and73.5, 0
  br i1 %tobool74.not.5, label %for.inc80.4.for.inc80.5_crit_edge, label %if.then75.5

for.inc80.4.for.inc80.5_crit_edge:                ; preds = %for.inc80.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc80.5

if.then75.5:                                      ; preds = %for.inc80.4
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq_base, align 4
  %add77.5 = add i32 %49, 69
  %call78.5 = tail call i32 @generic_handle_irq(i32 noundef %add77.5) #7
  br label %for.inc80.5

for.inc80.5:                                      ; preds = %if.then75.5, %for.inc80.4.for.inc80.5_crit_edge
  %inc88 = add nuw nsw i32 %iter.0147, 1
  %exitcond150.not = icmp eq i32 %inc88, 20
  br i1 %exitcond150.not, label %do.end95, label %for.inc80.5.for.body_crit_edge

for.inc80.5.for.body_crit_edge:                   ; preds = %for.inc80.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end95:                                         ; preds = %for.inc80.5
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.25) #10
  br label %if.end96

if.end96:                                         ; preds = %do.end95, %for.body.if.end96_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_mask_gpio_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = shl i32 %sub.i, 4
  %mul.i = and i32 %6, -256
  %and.i = and i32 %sub.i, 15
  %lock = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 %mul.i, %10
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shr.i
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %shl = shl nuw nsw i32 1, %and.i
  %13 = trunc i32 %shl to i16
  %conv.i27 = or i16 %12, %13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i, align 4
  %shr.i29 = lshr i32 %mul.i, %17
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 %shr.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i27) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30, i16 %18) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_unmask_gpio_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = shl i32 %sub.i, 4
  %mul.i = and i32 %6, -256
  %and.i = and i32 %sub.i, 15
  %lock = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 %mul.i, %10
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shr.i
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %shl = shl nuw nsw i32 1, %and.i
  %13 = trunc i32 %shl to i16
  %14 = xor i16 %13, -1
  %conv.i27 = and i16 %12, %14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_shift.i, align 4
  %shr.i29 = lshr i32 %mul.i, %18
  %add.ptr.i30 = getelementptr i8, ptr %16, i32 %shr.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv.i27) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30, i16 %19) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_gpio_irq_type(ptr nocapture noundef readonly %data, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = shl i32 %sub.i, 4
  %mul.i = and i32 %6, -256
  %and.i = and i32 %sub.i, 15
  %shl = shl nuw nsw i32 1, %and.i
  %lock = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %add = or i32 %mul.i, 20
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 %add, %10
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shr.i
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i = zext i16 %12 to i32
  %add8 = or i32 %mul.i, 16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_shift.i, align 4
  %shr.i179 = lshr i32 %add8, %16
  %add.ptr.i180 = getelementptr i8, ptr %14, i32 %shr.i179
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i180) #7, !srcloc !118
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i181 = zext i16 %18 to i32
  %add11 = or i32 %mul.i, 12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bus_shift.i, align 4
  %shr.i183 = lshr i32 %add11, %22
  %add.ptr.i184 = getelementptr i8, ptr %20, i32 %shr.i183
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i184) #7, !srcloc !118
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i185 = zext i16 %24 to i32
  %neg = xor i32 %shl, -1
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %27 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_base.i, align 4
  %sub = sub i32 %26, %28
  %shr = lshr i32 %sub, 4
  %arrayidx = getelementptr %struct.asic3, ptr %1, i32 0, i32 5, i32 %shr
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx, align 2
  %31 = trunc i32 %neg to i16
  %conv17 = and i16 %30, %31
  store i16 %conv17, ptr %arrayidx, align 2
  %32 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end102 [
    i32 1, label %if.then
    i32 2, label %if.then29
    i32 3, label %if.then42
    i32 8, label %if.then75
    i32 4, label %if.then89
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %shl, %conv.i185
  %or25 = or i32 %shl, %conv.i181
  br label %if.end107

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or32 = or i32 %shl, %conv.i185
  %and37 = and i32 %conv.i181, %neg
  br label %if.end107

if.then42:                                        ; preds = %entry
  %or45 = or i32 %shl, %conv.i185
  %gpio = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %sub49 = sub i32 %34, %28
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #7
  %35 = shl i32 %sub49, 4
  %mul2.i = and i32 %35, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %mul2.i)
  %cmp.i = icmp ugt i32 %mul2.i, 768
  br i1 %cmp.i, label %asic3_gpio_get.exit.thread, label %asic3_gpio_get.exit

asic3_gpio_get.exit.thread:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.27, i32 noundef %mul2.i, i32 noundef %sub49) #10
  %and55202 = and i32 %conv.i181, %neg
  br label %46

asic3_gpio_get.exit:                              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i186 = and i32 %sub49, 15
  %add3.i = or i32 %mul2.i, 48
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 %add3.i, %41
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %shr.i.i
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i.i = zext i16 %43 to i32
  %44 = shl nuw nsw i32 1, %sub.i186
  %45 = and i32 %44, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  %and55 = and i32 %conv.i181, %neg
  %or60 = or i32 %shl, %conv.i181
  %spec.select = select i1 %tobool.not, i32 %or60, i32 %and55
  br label %46

46:                                               ; preds = %asic3_gpio_get.exit, %asic3_gpio_get.exit.thread
  %47 = phi i32 [ %and55202, %asic3_gpio_get.exit.thread ], [ %spec.select, %asic3_gpio_get.exit ]
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  %50 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_base.i, align 4
  %sub66 = sub i32 %49, %51
  %shr67 = lshr i32 %sub66, 4
  %arrayidx68 = getelementptr %struct.asic3, ptr %1, i32 0, i32 5, i32 %shr67
  %52 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx68, align 2
  %54 = trunc i32 %shl to i16
  %conv71 = or i16 %53, %54
  store i16 %conv71, ptr %arrayidx68, align 2
  br label %if.end107

if.then75:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and79 = and i32 %conv.i185, %neg
  %and84 = and i32 %conv.i, %neg
  br label %if.end107

if.then89:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and93 = and i32 %conv.i185, %neg
  %or97 = or i32 %shl, %conv.i
  br label %if.end107

do.end102:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %56, ptr noundef nonnull @.str.21) #10
  br label %if.end107

if.end107:                                        ; preds = %do.end102, %if.then89, %if.then75, %46, %if.then29, %if.then
  %trigger.0 = phi i32 [ %or, %if.then ], [ %or32, %if.then29 ], [ %or45, %46 ], [ %and79, %if.then75 ], [ %and93, %if.then89 ], [ %conv.i185, %do.end102 ]
  %level.0 = phi i32 [ %conv.i, %if.then ], [ %conv.i, %if.then29 ], [ %conv.i, %46 ], [ %and84, %if.then75 ], [ %or97, %if.then89 ], [ %conv.i, %do.end102 ]
  %edge.1 = phi i32 [ %or25, %if.then ], [ %and37, %if.then29 ], [ %47, %46 ], [ %conv.i181, %if.then75 ], [ %conv.i181, %if.then89 ], [ %conv.i181, %do.end102 ]
  %conv.i187 = trunc i32 %level.0 to i16
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bus_shift.i, align 4
  %shr.i189 = lshr i32 %add, %60
  %add.ptr.i190 = getelementptr i8, ptr %58, i32 %shr.i189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv.i187) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i190, i16 %61) #7, !srcloc !117
  %conv.i191 = trunc i32 %edge.1 to i16
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %64 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bus_shift.i, align 4
  %shr.i193 = lshr i32 %add8, %65
  %add.ptr.i194 = getelementptr i8, ptr %63, i32 %shr.i193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv.i191) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i194, i16 %66) #7, !srcloc !117
  %conv.i195 = trunc i32 %trigger.0 to i16
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %69 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bus_shift.i, align 4
  %shr.i197 = lshr i32 %add11, %70
  %add.ptr.i198 = getelementptr i8, ptr %68, i32 %shr.i197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv.i195) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i198, i16 %71) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_gpio_irq_set_wake(ptr nocapture noundef readonly %data, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = shl i32 %sub.i, 4
  %mul.i = and i32 %6, -256
  %and.i = and i32 %sub.i, 15
  %shl = shl nuw nsw i32 1, %and.i
  %add = or i32 %mul.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lock.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 %add, %10
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shr.i.i
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i.i = zext i16 %12 to i32
  %or.i = or i32 %shl, %conv.i.i
  %neg.i = xor i32 %shl, -1
  %and.i11 = and i32 %conv.i.i, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %or.i, i32 %and.i11
  %conv.i18.i = trunc i32 %val.0.i to i16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i = lshr i32 %add, %16
  %add.ptr.i21.i = getelementptr i8, ptr %14, i32 %shr.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i18.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %17) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_mask_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 2816, %5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shr.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base, align 4
  %add.neg = add i32 %9, -64
  %sub = sub i32 %add.neg, %11
  %shl = shl i32 4, %sub
  %12 = trunc i32 %shl to i16
  %13 = xor i16 %12, -1
  %conv.i18 = and i16 %7, %13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i, align 4
  %shr.i20 = lshr i32 2816, %17
  %add.ptr.i21 = getelementptr i8, ptr %15, i32 %shr.i20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i18) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 %18) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_unmask_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 2816, %5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shr.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.asic3, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base, align 4
  %add.neg = add i32 %9, -64
  %sub = sub i32 %add.neg, %11
  %shl = shl i32 4, %sub
  %12 = trunc i32 %shl to i16
  %conv.i18 = or i16 %7, %12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_shift.i, align 4
  %shr.i20 = lshr i32 2816, %16
  %add.ptr.i21 = getelementptr i8, ptr %14, i32 %shr.i20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i18) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 %17) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asic3_gpio_direction(ptr noundef %chip, i32 noundef %offset, i32 noundef %out) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = shl i32 %offset, 4
  %mul2 = and i32 %0, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %mul2)
  %cmp = icmp ugt i32 %mul2, 768
  br i1 %cmp, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %mul2, i32 noundef %offset) #10
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = and i32 %offset, 15
  %shl = shl nuw nsw i32 1, %sub
  %lock = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %add8 = or i32 %mul2, 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 %add8, %6
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shr.i
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool.not = icmp eq i32 %out, 0
  %or = or i32 %shl, %conv.i
  %neg = xor i32 %shl, -1
  %and = and i32 %conv.i, %neg
  %out_reg.0 = select i1 %tobool.not, i32 %and, i32 %or
  %conv.i39 = trunc i32 %out_reg.0 to i16
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %11 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_shift.i, align 4
  %shr.i41 = lshr i32 %add8, %12
  %add.ptr.i42 = getelementptr i8, ptr %10, i32 %shr.i41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i39) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i42, i16 %13) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_enable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 10
  %lock.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp eq i32 %5, 0
  br i1 %cmp1.i, label %if.then.i, label %entry.asic3_clk_enable.exit_crit_edge

entry.asic3_clk_enable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 2560, %9
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %shr.i.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 10, i32 1
  %12 = ptrtoint ptr %cdex4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cdex4.i, align 4
  %14 = trunc i32 %13 to i16
  %conv.i19.i = or i16 %11, %14
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i21.i = lshr i32 2560, %18
  %add.ptr.i22.i = getelementptr i8, ptr %16, i32 %shr.i21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i, i16 %19) #7, !srcloc !117
  br label %asic3_clk_enable.exit

asic3_clk_enable.exit:                            ; preds = %if.then.i, %entry.asic3_clk_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #7
  %arrayidx2 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 11
  %call.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2, align 4
  %inc.i15 = add i32 %21, 1
  store i32 %inc.i15, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.i16 = icmp eq i32 %21, 0
  br i1 %cmp1.i16, label %if.then.i24, label %asic3_clk_enable.exit.asic3_clk_enable.exit25_crit_edge

asic3_clk_enable.exit.asic3_clk_enable.exit25_crit_edge: ; preds = %asic3_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit25

if.then.i24:                                      ; preds = %asic3_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %bus_shift.i.i17 = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %bus_shift.i.i17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_shift.i.i17, align 4
  %shr.i.i18 = lshr i32 2560, %25
  %add.ptr.i.i19 = getelementptr i8, ptr %23, i32 %shr.i.i18
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19) #7, !srcloc !118
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i20 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 11, i32 1
  %28 = ptrtoint ptr %cdex4.i20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cdex4.i20, align 4
  %30 = trunc i32 %29 to i16
  %conv.i19.i21 = or i16 %27, %30
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %33 = ptrtoint ptr %bus_shift.i.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus_shift.i.i17, align 4
  %shr.i21.i22 = lshr i32 2560, %34
  %add.ptr.i22.i23 = getelementptr i8, ptr %32, i32 %shr.i21.i22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i21) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i23, i16 %35) #7, !srcloc !117
  br label %asic3_clk_enable.exit25

asic3_clk_enable.exit25:                          ; preds = %if.then.i24, %asic3_clk_enable.exit.asic3_clk_enable.exit25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i14) #7
  %arrayidx4 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 1
  %call.i27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %36 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4, align 4
  %inc.i28 = add i32 %37, 1
  store i32 %inc.i28, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.i29 = icmp eq i32 %37, 0
  br i1 %cmp1.i29, label %if.then.i37, label %asic3_clk_enable.exit25.asic3_clk_enable.exit38_crit_edge

asic3_clk_enable.exit25.asic3_clk_enable.exit38_crit_edge: ; preds = %asic3_clk_enable.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit38

if.then.i37:                                      ; preds = %asic3_clk_enable.exit25
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %bus_shift.i.i30 = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %bus_shift.i.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bus_shift.i.i30, align 4
  %shr.i.i31 = lshr i32 2560, %41
  %add.ptr.i.i32 = getelementptr i8, ptr %39, i32 %shr.i.i31
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i32) #7, !srcloc !118
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i33 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 1, i32 1
  %44 = ptrtoint ptr %cdex4.i33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cdex4.i33, align 4
  %46 = trunc i32 %45 to i16
  %conv.i19.i34 = or i16 %43, %46
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %49 = ptrtoint ptr %bus_shift.i.i30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bus_shift.i.i30, align 4
  %shr.i21.i35 = lshr i32 2560, %50
  %add.ptr.i22.i36 = getelementptr i8, ptr %48, i32 %shr.i21.i35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i34) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i36, i16 %51) #7, !srcloc !117
  br label %asic3_clk_enable.exit38

asic3_clk_enable.exit38:                          ; preds = %if.then.i37, %asic3_clk_enable.exit25.asic3_clk_enable.exit38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i27) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  %call.i40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %bus_shift.i.i41 = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %54 = ptrtoint ptr %bus_shift.i.i41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bus_shift.i.i41, align 4
  %shr.i.i42 = lshr i32 4356, %55
  %add.ptr.i.i43 = getelementptr i8, ptr %53, i32 %shr.i.i42
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i43) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %57 = or i16 %56, 16384
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %60 = ptrtoint ptr %bus_shift.i.i41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bus_shift.i.i41, align 4
  %shr.i20.i = lshr i32 4356, %61
  %add.ptr.i21.i = getelementptr i8, ptr %59, i32 %shr.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %57) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i40) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  %call.i45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %64 = ptrtoint ptr %bus_shift.i.i41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bus_shift.i.i41, align 4
  %shr.i.i47 = lshr i32 4356, %65
  %add.ptr.i.i48 = getelementptr i8, ptr %63, i32 %shr.i.i47
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i48) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %67 = and i16 %66, -16385
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %70 = ptrtoint ptr %bus_shift.i.i41 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bus_shift.i.i41, align 4
  %shr.i20.i53 = lshr i32 4356, %71
  %add.ptr.i21.i54 = getelementptr i8, ptr %69, i32 %shr.i20.i53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i54, i16 %67) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i45) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  %call.i56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  %74 = ptrtoint ptr %bus_shift.i.i41 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bus_shift.i.i41, align 4
  %shr.i.i58 = lshr i32 4352, %75
  %add.ptr.i.i59 = getelementptr i8, ptr %73, i32 %shr.i.i58
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i59) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %77 = or i16 %76, 4096
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %80 = ptrtoint ptr %bus_shift.i.i41 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bus_shift.i.i41, align 4
  %shr.i20.i64 = lshr i32 4352, %81
  %add.ptr.i21.i65 = getelementptr i8, ptr %79, i32 %shr.i20.i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i65, i16 %77) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i56) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_disable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 4352, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shr.i.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %9 = and i16 %8, -4097
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i = lshr i32 4352, %13
  %add.ptr.i21.i = getelementptr i8, ptr %11, i32 %shr.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %9) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #7
  %arrayidx = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 1
  tail call fastcc void @asic3_clk_disable(ptr noundef %3, ptr noundef %arrayidx)
  %arrayidx2 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 10
  tail call fastcc void @asic3_clk_disable(ptr noundef %3, ptr noundef %arrayidx2)
  %arrayidx4 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 11
  tail call fastcc void @asic3_clk_disable(ptr noundef %3, ptr noundef %arrayidx4)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asic3_clk_disable(ptr noundef %asic, ptr nocapture noundef %clk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !121

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 626, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.asic3, ptr %asic, i32 0, i32 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp25 = icmp eq i32 %dec, 0
  br i1 %cmp25, label %if.then27, label %if.end.do.body31_crit_edge

if.end.do.body31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 4
  %bus_shift.i = getelementptr inbounds %struct.asic3, ptr %asic, i32 0, i32 1
  %6 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i, align 4
  %shr.i = lshr i32 2560, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shr.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !118
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex29 = getelementptr inbounds %struct.asic3_clk, ptr %clk, i32 0, i32 1
  %10 = ptrtoint ptr %cdex29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cdex29, align 4
  %12 = trunc i32 %11 to i16
  %13 = xor i16 %12, -1
  %conv.i47 = and i16 %9, %13
  %14 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic, align 4
  %16 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i, align 4
  %shr.i49 = lshr i32 2560, %17
  %add.ptr.i50 = getelementptr i8, ptr %15, i32 %shr.i49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i47) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i50, i16 %18) #7, !srcloc !117
  br label %do.body31

do.body31:                                        ; preds = %if.then27, %if.end.do.body31_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_mmc_enable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 3584, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shr.i.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %9 = or i16 %8, 2048
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i = lshr i32 3584, %13
  %add.ptr.i21.i = getelementptr i8, ptr %11, i32 %shr.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %9) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #7
  %call.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i27 = lshr i32 3584, %17
  %add.ptr.i.i28 = getelementptr i8, ptr %15, i32 %shr.i.i27
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i28) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %19 = or i16 %18, 4096
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i33 = lshr i32 3584, %23
  %add.ptr.i21.i34 = getelementptr i8, ptr %21, i32 %shr.i20.i33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i34, i16 %19) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i25) #7
  %call.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i38 = lshr i32 3584, %27
  %add.ptr.i.i39 = getelementptr i8, ptr %25, i32 %shr.i.i38
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i39) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %29 = and i16 %28, -257
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i44 = lshr i32 3584, %33
  %add.ptr.i21.i45 = getelementptr i8, ptr %31, i32 %shr.i20.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i45, i16 %29) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i36) #7
  %call.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %36 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i49 = lshr i32 3584, %37
  %add.ptr.i.i50 = getelementptr i8, ptr %35, i32 %shr.i.i49
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i50) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %39 = and i16 %38, -1025
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %42 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i55 = lshr i32 3584, %43
  %add.ptr.i21.i56 = getelementptr i8, ptr %41, i32 %shr.i20.i55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i56, i16 %39) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i47) #7
  %arrayidx = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 10
  %call.i58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp1.i = icmp eq i32 %45, 0
  br i1 %cmp1.i, label %if.then.i, label %entry.asic3_clk_enable.exit_crit_edge

entry.asic3_clk_enable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %48 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i60 = lshr i32 2560, %49
  %add.ptr.i.i61 = getelementptr i8, ptr %47, i32 %shr.i.i60
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i61) #7, !srcloc !118
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 10, i32 1
  %52 = ptrtoint ptr %cdex4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cdex4.i, align 4
  %54 = trunc i32 %53 to i16
  %conv.i19.i = or i16 %51, %54
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %57 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i21.i = lshr i32 2560, %58
  %add.ptr.i22.i = getelementptr i8, ptr %56, i32 %shr.i21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i, i16 %59) #7, !srcloc !117
  br label %asic3_clk_enable.exit

asic3_clk_enable.exit:                            ; preds = %if.then.i, %entry.asic3_clk_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i58) #7
  %arrayidx2 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 11
  %call.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %60 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx2, align 4
  %inc.i64 = add i32 %61, 1
  store i32 %inc.i64, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1.i65 = icmp eq i32 %61, 0
  br i1 %cmp1.i65, label %if.then.i73, label %asic3_clk_enable.exit.asic3_clk_enable.exit74_crit_edge

asic3_clk_enable.exit.asic3_clk_enable.exit74_crit_edge: ; preds = %asic3_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit74

if.then.i73:                                      ; preds = %asic3_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %64 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i67 = lshr i32 2560, %65
  %add.ptr.i.i68 = getelementptr i8, ptr %63, i32 %shr.i.i67
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68) #7, !srcloc !118
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i69 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 11, i32 1
  %68 = ptrtoint ptr %cdex4.i69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cdex4.i69, align 4
  %70 = trunc i32 %69 to i16
  %conv.i19.i70 = or i16 %67, %70
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  %73 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i21.i71 = lshr i32 2560, %74
  %add.ptr.i22.i72 = getelementptr i8, ptr %72, i32 %shr.i21.i71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i70) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i72, i16 %75) #7, !srcloc !117
  br label %asic3_clk_enable.exit74

asic3_clk_enable.exit74:                          ; preds = %if.then.i73, %asic3_clk_enable.exit.asic3_clk_enable.exit74_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i63) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %3, align 4
  %78 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i = lshr i32 2564, %79
  %add.ptr.i = getelementptr i8, ptr %77, i32 %shr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1280) #7, !srcloc !117
  %arrayidx4 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 7
  %call.i76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %80 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx4, align 4
  %inc.i77 = add i32 %81, 1
  store i32 %inc.i77, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp1.i78 = icmp eq i32 %81, 0
  br i1 %cmp1.i78, label %if.then.i86, label %asic3_clk_enable.exit74.asic3_clk_enable.exit87_crit_edge

asic3_clk_enable.exit74.asic3_clk_enable.exit87_crit_edge: ; preds = %asic3_clk_enable.exit74
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit87

if.then.i86:                                      ; preds = %asic3_clk_enable.exit74
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %3, align 4
  %84 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i80 = lshr i32 2560, %85
  %add.ptr.i.i81 = getelementptr i8, ptr %83, i32 %shr.i.i80
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i81) #7, !srcloc !118
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i82 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 7, i32 1
  %88 = ptrtoint ptr %cdex4.i82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cdex4.i82, align 4
  %90 = trunc i32 %89 to i16
  %conv.i19.i83 = or i16 %87, %90
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  %93 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i21.i84 = lshr i32 2560, %94
  %add.ptr.i22.i85 = getelementptr i8, ptr %92, i32 %shr.i21.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %95 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i83) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i85, i16 %95) #7, !srcloc !117
  br label %asic3_clk_enable.exit87

asic3_clk_enable.exit87:                          ; preds = %if.then.i86, %asic3_clk_enable.exit74.asic3_clk_enable.exit87_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i76) #7
  %arrayidx6 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 8
  %call.i89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %96 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx6, align 4
  %inc.i90 = add i32 %97, 1
  store i32 %inc.i90, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp1.i91 = icmp eq i32 %97, 0
  br i1 %cmp1.i91, label %if.then.i99, label %asic3_clk_enable.exit87.asic3_clk_enable.exit100_crit_edge

asic3_clk_enable.exit87.asic3_clk_enable.exit100_crit_edge: ; preds = %asic3_clk_enable.exit87
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit100

if.then.i99:                                      ; preds = %asic3_clk_enable.exit87
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %3, align 4
  %100 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i93 = lshr i32 2560, %101
  %add.ptr.i.i94 = getelementptr i8, ptr %99, i32 %shr.i.i93
  %102 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i94) #7, !srcloc !118
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i95 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 8, i32 1
  %104 = ptrtoint ptr %cdex4.i95 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cdex4.i95, align 4
  %106 = trunc i32 %105 to i16
  %conv.i19.i96 = or i16 %103, %106
  %107 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %3, align 4
  %109 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i21.i97 = lshr i32 2560, %110
  %add.ptr.i22.i98 = getelementptr i8, ptr %108, i32 %shr.i21.i97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %111 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i96) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i98, i16 %111) #7, !srcloc !117
  br label %asic3_clk_enable.exit100

asic3_clk_enable.exit100:                         ; preds = %if.then.i99, %asic3_clk_enable.exit87.asic3_clk_enable.exit100_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i89) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  %call.i102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 4
  %114 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i104 = lshr i32 4352, %115
  %add.ptr.i.i105 = getelementptr i8, ptr %113, i32 %shr.i.i104
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i105) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %117 = or i16 %116, 64
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %3, align 4
  %120 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i110 = lshr i32 4352, %121
  %add.ptr.i21.i111 = getelementptr i8, ptr %119, i32 %shr.i20.i110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i111, i16 %117) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i102) #7
  %call.i113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %3, align 4
  %124 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i115 = lshr i32 3584, %125
  %add.ptr.i.i116 = getelementptr i8, ptr %123, i32 %shr.i.i115
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i116) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %127 = or i16 %126, 16384
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %3, align 4
  %130 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i121 = lshr i32 3584, %131
  %add.ptr.i21.i122 = getelementptr i8, ptr %129, i32 %shr.i20.i121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i122, i16 %127) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i113) #7
  %tmio_cnf = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 8
  %132 = ptrtoint ptr %tmio_cnf to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tmio_cnf, align 4
  %134 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bus_shift.i.i, align 4
  %sub = sub i32 1, %135
  %call7 = tail call i32 @tmio_core_mmc_enable(ptr noundef %133, i32 noundef %sub, i32 noundef 2048) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_mmc_disable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 3584, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shr.i.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %9 = or i16 %8, 256
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i20.i = lshr i32 3584, %13
  %add.ptr.i21.i = getelementptr i8, ptr %11, i32 %shr.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %9) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #7
  %arrayidx = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 7
  tail call fastcc void @asic3_clk_disable(ptr noundef %3, ptr noundef %arrayidx)
  %arrayidx2 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 8
  tail call fastcc void @asic3_clk_disable(ptr noundef %3, ptr noundef %arrayidx2)
  %arrayidx4 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 10
  tail call fastcc void @asic3_clk_disable(ptr noundef %3, ptr noundef %arrayidx4)
  %arrayidx6 = getelementptr %struct.asic3, ptr %3, i32 0, i32 9, i32 11
  tail call fastcc void @asic3_clk_disable(ptr noundef %3, ptr noundef %arrayidx6)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_core_mmc_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_mmc_pwr(ptr nocapture noundef readonly %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tmio_cnf = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %tmio_cnf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmio_cnf, align 4
  %bus_shift = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift, align 4
  %sub = sub i32 1, %7
  tail call void @tmio_core_mmc_pwr(ptr noundef %5, i32 noundef %sub, i32 noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asic3_mmc_clk_div(ptr nocapture noundef readonly %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tmio_cnf = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %tmio_cnf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmio_cnf, align 4
  %bus_shift = getelementptr inbounds %struct.asic3, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift, align 4
  %sub = sub i32 1, %7
  tail call void @tmio_core_mmc_clk_div(ptr noundef %5, i32 noundef %sub, i32 noundef %state) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_pwr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_clk_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_leds_enable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [3 x i32], ptr @clock_ledn, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.asic3, ptr %5, i32 0, i32 9, i32 %9
  %lock.i = getelementptr inbounds %struct.asic3, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp eq i32 %11, 0
  br i1 %cmp1.i, label %if.then.i, label %entry.asic3_clk_enable.exit_crit_edge

entry.asic3_clk_enable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %asic3_clk_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 2560, %15
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shr.i.i
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %cdex4.i = getelementptr %struct.asic3, ptr %5, i32 0, i32 9, i32 %9, i32 1
  %18 = ptrtoint ptr %cdex4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cdex4.i, align 4
  %20 = trunc i32 %19 to i16
  %conv.i19.i = or i16 %17, %20
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %23 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i21.i = lshr i32 2560, %24
  %add.ptr.i22.i = getelementptr i8, ptr %22, i32 %shr.i21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i19.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i, i16 %25) #7, !srcloc !117
  br label %asic3_clk_enable.exit

asic3_clk_enable.exit:                            ; preds = %if.then.i, %entry.asic3_clk_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_leds_disable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [3 x i32], ptr @clock_ledn, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.asic3, ptr %5, i32 0, i32 9, i32 %9
  tail call fastcc void @asic3_clk_disable(ptr noundef %5, ptr noundef %arrayidx2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_leds_suspend(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %gpio = getelementptr inbounds %struct.asic3, ptr %5, i32 0, i32 6
  %id = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %add = add i32 %7, 32
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #7
  %8 = shl i32 %add, 4
  %mul2.i = and i32 %8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %mul2.i)
  %cmp.i = icmp ugt i32 %mul2.i, 768
  br i1 %cmp.i, label %asic3_gpio_get.exit.thread, label %asic3_gpio_get.exit

asic3_gpio_get.exit.thread:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %mul2.i, i32 noundef %add) #10
  br label %while.body

asic3_gpio_get.exit:                              ; preds = %while.cond
  %sub.i = and i32 %7, 15
  %add3.i = or i32 %mul2.i, 48
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.asic3, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_shift.i.i, align 4
  %shr.i.i = lshr i32 %add3.i, %14
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shr.i.i
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !118
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %conv.i.i = zext i16 %16 to i32
  %17 = shl nuw nsw i32 1, %sub.i
  %18 = and i32 %17, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %while.end, label %asic3_gpio_get.exit.while.body_crit_edge

asic3_gpio_get.exit.while.body_crit_edge:         ; preds = %asic3_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %asic3_gpio_get.exit.while.body_crit_edge, %asic3_gpio_get.exit.thread
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  br label %while.cond

while.end:                                        ; preds = %asic3_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [3 x i32], ptr @clock_ledn, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.asic3, ptr %5, i32 0, i32 9, i32 %22
  tail call fastcc void @asic3_clk_disable(ptr noundef %5, ptr noundef %arrayidx4)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__ksymtab_asic3_write_register, !1, !"__ksymtab_asic3_write_register", i1 false, i1 false}
!1 = !{!"../drivers/mfd/asic3.c", i32 95, i32 1}
!2 = !{ptr @__ksymtab_asic3_read_register, !3, !"__ksymtab_asic3_read_register", i1 false, i1 false}
!3 = !{!"../drivers/mfd/asic3.c", i32 102, i32 1}
!4 = !{ptr @__initcall__kmod_asic3__318_1070_asic3_init4, !5, !"__initcall__kmod_asic3__318_1070_asic3_init4", i1 false, i1 false}
!5 = !{!"../drivers/mfd/asic3.c", i32 1070, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/asic3.c", i32 1055, i32 11}
!8 = !{ptr @asic3_device_driver, !9, !"asic3_device_driver", i1 false, i1 false}
!9 = !{!"../drivers/mfd/asic3.c", i32 1053, i32 31}
!10 = !{ptr @asic3_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/mfd/asic3.c", i32 957, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mfd/asic3.c", i32 963, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @asic3_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @asic3_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/asic3.c", i32 969, i32 3}
!23 = !{ptr @asic3_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @asic3_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/asic3.c", i32 983, i32 3}
!27 = !{ptr @asic3_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @asic3_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/asic3.c", i32 1000, i32 3}
!31 = !{ptr @asic3_probe._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @asic3_probe._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/asic3.c", i32 1014, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @asic3_probe._entry.16, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @asic3_probe._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/asic3.c", i32 369, i32 11}
!40 = !{ptr @asic3_gpio_irq_chip, !41, !"asic3_gpio_irq_chip", i1 false, i1 false}
!41 = !{!"../drivers/mfd/asic3.c", i32 368, i32 24}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/asic3.c", i32 341, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @asic3_gpio_irq_type._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @asic3_gpio_irq_type._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/asic3.c", i32 378, i32 11}
!50 = !{ptr @asic3_irq_chip, !51, !"asic3_irq_chip", i1 false, i1 false}
!51 = !{!"../drivers/mfd/asic3.c", i32 377, i32 24}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/asic3.c", i32 205, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @asic3_irq_demux._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @asic3_irq_demux._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/asic3.c", i32 497, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @asic3_gpio_get._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @asic3_gpio_get._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/asic3.c", i32 518, i32 3}
!64 = !{ptr @asic3_gpio_set._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @asic3_gpio_set._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/asic3.c", i32 451, i32 3}
!68 = !{ptr @asic3_gpio_direction._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @asic3_gpio_direction._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @asic3_gpio_probe.lock_key, !71, !"lock_key", i1 false, i1 false}
!71 = !{!"../drivers/mfd/asic3.c", i32 596, i32 9}
!72 = !{ptr @asic3_gpio_probe.request_key, !71, !"request_key", i1 false, i1 false}
!73 = !{ptr @asic3_clk_init, !74, !"asic3_clk_init", i1 false, i1 false}
!74 = !{!"../drivers/mfd/asic3.c", i32 59, i32 25}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/asic3.c", i32 877, i32 3}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @asic3_mfd_probe.__UNIQUE_ID_ddebug315, !76, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/asic3.c", i32 881, i32 3}
!81 = !{ptr @asic3_mfd_probe.__UNIQUE_ID_ddebug316, !80, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/asic3.c", i32 897, i32 4}
!84 = !{ptr @asic3_mfd_probe.__UNIQUE_ID_ddebug317, !83, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!85 = !{ptr @ds1wm_resources, !86, !"ds1wm_resources", i1 false, i1 false}
!86 = !{!"../drivers/mfd/asic3.c", i32 643, i32 24}
!87 = !{ptr @asic3_mmc_resources, !88, !"asic3_mmc_resources", i1 false, i1 false}
!88 = !{!"../drivers/mfd/asic3.c", i32 725, i32 24}
!89 = !{ptr @ds1wm_pdata, !90, !"ds1wm_pdata", i1 false, i1 false}
!90 = !{!"../drivers/mfd/asic3.c", i32 638, i32 33}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mfd/asic3.c", i32 695, i32 19}
!93 = !{ptr @asic3_cell_ds1wm, !94, !"asic3_cell_ds1wm", i1 false, i1 false}
!94 = !{!"../drivers/mfd/asic3.c", i32 694, i32 30}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mfd/asic3.c", i32 790, i32 19}
!97 = !{ptr @asic3_cell_mmc, !98, !"asic3_cell_mmc", i1 false, i1 false}
!98 = !{!"../drivers/mfd/asic3.c", i32 789, i32 30}
!99 = !{ptr @asic3_mmc_data, !100, !"asic3_mmc_data", i1 false, i1 false}
!100 = !{!"../drivers/mfd/asic3.c", i32 718, i32 29}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/asic3.c", i32 842, i32 20}
!103 = !{ptr @asic3_cell_leds, !104, !"asic3_cell_leds", i1 false, i1 false}
!104 = !{!"../drivers/mfd/asic3.c", i32 840, i32 24}
!105 = !{ptr @clock_ledn, !106, !"clock_ledn", i1 false, i1 false}
!106 = !{!"../drivers/mfd/asic3.c", i32 801, i32 18}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2151729291}
!117 = !{i64 4187099}
!118 = !{i64 4187299}
!119 = !{i64 2151727874}
!120 = !{i64 2148716916, i64 2148716921, i64 2148716934, i64 2148716978, i64 2148717012, i64 2148717033}
!121 = !{!"branch_weights", i32 1, i32 2000}
