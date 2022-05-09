; ModuleID = '/llk/IR_all_yes/drivers/memory/omap-gpmc.c_pt.bc'
source_filename = "../drivers/memory/omap-gpmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gpmc_cs_request\22, \22a\22\09"
module asm "\09.weak\09__crc_gpmc_cs_request\09\09\09\09"
module asm "\09.long\09__crc_gpmc_cs_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_cs_request:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_cs_request\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_cs_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gpmc_cs_free\22, \22a\22\09"
module asm "\09.weak\09__crc_gpmc_cs_free\09\09\09\09"
module asm "\09.long\09__crc_gpmc_cs_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_cs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_cs_free\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_cs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gpmc_configure\22, \22a\22\09"
module asm "\09.weak\09__crc_gpmc_configure\09\09\09\09"
module asm "\09.long\09__crc_gpmc_configure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_configure\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpmc_omap_get_nand_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_gpmc_omap_get_nand_ops\09\09\09\09"
module asm "\09.long\09__crc_gpmc_omap_get_nand_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_omap_get_nand_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_omap_get_nand_ops\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_omap_get_nand_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpmc_omap_onenand_set_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_gpmc_omap_onenand_set_timings\09\09\09\09"
module asm "\09.long\09__crc_gpmc_omap_onenand_set_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpmc_omap_onenand_set_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22gpmc_omap_onenand_set_timings\22\09\09\09\09\09"
module asm "__kstrtabns_gpmc_omap_onenand_set_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpmc_cs_data = type { ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gpmc_nand_ops = type { ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpmc_settings = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.gpmc_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gpmc_bool_timings }
%struct.gpmc_bool_timings = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.gpmc_nand_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr] }
%struct.gpmc_device_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
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
%struct.gpmc_onenand_info = type { i8, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpmc_device = type { ptr, i32, %struct.irq_chip, %struct.gpio_chip, %struct.notifier_block, %struct.omap3_gpmc_regs, i32, i8, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.omap3_gpmc_regs = type { i32, i32, i32, i32, i32, i32, i32, [8 x %struct.gpmc_cs_config] }
%struct.gpmc_cs_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@gpmc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gpmc_cs_set_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013%s: waitmonitoringtime %3d ns too large for greatest gpmcfclkdivider.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpmc_cs_set_timings\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/memory/omap-gpmc.c\00", [37 x i8] zeroinitializer }, align 32
@gpmc_cs_set_timings._entry_ptr = internal global ptr @gpmc_cs_set_timings._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cs_on\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs_rd_off\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs_wr_off\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"adv_on\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adv_rd_off\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adv_wr_off\00", [21 x i8] zeroinitializer }, align 32
@gpmc_capability = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adv_aad_mux_on\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv_aad_mux_rd_off\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv_aad_mux_wr_off\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oe_on\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"oe_off\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oe_aad_mux_on\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"oe_aad_mux_off\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"we_on\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"we_off\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rd_cycle\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wr_cycle\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"access\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"page_burst_access\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bus_turnaround\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cycle2cycle_delay\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wr_data_mux_bus\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wr_access\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wait_monitoring\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_activation\00", [17 x i8] zeroinitializer }, align 32
@gpmc_cs_set_timings._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016GPMC CS%d CLK period is %lu ns (div %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@gpmc_cs_set_timings._entry_ptr.30 = internal global ptr @gpmc_cs_set_timings._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"after gpmc_cs_set_timings\00", [38 x i8] zeroinitializer }, align 32
@gpmc_cs = internal global { [8 x %struct.gpmc_cs_data], [64 x i8] } zeroinitializer, align 32
@gpmc_cs_num = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@gpmc_cs_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: requested chip-select is disabled\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpmc_cs_request\00", [16 x i8] zeroinitializer }, align 32
@gpmc_cs_request._entry_ptr = internal global ptr @gpmc_cs_request._entry, section ".printk_index", align 4
@gpmc_mem_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.150, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@gpmc_mem_root = internal global { %struct.resource, [32 x i8] } zeroinitializer, align 32
@__kstrtab_gpmc_cs_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_cs_request = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_cs_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_cs_request to i32), ptr @__kstrtab_gpmc_cs_request, ptr @__kstrtabns_gpmc_cs_request }, section "___ksymtab+gpmc_cs_request", align 4
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Trying to free non-reserved GPMC CS%d\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_gpmc_cs_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_cs_free = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_cs_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_cs_free to i32), ptr @__kstrtab_gpmc_cs_free, ptr @__kstrtabns_gpmc_cs_free }, section "___ksymtab+gpmc_cs_free", align 4
@gpmc_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: command not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc_configure\00", [17 x i8] zeroinitializer }, align 32
@gpmc_configure._entry_ptr = internal global ptr @gpmc_configure._entry, section ".printk_index", align 4
@__kstrtab_gpmc_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_configure to i32), ptr @__kstrtab_gpmc_configure, ptr @__kstrtabns_gpmc_configure }, section "___ksymtab+gpmc_configure", align 4
@nand_ops = internal global { %struct.gpmc_nand_ops, [28 x i8] } { %struct.gpmc_nand_ops { ptr @gpmc_nand_writebuffer_empty }, [28 x i8] zeroinitializer }, align 32
@__kstrtab_gpmc_omap_get_nand_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_omap_get_nand_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_omap_get_nand_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_omap_get_nand_ops to i32), ptr @__kstrtab_gpmc_omap_get_nand_ops, ptr @__kstrtabns_gpmc_omap_get_nand_ops }, section "___ksymtab_gpl+gpmc_omap_get_nand_ops", align 4
@__kstrtab_gpmc_omap_onenand_set_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpmc_omap_onenand_set_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_gpmc_omap_onenand_set_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpmc_omap_onenand_set_timings to i32), ptr @__kstrtab_gpmc_omap_onenand_set_timings, ptr @__kstrtabns_gpmc_omap_onenand_set_timings }, section "___ksymtab_gpl+gpmc_omap_onenand_set_timings", align 4
@gpmc_irq_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gpmc_get_client_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s called before GPMC IRQ domain available\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpmc_get_client_irq\00", [44 x i8] zeroinitializer }, align 32
@gpmc_get_client_irq._entry_ptr = internal global ptr @gpmc_get_client_irq._entry, section ".printk_index", align 4
@gpmc_cs_program_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid width %d!\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gpmc_cs_program_settings\00", [39 x i8] zeroinitializer }, align 32
@gpmc_cs_program_settings._entry_ptr = internal global ptr @gpmc_cs_program_settings._entry, section ".printk_index", align 4
@gpmc_cs_program_settings._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: invalid configuration!\0A\00", [34 x i8] zeroinitializer }, align 32
@gpmc_cs_program_settings._entry_ptr.43 = internal global ptr @gpmc_cs_program_settings._entry.41, section ".printk_index", align 4
@gpmc_cs_program_settings._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 1838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: invalid multiplex configuration!\0A\00", [56 x i8] zeroinitializer }, align 32
@gpmc_cs_program_settings._entry_ptr.46 = internal global ptr @gpmc_cs_program_settings._entry.44, section ".printk_index", align 4
@gpmc_cs_program_settings._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 1851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: invalid page/burst-length (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@gpmc_cs_program_settings._entry_ptr.49 = internal global ptr @gpmc_cs_program_settings._entry.47, section ".printk_index", align 4
@gpmc_nr_waitpins = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gpmc_cs_program_settings._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.2, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: invalid wait-pin (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@gpmc_cs_program_settings._entry_ptr.52 = internal global ptr @gpmc_cs_program_settings._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc,sync-read\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpmc,sync-write\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,device-width\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,mux-add-data\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,burst-length\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpmc,burst-wrap\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpmc,burst-read\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpmc,burst-write\00", [47 x i8] zeroinitializer }, align 32
@gpmc_read_settings_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: page/burst-length set but not used!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpmc_read_settings_dt\00", [42 x i8] zeroinitializer }, align 32
@gpmc_read_settings_dt._entry_ptr = internal global ptr @gpmc_read_settings_dt._entry, section ".printk_index", align 4
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc,wait-pin\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,wait-on-read\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpmc,wait-on-write\00", [45 x i8] zeroinitializer }, align 32
@gpmc_read_settings_dt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.62, ptr @.str.2, ptr @.str.67, i8 1, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap_gpmc\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: rd/wr wait monitoring not enabled!\0A\00", [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_omap_gpmc__289_2661_gpmc_init2 = internal global ptr @gpmc_init, section ".initcall2.init", align 4
@set_gpmc_timing_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: GPMC CS%d: %s %d ns, %d ticks > %d ticks\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_gpmc_timing_reg\00", [44 x i8] zeroinitializer }, align 32
@set_gpmc_timing_reg._entry_ptr = internal global ptr @set_gpmc_timing_reg._entry, section ".printk_index", align 4
@set_gpmc_timing_reg._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016GPMC CS%d: %-17s: %3d ticks, %3lu ns (was %3i ticks) %3d ns\0A\00", [33 x i8] zeroinitializer }, align 32
@set_gpmc_timing_reg._entry_ptr.72 = internal global ptr @set_gpmc_timing_reg._entry.70, section ".printk_index", align 4
@gpmc_l3_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gpmc_cs_show_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016gpmc cs%i access configuration:\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpmc_cs_show_timings\00", [43 x i8] zeroinitializer }, align 32
@gpmc_cs_show_timings._entry_ptr = internal global ptr @gpmc_cs_show_timings._entry, section ".printk_index", align 4
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"time-para-granularity\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mux-add-data\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device-width\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wait-pin\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wait-on-write\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wait-on-read\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"burst-length\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sync-write\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"burst-write\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"burst-read\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"burst-wrap\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cs-extra-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv-extra-delay\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"we-extra-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"oe-extra-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cycle2cycle-samecsen\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cycle2cycle-diffcsen\00", [43 x i8] zeroinitializer }, align 32
@gpmc_cs_show_timings._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.74, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016gpmc cs%i timings configuration:\0A\00", [60 x i8] zeroinitializer }, align 32
@gpmc_cs_show_timings._entry_ptr.94 = internal global ptr @gpmc_cs_show_timings._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cs-on-ns\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs-rd-off-ns\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs-wr-off-ns\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adv-on-ns\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv-rd-off-ns\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv-wr-off-ns\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv-aad-mux-on-ns\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv-aad-mux-rd-off-ns\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv-aad-mux-wr-off-ns\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"oe-on-ns\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"oe-off-ns\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oe-aad-mux-on-ns\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"oe-aad-mux-off-ns\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"we-on-ns\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"we-off-ns\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rd-cycle-ns\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wr-cycle-ns\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"access-ns\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"page-burst-access-ns\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bus-turnaround-ns\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cycle2cycle-delay-ns\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait-monitoring-ns\00", [45 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk-activation-ns\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wr-data-mux-bus-ns\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wr-access-ns\00", [19 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016gpmc cs%i %s:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc_show_regs\00", [17 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry_ptr = internal global ptr @gpmc_show_regs._entry, section ".printk_index", align 4
@gpmc_show_regs._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016cs%i %s: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry_ptr.124 = internal global ptr @gpmc_show_regs._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPMC_CS_CONFIG1\00", [16 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry_ptr.127 = internal global ptr @gpmc_show_regs._entry.126, section ".printk_index", align 4
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPMC_CS_CONFIG2\00", [16 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry_ptr.130 = internal global ptr @gpmc_show_regs._entry.129, section ".printk_index", align 4
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPMC_CS_CONFIG3\00", [16 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry_ptr.133 = internal global ptr @gpmc_show_regs._entry.132, section ".printk_index", align 4
@.str.134 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPMC_CS_CONFIG4\00", [16 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry_ptr.136 = internal global ptr @gpmc_show_regs._entry.135, section ".printk_index", align 4
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPMC_CS_CONFIG5\00", [16 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gpmc_show_regs._entry_ptr.139 = internal global ptr @gpmc_show_regs._entry.138, section ".printk_index", align 4
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPMC_CS_CONFIG6\00", [16 x i8] zeroinitializer }, align 32
@get_gpmc_timing_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016gpmc,%s = <%u>; /* %u ns - %u ns; %i ticks%s*/\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_gpmc_timing_reg\00", [44 x i8] zeroinitializer }, align 32
@get_gpmc_timing_reg._entry_ptr = internal global ptr @get_gpmc_timing_reg._entry, section ".printk_index", align 4
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"; invalid \00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@get_gpmc_timing_reg._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.142, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016gpmc,%s = <%u>;%s\0A\00", [43 x i8] zeroinitializer }, align 32
@get_gpmc_timing_reg._entry_ptr.147 = internal global ptr @get_gpmc_timing_reg._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" /* invalid */\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc_mem_lock\00", [18 x i8] zeroinitializer }, align 32
@gpmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpmc_probe, ptr @gpmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.151, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpmc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpmc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap-gpmc\00", [22 x i8] zeroinitializer }, align 32
@gpmc_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-gpmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@gpmc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpmc_suspend, ptr @gpmc_resume, ptr @gpmc_suspend, ptr @gpmc_resume, ptr @gpmc_suspend, ptr @gpmc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@gpmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 2526, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't get data reg resource\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpmc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpmc_probe._entry_ptr = internal global ptr @gpmc_probe._entry, section ".printk_index", align 4
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@gpmc_probe._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.2, i32 2539, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get GPMC fck\0A\00", [40 x i8] zeroinitializer }, align 32
@gpmc_probe._entry_ptr.161 = internal global ptr @gpmc_probe._entry.159, section ".printk_index", align 4
@gpmc_probe._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.2, i32 2544, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid GPMC fck clock rate\0A\00", [35 x i8] zeroinitializer }, align 32
@gpmc_probe._entry_ptr.164 = internal global ptr @gpmc_probe._entry.162, section ".printk_index", align 4
@gpmc_probe._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.2, i32 2579, ptr @.str.167, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPMC revision %d.%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gpmc_probe._entry_ptr.168 = internal global ptr @gpmc_probe._entry.165, section ".printk_index", align 4
@gpmc_probe._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.155, ptr @.str.2, i32 2589, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpmc_setup_irq failed\0A\00", [41 x i8] zeroinitializer }, align 32
@gpmc_probe._entry_ptr.171 = internal global ptr @gpmc_probe._entry.169, section ".printk_index", align 4
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpmc,num-cs\00", [20 x i8] zeroinitializer }, align 32
@gpmc_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 2293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: number of chip-selects not defined\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc_probe_dt\00", [18 x i8] zeroinitializer }, align 32
@gpmc_probe_dt._entry_ptr = internal global ptr @gpmc_probe_dt._entry, section ".printk_index", align 4
@gpmc_probe_dt._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.2, i32 2296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: all chip-selects are disabled\0A\00", [59 x i8] zeroinitializer }, align 32
@gpmc_probe_dt._entry_ptr.177 = internal global ptr @gpmc_probe_dt._entry.175, section ".printk_index", align 4
@gpmc_probe_dt._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.174, ptr @.str.2, i32 2300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: number of supported chip-selects cannot be > %d\0A\00", [41 x i8] zeroinitializer }, align 32
@gpmc_probe_dt._entry_ptr.180 = internal global ptr @gpmc_probe_dt._entry.178, section ".printk_index", align 4
@.str.181 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,num-waitpins\00", [46 x i8] zeroinitializer }, align 32
@gpmc_probe_dt._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.174, ptr @.str.2, i32 2307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: number of wait pins not found!\0A\00", [58 x i8] zeroinitializer }, align 32
@gpmc_probe_dt._entry_ptr.184 = internal global ptr @gpmc_probe_dt._entry.182, section ".printk_index", align 4
@gpmc_mem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.2, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: disabling cs %d mapped at 0x%x-0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc_mem_init\00", [18 x i8] zeroinitializer }, align 32
@gpmc_mem_init._entry_ptr = internal global ptr @gpmc_mem_init._entry, section ".printk_index", align 4
@gpmc_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpmc_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpmc_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.2, i32 2392, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not register gpio chip: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc_gpio_init\00", [17 x i8] zeroinitializer }, align 32
@gpmc_gpio_init._entry_ptr = internal global ptr @gpmc_gpio_init._entry, section ".printk_index", align 4
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpmc\00", [27 x i8] zeroinitializer }, align 32
@gpmc_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @gpmc_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@gpmc_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 1419, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ domain add failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc_setup_irq\00", [17 x i8] zeroinitializer }, align 32
@gpmc_setup_irq._entry_ptr = internal global ptr @gpmc_setup_irq._entry, section ".printk_index", align 4
@gpmc_setup_irq._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.2, i32 1426, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@gpmc_setup_irq._entry_ptr.194 = internal global ptr @gpmc_setup_irq._entry.192, section ".printk_index", align 4
@gpmc_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 1382, ptr @.str.197, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"spurious irq detected hwirq %d, virq %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpmc_handle_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gpmc_handle_irq._entry_ptr = internal global ptr @gpmc_handle_irq._entry, section ".printk_index", align 4
@gpmc_probe_dt_children._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 2323, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to probe DT child '%pOFn': %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpmc_probe_dt_children\00", [41 x i8] zeroinitializer }, align 32
@gpmc_probe_dt_children._entry_ptr = internal global ptr @gpmc_probe_dt_children._entry, section ".printk_index", align 4
@.str.200 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 2097, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%pOF has no 'reg' property\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gpmc_probe_generic_child\00", [39 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr = internal global ptr @gpmc_probe_generic_child._entry, section ".printk_index", align 4
@gpmc_probe_generic_child._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.2, i32 2103, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pOF has malformed 'reg' property\0A\00", [61 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.205 = internal global ptr @gpmc_probe_generic_child._entry.203, section ".printk_index", align 4
@gpmc_probe_generic_child._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.202, ptr @.str.2, i32 2118, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot request GPMC CS %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.208 = internal global ptr @gpmc_probe_generic_child._entry.206, section ".printk_index", align 4
@.str.209 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"enable GPMC debug to configure .dts timings for CS%i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"please add GPMC bootloader timings to .dts\00", [53 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.202, ptr @.str.2, i32 2153, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot remap GPMC CS %d to %pa\0A\00", [32 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.213 = internal global ptr @gpmc_probe_generic_child._entry.211, section ".printk_index", align 4
@gpmc_probe_generic_child._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.202, ptr @.str.2, i32 2157, ptr @.str.167, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GPMC CS %d start cannot be lesser than 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.216 = internal global ptr @gpmc_probe_generic_child._entry.214, section ".printk_index", align 4
@gpmc_probe_generic_child._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.202, ptr @.str.2, i32 2161, ptr @.str.167, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"GPMC CS %d end cannot be greater than 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.219 = internal global ptr @gpmc_probe_generic_child._entry.217, section ".printk_index", align 4
@.str.220 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.202, ptr @.str.2, i32 2170, ptr @.str.197, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Incompatible NAND node: missing compatible\00", [53 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.224 = internal global ptr @gpmc_probe_generic_child._entry.222, section ".printk_index", align 4
@.str.225 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"onenand\00", [24 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.202, ptr @.str.2, i32 2180, ptr @.str.197, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Incompatible OneNAND node: missing compatible\00", [50 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.228 = internal global ptr @gpmc_probe_generic_child._entry.226, section ".printk_index", align 4
@omap_nand_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nand-bus-width\00", [17 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.202, ptr @.str.2, i32 2199, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%pOFn: invalid 'nand-bus-width'\0A\00", [63 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.232 = internal global ptr @gpmc_probe_generic_child._entry.230, section ".printk_index", align 4
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bank-width\00", [21 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.202, ptr @.str.2, i32 2213, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%pOF has no 'gpmc,device-width' property\0A\00", [54 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.236 = internal global ptr @gpmc_probe_generic_child._entry.234, section ".printk_index", align 4
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WAITPIN\00", [24 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.202, ptr @.str.2, i32 2227, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid wait-pin: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.240 = internal global ptr @gpmc_probe_generic_child._entry.238, section ".printk_index", align 4
@.str.241 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"before gpmc_cs_program_settings\00", [32 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.202, ptr @.str.2, i32 2242, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set gpmc timings for: %pOFn\0A\00", [57 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.244 = internal global ptr @gpmc_probe_generic_child._entry.242, section ".printk_index", align 4
@of_default_bus_match_table = external dso_local constant [0 x %struct.of_device_id], align 4
@gpmc_probe_generic_child._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.202, ptr @.str.2, i32 2270, ptr @.str.156, ptr @.str.157 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to create gpmc child %pOFn\0A\00", [61 x i8] zeroinitializer }, align 32
@gpmc_probe_generic_child._entry_ptr.247 = internal global ptr @gpmc_probe_generic_child._entry.245, section ".printk_index", align 4
@.str.248 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpmc,sync-clk-ps\00", [47 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc,cs-on-ns\00", [18 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,cs-rd-off-ns\00", [46 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,cs-wr-off-ns\00", [46 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc,adv-on-ns\00", [17 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpmc,adv-rd-off-ns\00", [45 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpmc,adv-wr-off-ns\00", [45 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpmc,adv-aad-mux-on-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpmc,adv-aad-mux-rd-off-ns\00", [37 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpmc,adv-aad-mux-wr-off-ns\00", [37 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc,we-on-ns\00", [18 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc,we-off-ns\00", [17 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc,oe-on-ns\00", [18 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc,oe-off-ns\00", [17 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpmc,oe-aad-mux-on-ns\00", [42 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpmc,oe-aad-mux-off-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpmc,page-burst-access-ns\00", [38 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc,access-ns\00", [17 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpmc,rd-cycle-ns\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpmc,wr-cycle-ns\00", [47 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpmc,bus-turnaround-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpmc,cycle2cycle-delay-ns\00", [38 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpmc,wait-monitoring-ns\00", [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpmc,clk-activation-ns\00", [41 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmc,wr-access-ns\00", [46 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpmc,wr-data-mux-bus-ns\00", [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpmc,cycle2cycle-diffcsen\00", [38 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpmc,cycle2cycle-samecsen\00", [38 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpmc,we-extra-delay\00", [44 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpmc,oe-extra-delay\00", [44 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpmc,adv-extra-delay\00", [43 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpmc,cs-extra-delay\00", [44 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpmc,time-para-granularity\00", [37 x i8] zeroinitializer }, align 32
@gpmc_cs_remap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.281, ptr @.str.2, i32 1931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmc_cs_remap\00", [18 x i8] zeroinitializer }, align 32
@gpmc_cs_remap._entry_ptr = internal global ptr @gpmc_cs_remap._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 66, i64 83, i64 104]
@__sancov_gen_cov_switch_values.282 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.285 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.286 = private unnamed_addr constant [10 x i8] c"gpmc_base\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 252, i32 22 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 722, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 732, i32 22 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 734, i32 22 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 736, i32 22 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 741, i32 22 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 743, i32 22 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 745, i32 22 }
@___asan_gen_.319 = private unnamed_addr constant [16 x i8] c"gpmc_capability\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 251, i32 21 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 752, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 755, i32 9 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 758, i32 9 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 764, i32 22 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 766, i32 22 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 770, i32 9 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 773, i32 9 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 776, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 778, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 783, i32 22 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 785, i32 22 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 787, i32 22 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 790, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 796, i32 8 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 799, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 806, i32 9 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 813, i32 9 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 827, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 831, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 836, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 841, i32 27 }
@___asan_gen_.388 = private unnamed_addr constant [8 x i8] c"gpmc_cs\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 246, i32 28 }
@___asan_gen_.391 = private unnamed_addr constant [12 x i8] c"gpmc_cs_num\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 249, i32 21 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 976, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [14 x i8] c"gpmc_mem_lock\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [14 x i8] c"gpmc_mem_root\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 245, i32 24 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1022, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1058, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [9 x i8] c"nand_ops\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1074, i32 29 }
@___asan_gen_.424 = private unnamed_addr constant [16 x i8] c"gpmc_irq_domain\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 243, i32 27 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1238, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1825, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1831, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1838, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1850, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"gpmc_nr_waitpins\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 250, i32 21 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1857, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1973, i32 43 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1974, i32 44 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1975, i32 27 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1976, i32 27 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1978, i32 32 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1979, i32 45 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1980, i32 45 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1981, i32 46 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1983, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1987, i32 32 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1989, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1991, i32 9 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1993, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 620, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 628, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [12 x i8] c"gpmc_l3_clk\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 254, i32 20 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 510, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 511, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 512, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 513, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 515, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 516, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 517, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 518, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 521, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 522, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 524, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 525, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 527, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 529, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 531, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 532, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 534, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 535, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 537, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 538, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 539, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 540, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 542, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 543, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 544, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 546, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 547, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 549, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 553, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 554, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 556, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 557, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 559, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 560, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 562, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 563, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 564, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 566, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 568, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 569, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 571, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 574, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 578, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 579, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 493, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 494, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 495, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 496, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 497, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 498, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 499, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 461, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 466, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 247, i32 8 }
@___asan_gen_.757 = private unnamed_addr constant [12 x i8] c"gpmc_driver\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2647, i32 31 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2651, i32 11 }
@___asan_gen_.763 = private unnamed_addr constant [12 x i8] c"gpmc_dt_ids\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1892, i32 34 }
@___asan_gen_.766 = private unnamed_addr constant [12 x i8] c"gpmc_pm_ops\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2645, i32 8 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2513, i32 59 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2524, i32 60 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2526, i32 4 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2537, i32 41 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2539, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2544, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2578, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2589, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2290, i32 48 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2293, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2296, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2299, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2304, i32 48 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2307, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1481, i32 4 }
@___asan_gen_.862 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.865 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2390, i32 8 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2392, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1406, i32 24 }
@___asan_gen_.880 = private unnamed_addr constant [20 x i8] c"gpmc_irq_domain_ops\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1355, i32 36 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1419, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1425, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1380, i32 5 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2322, i32 4 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2095, i32 34 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2096, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2102, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2118, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2132, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2135, i32 10 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2152, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2155, i32 4 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2159, i32 4 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2166, i32 29 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2168, i32 37 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2169, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2176, i32 29 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2179, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant [14 x i8] c"omap_nand_ids\00", align 1
@___asan_gen_.989 = private unnamed_addr constant [48 x i8] c"../include/linux/platform_data/mtd-nand-omap2.h\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 66, i32 34 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2189, i32 31 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2198, i32 4 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2208, i32 37 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2211, i32 4 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2223, i32 19 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2227, i32 4 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2233, i32 27 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2241, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2270, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2009, i32 27 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2012, i32 27 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2013, i32 27 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2014, i32 27 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2017, i32 27 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2018, i32 27 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2019, i32 27 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2020, i32 27 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2022, i32 27 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2024, i32 27 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2028, i32 27 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2029, i32 27 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2032, i32 27 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2033, i32 27 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2034, i32 27 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2036, i32 27 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2040, i32 27 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2042, i32 27 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2043, i32 27 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2044, i32 27 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2045, i32 27 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2047, i32 27 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2049, i32 27 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2051, i32 27 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2055, i32 27 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2056, i32 27 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2063, i32 29 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2065, i32 29 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2066, i32 48 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2067, i32 48 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2068, i32 49 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2069, i32 48 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2071, i32 29 }
@___asan_gen_.1132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1136 = private constant [30 x i8] c"../drivers/memory/omap-gpmc.c\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1931, i32 3 }
@llvm.compiler.used = appending global [343 x ptr] [ptr @__initcall__kmod_omap_gpmc__289_2661_gpmc_init2, ptr @__ksymtab_gpmc_configure, ptr @__ksymtab_gpmc_cs_free, ptr @__ksymtab_gpmc_cs_request, ptr @__ksymtab_gpmc_omap_get_nand_ops, ptr @__ksymtab_gpmc_omap_onenand_set_timings, ptr @get_gpmc_timing_reg._entry, ptr @get_gpmc_timing_reg._entry.145, ptr @get_gpmc_timing_reg._entry_ptr, ptr @get_gpmc_timing_reg._entry_ptr.147, ptr @gpmc_configure._entry, ptr @gpmc_configure._entry_ptr, ptr @gpmc_cs_program_settings._entry, ptr @gpmc_cs_program_settings._entry.41, ptr @gpmc_cs_program_settings._entry.44, ptr @gpmc_cs_program_settings._entry.47, ptr @gpmc_cs_program_settings._entry.50, ptr @gpmc_cs_program_settings._entry_ptr, ptr @gpmc_cs_program_settings._entry_ptr.43, ptr @gpmc_cs_program_settings._entry_ptr.46, ptr @gpmc_cs_program_settings._entry_ptr.49, ptr @gpmc_cs_program_settings._entry_ptr.52, ptr @gpmc_cs_remap._entry, ptr @gpmc_cs_remap._entry_ptr, ptr @gpmc_cs_request._entry, ptr @gpmc_cs_request._entry_ptr, ptr @gpmc_cs_set_timings._entry, ptr @gpmc_cs_set_timings._entry.28, ptr @gpmc_cs_set_timings._entry_ptr, ptr @gpmc_cs_set_timings._entry_ptr.30, ptr @gpmc_cs_show_timings._entry, ptr @gpmc_cs_show_timings._entry.92, ptr @gpmc_cs_show_timings._entry_ptr, ptr @gpmc_cs_show_timings._entry_ptr.94, ptr @gpmc_get_client_irq._entry, ptr @gpmc_get_client_irq._entry_ptr, ptr @gpmc_gpio_init._entry, ptr @gpmc_gpio_init._entry_ptr, ptr @gpmc_handle_irq._entry, ptr @gpmc_handle_irq._entry_ptr, ptr @gpmc_mem_init._entry, ptr @gpmc_mem_init._entry_ptr, ptr @gpmc_probe._entry, ptr @gpmc_probe._entry.159, ptr @gpmc_probe._entry.162, ptr @gpmc_probe._entry.165, ptr @gpmc_probe._entry.169, ptr @gpmc_probe._entry_ptr, ptr @gpmc_probe._entry_ptr.161, ptr @gpmc_probe._entry_ptr.164, ptr @gpmc_probe._entry_ptr.168, ptr @gpmc_probe._entry_ptr.171, ptr @gpmc_probe_dt._entry, ptr @gpmc_probe_dt._entry.175, ptr @gpmc_probe_dt._entry.178, ptr @gpmc_probe_dt._entry.182, ptr @gpmc_probe_dt._entry_ptr, ptr @gpmc_probe_dt._entry_ptr.177, ptr @gpmc_probe_dt._entry_ptr.180, ptr @gpmc_probe_dt._entry_ptr.184, ptr @gpmc_probe_dt_children._entry, ptr @gpmc_probe_dt_children._entry_ptr, ptr @gpmc_probe_generic_child._entry, ptr @gpmc_probe_generic_child._entry.203, ptr @gpmc_probe_generic_child._entry.206, ptr @gpmc_probe_generic_child._entry.211, ptr @gpmc_probe_generic_child._entry.214, ptr @gpmc_probe_generic_child._entry.217, ptr @gpmc_probe_generic_child._entry.222, ptr @gpmc_probe_generic_child._entry.226, ptr @gpmc_probe_generic_child._entry.230, ptr @gpmc_probe_generic_child._entry.234, ptr @gpmc_probe_generic_child._entry.238, ptr @gpmc_probe_generic_child._entry.242, ptr @gpmc_probe_generic_child._entry.245, ptr @gpmc_probe_generic_child._entry_ptr, ptr @gpmc_probe_generic_child._entry_ptr.205, ptr @gpmc_probe_generic_child._entry_ptr.208, ptr @gpmc_probe_generic_child._entry_ptr.213, ptr @gpmc_probe_generic_child._entry_ptr.216, ptr @gpmc_probe_generic_child._entry_ptr.219, ptr @gpmc_probe_generic_child._entry_ptr.224, ptr @gpmc_probe_generic_child._entry_ptr.228, ptr @gpmc_probe_generic_child._entry_ptr.232, ptr @gpmc_probe_generic_child._entry_ptr.236, ptr @gpmc_probe_generic_child._entry_ptr.240, ptr @gpmc_probe_generic_child._entry_ptr.244, ptr @gpmc_probe_generic_child._entry_ptr.247, ptr @gpmc_read_settings_dt._entry, ptr @gpmc_read_settings_dt._entry_ptr, ptr @gpmc_setup_irq._entry, ptr @gpmc_setup_irq._entry.192, ptr @gpmc_setup_irq._entry_ptr, ptr @gpmc_setup_irq._entry_ptr.194, ptr @gpmc_show_regs._entry, ptr @gpmc_show_regs._entry.122, ptr @gpmc_show_regs._entry.126, ptr @gpmc_show_regs._entry.129, ptr @gpmc_show_regs._entry.132, ptr @gpmc_show_regs._entry.135, ptr @gpmc_show_regs._entry.138, ptr @gpmc_show_regs._entry_ptr, ptr @gpmc_show_regs._entry_ptr.124, ptr @gpmc_show_regs._entry_ptr.127, ptr @gpmc_show_regs._entry_ptr.130, ptr @gpmc_show_regs._entry_ptr.133, ptr @gpmc_show_regs._entry_ptr.136, ptr @gpmc_show_regs._entry_ptr.139, ptr @set_gpmc_timing_reg._entry, ptr @set_gpmc_timing_reg._entry.70, ptr @set_gpmc_timing_reg._entry_ptr, ptr @set_gpmc_timing_reg._entry_ptr.72, ptr @gpmc_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gpmc_capability, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @gpmc_cs, ptr @gpmc_cs_num, ptr @.str.32, ptr @.str.33, ptr @gpmc_mem_lock, ptr @gpmc_mem_root, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @nand_ops, ptr @gpmc_irq_domain, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @gpmc_nr_waitpins, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @gpmc_l3_clk, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @gpmc_driver, ptr @.str.151, ptr @gpmc_dt_ids, ptr @gpmc_pm_ops, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @gpmc_gpio_init.lock_key, ptr @gpmc_gpio_init.request_key, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @gpmc_irq_domain_ops, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.223, ptr @.str.225, ptr @.str.227, ptr @omap_nand_ids, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.241, ptr @.str.243, ptr @.str.246, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281], section "llvm.metadata"
@0 = internal global [284 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_set_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_capability to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_set_timings._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_mem_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_mem_root to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_irq_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_get_client_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_program_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_program_settings._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_program_settings._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_program_settings._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_nr_waitpins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_program_settings._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_read_settings_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gpmc_timing_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gpmc_timing_reg._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_l3_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_show_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_show_timings._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_show_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_show_regs._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_show_regs._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_show_regs._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_show_regs._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_show_regs._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_show_regs._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gpmc_timing_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gpmc_timing_reg._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_dt._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_dt._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_dt._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_mem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_setup_irq._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_dt_children._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_probe_generic_child._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmc_cs_remap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpmc_cs_write_reg(i32 noundef %cs, i32 noundef %idx, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpmc_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 96
  %mul = mul i32 %cs, 48
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %idx
  %1 = tail call i32 @llvm.bswap.i32(i32 %val)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %1) #8, !srcloc !559
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_ticks_to_ns(i32 noundef %ticks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %0) #8
  %div.i.i.i = udiv i32 %call.i.i.i, 1000
  %div1.i.i.i = udiv i32 1000000000, %div.i.i.i
  %mul.i = mul i32 %div1.i.i.i, %ticks
  %div.i = udiv i32 %mul.i, 1000
  ret i32 %div.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_calc_divider(i32 noundef %sync_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %0) #8
  %div.i.i = udiv i32 %call.i.i, 1000
  %div1.i.i = udiv i32 1000000000, %div.i.i
  %add.i = add i32 %sync_clk, -1
  %sub.i = add i32 %add.i, %div1.i.i
  %div.i = udiv i32 %sub.i, %div1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i)
  %cmp = icmp ugt i32 %div.i, 4
  %1 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 1)
  %retval.0 = select i1 %cmp, i32 -1, i32 %1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_cs_set_timings(i32 noundef %cs, ptr noundef readonly %t, ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  %2 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %2) #8
  %div.i.i.i = udiv i32 %call.i.i.i, 1000
  %div1.i.i.i = udiv i32 1000000000, %div.i.i.i
  %add.i.i = add i32 %1, -1
  %sub.i.i = add i32 %add.i.i, %div1.i.i.i
  %div.i.i = udiv i32 %sub.i.i, %div1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i.i)
  %cmp.i = icmp ugt i32 %div.i.i, 4
  %3 = tail call i32 @llvm.smax.i32(i32 %div.i.i, i32 1) #8
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sync_read = getelementptr inbounds %struct.gpmc_settings, ptr %s, i32 0, i32 4
  %4 = ptrtoint ptr %sync_read to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sync_read, align 4, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %sync_write = getelementptr inbounds %struct.gpmc_settings, ptr %s, i32 0, i32 5
  %6 = ptrtoint ptr %sync_write to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sync_write, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true2:                                   ; preds = %land.lhs.true
  %wait_on_read = getelementptr inbounds %struct.gpmc_settings, ptr %s, i32 0, i32 6
  %8 = ptrtoint ptr %wait_on_read to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait_on_read, align 2, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true2.if.then5_crit_edge

land.lhs.true2.if.then5_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %wait_on_write = getelementptr inbounds %struct.gpmc_settings, ptr %s, i32 0, i32 7
  %10 = ptrtoint ptr %wait_on_write to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wait_on_write, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %land.lhs.true2.if.then5_crit_edge
  %wait_monitoring = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 22
  %12 = ptrtoint ptr %wait_monitoring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wait_monitoring, align 4
  %14 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i.i = tail call i32 @clk_get_rate(ptr noundef %14) #8
  %div.i.i.i.i.i = udiv i32 %call.i.i.i.i.i, 1000
  %div1.i.i.i.i.i = udiv i32 1000000000, %div.i.i.i.i.i
  %mul.i.i.i = mul i32 %13, 1000
  %add.i.i.i = add i32 %mul.i.i.i, -1
  %sub.i.i.i = add i32 %add.i.i.i, %div1.i.i.i.i.i
  %div.i.i.i216 = udiv i32 %sub.i.i.i, %div1.i.i.i.i.i
  %add.i = add nuw nsw i32 %div.i.i.i216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div.i.i.i216)
  %cmp.i217 = icmp ugt i32 %div.i.i.i216, 8
  %div1910.i = lshr i32 %add.i, 1
  %15 = tail call i32 @llvm.smax.i32(i32 %div1910.i, i32 1) #8
  br i1 %cmp.i217, label %do.end, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %wait_monitoring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wait_monitoring, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %17) #11
  br label %cleanup

if.end12:                                         ; preds = %if.then5.if.end12_crit_edge, %lor.lhs.false.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %div.0 = phi i32 [ %3, %if.end.if.end12_crit_edge ], [ %3, %land.lhs.true.if.end12_crit_edge ], [ %15, %if.then5.if.end12_crit_edge ], [ %3, %lor.lhs.false.if.end12_crit_edge ]
  %cs_on = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 1
  %18 = ptrtoint ptr %cs_on to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cs_on, align 4
  %call13 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 4, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef %19, i32 noundef 0, ptr noundef nonnull @.str.3)
  %cs_rd_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 2
  %20 = ptrtoint ptr %cs_rd_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cs_rd_off, align 4
  %call14 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 4, i32 noundef 8, i32 noundef 12, i32 noundef 0, i32 noundef %21, i32 noundef 0, ptr noundef nonnull @.str.4)
  %or15 = or i32 %call14, %call13
  %cs_wr_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 3
  %22 = ptrtoint ptr %cs_wr_off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cs_wr_off, align 4
  %call16 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 4, i32 noundef 16, i32 noundef 20, i32 noundef 0, i32 noundef %23, i32 noundef 0, ptr noundef nonnull @.str.5)
  %or17 = or i32 %or15, %call16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or17)
  %tobool18.not = icmp eq i32 %or17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %adv_on = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 4
  %24 = ptrtoint ptr %adv_on to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %adv_on, align 4
  %call21 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 8, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef %25, i32 noundef 0, ptr noundef nonnull @.str.6)
  %adv_rd_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 5
  %26 = ptrtoint ptr %adv_rd_off to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %adv_rd_off, align 4
  %call23 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 8, i32 noundef 8, i32 noundef 12, i32 noundef 0, i32 noundef %27, i32 noundef 0, ptr noundef nonnull @.str.7)
  %or24 = or i32 %call23, %call21
  %adv_wr_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 6
  %28 = ptrtoint ptr %adv_wr_off to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adv_wr_off, align 4
  %call25 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 8, i32 noundef 16, i32 noundef 20, i32 noundef 0, i32 noundef %29, i32 noundef 0, ptr noundef nonnull @.str.8)
  %or26 = or i32 %or24, %call25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26)
  %tobool27.not = icmp eq i32 %or26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %30 = load i32, ptr @gpmc_capability, align 4
  %and = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end29.if.end41_crit_edge, label %if.then31

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then31:                                        ; preds = %if.end29
  %adv_aad_mux_on = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 7
  %31 = ptrtoint ptr %adv_aad_mux_on to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %adv_aad_mux_on, align 4
  %call32 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 8, i32 noundef 4, i32 noundef 6, i32 noundef 0, i32 noundef %32, i32 noundef 0, ptr noundef nonnull @.str.9)
  %adv_aad_mux_rd_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 8
  %33 = ptrtoint ptr %adv_aad_mux_rd_off to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %adv_aad_mux_rd_off, align 4
  %call34 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 8, i32 noundef 24, i32 noundef 26, i32 noundef 0, i32 noundef %34, i32 noundef 0, ptr noundef nonnull @.str.10)
  %or35 = or i32 %call34, %call32
  %adv_aad_mux_wr_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 9
  %35 = ptrtoint ptr %adv_aad_mux_wr_off to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %adv_aad_mux_wr_off, align 4
  %call36 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 8, i32 noundef 28, i32 noundef 30, i32 noundef 0, i32 noundef %36, i32 noundef 0, ptr noundef nonnull @.str.11)
  %or37 = or i32 %or35, %call36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or37)
  %tobool38.not = icmp eq i32 %or37, 0
  br i1 %tobool38.not, label %if.then31.if.end41_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %if.then31.if.end41_crit_edge, %if.end29.if.end41_crit_edge
  %oe_on = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 12
  %37 = ptrtoint ptr %oe_on to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oe_on, align 4
  %call42 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 12, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef %38, i32 noundef 0, ptr noundef nonnull @.str.12)
  %oe_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 13
  %39 = ptrtoint ptr %oe_off to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oe_off, align 4
  %call44 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 12, i32 noundef 8, i32 noundef 12, i32 noundef 0, i32 noundef %40, i32 noundef 0, ptr noundef nonnull @.str.13)
  %or45 = or i32 %call44, %call42
  %41 = load i32, ptr @gpmc_capability, align 4
  %and46 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end41.if.end53_crit_edge, label %if.then48

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %oe_aad_mux_on = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 14
  %42 = ptrtoint ptr %oe_aad_mux_on to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %oe_aad_mux_on, align 4
  %call49 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 12, i32 noundef 4, i32 noundef 6, i32 noundef 0, i32 noundef %43, i32 noundef 0, ptr noundef nonnull @.str.14)
  %or50 = or i32 %call49, %or45
  %oe_aad_mux_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 15
  %44 = ptrtoint ptr %oe_aad_mux_off to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oe_aad_mux_off, align 4
  %call51 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 12, i32 noundef 13, i32 noundef 15, i32 noundef 0, i32 noundef %45, i32 noundef 0, ptr noundef nonnull @.str.15)
  %or52 = or i32 %or50, %call51
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end41.if.end53_crit_edge
  %ret.1 = phi i32 [ %or52, %if.then48 ], [ %or45, %if.end41.if.end53_crit_edge ]
  %we_on = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 10
  %46 = ptrtoint ptr %we_on to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %we_on, align 4
  %call54 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 12, i32 noundef 16, i32 noundef 19, i32 noundef 0, i32 noundef %47, i32 noundef 0, ptr noundef nonnull @.str.16)
  %or55 = or i32 %call54, %ret.1
  %we_off = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 11
  %48 = ptrtoint ptr %we_off to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %we_off, align 4
  %call56 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 12, i32 noundef 24, i32 noundef 28, i32 noundef 0, i32 noundef %49, i32 noundef 0, ptr noundef nonnull @.str.17)
  %or57 = or i32 %or55, %call56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or57)
  %tobool58.not = icmp eq i32 %or57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %rd_cycle = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 18
  %50 = ptrtoint ptr %rd_cycle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rd_cycle, align 4
  %call61 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 16, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef %51, i32 noundef 0, ptr noundef nonnull @.str.18)
  %wr_cycle = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 19
  %52 = ptrtoint ptr %wr_cycle to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wr_cycle, align 4
  %call63 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 16, i32 noundef 8, i32 noundef 12, i32 noundef 0, i32 noundef %53, i32 noundef 0, ptr noundef nonnull @.str.19)
  %or64 = or i32 %call63, %call61
  %access = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 17
  %54 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %access, align 4
  %call65 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 16, i32 noundef 16, i32 noundef 20, i32 noundef 0, i32 noundef %55, i32 noundef 0, ptr noundef nonnull @.str.20)
  %or66 = or i32 %or64, %call65
  %page_burst_access = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 16
  %56 = ptrtoint ptr %page_burst_access to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %page_burst_access, align 4
  %call67 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 16, i32 noundef 24, i32 noundef 27, i32 noundef 0, i32 noundef %57, i32 noundef 0, ptr noundef nonnull @.str.21)
  %or68 = or i32 %or66, %call67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or68)
  %tobool69.not = icmp eq i32 %or68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.end60
  %bus_turnaround = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 20
  %58 = ptrtoint ptr %bus_turnaround to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bus_turnaround, align 4
  %call72 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 20, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef %59, i32 noundef 0, ptr noundef nonnull @.str.22)
  %cycle2cycle_delay = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 21
  %60 = ptrtoint ptr %cycle2cycle_delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cycle2cycle_delay, align 4
  %call74 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 20, i32 noundef 8, i32 noundef 11, i32 noundef 0, i32 noundef %61, i32 noundef 0, ptr noundef nonnull @.str.23)
  %or75 = or i32 %call74, %call72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or75)
  %tobool76.not = icmp eq i32 %or75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %62 = load i32, ptr @gpmc_capability, align 4
  %and79 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end87_crit_edge, label %if.then81

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then81:                                        ; preds = %if.end78
  %wr_data_mux_bus = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 25
  %63 = ptrtoint ptr %wr_data_mux_bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wr_data_mux_bus, align 4
  %call82 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 20, i32 noundef 16, i32 noundef 19, i32 noundef 0, i32 noundef %64, i32 noundef 0, ptr noundef nonnull @.str.24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool84.not = icmp eq i32 %call82, 0
  br i1 %tobool84.not, label %if.then81.if.end87_crit_edge, label %if.then81.cleanup_crit_edge

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %if.then81.if.end87_crit_edge, %if.end78.if.end87_crit_edge
  %65 = load i32, ptr @gpmc_capability, align 4
  %and88 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end96_crit_edge, label %if.then90

if.end87.if.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then90:                                        ; preds = %if.end87
  %wr_access = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 24
  %66 = ptrtoint ptr %wr_access to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wr_access, align 4
  %call91 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 20, i32 noundef 24, i32 noundef 28, i32 noundef 0, i32 noundef %67, i32 noundef 0, ptr noundef nonnull @.str.25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool93.not = icmp eq i32 %call91, 0
  br i1 %tobool93.not, label %if.then90.if.end96_crit_edge, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end96:                                         ; preds = %if.then90.if.end96_crit_edge, %if.end87.if.end96_crit_edge
  %68 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 96
  %mul.i = mul i32 %cs, 48
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !561
  %70 = and i32 %69, -50331649
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %sub = add nsw i32 %div.0, -1
  %or99 = or i32 %71, %sub
  %72 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i219 = getelementptr i8, ptr %72, i32 96
  %add.ptr1.i221 = getelementptr i8, ptr %add.ptr.i219, i32 %mul.i
  %73 = tail call i32 @llvm.bswap.i32(i32 %or99) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i221, i32 %73) #8, !srcloc !559
  %wait_monitoring100 = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 22
  %74 = ptrtoint ptr %wait_monitoring100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wait_monitoring100, align 4
  %call101 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 0, i32 noundef 18, i32 noundef 19, i32 noundef 2, i32 noundef %75, i32 noundef 1, ptr noundef nonnull @.str.26)
  %clk_activation = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 23
  %76 = ptrtoint ptr %clk_activation to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %clk_activation, align 4
  %call103 = tail call fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef 0, i32 noundef 25, i32 noundef 26, i32 noundef 2, i32 noundef %77, i32 noundef 0, ptr noundef nonnull @.str.27)
  %or104 = or i32 %call103, %call101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or104)
  %tobool105.not = icmp eq i32 %or104, 0
  br i1 %tobool105.not, label %do.end110, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end110:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %78 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %78) #8
  %div.i = udiv i32 %call.i, 1000
  %div1.i = udiv i32 1000000000, %div.i
  %mul = mul i32 %div1.i, %div.0
  %div113 = udiv i32 %mul, 1000
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %cs, i32 noundef %div113, i32 noundef %div.0) #11
  %bool_timings = getelementptr inbounds %struct.gpmc_timings, ptr %t, i32 0, i32 26
  tail call fastcc void @gpmc_cs_bool_timings(i32 noundef %cs, ptr noundef %bool_timings)
  tail call fastcc void @gpmc_cs_show_timings(i32 noundef %cs, ptr noundef nonnull @.str.31)
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.end96.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end110 ], [ -6, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end12.cleanup_crit_edge ], [ -6, %if.end20.cleanup_crit_edge ], [ -6, %if.then31.cleanup_crit_edge ], [ -6, %if.end53.cleanup_crit_edge ], [ -6, %if.end60.cleanup_crit_edge ], [ -6, %if.end71.cleanup_crit_edge ], [ -6, %if.then81.cleanup_crit_edge ], [ -6, %if.then90.cleanup_crit_edge ], [ -6, %if.end96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_gpmc_timing_reg(i32 noundef %cs, i32 noundef %reg, i32 noundef %st_bit, i32 noundef %end_bit, i32 noundef %max, i32 noundef %time, i32 noundef %cd, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time)
  %cmp = icmp eq i32 %time, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %0) #8
  %div.i.i.i = udiv i32 %call.i.i.i, 1000
  %div1.i.i.i = udiv i32 1000000000, %div.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cd)
  %cond.i.i = icmp eq i32 %cd, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.else.gpmc_ns_to_clk_ticks.exit_crit_edge

if.else.gpmc_ns_to_clk_ticks.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_ns_to_clk_ticks.exit

sw.bb.i.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 96
  %mul.i.i.i = mul i32 %cs, 48
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #8, !srcloc !561
  %3 = lshr i32 %2, 24
  %and.i.i = and i32 %3, 3
  %add.i.i = add nuw nsw i32 %and.i.i, 1
  %mul.i.i = mul nuw i32 %add.i.i, %div1.i.i.i
  br label %gpmc_ns_to_clk_ticks.exit

gpmc_ns_to_clk_ticks.exit:                        ; preds = %sw.bb.i.i, %if.else.gpmc_ns_to_clk_ticks.exit_crit_edge
  %tick_ps.0.i.i = phi i32 [ %mul.i.i, %sw.bb.i.i ], [ %div1.i.i.i, %if.else.gpmc_ns_to_clk_ticks.exit_crit_edge ]
  %mul.i = mul i32 %time, 1000
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %tick_ps.0.i.i
  %div.i = udiv i32 %sub.i, %tick_ps.0.i.i
  br label %if.end

if.end:                                           ; preds = %gpmc_ns_to_clk_ticks.exit, %entry.if.end_crit_edge
  %ticks.0 = phi i32 [ %div.i, %gpmc_ns_to_clk_ticks.exit ], [ 0, %entry.if.end_crit_edge ]
  %sub = sub i32 1, %st_bit
  %add = add i32 %sub, %end_bit
  %notmask = shl nsw i32 -1, %add
  %sub1 = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %tobool.not = icmp eq i32 %max, 0
  %spec.select = select i1 %tobool.not, i32 %sub1, i32 %max
  call void @__sanitizer_cov_trace_cmp4(i32 %ticks.0, i32 %spec.select)
  %cmp4 = icmp sgt i32 %ticks.0, %spec.select
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %cs, ptr noundef %name, i32 noundef %time, i32 noundef %ticks.0, i32 noundef %spec.select) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 96
  %mul.i46 = mul i32 %cs, 48
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i46
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %reg
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !561
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %7 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %7) #8
  %div.i.i = udiv i32 %call.i.i, 1000
  %div1.i.i = udiv i32 1000000000, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cd)
  %cond.i = icmp eq i32 %cd, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end7.gpmc_get_clk_period.exit_crit_edge

if.end7.gpmc_get_clk_period.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_get_clk_period.exit

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 96
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i46
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #8, !srcloc !561
  %10 = lshr i32 %9, 24
  %and.i = and i32 %10, 3
  %add.i48 = add nuw nsw i32 %and.i, 1
  %mul.i49 = mul nuw i32 %add.i48, %div1.i.i
  br label %gpmc_get_clk_period.exit

gpmc_get_clk_period.exit:                         ; preds = %sw.bb.i, %if.end7.gpmc_get_clk_period.exit_crit_edge
  %tick_ps.0.i = phi i32 [ %mul.i49, %sw.bb.i ], [ %div1.i.i, %if.end7.gpmc_get_clk_period.exit_crit_edge ]
  %mul = mul i32 %tick_ps.0.i, %ticks.0
  %div = udiv i32 %mul, 1000
  %shr = lshr i32 %6, %st_bit
  %and = and i32 %shr, %sub1
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %cs, ptr noundef %name, i32 noundef %ticks.0, i32 noundef %div, i32 noundef %and, i32 noundef %time) #11
  %shl15 = shl i32 %sub1, %st_bit
  %neg = xor i32 %shl15, -1
  %and16 = and i32 %6, %neg
  %shl17 = shl i32 %ticks.0, %st_bit
  %or = or i32 %and16, %shl17
  %11 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i50 = getelementptr i8, ptr %11, i32 96
  %add.ptr1.i52 = getelementptr i8, ptr %add.ptr.i50, i32 %mul.i46
  %add.ptr2.i53 = getelementptr i8, ptr %add.ptr1.i52, i32 %reg
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i53, i32 %12) #8, !srcloc !559
  br label %cleanup

cleanup:                                          ; preds = %gpmc_get_clk_period.exit, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %gpmc_get_clk_period.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmc_cs_bool_timings(i32 noundef %cs, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %time_para_granularity = getelementptr inbounds %struct.gpmc_bool_timings, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %time_para_granularity to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %time_para_granularity, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 96
  %mul.i.i = mul i32 %cs, 48
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #8, !srcloc !561
  %4 = and i32 %3, -268435457
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %tobool.not, i32 0, i32 16
  %l.0.i = or i32 %5, %masksel
  %6 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %6, i32 96
  %add.ptr1.i8.i = getelementptr i8, ptr %add.ptr.i6.i, i32 %mul.i.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %l.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 %7) #8, !srcloc !559
  %cs_extra_delay = getelementptr inbounds %struct.gpmc_bool_timings, ptr %p, i32 0, i32 5
  %8 = ptrtoint ptr %cs_extra_delay to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cs_extra_delay, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  %10 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %10, i32 96
  %add.ptr1.i.i21 = getelementptr i8, ptr %add.ptr.i.i19, i32 %mul.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i21, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !561
  %12 = and i32 %11, 2147483647
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %masksel77 = select i1 %tobool1.not, i32 0, i32 128
  %l.0.i24 = or i32 %13, %masksel77
  %14 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i6.i25 = getelementptr i8, ptr %14, i32 96
  %add.ptr1.i8.i26 = getelementptr i8, ptr %add.ptr.i6.i25, i32 %mul.i.i
  %add.ptr2.i9.i = getelementptr i8, ptr %add.ptr1.i8.i26, i32 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %l.0.i24) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i, i32 %15) #8, !srcloc !559
  %adv_extra_delay = getelementptr inbounds %struct.gpmc_bool_timings, ptr %p, i32 0, i32 4
  %16 = ptrtoint ptr %adv_extra_delay to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %adv_extra_delay, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  %18 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %18, i32 96
  %add.ptr1.i.i29 = getelementptr i8, ptr %add.ptr.i.i27, i32 %mul.i.i
  %add.ptr2.i.i30 = getelementptr i8, ptr %add.ptr1.i.i29, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i30) #8, !srcloc !561
  %20 = and i32 %19, 2147483647
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %masksel78 = select i1 %tobool2.not, i32 0, i32 128
  %l.0.i33 = or i32 %21, %masksel78
  %22 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i6.i34 = getelementptr i8, ptr %22, i32 96
  %add.ptr1.i8.i35 = getelementptr i8, ptr %add.ptr.i6.i34, i32 %mul.i.i
  %add.ptr2.i9.i36 = getelementptr i8, ptr %add.ptr1.i8.i35, i32 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %l.0.i33) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i36, i32 %23) #8, !srcloc !559
  %oe_extra_delay = getelementptr inbounds %struct.gpmc_bool_timings, ptr %p, i32 0, i32 3
  %24 = ptrtoint ptr %oe_extra_delay to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %oe_extra_delay, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not = icmp eq i8 %25, 0
  %26 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %26, i32 96
  %add.ptr1.i.i39 = getelementptr i8, ptr %add.ptr.i.i37, i32 %mul.i.i
  %add.ptr2.i.i40 = getelementptr i8, ptr %add.ptr1.i.i39, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i40) #8, !srcloc !561
  %28 = and i32 %27, 2147483647
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %masksel79 = select i1 %tobool3.not, i32 0, i32 128
  %l.0.i43 = or i32 %29, %masksel79
  %30 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i6.i44 = getelementptr i8, ptr %30, i32 96
  %add.ptr1.i8.i45 = getelementptr i8, ptr %add.ptr.i6.i44, i32 %mul.i.i
  %add.ptr2.i9.i46 = getelementptr i8, ptr %add.ptr1.i8.i45, i32 12
  %31 = tail call i32 @llvm.bswap.i32(i32 %l.0.i43) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i46, i32 %31) #8, !srcloc !559
  %we_extra_delay = getelementptr inbounds %struct.gpmc_bool_timings, ptr %p, i32 0, i32 2
  %32 = ptrtoint ptr %we_extra_delay to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %we_extra_delay, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool4.not = icmp eq i8 %33, 0
  %34 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %34, i32 96
  %add.ptr1.i.i49 = getelementptr i8, ptr %add.ptr.i.i47, i32 %mul.i.i
  %add.ptr2.i.i50 = getelementptr i8, ptr %add.ptr1.i.i49, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i50) #8, !srcloc !561
  %36 = and i32 %35, -32769
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %masksel80 = select i1 %tobool4.not, i32 0, i32 8388608
  %l.0.i53 = or i32 %37, %masksel80
  %38 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i6.i54 = getelementptr i8, ptr %38, i32 96
  %add.ptr1.i8.i55 = getelementptr i8, ptr %add.ptr.i6.i54, i32 %mul.i.i
  %add.ptr2.i9.i56 = getelementptr i8, ptr %add.ptr1.i8.i55, i32 12
  %39 = tail call i32 @llvm.bswap.i32(i32 %l.0.i53) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i56, i32 %39) #8, !srcloc !559
  %cycle2cyclesamecsen = getelementptr inbounds %struct.gpmc_bool_timings, ptr %p, i32 0, i32 1
  %40 = ptrtoint ptr %cycle2cyclesamecsen to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cycle2cyclesamecsen, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool5.not = icmp eq i8 %41, 0
  %42 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %42, i32 96
  %add.ptr1.i.i59 = getelementptr i8, ptr %add.ptr.i.i57, i32 %mul.i.i
  %add.ptr2.i.i60 = getelementptr i8, ptr %add.ptr1.i.i59, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i60) #8, !srcloc !561
  %44 = and i32 %43, 2147483647
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %masksel81 = select i1 %tobool5.not, i32 0, i32 128
  %l.0.i63 = or i32 %45, %masksel81
  %46 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i6.i64 = getelementptr i8, ptr %46, i32 96
  %add.ptr1.i8.i65 = getelementptr i8, ptr %add.ptr.i6.i64, i32 %mul.i.i
  %add.ptr2.i9.i66 = getelementptr i8, ptr %add.ptr1.i8.i65, i32 20
  %47 = tail call i32 @llvm.bswap.i32(i32 %l.0.i63) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i66, i32 %47) #8, !srcloc !559
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %p, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool6.not = icmp eq i8 %49, 0
  %50 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %50, i32 96
  %add.ptr1.i.i69 = getelementptr i8, ptr %add.ptr.i.i67, i32 %mul.i.i
  %add.ptr2.i.i70 = getelementptr i8, ptr %add.ptr1.i.i69, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i70) #8, !srcloc !561
  %52 = and i32 %51, -1073741825
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %masksel82 = select i1 %tobool6.not, i32 0, i32 64
  %l.0.i73 = or i32 %53, %masksel82
  %54 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i6.i74 = getelementptr i8, ptr %54, i32 96
  %add.ptr1.i8.i75 = getelementptr i8, ptr %add.ptr.i6.i74, i32 %mul.i.i
  %add.ptr2.i9.i76 = getelementptr i8, ptr %add.ptr1.i8.i75, i32 20
  %55 = tail call i32 @llvm.bswap.i32(i32 %l.0.i73) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i76, i32 %55) #8, !srcloc !559
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmc_cs_show_timings(i32 noundef %cs, ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %cs, ptr noundef %desc) #11
  %0 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 96
  %mul.i.i = mul i32 %cs, 48
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #8, !srcloc !561
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %cs, ptr noundef nonnull @.str.125, i32 noundef %2) #11
  %3 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %3, i32 96
  %add.ptr1.i45.i = getelementptr i8, ptr %add.ptr.i43.i, i32 %mul.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i45.i, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !561
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %cs, ptr noundef nonnull @.str.128, i32 noundef %5) #11
  %6 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %6, i32 96
  %add.ptr1.i48.i = getelementptr i8, ptr %add.ptr.i46.i, i32 %mul.i.i
  %add.ptr2.i49.i = getelementptr i8, ptr %add.ptr1.i48.i, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i49.i) #8, !srcloc !561
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %cs, ptr noundef nonnull @.str.131, i32 noundef %8) #11
  %9 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %9, i32 96
  %add.ptr1.i52.i = getelementptr i8, ptr %add.ptr.i50.i, i32 %mul.i.i
  %add.ptr2.i53.i = getelementptr i8, ptr %add.ptr1.i52.i, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i53.i) #8, !srcloc !561
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %cs, ptr noundef nonnull @.str.134, i32 noundef %11) #11
  %12 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %12, i32 96
  %add.ptr1.i56.i = getelementptr i8, ptr %add.ptr.i54.i, i32 %mul.i.i
  %add.ptr2.i57.i = getelementptr i8, ptr %add.ptr1.i56.i, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i57.i) #8, !srcloc !561
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %cs, ptr noundef nonnull @.str.137, i32 noundef %14) #11
  %15 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %15, i32 96
  %add.ptr1.i60.i = getelementptr i8, ptr %add.ptr.i58.i, i32 %mul.i.i
  %add.ptr2.i61.i = getelementptr i8, ptr %add.ptr1.i60.i, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i61.i) #8, !srcloc !561
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %cs, ptr noundef nonnull @.str.140, i32 noundef %17) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %cs) #11
  %18 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %18, i32 96
  %add.ptr1.i.i99 = getelementptr i8, ptr %add.ptr.i.i97, i32 %mul.i.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i99) #8, !srcloc !561
  %20 = lshr i32 %19, 28
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.i, label %entry.get_gpmc_timing_reg.exit_crit_edge, label %if.end11.i

entry.get_gpmc_timing_reg.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit

if.end11.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.75, i32 noundef %and.i, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit

get_gpmc_timing_reg.exit:                         ; preds = %if.end11.i, %entry.get_gpmc_timing_reg.exit_crit_edge
  %21 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %21, i32 96
  %add.ptr1.i.i102 = getelementptr i8, ptr %add.ptr.i.i100, i32 %mul.i.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i102) #8, !srcloc !561
  %23 = lshr i32 %22, 16
  %and.i104 = and i32 %23, 3
  %call29.i107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.76, i32 noundef %and.i104, ptr noundef nonnull @.str.149) #11
  %24 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %24, i32 96
  %add.ptr1.i.i110 = getelementptr i8, ptr %add.ptr.i.i108, i32 %mul.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i110) #8, !srcloc !561
  %26 = lshr i32 %25, 20
  %and.i112 = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i112)
  %cmp.i = icmp ugt i32 %and.i112, 1
  %shl6.i = shl nuw nsw i32 1, %and.i112
  %cond28.i = select i1 %cmp.i, ptr @.str.148, ptr @.str.149
  %call29.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.77, i32 noundef %shl6.i, ptr noundef nonnull %cond28.i) #11
  %27 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %27, i32 96
  %add.ptr1.i.i117 = getelementptr i8, ptr %add.ptr.i.i115, i32 %mul.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i117) #8, !srcloc !561
  %29 = lshr i32 %28, 8
  %and.i119 = and i32 %29, 3
  %call29.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.78, i32 noundef %and.i119, ptr noundef nonnull @.str.149) #11
  %30 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %30, i32 96
  %add.ptr1.i.i125 = getelementptr i8, ptr %add.ptr.i.i123, i32 %mul.i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i125) #8, !srcloc !561
  %32 = lshr i32 %31, 13
  %and.i127 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %cmp9.i128 = icmp eq i32 %and.i127, 0
  br i1 %cmp9.i128, label %get_gpmc_timing_reg.exit.get_gpmc_timing_reg.exit131_crit_edge, label %if.end11.i129

get_gpmc_timing_reg.exit.get_gpmc_timing_reg.exit131_crit_edge: ; preds = %get_gpmc_timing_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit131

if.end11.i129:                                    ; preds = %get_gpmc_timing_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.79, i32 noundef %and.i127, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit131

get_gpmc_timing_reg.exit131:                      ; preds = %if.end11.i129, %get_gpmc_timing_reg.exit.get_gpmc_timing_reg.exit131_crit_edge
  %33 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %33, i32 96
  %add.ptr1.i.i134 = getelementptr i8, ptr %add.ptr.i.i132, i32 %mul.i.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i134) #8, !srcloc !561
  %35 = lshr i32 %34, 14
  %and.i136 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %cmp9.i137 = icmp eq i32 %and.i136, 0
  br i1 %cmp9.i137, label %get_gpmc_timing_reg.exit131.get_gpmc_timing_reg.exit140_crit_edge, label %if.end11.i138

get_gpmc_timing_reg.exit131.get_gpmc_timing_reg.exit140_crit_edge: ; preds = %get_gpmc_timing_reg.exit131
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit140

if.end11.i138:                                    ; preds = %get_gpmc_timing_reg.exit131
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.80, i32 noundef %and.i136, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit140

get_gpmc_timing_reg.exit140:                      ; preds = %if.end11.i138, %get_gpmc_timing_reg.exit131.get_gpmc_timing_reg.exit140_crit_edge
  %36 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %36, i32 96
  %add.ptr1.i.i143 = getelementptr i8, ptr %add.ptr.i.i141, i32 %mul.i.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i143) #8, !srcloc !561
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %shr.i144 = lshr i32 %38, 23
  %and.i145 = and i32 %shr.i144, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i145)
  %cmp.i146 = icmp eq i32 %and.i145, 3
  %shl6.i147 = shl nuw nsw i32 4, %and.i145
  %cond28.i150 = select i1 %cmp.i146, ptr @.str.148, ptr @.str.149
  %call29.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.81, i32 noundef %shl6.i147, ptr noundef nonnull %cond28.i150) #11
  %39 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %39, i32 96
  %add.ptr1.i.i155 = getelementptr i8, ptr %add.ptr.i.i153, i32 %mul.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i155) #8, !srcloc !561
  %41 = lshr i32 %40, 3
  %and.i157 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %cmp9.i158 = icmp eq i32 %and.i157, 0
  br i1 %cmp9.i158, label %get_gpmc_timing_reg.exit140.get_gpmc_timing_reg.exit161_crit_edge, label %if.end11.i159

get_gpmc_timing_reg.exit140.get_gpmc_timing_reg.exit161_crit_edge: ; preds = %get_gpmc_timing_reg.exit140
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit161

if.end11.i159:                                    ; preds = %get_gpmc_timing_reg.exit140
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.82, i32 noundef %and.i157, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit161

get_gpmc_timing_reg.exit161:                      ; preds = %if.end11.i159, %get_gpmc_timing_reg.exit140.get_gpmc_timing_reg.exit161_crit_edge
  %42 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i162 = getelementptr i8, ptr %42, i32 96
  %add.ptr1.i.i164 = getelementptr i8, ptr %add.ptr.i.i162, i32 %mul.i.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i164) #8, !srcloc !561
  %44 = lshr i32 %43, 4
  %and.i166 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %cmp9.i167 = icmp eq i32 %and.i166, 0
  br i1 %cmp9.i167, label %get_gpmc_timing_reg.exit161.get_gpmc_timing_reg.exit170_crit_edge, label %if.end11.i168

get_gpmc_timing_reg.exit161.get_gpmc_timing_reg.exit170_crit_edge: ; preds = %get_gpmc_timing_reg.exit161
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit170

if.end11.i168:                                    ; preds = %get_gpmc_timing_reg.exit161
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.83, i32 noundef %and.i166, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit170

get_gpmc_timing_reg.exit170:                      ; preds = %if.end11.i168, %get_gpmc_timing_reg.exit161.get_gpmc_timing_reg.exit170_crit_edge
  %45 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %45, i32 96
  %add.ptr1.i.i173 = getelementptr i8, ptr %add.ptr.i.i171, i32 %mul.i.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i173) #8, !srcloc !561
  %47 = lshr i32 %46, 5
  %and.i175 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %cmp9.i176 = icmp eq i32 %and.i175, 0
  br i1 %cmp9.i176, label %get_gpmc_timing_reg.exit170.get_gpmc_timing_reg.exit179_crit_edge, label %if.end11.i177

get_gpmc_timing_reg.exit170.get_gpmc_timing_reg.exit179_crit_edge: ; preds = %get_gpmc_timing_reg.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit179

if.end11.i177:                                    ; preds = %get_gpmc_timing_reg.exit170
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.53, i32 noundef %and.i175, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit179

get_gpmc_timing_reg.exit179:                      ; preds = %if.end11.i177, %get_gpmc_timing_reg.exit170.get_gpmc_timing_reg.exit179_crit_edge
  %48 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i180 = getelementptr i8, ptr %48, i32 96
  %add.ptr1.i.i182 = getelementptr i8, ptr %add.ptr.i.i180, i32 %mul.i.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i182) #8, !srcloc !561
  %50 = lshr i32 %49, 6
  %and.i184 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %cmp9.i185 = icmp eq i32 %and.i184, 0
  br i1 %cmp9.i185, label %get_gpmc_timing_reg.exit179.get_gpmc_timing_reg.exit188_crit_edge, label %if.end11.i186

get_gpmc_timing_reg.exit179.get_gpmc_timing_reg.exit188_crit_edge: ; preds = %get_gpmc_timing_reg.exit179
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit188

if.end11.i186:                                    ; preds = %get_gpmc_timing_reg.exit179
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.84, i32 noundef %and.i184, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit188

get_gpmc_timing_reg.exit188:                      ; preds = %if.end11.i186, %get_gpmc_timing_reg.exit179.get_gpmc_timing_reg.exit188_crit_edge
  %51 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i189 = getelementptr i8, ptr %51, i32 96
  %add.ptr1.i.i191 = getelementptr i8, ptr %add.ptr.i.i189, i32 %mul.i.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i191) #8, !srcloc !561
  %53 = lshr i32 %52, 7
  %shr.i192 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i192)
  %cmp9.i193 = icmp eq i32 %shr.i192, 0
  br i1 %cmp9.i193, label %get_gpmc_timing_reg.exit188.get_gpmc_timing_reg.exit196_crit_edge, label %if.end11.i194

get_gpmc_timing_reg.exit188.get_gpmc_timing_reg.exit196_crit_edge: ; preds = %get_gpmc_timing_reg.exit188
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit196

if.end11.i194:                                    ; preds = %get_gpmc_timing_reg.exit188
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.85, i32 noundef %shr.i192, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit196

get_gpmc_timing_reg.exit196:                      ; preds = %if.end11.i194, %get_gpmc_timing_reg.exit188.get_gpmc_timing_reg.exit196_crit_edge
  %54 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %54, i32 96
  %add.ptr1.i.i199 = getelementptr i8, ptr %add.ptr.i.i197, i32 %mul.i.i
  %add.ptr2.i.i200 = getelementptr i8, ptr %add.ptr1.i.i199, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i200) #8, !srcloc !561
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp9.i203 = icmp sgt i32 %55, -1
  br i1 %cmp9.i203, label %get_gpmc_timing_reg.exit196.get_gpmc_timing_reg.exit206_crit_edge, label %if.end11.i204

get_gpmc_timing_reg.exit196.get_gpmc_timing_reg.exit206_crit_edge: ; preds = %get_gpmc_timing_reg.exit196
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit206

if.end11.i204:                                    ; preds = %get_gpmc_timing_reg.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %56 = lshr i32 %55, 31
  %call29.i205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.86, i32 noundef %56, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit206

get_gpmc_timing_reg.exit206:                      ; preds = %if.end11.i204, %get_gpmc_timing_reg.exit196.get_gpmc_timing_reg.exit206_crit_edge
  %57 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i207 = getelementptr i8, ptr %57, i32 96
  %add.ptr1.i.i209 = getelementptr i8, ptr %add.ptr.i.i207, i32 %mul.i.i
  %add.ptr2.i.i210 = getelementptr i8, ptr %add.ptr1.i.i209, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i210) #8, !srcloc !561
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp9.i213 = icmp sgt i32 %58, -1
  br i1 %cmp9.i213, label %get_gpmc_timing_reg.exit206.get_gpmc_timing_reg.exit216_crit_edge, label %if.end11.i214

get_gpmc_timing_reg.exit206.get_gpmc_timing_reg.exit216_crit_edge: ; preds = %get_gpmc_timing_reg.exit206
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit216

if.end11.i214:                                    ; preds = %get_gpmc_timing_reg.exit206
  call void @__sanitizer_cov_trace_pc() #10
  %59 = lshr i32 %58, 31
  %call29.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.87, i32 noundef %59, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit216

get_gpmc_timing_reg.exit216:                      ; preds = %if.end11.i214, %get_gpmc_timing_reg.exit206.get_gpmc_timing_reg.exit216_crit_edge
  %60 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i217 = getelementptr i8, ptr %60, i32 96
  %add.ptr1.i.i219 = getelementptr i8, ptr %add.ptr.i.i217, i32 %mul.i.i
  %add.ptr2.i.i220 = getelementptr i8, ptr %add.ptr1.i.i219, i32 12
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i220) #8, !srcloc !561
  %62 = lshr i32 %61, 15
  %and.i222 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i222)
  %cmp9.i223 = icmp eq i32 %and.i222, 0
  br i1 %cmp9.i223, label %get_gpmc_timing_reg.exit216.get_gpmc_timing_reg.exit226_crit_edge, label %if.end11.i224

get_gpmc_timing_reg.exit216.get_gpmc_timing_reg.exit226_crit_edge: ; preds = %get_gpmc_timing_reg.exit216
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit226

if.end11.i224:                                    ; preds = %get_gpmc_timing_reg.exit216
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.88, i32 noundef %and.i222, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit226

get_gpmc_timing_reg.exit226:                      ; preds = %if.end11.i224, %get_gpmc_timing_reg.exit216.get_gpmc_timing_reg.exit226_crit_edge
  %63 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i227 = getelementptr i8, ptr %63, i32 96
  %add.ptr1.i.i229 = getelementptr i8, ptr %add.ptr.i.i227, i32 %mul.i.i
  %add.ptr2.i.i230 = getelementptr i8, ptr %add.ptr1.i.i229, i32 12
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i230) #8, !srcloc !561
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp9.i233 = icmp sgt i32 %64, -1
  br i1 %cmp9.i233, label %get_gpmc_timing_reg.exit226.get_gpmc_timing_reg.exit236_crit_edge, label %if.end11.i234

get_gpmc_timing_reg.exit226.get_gpmc_timing_reg.exit236_crit_edge: ; preds = %get_gpmc_timing_reg.exit226
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit236

if.end11.i234:                                    ; preds = %get_gpmc_timing_reg.exit226
  call void @__sanitizer_cov_trace_pc() #10
  %65 = lshr i32 %64, 31
  %call29.i235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.89, i32 noundef %65, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit236

get_gpmc_timing_reg.exit236:                      ; preds = %if.end11.i234, %get_gpmc_timing_reg.exit226.get_gpmc_timing_reg.exit236_crit_edge
  %66 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %66, i32 96
  %add.ptr1.i.i239 = getelementptr i8, ptr %add.ptr.i.i237, i32 %mul.i.i
  %add.ptr2.i.i240 = getelementptr i8, ptr %add.ptr1.i.i239, i32 20
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i240) #8, !srcloc !561
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp9.i243 = icmp sgt i32 %67, -1
  br i1 %cmp9.i243, label %get_gpmc_timing_reg.exit236.get_gpmc_timing_reg.exit246_crit_edge, label %if.end11.i244

get_gpmc_timing_reg.exit236.get_gpmc_timing_reg.exit246_crit_edge: ; preds = %get_gpmc_timing_reg.exit236
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit246

if.end11.i244:                                    ; preds = %get_gpmc_timing_reg.exit236
  call void @__sanitizer_cov_trace_pc() #10
  %68 = lshr i32 %67, 31
  %call29.i245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.90, i32 noundef %68, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit246

get_gpmc_timing_reg.exit246:                      ; preds = %if.end11.i244, %get_gpmc_timing_reg.exit236.get_gpmc_timing_reg.exit246_crit_edge
  %69 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i247 = getelementptr i8, ptr %69, i32 96
  %add.ptr1.i.i249 = getelementptr i8, ptr %add.ptr.i.i247, i32 %mul.i.i
  %add.ptr2.i.i250 = getelementptr i8, ptr %add.ptr1.i.i249, i32 20
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i250) #8, !srcloc !561
  %71 = lshr i32 %70, 30
  %and.i252 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252)
  %cmp9.i253 = icmp eq i32 %and.i252, 0
  br i1 %cmp9.i253, label %get_gpmc_timing_reg.exit246.get_gpmc_timing_reg.exit256_crit_edge, label %if.end11.i254

get_gpmc_timing_reg.exit246.get_gpmc_timing_reg.exit256_crit_edge: ; preds = %get_gpmc_timing_reg.exit246
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit256

if.end11.i254:                                    ; preds = %get_gpmc_timing_reg.exit246
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.91, i32 noundef %and.i252, ptr noundef nonnull @.str.149) #11
  br label %get_gpmc_timing_reg.exit256

get_gpmc_timing_reg.exit256:                      ; preds = %if.end11.i254, %get_gpmc_timing_reg.exit246.get_gpmc_timing_reg.exit256_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %cs) #11
  %72 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i257 = getelementptr i8, ptr %72, i32 96
  %add.ptr1.i.i259 = getelementptr i8, ptr %add.ptr.i.i257, i32 %mul.i.i
  %add.ptr2.i.i260 = getelementptr i8, ptr %add.ptr1.i.i259, i32 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i260) #8, !srcloc !561
  %74 = lshr i32 %73, 24
  %and.i261 = and i32 %74, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i261)
  %cmp9.i262 = icmp eq i32 %and.i261, 0
  br i1 %cmp9.i262, label %get_gpmc_timing_reg.exit256.get_gpmc_timing_reg.exit264_crit_edge, label %if.then15.i

get_gpmc_timing_reg.exit256.get_gpmc_timing_reg.exit264_crit_edge: ; preds = %get_gpmc_timing_reg.exit256
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit264

if.then15.i:                                      ; preds = %get_gpmc_timing_reg.exit256
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i = add nsw i32 %and.i261, -1
  %75 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %75) #8
  %div.i.i.i = udiv i32 %call.i.i.i, 1000
  %div1.i.i.i = udiv i32 1000000000, %div.i.i.i
  %mul.i = mul i32 %div1.i.i.i, %sub16.i
  %div.i = udiv i32 %mul.i, 1000
  %add18.i = add nuw nsw i32 %div.i, 1
  br label %get_gpmc_timing_reg.exit264

get_gpmc_timing_reg.exit264:                      ; preds = %if.then15.i, %get_gpmc_timing_reg.exit256.get_gpmc_timing_reg.exit264_crit_edge
  %time_ns_min.0.i = phi i32 [ %add18.i, %if.then15.i ], [ 0, %get_gpmc_timing_reg.exit256.get_gpmc_timing_reg.exit264_crit_edge ]
  %76 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i = tail call i32 @clk_get_rate(ptr noundef %76) #8
  %div.i.i.i.i = udiv i32 %call.i.i.i.i, 1000
  %div1.i.i.i.i = udiv i32 1000000000, %div.i.i.i.i
  %mul.i1.i = mul i32 %div1.i.i.i.i, %and.i261
  %div.i.i = udiv i32 %mul.i1.i, 1000
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.95, i32 noundef %div.i.i, i32 noundef %time_ns_min.0.i, i32 noundef %div.i.i, i32 noundef %and.i261, ptr noundef nonnull @.str.144) #11
  %77 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i265 = getelementptr i8, ptr %77, i32 96
  %add.ptr1.i.i267 = getelementptr i8, ptr %add.ptr.i.i265, i32 %mul.i.i
  %add.ptr2.i.i268 = getelementptr i8, ptr %add.ptr1.i.i267, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i268) #8, !srcloc !561
  %79 = lshr i32 %78, 16
  %and.i270 = and i32 %79, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i270)
  %cmp9.i271 = icmp eq i32 %and.i270, 0
  br i1 %cmp9.i271, label %get_gpmc_timing_reg.exit264.get_gpmc_timing_reg.exit284_crit_edge, label %if.then15.i276

get_gpmc_timing_reg.exit264.get_gpmc_timing_reg.exit284_crit_edge: ; preds = %get_gpmc_timing_reg.exit264
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit284

if.then15.i276:                                   ; preds = %get_gpmc_timing_reg.exit264
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i273 = add nsw i32 %and.i270, -1
  %80 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i742 = tail call i32 @clk_get_rate(ptr noundef %80) #8
  %div.i.i.i743 = udiv i32 %call.i.i.i742, 1000
  %div1.i.i.i744 = udiv i32 1000000000, %div.i.i.i743
  %mul.i745 = mul i32 %div1.i.i.i744, %sub16.i273
  %div.i746 = udiv i32 %mul.i745, 1000
  %add18.i275 = add nuw nsw i32 %div.i746, 1
  br label %get_gpmc_timing_reg.exit284

get_gpmc_timing_reg.exit284:                      ; preds = %if.then15.i276, %get_gpmc_timing_reg.exit264.get_gpmc_timing_reg.exit284_crit_edge
  %time_ns_min.0.i277 = phi i32 [ %add18.i275, %if.then15.i276 ], [ 0, %get_gpmc_timing_reg.exit264.get_gpmc_timing_reg.exit284_crit_edge ]
  %81 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i278 = tail call i32 @clk_get_rate(ptr noundef %81) #8
  %div.i.i.i.i279 = udiv i32 %call.i.i.i.i278, 1000
  %div1.i.i.i.i280 = udiv i32 1000000000, %div.i.i.i.i279
  %mul.i1.i281 = mul i32 %div1.i.i.i.i280, %and.i270
  %div.i.i282 = udiv i32 %mul.i1.i281, 1000
  %call22.i283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.96, i32 noundef %div.i.i282, i32 noundef %time_ns_min.0.i277, i32 noundef %div.i.i282, i32 noundef %and.i270, ptr noundef nonnull @.str.144) #11
  %82 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i285 = getelementptr i8, ptr %82, i32 96
  %add.ptr1.i.i287 = getelementptr i8, ptr %add.ptr.i.i285, i32 %mul.i.i
  %add.ptr2.i.i288 = getelementptr i8, ptr %add.ptr1.i.i287, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i288) #8, !srcloc !561
  %84 = lshr i32 %83, 8
  %and.i290 = and i32 %84, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i290)
  %cmp9.i291 = icmp eq i32 %and.i290, 0
  br i1 %cmp9.i291, label %get_gpmc_timing_reg.exit284.get_gpmc_timing_reg.exit304_crit_edge, label %if.then15.i296

get_gpmc_timing_reg.exit284.get_gpmc_timing_reg.exit304_crit_edge: ; preds = %get_gpmc_timing_reg.exit284
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit304

if.then15.i296:                                   ; preds = %get_gpmc_timing_reg.exit284
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i293 = add nsw i32 %and.i290, -1
  %85 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i747 = tail call i32 @clk_get_rate(ptr noundef %85) #8
  %div.i.i.i748 = udiv i32 %call.i.i.i747, 1000
  %div1.i.i.i749 = udiv i32 1000000000, %div.i.i.i748
  %mul.i750 = mul i32 %div1.i.i.i749, %sub16.i293
  %div.i751 = udiv i32 %mul.i750, 1000
  %add18.i295 = add nuw nsw i32 %div.i751, 1
  br label %get_gpmc_timing_reg.exit304

get_gpmc_timing_reg.exit304:                      ; preds = %if.then15.i296, %get_gpmc_timing_reg.exit284.get_gpmc_timing_reg.exit304_crit_edge
  %time_ns_min.0.i297 = phi i32 [ %add18.i295, %if.then15.i296 ], [ 0, %get_gpmc_timing_reg.exit284.get_gpmc_timing_reg.exit304_crit_edge ]
  %86 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i298 = tail call i32 @clk_get_rate(ptr noundef %86) #8
  %div.i.i.i.i299 = udiv i32 %call.i.i.i.i298, 1000
  %div1.i.i.i.i300 = udiv i32 1000000000, %div.i.i.i.i299
  %mul.i1.i301 = mul i32 %div1.i.i.i.i300, %and.i290
  %div.i.i302 = udiv i32 %mul.i1.i301, 1000
  %call22.i303 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.97, i32 noundef %div.i.i302, i32 noundef %time_ns_min.0.i297, i32 noundef %div.i.i302, i32 noundef %and.i290, ptr noundef nonnull @.str.144) #11
  %87 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %87, i32 96
  %add.ptr1.i.i307 = getelementptr i8, ptr %add.ptr.i.i305, i32 %mul.i.i
  %add.ptr2.i.i308 = getelementptr i8, ptr %add.ptr1.i.i307, i32 8
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i308) #8, !srcloc !561
  %89 = lshr i32 %88, 24
  %and.i309 = and i32 %89, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i309)
  %cmp9.i310 = icmp eq i32 %and.i309, 0
  br i1 %cmp9.i310, label %get_gpmc_timing_reg.exit304.get_gpmc_timing_reg.exit323_crit_edge, label %if.then15.i315

get_gpmc_timing_reg.exit304.get_gpmc_timing_reg.exit323_crit_edge: ; preds = %get_gpmc_timing_reg.exit304
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit323

if.then15.i315:                                   ; preds = %get_gpmc_timing_reg.exit304
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i312 = add nsw i32 %and.i309, -1
  %90 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i752 = tail call i32 @clk_get_rate(ptr noundef %90) #8
  %div.i.i.i753 = udiv i32 %call.i.i.i752, 1000
  %div1.i.i.i754 = udiv i32 1000000000, %div.i.i.i753
  %mul.i755 = mul i32 %div1.i.i.i754, %sub16.i312
  %div.i756 = udiv i32 %mul.i755, 1000
  %add18.i314 = add nuw nsw i32 %div.i756, 1
  br label %get_gpmc_timing_reg.exit323

get_gpmc_timing_reg.exit323:                      ; preds = %if.then15.i315, %get_gpmc_timing_reg.exit304.get_gpmc_timing_reg.exit323_crit_edge
  %time_ns_min.0.i316 = phi i32 [ %add18.i314, %if.then15.i315 ], [ 0, %get_gpmc_timing_reg.exit304.get_gpmc_timing_reg.exit323_crit_edge ]
  %91 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i317 = tail call i32 @clk_get_rate(ptr noundef %91) #8
  %div.i.i.i.i318 = udiv i32 %call.i.i.i.i317, 1000
  %div1.i.i.i.i319 = udiv i32 1000000000, %div.i.i.i.i318
  %mul.i1.i320 = mul i32 %div1.i.i.i.i319, %and.i309
  %div.i.i321 = udiv i32 %mul.i1.i320, 1000
  %call22.i322 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.98, i32 noundef %div.i.i321, i32 noundef %time_ns_min.0.i316, i32 noundef %div.i.i321, i32 noundef %and.i309, ptr noundef nonnull @.str.144) #11
  %92 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i324 = getelementptr i8, ptr %92, i32 96
  %add.ptr1.i.i326 = getelementptr i8, ptr %add.ptr.i.i324, i32 %mul.i.i
  %add.ptr2.i.i327 = getelementptr i8, ptr %add.ptr1.i.i326, i32 8
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i327) #8, !srcloc !561
  %94 = lshr i32 %93, 16
  %and.i329 = and i32 %94, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i329)
  %cmp9.i330 = icmp eq i32 %and.i329, 0
  br i1 %cmp9.i330, label %get_gpmc_timing_reg.exit323.get_gpmc_timing_reg.exit343_crit_edge, label %if.then15.i335

get_gpmc_timing_reg.exit323.get_gpmc_timing_reg.exit343_crit_edge: ; preds = %get_gpmc_timing_reg.exit323
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit343

if.then15.i335:                                   ; preds = %get_gpmc_timing_reg.exit323
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i332 = add nsw i32 %and.i329, -1
  %95 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i757 = tail call i32 @clk_get_rate(ptr noundef %95) #8
  %div.i.i.i758 = udiv i32 %call.i.i.i757, 1000
  %div1.i.i.i759 = udiv i32 1000000000, %div.i.i.i758
  %mul.i760 = mul i32 %div1.i.i.i759, %sub16.i332
  %div.i761 = udiv i32 %mul.i760, 1000
  %add18.i334 = add nuw nsw i32 %div.i761, 1
  br label %get_gpmc_timing_reg.exit343

get_gpmc_timing_reg.exit343:                      ; preds = %if.then15.i335, %get_gpmc_timing_reg.exit323.get_gpmc_timing_reg.exit343_crit_edge
  %time_ns_min.0.i336 = phi i32 [ %add18.i334, %if.then15.i335 ], [ 0, %get_gpmc_timing_reg.exit323.get_gpmc_timing_reg.exit343_crit_edge ]
  %96 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i337 = tail call i32 @clk_get_rate(ptr noundef %96) #8
  %div.i.i.i.i338 = udiv i32 %call.i.i.i.i337, 1000
  %div1.i.i.i.i339 = udiv i32 1000000000, %div.i.i.i.i338
  %mul.i1.i340 = mul i32 %div1.i.i.i.i339, %and.i329
  %div.i.i341 = udiv i32 %mul.i1.i340, 1000
  %call22.i342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.99, i32 noundef %div.i.i341, i32 noundef %time_ns_min.0.i336, i32 noundef %div.i.i341, i32 noundef %and.i329, ptr noundef nonnull @.str.144) #11
  %97 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i344 = getelementptr i8, ptr %97, i32 96
  %add.ptr1.i.i346 = getelementptr i8, ptr %add.ptr.i.i344, i32 %mul.i.i
  %add.ptr2.i.i347 = getelementptr i8, ptr %add.ptr1.i.i346, i32 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i347) #8, !srcloc !561
  %99 = lshr i32 %98, 8
  %and.i349 = and i32 %99, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i349)
  %cmp9.i350 = icmp eq i32 %and.i349, 0
  br i1 %cmp9.i350, label %get_gpmc_timing_reg.exit343.get_gpmc_timing_reg.exit363_crit_edge, label %if.then15.i355

get_gpmc_timing_reg.exit343.get_gpmc_timing_reg.exit363_crit_edge: ; preds = %get_gpmc_timing_reg.exit343
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit363

if.then15.i355:                                   ; preds = %get_gpmc_timing_reg.exit343
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i352 = add nsw i32 %and.i349, -1
  %100 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i762 = tail call i32 @clk_get_rate(ptr noundef %100) #8
  %div.i.i.i763 = udiv i32 %call.i.i.i762, 1000
  %div1.i.i.i764 = udiv i32 1000000000, %div.i.i.i763
  %mul.i765 = mul i32 %div1.i.i.i764, %sub16.i352
  %div.i766 = udiv i32 %mul.i765, 1000
  %add18.i354 = add nuw nsw i32 %div.i766, 1
  br label %get_gpmc_timing_reg.exit363

get_gpmc_timing_reg.exit363:                      ; preds = %if.then15.i355, %get_gpmc_timing_reg.exit343.get_gpmc_timing_reg.exit363_crit_edge
  %time_ns_min.0.i356 = phi i32 [ %add18.i354, %if.then15.i355 ], [ 0, %get_gpmc_timing_reg.exit343.get_gpmc_timing_reg.exit363_crit_edge ]
  %101 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i357 = tail call i32 @clk_get_rate(ptr noundef %101) #8
  %div.i.i.i.i358 = udiv i32 %call.i.i.i.i357, 1000
  %div1.i.i.i.i359 = udiv i32 1000000000, %div.i.i.i.i358
  %mul.i1.i360 = mul i32 %div1.i.i.i.i359, %and.i349
  %div.i.i361 = udiv i32 %mul.i1.i360, 1000
  %call22.i362 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.100, i32 noundef %div.i.i361, i32 noundef %time_ns_min.0.i356, i32 noundef %div.i.i361, i32 noundef %and.i349, ptr noundef nonnull @.str.144) #11
  %102 = load i32, ptr @gpmc_capability, align 4
  %and = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %get_gpmc_timing_reg.exit363.if.end_crit_edge, label %if.then

get_gpmc_timing_reg.exit363.if.end_crit_edge:     ; preds = %get_gpmc_timing_reg.exit363
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %get_gpmc_timing_reg.exit363
  %103 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i364 = getelementptr i8, ptr %103, i32 96
  %add.ptr1.i.i366 = getelementptr i8, ptr %add.ptr.i.i364, i32 %mul.i.i
  %add.ptr2.i.i367 = getelementptr i8, ptr %add.ptr1.i.i366, i32 8
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i367) #8, !srcloc !561
  %105 = lshr i32 %104, 28
  %and.i369 = and i32 %105, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i369)
  %cmp9.i370 = icmp eq i32 %and.i369, 0
  br i1 %cmp9.i370, label %if.then.get_gpmc_timing_reg.exit383_crit_edge, label %if.then15.i375

if.then.get_gpmc_timing_reg.exit383_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit383

if.then15.i375:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i372 = add nsw i32 %and.i369, -1
  %106 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i767 = tail call i32 @clk_get_rate(ptr noundef %106) #8
  %div.i.i.i768 = udiv i32 %call.i.i.i767, 1000
  %div1.i.i.i769 = udiv i32 1000000000, %div.i.i.i768
  %mul.i770 = mul i32 %div1.i.i.i769, %sub16.i372
  %div.i771 = udiv i32 %mul.i770, 1000
  %add18.i374 = add nuw nsw i32 %div.i771, 1
  br label %get_gpmc_timing_reg.exit383

get_gpmc_timing_reg.exit383:                      ; preds = %if.then15.i375, %if.then.get_gpmc_timing_reg.exit383_crit_edge
  %time_ns_min.0.i376 = phi i32 [ %add18.i374, %if.then15.i375 ], [ 0, %if.then.get_gpmc_timing_reg.exit383_crit_edge ]
  %107 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i377 = tail call i32 @clk_get_rate(ptr noundef %107) #8
  %div.i.i.i.i378 = udiv i32 %call.i.i.i.i377, 1000
  %div1.i.i.i.i379 = udiv i32 1000000000, %div.i.i.i.i378
  %mul.i1.i380 = mul i32 %div1.i.i.i.i379, %and.i369
  %div.i.i381 = udiv i32 %mul.i1.i380, 1000
  %call22.i382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.101, i32 noundef %div.i.i381, i32 noundef %time_ns_min.0.i376, i32 noundef %div.i.i381, i32 noundef %and.i369, ptr noundef nonnull @.str.144) #11
  %108 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i384 = getelementptr i8, ptr %108, i32 96
  %add.ptr1.i.i386 = getelementptr i8, ptr %add.ptr.i.i384, i32 %mul.i.i
  %add.ptr2.i.i387 = getelementptr i8, ptr %add.ptr1.i.i386, i32 8
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i387) #8, !srcloc !561
  %and.i389 = and i32 %109, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i389)
  %cmp9.i390 = icmp eq i32 %and.i389, 0
  br i1 %cmp9.i390, label %get_gpmc_timing_reg.exit383.get_gpmc_timing_reg.exit403_crit_edge, label %if.then15.i395

get_gpmc_timing_reg.exit383.get_gpmc_timing_reg.exit403_crit_edge: ; preds = %get_gpmc_timing_reg.exit383
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit403

if.then15.i395:                                   ; preds = %get_gpmc_timing_reg.exit383
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i392 = add nsw i32 %and.i389, -1
  %110 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i772 = tail call i32 @clk_get_rate(ptr noundef %110) #8
  %div.i.i.i773 = udiv i32 %call.i.i.i772, 1000
  %div1.i.i.i774 = udiv i32 1000000000, %div.i.i.i773
  %mul.i775 = mul i32 %div1.i.i.i774, %sub16.i392
  %div.i776 = udiv i32 %mul.i775, 1000
  %add18.i394 = add nuw nsw i32 %div.i776, 1
  br label %get_gpmc_timing_reg.exit403

get_gpmc_timing_reg.exit403:                      ; preds = %if.then15.i395, %get_gpmc_timing_reg.exit383.get_gpmc_timing_reg.exit403_crit_edge
  %time_ns_min.0.i396 = phi i32 [ %add18.i394, %if.then15.i395 ], [ 0, %get_gpmc_timing_reg.exit383.get_gpmc_timing_reg.exit403_crit_edge ]
  %111 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i397 = tail call i32 @clk_get_rate(ptr noundef %111) #8
  %div.i.i.i.i398 = udiv i32 %call.i.i.i.i397, 1000
  %div1.i.i.i.i399 = udiv i32 1000000000, %div.i.i.i.i398
  %mul.i1.i400 = mul i32 %div1.i.i.i.i399, %and.i389
  %div.i.i401 = udiv i32 %mul.i1.i400, 1000
  %call22.i402 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.102, i32 noundef %div.i.i401, i32 noundef %time_ns_min.0.i396, i32 noundef %div.i.i401, i32 noundef %and.i389, ptr noundef nonnull @.str.144) #11
  %112 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i404 = getelementptr i8, ptr %112, i32 96
  %add.ptr1.i.i406 = getelementptr i8, ptr %add.ptr.i.i404, i32 %mul.i.i
  %add.ptr2.i.i407 = getelementptr i8, ptr %add.ptr1.i.i406, i32 8
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i407) #8, !srcloc !561
  %114 = lshr i32 %113, 4
  %and.i409 = and i32 %114, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i409)
  %cmp9.i410 = icmp eq i32 %and.i409, 0
  br i1 %cmp9.i410, label %get_gpmc_timing_reg.exit403.get_gpmc_timing_reg.exit423_crit_edge, label %if.then15.i415

get_gpmc_timing_reg.exit403.get_gpmc_timing_reg.exit423_crit_edge: ; preds = %get_gpmc_timing_reg.exit403
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit423

if.then15.i415:                                   ; preds = %get_gpmc_timing_reg.exit403
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i412 = add nsw i32 %and.i409, -1
  %115 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i777 = tail call i32 @clk_get_rate(ptr noundef %115) #8
  %div.i.i.i778 = udiv i32 %call.i.i.i777, 1000
  %div1.i.i.i779 = udiv i32 1000000000, %div.i.i.i778
  %mul.i780 = mul i32 %div1.i.i.i779, %sub16.i412
  %div.i781 = udiv i32 %mul.i780, 1000
  %add18.i414 = add nuw nsw i32 %div.i781, 1
  br label %get_gpmc_timing_reg.exit423

get_gpmc_timing_reg.exit423:                      ; preds = %if.then15.i415, %get_gpmc_timing_reg.exit403.get_gpmc_timing_reg.exit423_crit_edge
  %time_ns_min.0.i416 = phi i32 [ %add18.i414, %if.then15.i415 ], [ 0, %get_gpmc_timing_reg.exit403.get_gpmc_timing_reg.exit423_crit_edge ]
  %116 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i417 = tail call i32 @clk_get_rate(ptr noundef %116) #8
  %div.i.i.i.i418 = udiv i32 %call.i.i.i.i417, 1000
  %div1.i.i.i.i419 = udiv i32 1000000000, %div.i.i.i.i418
  %mul.i1.i420 = mul i32 %div1.i.i.i.i419, %and.i409
  %div.i.i421 = udiv i32 %mul.i1.i420, 1000
  %call22.i422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.103, i32 noundef %div.i.i421, i32 noundef %time_ns_min.0.i416, i32 noundef %div.i.i421, i32 noundef %and.i409, ptr noundef nonnull @.str.144) #11
  br label %if.end

if.end:                                           ; preds = %get_gpmc_timing_reg.exit423, %get_gpmc_timing_reg.exit363.if.end_crit_edge
  %117 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i424 = getelementptr i8, ptr %117, i32 96
  %add.ptr1.i.i426 = getelementptr i8, ptr %add.ptr.i.i424, i32 %mul.i.i
  %add.ptr2.i.i427 = getelementptr i8, ptr %add.ptr1.i.i426, i32 12
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i427) #8, !srcloc !561
  %119 = lshr i32 %118, 24
  %and.i428 = and i32 %119, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i428)
  %cmp9.i429 = icmp eq i32 %and.i428, 0
  br i1 %cmp9.i429, label %if.end.get_gpmc_timing_reg.exit442_crit_edge, label %if.then15.i434

if.end.get_gpmc_timing_reg.exit442_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit442

if.then15.i434:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i431 = add nsw i32 %and.i428, -1
  %120 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i782 = tail call i32 @clk_get_rate(ptr noundef %120) #8
  %div.i.i.i783 = udiv i32 %call.i.i.i782, 1000
  %div1.i.i.i784 = udiv i32 1000000000, %div.i.i.i783
  %mul.i785 = mul i32 %div1.i.i.i784, %sub16.i431
  %div.i786 = udiv i32 %mul.i785, 1000
  %add18.i433 = add nuw nsw i32 %div.i786, 1
  br label %get_gpmc_timing_reg.exit442

get_gpmc_timing_reg.exit442:                      ; preds = %if.then15.i434, %if.end.get_gpmc_timing_reg.exit442_crit_edge
  %time_ns_min.0.i435 = phi i32 [ %add18.i433, %if.then15.i434 ], [ 0, %if.end.get_gpmc_timing_reg.exit442_crit_edge ]
  %121 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i436 = tail call i32 @clk_get_rate(ptr noundef %121) #8
  %div.i.i.i.i437 = udiv i32 %call.i.i.i.i436, 1000
  %div1.i.i.i.i438 = udiv i32 1000000000, %div.i.i.i.i437
  %mul.i1.i439 = mul i32 %div1.i.i.i.i438, %and.i428
  %div.i.i440 = udiv i32 %mul.i1.i439, 1000
  %call22.i441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.104, i32 noundef %div.i.i440, i32 noundef %time_ns_min.0.i435, i32 noundef %div.i.i440, i32 noundef %and.i428, ptr noundef nonnull @.str.144) #11
  %122 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i443 = getelementptr i8, ptr %122, i32 96
  %add.ptr1.i.i445 = getelementptr i8, ptr %add.ptr.i.i443, i32 %mul.i.i
  %add.ptr2.i.i446 = getelementptr i8, ptr %add.ptr1.i.i445, i32 12
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i446) #8, !srcloc !561
  %124 = lshr i32 %123, 16
  %and.i448 = and i32 %124, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i448)
  %cmp9.i449 = icmp eq i32 %and.i448, 0
  br i1 %cmp9.i449, label %get_gpmc_timing_reg.exit442.get_gpmc_timing_reg.exit462_crit_edge, label %if.then15.i454

get_gpmc_timing_reg.exit442.get_gpmc_timing_reg.exit462_crit_edge: ; preds = %get_gpmc_timing_reg.exit442
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit462

if.then15.i454:                                   ; preds = %get_gpmc_timing_reg.exit442
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i451 = add nsw i32 %and.i448, -1
  %125 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i787 = tail call i32 @clk_get_rate(ptr noundef %125) #8
  %div.i.i.i788 = udiv i32 %call.i.i.i787, 1000
  %div1.i.i.i789 = udiv i32 1000000000, %div.i.i.i788
  %mul.i790 = mul i32 %div1.i.i.i789, %sub16.i451
  %div.i791 = udiv i32 %mul.i790, 1000
  %add18.i453 = add nuw nsw i32 %div.i791, 1
  br label %get_gpmc_timing_reg.exit462

get_gpmc_timing_reg.exit462:                      ; preds = %if.then15.i454, %get_gpmc_timing_reg.exit442.get_gpmc_timing_reg.exit462_crit_edge
  %time_ns_min.0.i455 = phi i32 [ %add18.i453, %if.then15.i454 ], [ 0, %get_gpmc_timing_reg.exit442.get_gpmc_timing_reg.exit462_crit_edge ]
  %126 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i456 = tail call i32 @clk_get_rate(ptr noundef %126) #8
  %div.i.i.i.i457 = udiv i32 %call.i.i.i.i456, 1000
  %div1.i.i.i.i458 = udiv i32 1000000000, %div.i.i.i.i457
  %mul.i1.i459 = mul i32 %div1.i.i.i.i458, %and.i448
  %div.i.i460 = udiv i32 %mul.i1.i459, 1000
  %call22.i461 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.105, i32 noundef %div.i.i460, i32 noundef %time_ns_min.0.i455, i32 noundef %div.i.i460, i32 noundef %and.i448, ptr noundef nonnull @.str.144) #11
  %127 = load i32, ptr @gpmc_capability, align 4
  %and34 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %get_gpmc_timing_reg.exit462.if.end39_crit_edge, label %if.then36

get_gpmc_timing_reg.exit462.if.end39_crit_edge:   ; preds = %get_gpmc_timing_reg.exit462
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %get_gpmc_timing_reg.exit462
  %128 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i463 = getelementptr i8, ptr %128, i32 96
  %add.ptr1.i.i465 = getelementptr i8, ptr %add.ptr.i.i463, i32 %mul.i.i
  %add.ptr2.i.i466 = getelementptr i8, ptr %add.ptr1.i.i465, i32 12
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i466) #8, !srcloc !561
  %130 = lshr i32 %129, 28
  %and.i468 = and i32 %130, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i468)
  %cmp9.i469 = icmp eq i32 %and.i468, 0
  br i1 %cmp9.i469, label %if.then36.get_gpmc_timing_reg.exit482_crit_edge, label %if.then15.i474

if.then36.get_gpmc_timing_reg.exit482_crit_edge:  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit482

if.then15.i474:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i471 = add nsw i32 %and.i468, -1
  %131 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i792 = tail call i32 @clk_get_rate(ptr noundef %131) #8
  %div.i.i.i793 = udiv i32 %call.i.i.i792, 1000
  %div1.i.i.i794 = udiv i32 1000000000, %div.i.i.i793
  %mul.i795 = mul i32 %div1.i.i.i794, %sub16.i471
  %div.i796 = udiv i32 %mul.i795, 1000
  %add18.i473 = add nuw nsw i32 %div.i796, 1
  br label %get_gpmc_timing_reg.exit482

get_gpmc_timing_reg.exit482:                      ; preds = %if.then15.i474, %if.then36.get_gpmc_timing_reg.exit482_crit_edge
  %time_ns_min.0.i475 = phi i32 [ %add18.i473, %if.then15.i474 ], [ 0, %if.then36.get_gpmc_timing_reg.exit482_crit_edge ]
  %132 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i476 = tail call i32 @clk_get_rate(ptr noundef %132) #8
  %div.i.i.i.i477 = udiv i32 %call.i.i.i.i476, 1000
  %div1.i.i.i.i478 = udiv i32 1000000000, %div.i.i.i.i477
  %mul.i1.i479 = mul i32 %div1.i.i.i.i478, %and.i468
  %div.i.i480 = udiv i32 %mul.i1.i479, 1000
  %call22.i481 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.106, i32 noundef %div.i.i480, i32 noundef %time_ns_min.0.i475, i32 noundef %div.i.i480, i32 noundef %and.i468, ptr noundef nonnull @.str.144) #11
  %133 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i483 = getelementptr i8, ptr %133, i32 96
  %add.ptr1.i.i485 = getelementptr i8, ptr %add.ptr.i.i483, i32 %mul.i.i
  %add.ptr2.i.i486 = getelementptr i8, ptr %add.ptr1.i.i485, i32 12
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i486) #8, !srcloc !561
  %135 = lshr i32 %134, 21
  %and.i488 = and i32 %135, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i488)
  %cmp9.i489 = icmp eq i32 %and.i488, 0
  br i1 %cmp9.i489, label %get_gpmc_timing_reg.exit482.get_gpmc_timing_reg.exit502_crit_edge, label %if.then15.i494

get_gpmc_timing_reg.exit482.get_gpmc_timing_reg.exit502_crit_edge: ; preds = %get_gpmc_timing_reg.exit482
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit502

if.then15.i494:                                   ; preds = %get_gpmc_timing_reg.exit482
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i491 = add nsw i32 %and.i488, -1
  %136 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i797 = tail call i32 @clk_get_rate(ptr noundef %136) #8
  %div.i.i.i798 = udiv i32 %call.i.i.i797, 1000
  %div1.i.i.i799 = udiv i32 1000000000, %div.i.i.i798
  %mul.i800 = mul i32 %div1.i.i.i799, %sub16.i491
  %div.i801 = udiv i32 %mul.i800, 1000
  %add18.i493 = add nuw nsw i32 %div.i801, 1
  br label %get_gpmc_timing_reg.exit502

get_gpmc_timing_reg.exit502:                      ; preds = %if.then15.i494, %get_gpmc_timing_reg.exit482.get_gpmc_timing_reg.exit502_crit_edge
  %time_ns_min.0.i495 = phi i32 [ %add18.i493, %if.then15.i494 ], [ 0, %get_gpmc_timing_reg.exit482.get_gpmc_timing_reg.exit502_crit_edge ]
  %137 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i496 = tail call i32 @clk_get_rate(ptr noundef %137) #8
  %div.i.i.i.i497 = udiv i32 %call.i.i.i.i496, 1000
  %div1.i.i.i.i498 = udiv i32 1000000000, %div.i.i.i.i497
  %mul.i1.i499 = mul i32 %div1.i.i.i.i498, %and.i488
  %div.i.i500 = udiv i32 %mul.i1.i499, 1000
  %call22.i501 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.107, i32 noundef %div.i.i500, i32 noundef %time_ns_min.0.i495, i32 noundef %div.i.i500, i32 noundef %and.i488, ptr noundef nonnull @.str.144) #11
  br label %if.end39

if.end39:                                         ; preds = %get_gpmc_timing_reg.exit502, %get_gpmc_timing_reg.exit462.if.end39_crit_edge
  %138 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i503 = getelementptr i8, ptr %138, i32 96
  %add.ptr1.i.i505 = getelementptr i8, ptr %add.ptr.i.i503, i32 %mul.i.i
  %add.ptr2.i.i506 = getelementptr i8, ptr %add.ptr1.i.i505, i32 12
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i506) #8, !srcloc !561
  %140 = lshr i32 %139, 8
  %and.i508 = and i32 %140, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i508)
  %cmp9.i509 = icmp eq i32 %and.i508, 0
  br i1 %cmp9.i509, label %if.end39.get_gpmc_timing_reg.exit522_crit_edge, label %if.then15.i514

if.end39.get_gpmc_timing_reg.exit522_crit_edge:   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit522

if.then15.i514:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i511 = add nsw i32 %and.i508, -1
  %141 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i802 = tail call i32 @clk_get_rate(ptr noundef %141) #8
  %div.i.i.i803 = udiv i32 %call.i.i.i802, 1000
  %div1.i.i.i804 = udiv i32 1000000000, %div.i.i.i803
  %mul.i805 = mul i32 %div1.i.i.i804, %sub16.i511
  %div.i806 = udiv i32 %mul.i805, 1000
  %add18.i513 = add nuw nsw i32 %div.i806, 1
  br label %get_gpmc_timing_reg.exit522

get_gpmc_timing_reg.exit522:                      ; preds = %if.then15.i514, %if.end39.get_gpmc_timing_reg.exit522_crit_edge
  %time_ns_min.0.i515 = phi i32 [ %add18.i513, %if.then15.i514 ], [ 0, %if.end39.get_gpmc_timing_reg.exit522_crit_edge ]
  %142 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i516 = tail call i32 @clk_get_rate(ptr noundef %142) #8
  %div.i.i.i.i517 = udiv i32 %call.i.i.i.i516, 1000
  %div1.i.i.i.i518 = udiv i32 1000000000, %div.i.i.i.i517
  %mul.i1.i519 = mul i32 %div1.i.i.i.i518, %and.i508
  %div.i.i520 = udiv i32 %mul.i1.i519, 1000
  %call22.i521 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.108, i32 noundef %div.i.i520, i32 noundef %time_ns_min.0.i515, i32 noundef %div.i.i520, i32 noundef %and.i508, ptr noundef nonnull @.str.144) #11
  %143 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i523 = getelementptr i8, ptr %143, i32 96
  %add.ptr1.i.i525 = getelementptr i8, ptr %add.ptr.i.i523, i32 %mul.i.i
  %add.ptr2.i.i526 = getelementptr i8, ptr %add.ptr1.i.i525, i32 12
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i526) #8, !srcloc !561
  %and.i528 = and i32 %144, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i528)
  %cmp9.i529 = icmp eq i32 %and.i528, 0
  br i1 %cmp9.i529, label %get_gpmc_timing_reg.exit522.get_gpmc_timing_reg.exit542_crit_edge, label %if.then15.i534

get_gpmc_timing_reg.exit522.get_gpmc_timing_reg.exit542_crit_edge: ; preds = %get_gpmc_timing_reg.exit522
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit542

if.then15.i534:                                   ; preds = %get_gpmc_timing_reg.exit522
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i531 = add nsw i32 %and.i528, -1
  %145 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i807 = tail call i32 @clk_get_rate(ptr noundef %145) #8
  %div.i.i.i808 = udiv i32 %call.i.i.i807, 1000
  %div1.i.i.i809 = udiv i32 1000000000, %div.i.i.i808
  %mul.i810 = mul i32 %div1.i.i.i809, %sub16.i531
  %div.i811 = udiv i32 %mul.i810, 1000
  %add18.i533 = add nuw nsw i32 %div.i811, 1
  br label %get_gpmc_timing_reg.exit542

get_gpmc_timing_reg.exit542:                      ; preds = %if.then15.i534, %get_gpmc_timing_reg.exit522.get_gpmc_timing_reg.exit542_crit_edge
  %time_ns_min.0.i535 = phi i32 [ %add18.i533, %if.then15.i534 ], [ 0, %get_gpmc_timing_reg.exit522.get_gpmc_timing_reg.exit542_crit_edge ]
  %146 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i536 = tail call i32 @clk_get_rate(ptr noundef %146) #8
  %div.i.i.i.i537 = udiv i32 %call.i.i.i.i536, 1000
  %div1.i.i.i.i538 = udiv i32 1000000000, %div.i.i.i.i537
  %mul.i1.i539 = mul i32 %div1.i.i.i.i538, %and.i528
  %div.i.i540 = udiv i32 %mul.i1.i539, 1000
  %call22.i541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.109, i32 noundef %div.i.i540, i32 noundef %time_ns_min.0.i535, i32 noundef %div.i.i540, i32 noundef %and.i528, ptr noundef nonnull @.str.144) #11
  %147 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i543 = getelementptr i8, ptr %147, i32 96
  %add.ptr1.i.i545 = getelementptr i8, ptr %add.ptr.i.i543, i32 %mul.i.i
  %add.ptr2.i.i546 = getelementptr i8, ptr %add.ptr1.i.i545, i32 16
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i546) #8, !srcloc !561
  %149 = lshr i32 %148, 24
  %and.i547 = and i32 %149, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i547)
  %cmp9.i548 = icmp eq i32 %and.i547, 0
  br i1 %cmp9.i548, label %get_gpmc_timing_reg.exit542.get_gpmc_timing_reg.exit561_crit_edge, label %if.then15.i553

get_gpmc_timing_reg.exit542.get_gpmc_timing_reg.exit561_crit_edge: ; preds = %get_gpmc_timing_reg.exit542
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit561

if.then15.i553:                                   ; preds = %get_gpmc_timing_reg.exit542
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i550 = add nsw i32 %and.i547, -1
  %150 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i812 = tail call i32 @clk_get_rate(ptr noundef %150) #8
  %div.i.i.i813 = udiv i32 %call.i.i.i812, 1000
  %div1.i.i.i814 = udiv i32 1000000000, %div.i.i.i813
  %mul.i815 = mul i32 %div1.i.i.i814, %sub16.i550
  %div.i816 = udiv i32 %mul.i815, 1000
  %add18.i552 = add nuw nsw i32 %div.i816, 1
  br label %get_gpmc_timing_reg.exit561

get_gpmc_timing_reg.exit561:                      ; preds = %if.then15.i553, %get_gpmc_timing_reg.exit542.get_gpmc_timing_reg.exit561_crit_edge
  %time_ns_min.0.i554 = phi i32 [ %add18.i552, %if.then15.i553 ], [ 0, %get_gpmc_timing_reg.exit542.get_gpmc_timing_reg.exit561_crit_edge ]
  %151 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i555 = tail call i32 @clk_get_rate(ptr noundef %151) #8
  %div.i.i.i.i556 = udiv i32 %call.i.i.i.i555, 1000
  %div1.i.i.i.i557 = udiv i32 1000000000, %div.i.i.i.i556
  %mul.i1.i558 = mul i32 %div1.i.i.i.i557, %and.i547
  %div.i.i559 = udiv i32 %mul.i1.i558, 1000
  %call22.i560 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.110, i32 noundef %div.i.i559, i32 noundef %time_ns_min.0.i554, i32 noundef %div.i.i559, i32 noundef %and.i547, ptr noundef nonnull @.str.144) #11
  %152 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i562 = getelementptr i8, ptr %152, i32 96
  %add.ptr1.i.i564 = getelementptr i8, ptr %add.ptr.i.i562, i32 %mul.i.i
  %add.ptr2.i.i565 = getelementptr i8, ptr %add.ptr1.i.i564, i32 16
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i565) #8, !srcloc !561
  %154 = lshr i32 %153, 16
  %and.i567 = and i32 %154, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i567)
  %cmp9.i568 = icmp eq i32 %and.i567, 0
  br i1 %cmp9.i568, label %get_gpmc_timing_reg.exit561.get_gpmc_timing_reg.exit581_crit_edge, label %if.then15.i573

get_gpmc_timing_reg.exit561.get_gpmc_timing_reg.exit581_crit_edge: ; preds = %get_gpmc_timing_reg.exit561
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit581

if.then15.i573:                                   ; preds = %get_gpmc_timing_reg.exit561
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i570 = add nsw i32 %and.i567, -1
  %155 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i817 = tail call i32 @clk_get_rate(ptr noundef %155) #8
  %div.i.i.i818 = udiv i32 %call.i.i.i817, 1000
  %div1.i.i.i819 = udiv i32 1000000000, %div.i.i.i818
  %mul.i820 = mul i32 %div1.i.i.i819, %sub16.i570
  %div.i821 = udiv i32 %mul.i820, 1000
  %add18.i572 = add nuw nsw i32 %div.i821, 1
  br label %get_gpmc_timing_reg.exit581

get_gpmc_timing_reg.exit581:                      ; preds = %if.then15.i573, %get_gpmc_timing_reg.exit561.get_gpmc_timing_reg.exit581_crit_edge
  %time_ns_min.0.i574 = phi i32 [ %add18.i572, %if.then15.i573 ], [ 0, %get_gpmc_timing_reg.exit561.get_gpmc_timing_reg.exit581_crit_edge ]
  %156 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i575 = tail call i32 @clk_get_rate(ptr noundef %156) #8
  %div.i.i.i.i576 = udiv i32 %call.i.i.i.i575, 1000
  %div1.i.i.i.i577 = udiv i32 1000000000, %div.i.i.i.i576
  %mul.i1.i578 = mul i32 %div1.i.i.i.i577, %and.i567
  %div.i.i579 = udiv i32 %mul.i1.i578, 1000
  %call22.i580 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.111, i32 noundef %div.i.i579, i32 noundef %time_ns_min.0.i574, i32 noundef %div.i.i579, i32 noundef %and.i567, ptr noundef nonnull @.str.144) #11
  %157 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i582 = getelementptr i8, ptr %157, i32 96
  %add.ptr1.i.i584 = getelementptr i8, ptr %add.ptr.i.i582, i32 %mul.i.i
  %add.ptr2.i.i585 = getelementptr i8, ptr %add.ptr1.i.i584, i32 16
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i585) #8, !srcloc !561
  %159 = lshr i32 %158, 8
  %and.i587 = and i32 %159, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i587)
  %cmp9.i588 = icmp eq i32 %and.i587, 0
  br i1 %cmp9.i588, label %get_gpmc_timing_reg.exit581.get_gpmc_timing_reg.exit601_crit_edge, label %if.then15.i593

get_gpmc_timing_reg.exit581.get_gpmc_timing_reg.exit601_crit_edge: ; preds = %get_gpmc_timing_reg.exit581
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit601

if.then15.i593:                                   ; preds = %get_gpmc_timing_reg.exit581
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i590 = add nsw i32 %and.i587, -1
  %160 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i822 = tail call i32 @clk_get_rate(ptr noundef %160) #8
  %div.i.i.i823 = udiv i32 %call.i.i.i822, 1000
  %div1.i.i.i824 = udiv i32 1000000000, %div.i.i.i823
  %mul.i825 = mul i32 %div1.i.i.i824, %sub16.i590
  %div.i826 = udiv i32 %mul.i825, 1000
  %add18.i592 = add nuw nsw i32 %div.i826, 1
  br label %get_gpmc_timing_reg.exit601

get_gpmc_timing_reg.exit601:                      ; preds = %if.then15.i593, %get_gpmc_timing_reg.exit581.get_gpmc_timing_reg.exit601_crit_edge
  %time_ns_min.0.i594 = phi i32 [ %add18.i592, %if.then15.i593 ], [ 0, %get_gpmc_timing_reg.exit581.get_gpmc_timing_reg.exit601_crit_edge ]
  %161 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i595 = tail call i32 @clk_get_rate(ptr noundef %161) #8
  %div.i.i.i.i596 = udiv i32 %call.i.i.i.i595, 1000
  %div1.i.i.i.i597 = udiv i32 1000000000, %div.i.i.i.i596
  %mul.i1.i598 = mul i32 %div1.i.i.i.i597, %and.i587
  %div.i.i599 = udiv i32 %mul.i1.i598, 1000
  %call22.i600 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.112, i32 noundef %div.i.i599, i32 noundef %time_ns_min.0.i594, i32 noundef %div.i.i599, i32 noundef %and.i587, ptr noundef nonnull @.str.144) #11
  %162 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i602 = getelementptr i8, ptr %162, i32 96
  %add.ptr1.i.i604 = getelementptr i8, ptr %add.ptr.i.i602, i32 %mul.i.i
  %add.ptr2.i.i605 = getelementptr i8, ptr %add.ptr1.i.i604, i32 16
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i605) #8, !srcloc !561
  %and.i607 = and i32 %163, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i607)
  %cmp9.i608 = icmp eq i32 %and.i607, 0
  br i1 %cmp9.i608, label %get_gpmc_timing_reg.exit601.get_gpmc_timing_reg.exit621_crit_edge, label %if.then15.i613

get_gpmc_timing_reg.exit601.get_gpmc_timing_reg.exit621_crit_edge: ; preds = %get_gpmc_timing_reg.exit601
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit621

if.then15.i613:                                   ; preds = %get_gpmc_timing_reg.exit601
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i610 = add nsw i32 %and.i607, -1
  %164 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i827 = tail call i32 @clk_get_rate(ptr noundef %164) #8
  %div.i.i.i828 = udiv i32 %call.i.i.i827, 1000
  %div1.i.i.i829 = udiv i32 1000000000, %div.i.i.i828
  %mul.i830 = mul i32 %div1.i.i.i829, %sub16.i610
  %div.i831 = udiv i32 %mul.i830, 1000
  %add18.i612 = add nuw nsw i32 %div.i831, 1
  br label %get_gpmc_timing_reg.exit621

get_gpmc_timing_reg.exit621:                      ; preds = %if.then15.i613, %get_gpmc_timing_reg.exit601.get_gpmc_timing_reg.exit621_crit_edge
  %time_ns_min.0.i614 = phi i32 [ %add18.i612, %if.then15.i613 ], [ 0, %get_gpmc_timing_reg.exit601.get_gpmc_timing_reg.exit621_crit_edge ]
  %165 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i615 = tail call i32 @clk_get_rate(ptr noundef %165) #8
  %div.i.i.i.i616 = udiv i32 %call.i.i.i.i615, 1000
  %div1.i.i.i.i617 = udiv i32 1000000000, %div.i.i.i.i616
  %mul.i1.i618 = mul i32 %div1.i.i.i.i617, %and.i607
  %div.i.i619 = udiv i32 %mul.i1.i618, 1000
  %call22.i620 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.113, i32 noundef %div.i.i619, i32 noundef %time_ns_min.0.i614, i32 noundef %div.i.i619, i32 noundef %and.i607, ptr noundef nonnull @.str.144) #11
  %166 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i622 = getelementptr i8, ptr %166, i32 96
  %add.ptr1.i.i624 = getelementptr i8, ptr %add.ptr.i.i622, i32 %mul.i.i
  %add.ptr2.i.i625 = getelementptr i8, ptr %add.ptr1.i.i624, i32 20
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i625) #8, !srcloc !561
  %168 = lshr i32 %167, 24
  %and.i626 = and i32 %168, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i626)
  %cmp9.i627 = icmp eq i32 %and.i626, 0
  br i1 %cmp9.i627, label %get_gpmc_timing_reg.exit621.get_gpmc_timing_reg.exit640_crit_edge, label %if.then15.i632

get_gpmc_timing_reg.exit621.get_gpmc_timing_reg.exit640_crit_edge: ; preds = %get_gpmc_timing_reg.exit621
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit640

if.then15.i632:                                   ; preds = %get_gpmc_timing_reg.exit621
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i629 = add nsw i32 %and.i626, -1
  %169 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i832 = tail call i32 @clk_get_rate(ptr noundef %169) #8
  %div.i.i.i833 = udiv i32 %call.i.i.i832, 1000
  %div1.i.i.i834 = udiv i32 1000000000, %div.i.i.i833
  %mul.i835 = mul i32 %div1.i.i.i834, %sub16.i629
  %div.i836 = udiv i32 %mul.i835, 1000
  %add18.i631 = add nuw nsw i32 %div.i836, 1
  br label %get_gpmc_timing_reg.exit640

get_gpmc_timing_reg.exit640:                      ; preds = %if.then15.i632, %get_gpmc_timing_reg.exit621.get_gpmc_timing_reg.exit640_crit_edge
  %time_ns_min.0.i633 = phi i32 [ %add18.i631, %if.then15.i632 ], [ 0, %get_gpmc_timing_reg.exit621.get_gpmc_timing_reg.exit640_crit_edge ]
  %170 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i634 = tail call i32 @clk_get_rate(ptr noundef %170) #8
  %div.i.i.i.i635 = udiv i32 %call.i.i.i.i634, 1000
  %div1.i.i.i.i636 = udiv i32 1000000000, %div.i.i.i.i635
  %mul.i1.i637 = mul i32 %div1.i.i.i.i636, %and.i626
  %div.i.i638 = udiv i32 %mul.i1.i637, 1000
  %call22.i639 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.114, i32 noundef %div.i.i638, i32 noundef %time_ns_min.0.i633, i32 noundef %div.i.i638, i32 noundef %and.i626, ptr noundef nonnull @.str.144) #11
  %171 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i641 = getelementptr i8, ptr %171, i32 96
  %add.ptr1.i.i643 = getelementptr i8, ptr %add.ptr.i.i641, i32 %mul.i.i
  %add.ptr2.i.i644 = getelementptr i8, ptr %add.ptr1.i.i643, i32 20
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i644) #8, !srcloc !561
  %173 = lshr i32 %172, 16
  %and.i646 = and i32 %173, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i646)
  %cmp9.i647 = icmp eq i32 %and.i646, 0
  br i1 %cmp9.i647, label %get_gpmc_timing_reg.exit640.get_gpmc_timing_reg.exit660_crit_edge, label %if.then15.i652

get_gpmc_timing_reg.exit640.get_gpmc_timing_reg.exit660_crit_edge: ; preds = %get_gpmc_timing_reg.exit640
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit660

if.then15.i652:                                   ; preds = %get_gpmc_timing_reg.exit640
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i649 = add nsw i32 %and.i646, -1
  %174 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i837 = tail call i32 @clk_get_rate(ptr noundef %174) #8
  %div.i.i.i838 = udiv i32 %call.i.i.i837, 1000
  %div1.i.i.i839 = udiv i32 1000000000, %div.i.i.i838
  %mul.i840 = mul i32 %div1.i.i.i839, %sub16.i649
  %div.i841 = udiv i32 %mul.i840, 1000
  %add18.i651 = add nuw nsw i32 %div.i841, 1
  br label %get_gpmc_timing_reg.exit660

get_gpmc_timing_reg.exit660:                      ; preds = %if.then15.i652, %get_gpmc_timing_reg.exit640.get_gpmc_timing_reg.exit660_crit_edge
  %time_ns_min.0.i653 = phi i32 [ %add18.i651, %if.then15.i652 ], [ 0, %get_gpmc_timing_reg.exit640.get_gpmc_timing_reg.exit660_crit_edge ]
  %175 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i654 = tail call i32 @clk_get_rate(ptr noundef %175) #8
  %div.i.i.i.i655 = udiv i32 %call.i.i.i.i654, 1000
  %div1.i.i.i.i656 = udiv i32 1000000000, %div.i.i.i.i655
  %mul.i1.i657 = mul i32 %div1.i.i.i.i656, %and.i646
  %div.i.i658 = udiv i32 %mul.i1.i657, 1000
  %call22.i659 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.115, i32 noundef %div.i.i658, i32 noundef %time_ns_min.0.i653, i32 noundef %div.i.i658, i32 noundef %and.i646, ptr noundef nonnull @.str.144) #11
  %176 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i661 = getelementptr i8, ptr %176, i32 96
  %add.ptr1.i.i663 = getelementptr i8, ptr %add.ptr.i.i661, i32 %mul.i.i
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i663) #8, !srcloc !561
  %178 = lshr i32 %177, 10
  %and.i665 = and i32 %178, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i665)
  %cmp.i666 = icmp eq i32 %and.i665, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i665)
  %cmp9.i667 = icmp eq i32 %and.i665, 0
  br i1 %cmp9.i667, label %get_gpmc_timing_reg.exit660.get_gpmc_timing_reg.exit680_crit_edge, label %if.then15.i672

get_gpmc_timing_reg.exit660.get_gpmc_timing_reg.exit680_crit_edge: ; preds = %get_gpmc_timing_reg.exit660
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit680

if.then15.i672:                                   ; preds = %get_gpmc_timing_reg.exit660
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i669 = add nsw i32 %and.i665, -1
  %179 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i842 = tail call i32 @clk_get_rate(ptr noundef %179) #8
  %div.i.i.i843 = udiv i32 %call.i.i.i842, 1000
  %div1.i.i.i844 = udiv i32 1000000000, %div.i.i.i843
  %180 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %180, i32 96
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #8, !srcloc !561
  %182 = lshr i32 %181, 24
  %and.i.i = and i32 %182, 3
  %add.i.i = add nuw nsw i32 %and.i.i, 1
  %mul.i.i846 = mul nuw nsw i32 %div1.i.i.i844, %sub16.i669
  %mul.i847 = mul i32 %mul.i.i846, %add.i.i
  %div.i848 = udiv i32 %mul.i847, 1000
  %add18.i671 = add nuw nsw i32 %div.i848, 1
  br label %get_gpmc_timing_reg.exit680

get_gpmc_timing_reg.exit680:                      ; preds = %if.then15.i672, %get_gpmc_timing_reg.exit660.get_gpmc_timing_reg.exit680_crit_edge
  %time_ns_min.0.i673 = phi i32 [ %add18.i671, %if.then15.i672 ], [ 0, %get_gpmc_timing_reg.exit660.get_gpmc_timing_reg.exit680_crit_edge ]
  %183 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i674 = tail call i32 @clk_get_rate(ptr noundef %183) #8
  %div.i.i.i.i675 = udiv i32 %call.i.i.i.i674, 1000
  %div1.i.i.i.i676 = udiv i32 1000000000, %div.i.i.i.i675
  %184 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %184, i32 96
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i) #8, !srcloc !561
  %186 = lshr i32 %185, 24
  %and.i.i.i = and i32 %186, 3
  %add.i.i.i = add nuw nsw i32 %and.i.i.i, 1
  %mul.i.i.i = mul nuw i32 %div1.i.i.i.i676, %and.i665
  %mul.i1.i677 = mul i32 %mul.i.i.i, %add.i.i.i
  %div.i.i678 = udiv i32 %mul.i1.i677, 1000
  %cond.i = select i1 %cmp.i666, ptr @.str.143, ptr @.str.144
  %call22.i679 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.116, i32 noundef %div.i.i678, i32 noundef %time_ns_min.0.i673, i32 noundef %div.i.i678, i32 noundef %and.i665, ptr noundef nonnull %cond.i) #11
  %187 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i681 = getelementptr i8, ptr %187, i32 96
  %add.ptr1.i.i683 = getelementptr i8, ptr %add.ptr.i.i681, i32 %mul.i.i
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i683) #8, !srcloc !561
  %189 = lshr i32 %188, 1
  %and.i685 = and i32 %189, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i685)
  %cmp.i686 = icmp eq i32 %and.i685, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i685)
  %cmp9.i687 = icmp eq i32 %and.i685, 0
  br i1 %cmp9.i687, label %get_gpmc_timing_reg.exit680.get_gpmc_timing_reg.exit701_crit_edge, label %if.then15.i692

get_gpmc_timing_reg.exit680.get_gpmc_timing_reg.exit701_crit_edge: ; preds = %get_gpmc_timing_reg.exit680
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit701

if.then15.i692:                                   ; preds = %get_gpmc_timing_reg.exit680
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i689 = add nsw i32 %and.i685, -1
  %190 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i849 = tail call i32 @clk_get_rate(ptr noundef %190) #8
  %div.i.i.i850 = udiv i32 %call.i.i.i849, 1000
  %div1.i.i.i851 = udiv i32 1000000000, %div.i.i.i850
  %mul.i852 = mul nuw nsw i32 %div1.i.i.i851, %sub16.i689
  %div.i853 = udiv i32 %mul.i852, 1000
  %add18.i691 = add nuw nsw i32 %div.i853, 1
  br label %get_gpmc_timing_reg.exit701

get_gpmc_timing_reg.exit701:                      ; preds = %if.then15.i692, %get_gpmc_timing_reg.exit680.get_gpmc_timing_reg.exit701_crit_edge
  %time_ns_min.0.i693 = phi i32 [ %add18.i691, %if.then15.i692 ], [ 0, %get_gpmc_timing_reg.exit680.get_gpmc_timing_reg.exit701_crit_edge ]
  %191 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i694 = tail call i32 @clk_get_rate(ptr noundef %191) #8
  %div.i.i.i.i695 = udiv i32 %call.i.i.i.i694, 1000
  %div1.i.i.i.i696 = udiv i32 1000000000, %div.i.i.i.i695
  %mul.i1.i697 = mul nuw i32 %div1.i.i.i.i696, %and.i685
  %div.i.i698 = udiv i32 %mul.i1.i697, 1000
  %cond.i699 = select i1 %cmp.i686, ptr @.str.143, ptr @.str.144
  %call22.i700 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.117, i32 noundef %div.i.i698, i32 noundef %time_ns_min.0.i693, i32 noundef %div.i.i698, i32 noundef %and.i685, ptr noundef nonnull %cond.i699) #11
  %192 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i702 = getelementptr i8, ptr %192, i32 96
  %add.ptr1.i.i704 = getelementptr i8, ptr %add.ptr.i.i702, i32 %mul.i.i
  %add.ptr2.i.i705 = getelementptr i8, ptr %add.ptr1.i.i704, i32 20
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i705) #8, !srcloc !561
  %194 = lshr i32 %193, 8
  %and.i707 = and i32 %194, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i707)
  %cmp9.i708 = icmp eq i32 %and.i707, 0
  br i1 %cmp9.i708, label %get_gpmc_timing_reg.exit701.get_gpmc_timing_reg.exit721_crit_edge, label %if.then15.i713

get_gpmc_timing_reg.exit701.get_gpmc_timing_reg.exit721_crit_edge: ; preds = %get_gpmc_timing_reg.exit701
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit721

if.then15.i713:                                   ; preds = %get_gpmc_timing_reg.exit701
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i710 = add nsw i32 %and.i707, -1
  %195 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i854 = tail call i32 @clk_get_rate(ptr noundef %195) #8
  %div.i.i.i855 = udiv i32 %call.i.i.i854, 1000
  %div1.i.i.i856 = udiv i32 1000000000, %div.i.i.i855
  %mul.i857 = mul i32 %div1.i.i.i856, %sub16.i710
  %div.i858 = udiv i32 %mul.i857, 1000
  %add18.i712 = add nuw nsw i32 %div.i858, 1
  br label %get_gpmc_timing_reg.exit721

get_gpmc_timing_reg.exit721:                      ; preds = %if.then15.i713, %get_gpmc_timing_reg.exit701.get_gpmc_timing_reg.exit721_crit_edge
  %time_ns_min.0.i714 = phi i32 [ %add18.i712, %if.then15.i713 ], [ 0, %get_gpmc_timing_reg.exit701.get_gpmc_timing_reg.exit721_crit_edge ]
  %196 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i715 = tail call i32 @clk_get_rate(ptr noundef %196) #8
  %div.i.i.i.i716 = udiv i32 %call.i.i.i.i715, 1000
  %div1.i.i.i.i717 = udiv i32 1000000000, %div.i.i.i.i716
  %mul.i1.i718 = mul i32 %div1.i.i.i.i717, %and.i707
  %div.i.i719 = udiv i32 %mul.i1.i718, 1000
  %call22.i720 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.118, i32 noundef %div.i.i719, i32 noundef %time_ns_min.0.i714, i32 noundef %div.i.i719, i32 noundef %and.i707, ptr noundef nonnull @.str.144) #11
  %197 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i722 = getelementptr i8, ptr %197, i32 96
  %add.ptr1.i.i724 = getelementptr i8, ptr %add.ptr.i.i722, i32 %mul.i.i
  %add.ptr2.i.i725 = getelementptr i8, ptr %add.ptr1.i.i724, i32 20
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i725) #8, !srcloc !561
  %and.i727 = and i32 %198, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i727)
  %cmp9.i728 = icmp eq i32 %and.i727, 0
  br i1 %cmp9.i728, label %get_gpmc_timing_reg.exit721.get_gpmc_timing_reg.exit741_crit_edge, label %if.then15.i733

get_gpmc_timing_reg.exit721.get_gpmc_timing_reg.exit741_crit_edge: ; preds = %get_gpmc_timing_reg.exit721
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpmc_timing_reg.exit741

if.then15.i733:                                   ; preds = %get_gpmc_timing_reg.exit721
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i730 = add nsw i32 %and.i727, -1
  %199 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i859 = tail call i32 @clk_get_rate(ptr noundef %199) #8
  %div.i.i.i860 = udiv i32 %call.i.i.i859, 1000
  %div1.i.i.i861 = udiv i32 1000000000, %div.i.i.i860
  %mul.i862 = mul i32 %div1.i.i.i861, %sub16.i730
  %div.i863 = udiv i32 %mul.i862, 1000
  %add18.i732 = add nuw nsw i32 %div.i863, 1
  br label %get_gpmc_timing_reg.exit741

get_gpmc_timing_reg.exit741:                      ; preds = %if.then15.i733, %get_gpmc_timing_reg.exit721.get_gpmc_timing_reg.exit741_crit_edge
  %time_ns_min.0.i734 = phi i32 [ %add18.i732, %if.then15.i733 ], [ 0, %get_gpmc_timing_reg.exit721.get_gpmc_timing_reg.exit741_crit_edge ]
  %200 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i735 = tail call i32 @clk_get_rate(ptr noundef %200) #8
  %div.i.i.i.i736 = udiv i32 %call.i.i.i.i735, 1000
  %div1.i.i.i.i737 = udiv i32 1000000000, %div.i.i.i.i736
  %mul.i1.i738 = mul i32 %div1.i.i.i.i737, %and.i727
  %div.i.i739 = udiv i32 %mul.i1.i738, 1000
  %call22.i740 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.119, i32 noundef %div.i.i739, i32 noundef %time_ns_min.0.i734, i32 noundef %div.i.i739, i32 noundef %and.i727, ptr noundef nonnull @.str.144) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_cs_request(i32 noundef %cs, i32 noundef %size, ptr nocapture noundef writeonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs, i32 2
  %0 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cs)
  %cmp.not = icmp ugt i32 %0, %cs
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = add i32 %size, -1
  %shr.i = lshr i32 %sub.i, 23
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %size.addr.0.i = phi i32 [ %shr.i, %if.end ], [ %shr1.i, %do.body.i.do.body.i_crit_edge ]
  %order.0.i = phi i32 [ 23, %if.end ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %shr1.i = lshr i32 %size.addr.0.i, 1
  %inc.i = add nuw nsw i32 %order.0.i, 1
  %tobool.not.i = icmp ult i32 %size.addr.0.i, 2
  br i1 %tobool.not.i, label %gpmc_mem_align.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

gpmc_mem_align.exit:                              ; preds = %do.body.i
  %shl.i = shl i32 2, %order.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %shl.i)
  %cmp2 = icmp ugt i32 %shl.i, 268435456
  br i1 %cmp2, label %gpmc_mem_align.exit.cleanup_crit_edge, label %if.end4

gpmc_mem_align.exit.cleanup_crit_edge:            ; preds = %gpmc_mem_align.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %gpmc_mem_align.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #8
  %flags.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs, i32 1
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end7, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end4
  %3 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 96
  %mul.i.i = mul i32 %cs, 48
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !561
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end7.if.end15_crit_edge, label %if.end11

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end11:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem, align 4
  %neg = sub nsw i32 0, %shl.i
  %and = and i32 %7, %neg
  %call10 = tail call i32 @adjust_resource(ptr noundef %mem, i32 noundef %and, i32 noundef %shl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %if.end11.if.end15_crit_edge, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end11.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %call14 = tail call i32 @allocate_resource(ptr noundef nonnull @gpmc_mem_root, ptr noundef %mem, i32 noundef %shl.i, i32 noundef 0, i32 noundef -1, i32 noundef %shl.i, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 0
  br i1 %cmp16, label %if.end15.out_crit_edge, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end15.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %8 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %8, i32 96
  %add.ptr1.i.i53 = getelementptr i8, ptr %add.ptr.i.i51, i32 %mul.i.i
  %add.ptr2.i.i54 = getelementptr i8, ptr %add.ptr1.i.i53, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i54) #8, !srcloc !561
  %10 = and i32 %9, -1073741825
  %11 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %11, i32 96
  %add.ptr1.i5.i = getelementptr i8, ptr %add.ptr.i3.i, i32 %mul.i.i
  %add.ptr2.i6.i = getelementptr i8, ptr %add.ptr1.i5.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i, i32 %10) #8, !srcloc !559
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem, align 4
  %end.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs, i32 2, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i55 = sub i32 1, %13
  %add.i = add i32 %sub.i55, %15
  %sub.i56 = add i32 %add.i, -1
  %and.i57 = and i32 %sub.i56, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 @release_resource(ptr noundef %mem) #8
  br label %out

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i59 = lshr i32 %13, 24
  %sub1.i = sub i32 0, %add.i
  %16 = lshr i32 %sub1.i, 16
  %17 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %17, i32 96
  %add.ptr1.i.i62 = getelementptr i8, ptr %add.ptr.i.i60, i32 %mul.i.i
  %add.ptr2.i.i63 = getelementptr i8, ptr %add.ptr1.i.i62, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i63) #8, !srcloc !561
  %19 = and i32 %18, -2131689473
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %and4.i = and i32 %shr.i59, 63
  %and5.i = and i32 %16, 3840
  %or.i = or i32 %and4.i, %and5.i
  %or6.i = or i32 %or.i, %20
  %or7.i = or i32 %or6.i, 64
  %21 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %21, i32 96
  %add.ptr1.i21.i = getelementptr i8, ptr %add.ptr.i19.i, i32 %mul.i.i
  %add.ptr2.i22.i = getelementptr i8, ptr %add.ptr1.i21.i, i32 24
  %22 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22.i, i32 %22) #8, !srcloc !559
  %23 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %23, i32 96
  %add.ptr1.i.i66 = getelementptr i8, ptr %add.ptr.i.i64, i32 %mul.i.i
  %add.ptr2.i.i67 = getelementptr i8, ptr %add.ptr1.i.i66, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i67) #8, !srcloc !561
  %25 = or i32 %24, 1073741824
  %26 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i3.i68 = getelementptr i8, ptr %26, i32 96
  %add.ptr1.i5.i69 = getelementptr i8, ptr %add.ptr.i3.i68, i32 %mul.i.i
  %add.ptr2.i6.i70 = getelementptr i8, ptr %add.ptr1.i5.i69, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i70, i32 %25) #8, !srcloc !559
  %27 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem, align 4
  %29 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %base, align 4
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %or.i72 = or i32 %31, 1
  store i32 %or.i72, ptr %flags.i, align 4
  br label %out

out:                                              ; preds = %if.end25, %if.then23, %if.end15.out_crit_edge, %if.end4.out_crit_edge
  %r.2 = phi i32 [ %call14, %if.end15.out_crit_edge ], [ -22, %if.then23 ], [ 0, %if.end25 ], [ -16, %if.end4.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gpmc_mem_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %gpmc_mem_align.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %r.2, %out ], [ -12, %gpmc_mem_align.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpmc_cs_free(i32 noundef %cs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #8
  %0 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cs)
  %cmp.not = icmp ule i32 %0, %cs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs)
  %cmp1 = icmp slt i32 %cs, 0
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false2

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2:                                   ; preds = %entry
  %flags.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs, i32 1
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false2.do.end_crit_edge, label %if.end18

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1022, i32 noundef 9, ptr noundef nonnull @.str.34, i32 noundef %cs) #8
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false2
  %3 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 96
  %mul.i.i = mul i32 %cs, 48
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !561
  %5 = and i32 %4, -1073741825
  %6 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %6, i32 96
  %add.ptr1.i5.i = getelementptr i8, ptr %add.ptr.i3.i, i32 %mul.i.i
  %add.ptr2.i6.i = getelementptr i8, ptr %add.ptr1.i5.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i, i32 %5) #8, !srcloc !559
  %flags = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs, i32 2, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %mem = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs, i32 2
  %call21 = tail call i32 @release_resource(ptr noundef %mem) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %10, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gpmc_mem_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_configure(i32 noundef %cmd, i32 noundef %wval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cmd)
  %cond = icmp eq i32 %cmd, 5
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 80
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !561
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wval)
  %tobool.not = icmp eq i32 %wval, 0
  %2 = and i32 %1, -268435457
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %masksel = select i1 %tobool.not, i32 16, i32 0
  %regval.0 = or i32 %3, %masksel
  %4 = tail call i32 @llvm.bswap.i32(i32 %regval.0) #8
  %5 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %4) #8, !srcloc !559
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gpmc_omap_get_nand_ops(ptr nocapture noundef writeonly %reg, i32 noundef %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cs)
  %cmp.not = icmp ugt i32 %0, %cs
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 124
  %mul = mul i32 %cs, 48
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr2, ptr %reg, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 128
  %add.ptr6 = getelementptr i8, ptr %add.ptr4, i32 %mul
  %gpmc_nand_address = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %gpmc_nand_address to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr6, ptr %gpmc_nand_address, align 4
  %add.ptr8 = getelementptr i8, ptr %1, i32 132
  %add.ptr10 = getelementptr i8, ptr %add.ptr8, i32 %mul
  %gpmc_nand_data = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %gpmc_nand_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr10, ptr %gpmc_nand_data, align 4
  %add.ptr11 = getelementptr i8, ptr %1, i32 480
  %gpmc_prefetch_config1 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %gpmc_prefetch_config1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr11, ptr %gpmc_prefetch_config1, align 4
  %add.ptr12 = getelementptr i8, ptr %1, i32 484
  %gpmc_prefetch_config2 = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 4
  %6 = ptrtoint ptr %gpmc_prefetch_config2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr12, ptr %gpmc_prefetch_config2, align 4
  %add.ptr13 = getelementptr i8, ptr %1, i32 492
  %gpmc_prefetch_control = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 5
  %7 = ptrtoint ptr %gpmc_prefetch_control to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr13, ptr %gpmc_prefetch_control, align 4
  %add.ptr14 = getelementptr i8, ptr %1, i32 496
  %gpmc_prefetch_status = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 6
  %8 = ptrtoint ptr %gpmc_prefetch_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr14, ptr %gpmc_prefetch_status, align 4
  %add.ptr15 = getelementptr i8, ptr %1, i32 500
  %gpmc_ecc_config = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 7
  %9 = ptrtoint ptr %gpmc_ecc_config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr15, ptr %gpmc_ecc_config, align 4
  %add.ptr16 = getelementptr i8, ptr %1, i32 504
  %gpmc_ecc_control = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 8
  %10 = ptrtoint ptr %gpmc_ecc_control to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr16, ptr %gpmc_ecc_control, align 4
  %add.ptr17 = getelementptr i8, ptr %1, i32 508
  %gpmc_ecc_size_config = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 9
  %11 = ptrtoint ptr %gpmc_ecc_size_config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr17, ptr %gpmc_ecc_size_config, align 4
  %add.ptr18 = getelementptr i8, ptr %1, i32 512
  %gpmc_ecc1_result = getelementptr inbounds %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 10
  %12 = ptrtoint ptr %gpmc_ecc1_result to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr18, ptr %gpmc_ecc1_result, align 4
  %add.ptr20 = getelementptr i8, ptr %1, i32 576
  %add.ptr23 = getelementptr i8, ptr %1, i32 580
  %add.ptr27 = getelementptr i8, ptr %1, i32 584
  %add.ptr31 = getelementptr i8, ptr %1, i32 588
  %add.ptr35 = getelementptr i8, ptr %1, i32 768
  %add.ptr39 = getelementptr i8, ptr %1, i32 772
  %add.ptr43 = getelementptr i8, ptr %1, i32 776
  %arrayidx = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr20, ptr %arrayidx, align 4
  %arrayidx26 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 0
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr23, ptr %arrayidx26, align 4
  %arrayidx30 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 0
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr27, ptr %arrayidx30, align 4
  %arrayidx34 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 0
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr31, ptr %arrayidx34, align 4
  %arrayidx38 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 0
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr35, ptr %arrayidx38, align 4
  %arrayidx42 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 0
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr39, ptr %arrayidx42, align 4
  %arrayidx46 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 0
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr43, ptr %arrayidx46, align 4
  %add.ptr22.1 = getelementptr i8, ptr %1, i32 592
  %arrayidx.1 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr22.1, ptr %arrayidx.1, align 4
  %add.ptr25.1 = getelementptr i8, ptr %1, i32 596
  %arrayidx26.1 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr25.1, ptr %arrayidx26.1, align 4
  %add.ptr29.1 = getelementptr i8, ptr %1, i32 600
  %arrayidx30.1 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr29.1, ptr %arrayidx30.1, align 4
  %add.ptr33.1 = getelementptr i8, ptr %1, i32 604
  %arrayidx34.1 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr33.1, ptr %arrayidx34.1, align 4
  %add.ptr37.1 = getelementptr i8, ptr %1, i32 784
  %arrayidx38.1 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr37.1, ptr %arrayidx38.1, align 4
  %add.ptr41.1 = getelementptr i8, ptr %1, i32 788
  %arrayidx42.1 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 1
  %25 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr41.1, ptr %arrayidx42.1, align 4
  %add.ptr45.1 = getelementptr i8, ptr %1, i32 792
  %arrayidx46.1 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr45.1, ptr %arrayidx46.1, align 4
  %add.ptr22.2 = getelementptr i8, ptr %1, i32 608
  %arrayidx.2 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr22.2, ptr %arrayidx.2, align 4
  %add.ptr25.2 = getelementptr i8, ptr %1, i32 612
  %arrayidx26.2 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 2
  %28 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr25.2, ptr %arrayidx26.2, align 4
  %add.ptr29.2 = getelementptr i8, ptr %1, i32 616
  %arrayidx30.2 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr29.2, ptr %arrayidx30.2, align 4
  %add.ptr33.2 = getelementptr i8, ptr %1, i32 620
  %arrayidx34.2 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 2
  %30 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr33.2, ptr %arrayidx34.2, align 4
  %add.ptr37.2 = getelementptr i8, ptr %1, i32 800
  %arrayidx38.2 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 2
  %31 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr37.2, ptr %arrayidx38.2, align 4
  %add.ptr41.2 = getelementptr i8, ptr %1, i32 804
  %arrayidx42.2 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 2
  %32 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr41.2, ptr %arrayidx42.2, align 4
  %add.ptr45.2 = getelementptr i8, ptr %1, i32 808
  %arrayidx46.2 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 2
  %33 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr45.2, ptr %arrayidx46.2, align 4
  %add.ptr22.3 = getelementptr i8, ptr %1, i32 624
  %arrayidx.3 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr22.3, ptr %arrayidx.3, align 4
  %add.ptr25.3 = getelementptr i8, ptr %1, i32 628
  %arrayidx26.3 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 3
  %35 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr25.3, ptr %arrayidx26.3, align 4
  %add.ptr29.3 = getelementptr i8, ptr %1, i32 632
  %arrayidx30.3 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 3
  %36 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr29.3, ptr %arrayidx30.3, align 4
  %add.ptr33.3 = getelementptr i8, ptr %1, i32 636
  %arrayidx34.3 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 3
  %37 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr33.3, ptr %arrayidx34.3, align 4
  %add.ptr37.3 = getelementptr i8, ptr %1, i32 816
  %arrayidx38.3 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 3
  %38 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr37.3, ptr %arrayidx38.3, align 4
  %add.ptr41.3 = getelementptr i8, ptr %1, i32 820
  %arrayidx42.3 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 3
  %39 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr41.3, ptr %arrayidx42.3, align 4
  %add.ptr45.3 = getelementptr i8, ptr %1, i32 824
  %arrayidx46.3 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 3
  %40 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr45.3, ptr %arrayidx46.3, align 4
  %add.ptr22.4 = getelementptr i8, ptr %1, i32 640
  %arrayidx.4 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 4
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr22.4, ptr %arrayidx.4, align 4
  %add.ptr25.4 = getelementptr i8, ptr %1, i32 644
  %arrayidx26.4 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 4
  %42 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr25.4, ptr %arrayidx26.4, align 4
  %add.ptr29.4 = getelementptr i8, ptr %1, i32 648
  %arrayidx30.4 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 4
  %43 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr29.4, ptr %arrayidx30.4, align 4
  %add.ptr33.4 = getelementptr i8, ptr %1, i32 652
  %arrayidx34.4 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 4
  %44 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr33.4, ptr %arrayidx34.4, align 4
  %add.ptr37.4 = getelementptr i8, ptr %1, i32 832
  %arrayidx38.4 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 4
  %45 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr37.4, ptr %arrayidx38.4, align 4
  %add.ptr41.4 = getelementptr i8, ptr %1, i32 836
  %arrayidx42.4 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 4
  %46 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr41.4, ptr %arrayidx42.4, align 4
  %add.ptr45.4 = getelementptr i8, ptr %1, i32 840
  %arrayidx46.4 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 4
  %47 = ptrtoint ptr %arrayidx46.4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr45.4, ptr %arrayidx46.4, align 4
  %add.ptr22.5 = getelementptr i8, ptr %1, i32 656
  %arrayidx.5 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 5
  %48 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr22.5, ptr %arrayidx.5, align 4
  %add.ptr25.5 = getelementptr i8, ptr %1, i32 660
  %arrayidx26.5 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 5
  %49 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr25.5, ptr %arrayidx26.5, align 4
  %add.ptr29.5 = getelementptr i8, ptr %1, i32 664
  %arrayidx30.5 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 5
  %50 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr29.5, ptr %arrayidx30.5, align 4
  %add.ptr33.5 = getelementptr i8, ptr %1, i32 668
  %arrayidx34.5 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 5
  %51 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr33.5, ptr %arrayidx34.5, align 4
  %add.ptr37.5 = getelementptr i8, ptr %1, i32 848
  %arrayidx38.5 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 5
  %52 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr37.5, ptr %arrayidx38.5, align 4
  %add.ptr41.5 = getelementptr i8, ptr %1, i32 852
  %arrayidx42.5 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 5
  %53 = ptrtoint ptr %arrayidx42.5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr41.5, ptr %arrayidx42.5, align 4
  %add.ptr45.5 = getelementptr i8, ptr %1, i32 856
  %arrayidx46.5 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 5
  %54 = ptrtoint ptr %arrayidx46.5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr45.5, ptr %arrayidx46.5, align 4
  %add.ptr22.6 = getelementptr i8, ptr %1, i32 672
  %arrayidx.6 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 6
  %55 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr22.6, ptr %arrayidx.6, align 4
  %add.ptr25.6 = getelementptr i8, ptr %1, i32 676
  %arrayidx26.6 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 6
  %56 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr25.6, ptr %arrayidx26.6, align 4
  %add.ptr29.6 = getelementptr i8, ptr %1, i32 680
  %arrayidx30.6 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 6
  %57 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr29.6, ptr %arrayidx30.6, align 4
  %add.ptr33.6 = getelementptr i8, ptr %1, i32 684
  %arrayidx34.6 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 6
  %58 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr33.6, ptr %arrayidx34.6, align 4
  %add.ptr37.6 = getelementptr i8, ptr %1, i32 864
  %arrayidx38.6 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 6
  %59 = ptrtoint ptr %arrayidx38.6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr37.6, ptr %arrayidx38.6, align 4
  %add.ptr41.6 = getelementptr i8, ptr %1, i32 868
  %arrayidx42.6 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 6
  %60 = ptrtoint ptr %arrayidx42.6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr41.6, ptr %arrayidx42.6, align 4
  %add.ptr45.6 = getelementptr i8, ptr %1, i32 872
  %arrayidx46.6 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 6
  %61 = ptrtoint ptr %arrayidx46.6 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr45.6, ptr %arrayidx46.6, align 4
  %add.ptr22.7 = getelementptr i8, ptr %1, i32 688
  %arrayidx.7 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 11, i32 7
  %62 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr22.7, ptr %arrayidx.7, align 4
  %add.ptr25.7 = getelementptr i8, ptr %1, i32 692
  %arrayidx26.7 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 12, i32 7
  %63 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr25.7, ptr %arrayidx26.7, align 4
  %add.ptr29.7 = getelementptr i8, ptr %1, i32 696
  %arrayidx30.7 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 13, i32 7
  %64 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr29.7, ptr %arrayidx30.7, align 4
  %add.ptr33.7 = getelementptr i8, ptr %1, i32 700
  %arrayidx34.7 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 14, i32 7
  %65 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr33.7, ptr %arrayidx34.7, align 4
  %add.ptr37.7 = getelementptr i8, ptr %1, i32 880
  %arrayidx38.7 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 15, i32 7
  %66 = ptrtoint ptr %arrayidx38.7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr37.7, ptr %arrayidx38.7, align 4
  %add.ptr41.7 = getelementptr i8, ptr %1, i32 884
  %arrayidx42.7 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 16, i32 7
  %67 = ptrtoint ptr %arrayidx42.7 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr41.7, ptr %arrayidx42.7, align 4
  %add.ptr45.7 = getelementptr i8, ptr %1, i32 888
  %arrayidx46.7 = getelementptr %struct.gpmc_nand_regs, ptr %reg, i32 0, i32 17, i32 7
  %68 = ptrtoint ptr %arrayidx46.7 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr45.7, ptr %arrayidx46.7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ @nand_ops, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_omap_onenand_set_timings(ptr nocapture noundef readonly %dev, i32 noundef %cs, i32 noundef %freq, i32 noundef %latency, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  %dev_t.i = alloca %struct.gpmc_device_timings, align 4
  %gpmc_t = alloca %struct.gpmc_timings, align 4
  %gpmc_s = alloca %struct.gpmc_settings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %gpmc_t) #8
  %0 = call ptr @memset(ptr %gpmc_t, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gpmc_s) #8
  %1 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 4
  %2 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 5
  %3 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = call ptr @memset(ptr %gpmc_s, i32 255, i32 24)
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @gpmc_read_settings_dt(ptr noundef %6, ptr noundef nonnull %gpmc_s)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 4, !range !560
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %info, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 1, !range !560
  %sync_write3 = getelementptr inbounds %struct.gpmc_onenand_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %sync_write3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sync_write3, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %burst_len5 = getelementptr inbounds %struct.gpmc_onenand_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %burst_len5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %burst_len5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %dev_t.i) #8
  %16 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %sw.default.i [
    i32 104, label %if.end.sw.epilog.i_crit_edge
    i32 83, label %sw.bb1.i
    i32 66, label %sw.bb2.i
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end.sw.epilog.i_crit_edge
  %t_avdh.0.i = phi i32 [ 7000, %sw.default.i ], [ 2000, %sw.bb2.i ], [ 2000, %sw.bb1.i ], [ 2000, %if.end.sw.epilog.i_crit_edge ]
  %t_ach.0.i = phi i32 [ 9000, %sw.default.i ], [ 6000, %sw.bb2.i ], [ 6000, %sw.bb1.i ], [ 3000, %if.end.sw.epilog.i_crit_edge ]
  %t_aavdh.0.i = phi i32 [ 7000, %sw.default.i ], [ 6000, %sw.bb2.i ], [ 6000, %sw.bb1.i ], [ 6000, %if.end.sw.epilog.i_crit_edge ]
  %t_rdyo.0.i = phi i32 [ 15000, %sw.default.i ], [ 11000, %sw.bb2.i ], [ 9000, %sw.bb1.i ], [ 6000, %if.end.sw.epilog.i_crit_edge ]
  %t_avds.0.i = phi i32 [ 7000, %sw.default.i ], [ 5000, %sw.bb2.i ], [ 4000, %sw.bb1.i ], [ 4000, %if.end.sw.epilog.i_crit_edge ]
  %t_ces.0.i = phi i32 [ 7000, %sw.default.i ], [ 6000, %sw.bb2.i ], [ 5000, %sw.bb1.i ], [ 3000, %if.end.sw.epilog.i_crit_edge ]
  %min_gpmc_clk_period.0.i = phi i32 [ 18500, %sw.default.i ], [ 15000, %sw.bb2.i ], [ 12000, %sw.bb1.i ], [ 9600, %if.end.sw.epilog.i_crit_edge ]
  %17 = call ptr @memset(ptr %dev_t.i, i32 0, i32 112)
  br i1 %tobool9.not, label %if.then.i, label %sw.epilog.i.gpmc_omap_onenand_calc_sync_timings.exit_crit_edge

sw.epilog.i.gpmc_omap_onenand_calc_sync_timings.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_omap_onenand_calc_sync_timings.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %t_avdp_w.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 3
  %18 = ptrtoint ptr %t_avdp_w.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 15000, ptr %t_avdp_w.i, align 4
  %t_wpl3.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 15
  %19 = ptrtoint ptr %t_wpl3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40000, ptr %t_wpl3.i, align 4
  %t_wph4.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 16
  %20 = ptrtoint ptr %t_wph4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 30000, ptr %t_wph4.i, align 4
  %t_aavdh6.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 4
  %21 = ptrtoint ptr %t_aavdh6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %t_aavdh.0.i, ptr %t_aavdh6.i, align 4
  br label %gpmc_omap_onenand_calc_sync_timings.exit

gpmc_omap_onenand_calc_sync_timings.exit:         ; preds = %if.then.i, %sw.epilog.i.gpmc_omap_onenand_calc_sync_timings.exit_crit_edge
  %ce_xdelay.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 32
  %clk.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 18
  %22 = ptrtoint ptr %ce_xdelay.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16843009, ptr %ce_xdelay.i, align 4
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %min_gpmc_clk_period.0.i, ptr %clk.i, align 4
  %t_bacc.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 19
  %24 = ptrtoint ptr %t_bacc.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %min_gpmc_clk_period.0.i, ptr %t_bacc.i, align 4
  %t_ces9.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 20
  %25 = ptrtoint ptr %t_ces9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %t_ces.0.i, ptr %t_ces9.i, align 4
  %t_avds11.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 21
  %26 = ptrtoint ptr %t_avds11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %t_avds.0.i, ptr %t_avds11.i, align 4
  %t_avdh13.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 22
  %27 = ptrtoint ptr %t_avdh13.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %t_avdh.0.i, ptr %t_avdh13.i, align 4
  %t_ach15.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 23
  %28 = ptrtoint ptr %t_ach15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %t_ach.0.i, ptr %t_ach15.i, align 4
  %add.i = add i32 %latency, 1
  %cyc_iaa.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 31
  %29 = ptrtoint ptr %cyc_iaa.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %cyc_iaa.i, align 4
  %t_cez_r.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 11
  %30 = ptrtoint ptr %t_cez_r.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 20000, ptr %t_cez_r.i, align 4
  %t_cez_w.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 12
  %31 = ptrtoint ptr %t_cez_w.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 20000, ptr %t_cez_w.i, align 4
  %cyc_aavdh_oe.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 27
  %32 = ptrtoint ptr %cyc_aavdh_oe.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %cyc_aavdh_oe.i, align 4
  %add18.i = add nuw nsw i32 %min_gpmc_clk_period.0.i, %t_rdyo.0.i
  %t_rdyo19.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t.i, i32 0, i32 24
  %33 = ptrtoint ptr %t_rdyo19.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add18.i, ptr %t_rdyo19.i, align 4
  %call.i = call i32 @gpmc_calc_timings(ptr noundef nonnull %gpmc_t, ptr noundef nonnull %gpmc_s, ptr noundef nonnull %dev_t.i) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %dev_t.i) #8
  %call = call i32 @gpmc_cs_program_settings(i32 noundef %cs, ptr noundef nonnull %gpmc_s)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %gpmc_omap_onenand_calc_sync_timings.exit.cleanup_crit_edge, label %if.end11

gpmc_omap_onenand_calc_sync_timings.exit.cleanup_crit_edge: ; preds = %gpmc_omap_onenand_calc_sync_timings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %gpmc_omap_onenand_calc_sync_timings.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 @gpmc_cs_set_timings(i32 noundef %cs, ptr noundef nonnull %gpmc_t, ptr noundef nonnull %gpmc_s)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %gpmc_omap_onenand_calc_sync_timings.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call, %gpmc_omap_onenand_calc_sync_timings.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gpmc_s) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %gpmc_t) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpmc_read_settings_dt(ptr noundef %np, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 24)
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.53, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i, null
  %sync_read = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %1 = ptrtoint ptr %sync_read to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %sync_read, align 4
  %call.i70 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.54, ptr noundef null) #8
  %tobool.i71 = icmp ne ptr %call.i70, null
  %sync_write = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 5
  %frombool2 = zext i1 %tobool.i71 to i8
  %2 = ptrtoint ptr %sync_write to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool2, ptr %sync_write, align 1
  %device_width = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.55, ptr noundef %device_width, i32 noundef 1, i32 noundef 0) #8
  %mux_add_data = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 10
  %call.i.i72 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.56, ptr noundef %mux_add_data, i32 noundef 1, i32 noundef 0) #8
  %burst_len = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 8
  %call.i.i73 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.57, ptr noundef %burst_len, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i73)
  %tobool.not = icmp sgt i32 %call.i.i73, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %entry
  %call.i74 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.58, ptr noundef null) #8
  %tobool.i75 = icmp ne ptr %call.i74, null
  %frombool7 = zext i1 %tobool.i75 to i8
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool7, ptr %p, align 4
  %call.i76 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.59, ptr noundef null) #8
  %tobool.i77 = icmp ne ptr %call.i76, null
  %burst_read = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 1
  %frombool9 = zext i1 %tobool.i77 to i8
  %4 = ptrtoint ptr %burst_read to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool9, ptr %burst_read, align 1
  %call.i78 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.60, ptr noundef null) #8
  %tobool.i79 = icmp ne ptr %call.i78, null
  %burst_write = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 2
  %frombool11 = zext i1 %tobool.i79 to i8
  %5 = ptrtoint ptr %burst_write to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool11, ptr %burst_write, align 2
  %6 = ptrtoint ptr %burst_read to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %burst_read, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp ne i8 %7, 0
  %brmerge = select i1 %tobool13.not, i1 true, i1 %tobool.i79
  br i1 %brmerge, label %if.then.if.end18_crit_edge, label %do.end

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %wait_pin = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 11
  %call.i.i80 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.63, ptr noundef %wait_pin, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i80)
  %tobool20.not = icmp sgt i32 %call.i.i80, -1
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end43_crit_edge

if.end18.if.end43_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then21:                                        ; preds = %if.end18
  %call.i81 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.64, ptr noundef null) #8
  %tobool.i82 = icmp ne ptr %call.i81, null
  %wait_on_read = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 6
  %frombool23 = zext i1 %tobool.i82 to i8
  %8 = ptrtoint ptr %wait_on_read to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool23, ptr %wait_on_read, align 2
  %call.i83 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.65, ptr noundef null) #8
  %tobool.i84 = icmp ne ptr %call.i83, null
  %wait_on_write = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 7
  %frombool25 = zext i1 %tobool.i84 to i8
  %9 = ptrtoint ptr %wait_on_write to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool25, ptr %wait_on_write, align 1
  %10 = ptrtoint ptr %wait_on_read to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wait_on_read, align 2, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not = icmp ne i8 %11, 0
  %brmerge69 = select i1 %tobool27.not, i1 true, i1 %tobool.i84
  br i1 %brmerge69, label %if.then21.if.end43_crit_edge, label %do.body32

if.then21.if.end43_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.body32:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmc_read_settings_dt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpmc_read_settings_dt, %if.then39)) #8
          to label %if.end43 [label %if.then39], !srcloc !562

if.then39:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpmc_read_settings_dt.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %do.body32, %if.then21.if.end43_crit_edge, %if.end18.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_cs_program_settings(i32 noundef %cs, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_width = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 9
  %0 = ptrtoint ptr %device_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_width, align 4
  %2 = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_nand = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %device_nand to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_nand, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %mux_add_data = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 10
  %6 = ptrtoint ptr %mux_add_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mux_add_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end11_crit_edge, label %do.end8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end8:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %mux_add_data12 = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 10
  %8 = ptrtoint ptr %mux_add_data12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mux_add_data12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp13 = icmp ugt i32 %9, 2
  br i1 %cmp13, label %if.end11.do.end22_crit_edge, label %lor.lhs.false14

if.end11.do.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

lor.lhs.false14:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp16 = icmp eq i32 %9, 1
  br i1 %cmp16, label %land.lhs.true17, label %lor.lhs.false14.if.end25_crit_edge

lor.lhs.false14.if.end25_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true17:                                  ; preds = %lor.lhs.false14
  %10 = load i32, ptr @gpmc_capability, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %land.lhs.true17.do.end22_crit_edge, label %land.lhs.true17.if.end25_crit_edge

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end22:                                         ; preds = %land.lhs.true17.do.end22_crit_edge, %if.end11.do.end22_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true17.if.end25_crit_edge, %lor.lhs.false14.if.end25_crit_edge
  %burst_read = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 1
  %11 = ptrtoint ptr %burst_read to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %burst_read, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp eq i8 %12, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.end25.if.then29_crit_edge

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false27:                                  ; preds = %if.end25
  %burst_write = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 2
  %13 = ptrtoint ptr %burst_write to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %burst_write, align 2, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool28.not = icmp eq i8 %14, 0
  br i1 %tobool28.not, label %lor.lhs.false27.if.end36_crit_edge, label %lor.lhs.false27.if.then29_crit_edge

lor.lhs.false27.if.then29_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false27.if.end36_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then29:                                        ; preds = %lor.lhs.false27.if.then29_crit_edge, %if.end25.if.then29_crit_edge
  %burst_len = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 8
  %15 = ptrtoint ptr %burst_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %burst_len, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %16, label %do.end32 [
    i32 4, label %if.then29.if.end36_crit_edge
    i32 8, label %if.then29.if.end36_crit_edge155
    i32 16, label %if.then29.if.end36_crit_edge156
  ]

if.then29.if.end36_crit_edge156:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then29.if.end36_crit_edge155:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end32:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.40, i32 noundef %16) #11
  br label %cleanup

if.end36:                                         ; preds = %if.then29.if.end36_crit_edge, %if.then29.if.end36_crit_edge155, %if.then29.if.end36_crit_edge156, %lor.lhs.false27.if.end36_crit_edge
  %wait_pin = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 11
  %18 = ptrtoint ptr %wait_pin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wait_pin, align 4
  %20 = load i32, ptr @gpmc_nr_waitpins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp37 = icmp ugt i32 %19, %20
  br i1 %cmp37, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.40, i32 noundef %19) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %sub = shl nuw nsw i32 %1, 12
  %and47 = add nuw nsw i32 %sub, 12288
  %shl = and i32 %and47, 12288
  %sync_read = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 4
  %21 = ptrtoint ptr %sync_read to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sync_read, align 4, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool48.not = icmp eq i8 %22, 0
  %or = or i32 %shl, 536870912
  %spec.select = select i1 %tobool48.not, i32 %shl, i32 %or
  %sync_write = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 5
  %23 = ptrtoint ptr %sync_write to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sync_write, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool51.not = icmp eq i8 %24, 0
  %or53 = or i32 %spec.select, 134217728
  %config1.1 = select i1 %tobool51.not, i32 %spec.select, i32 %or53
  %wait_on_read = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 6
  %25 = ptrtoint ptr %wait_on_read to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wait_on_read, align 2, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool55.not = icmp eq i8 %26, 0
  %or57 = or i32 %config1.1, 4194304
  %config1.2 = select i1 %tobool55.not, i32 %config1.1, i32 %or57
  %wait_on_write = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 7
  %27 = ptrtoint ptr %wait_on_write to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wait_on_write, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool59.not = icmp eq i8 %28, 0
  %or61 = or i32 %config1.2, 2097152
  %config1.3 = select i1 %tobool59.not, i32 %config1.2, i32 %or61
  %29 = select i1 %tobool55.not, i1 %tobool59.not, i1 false
  %and70 = shl i32 %19, 16
  %shl71 = and i32 %and70, 196608
  %or72 = or i32 %config1.3, %shl71
  %config1.4 = select i1 %29, i32 %config1.2, i32 %or72
  %or77 = or i32 %config1.4, 2048
  %spec.select153 = select i1 %tobool3.not, i32 %config1.4, i32 %or77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool80.not = icmp eq i32 %9, 0
  %and83 = shl nuw nsw i32 %9, 8
  %shl84 = and i32 %and83, 768
  %or85 = select i1 %tobool80.not, i32 0, i32 %shl84
  %config1.6 = or i32 %spec.select153, %or85
  %or90 = or i32 %config1.6, 1073741824
  %config1.7 = select i1 %tobool26.not, i32 %config1.6, i32 %or90
  %burst_write92 = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 2
  %30 = ptrtoint ptr %burst_write92 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %burst_write92, align 2, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool93.not = icmp eq i8 %31, 0
  %32 = select i1 %tobool26.not, i1 %tobool93.not, i1 false
  br i1 %32, label %if.end45.if.end109_crit_edge, label %if.then102

if.end45.if.end109_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then102:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %or95 = or i32 %config1.7, 268435456
  %config1.8 = select i1 %tobool93.not, i32 %config1.7, i32 %or95
  %burst_len103 = getelementptr inbounds %struct.gpmc_settings, ptr %p, i32 0, i32 8
  %33 = ptrtoint ptr %burst_len103 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %burst_len103, align 4
  %35 = shl i32 %34, 20
  %shl105 = and i32 %35, 25165824
  %or106 = or i32 %shl105, %config1.8
  %36 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %p, align 4, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool107.not = icmp eq i8 %37, 0
  %cond = select i1 %tobool107.not, i32 0, i32 -2147483648
  %or108 = or i32 %or106, %cond
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.end45.if.end109_crit_edge
  %config1.9 = phi i32 [ %or108, %if.then102 ], [ %config1.7, %if.end45.if.end109_crit_edge ]
  %38 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 96
  %mul.i = mul i32 %cs, 48
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %config1.9) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %39) #8, !srcloc !559
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %do.end41, %do.end32, %do.end22, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -22, %do.end22 ], [ -22, %do.end32 ], [ -22, %do.end41 ], [ 0, %if.end109 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_get_client_irq(i32 noundef %irq_config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpmc_irq_domain, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq_config)
  %cmp = icmp ugt i32 %irq_config, 1
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %0, i32 noundef %irq_config, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %if.end2 ], [ 0, %do.end ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpmc_calc_timings(ptr noundef %gpmc_t, ptr noundef readonly %gpmc_s, ptr noundef readonly %dev_t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gpmc_s, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mux_add_data = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 10
  %0 = ptrtoint ptr %mux_add_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mux_add_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1 = icmp ne i32 %1, 0
  %sync_read = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 4
  %2 = ptrtoint ptr %sync_read to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sync_read, align 4, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.rhs, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.rhs:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sync_write = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 5
  %4 = ptrtoint ptr %sync_write to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sync_write, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4 = icmp ne i8 %5, 0
  br label %if.end

if.end:                                           ; preds = %lor.rhs, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %mux.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %tobool1, %lor.rhs ], [ %tobool1, %if.then.if.end_crit_edge ]
  %sync.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %tobool4, %lor.rhs ], [ true, %if.then.if.end_crit_edge ]
  %6 = call ptr @memset(ptr %gpmc_t, i32 0, i32 112)
  %7 = ptrtoint ptr %dev_t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_t, align 4
  %9 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i = tail call i32 @clk_get_rate(ptr noundef %9) #8
  %div.i.i.i.i = udiv i32 %call.i.i.i.i, 1000
  %div1.i.i.i.i = udiv i32 1000000000, %div.i.i.i.i
  %add.i.i.i = add i32 %8, -1
  %sub.i.i.i = add i32 %add.i.i.i, %div1.i.i.i.i
  %div.i.i.i = udiv i32 %sub.i.i.i, %div1.i.i.i.i
  %10 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %10) #8
  %div.i2.i.i = udiv i32 %call.i.i.i, 1000
  %div1.i.i.i = udiv i32 1000000000, %div.i2.i.i
  %mul.i.i = mul i32 %div1.i.i.i, %div.i.i.i
  %cs_on.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 1
  %11 = ptrtoint ptr %cs_on.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul.i.i, ptr %cs_on.i, align 4
  %t_avdasu.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 1
  %12 = ptrtoint ptr %t_avdasu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t_avdasu.i, align 4
  %t_ce_avd.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 26
  %14 = ptrtoint ptr %t_ce_avd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_ce_avd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %add.i = add i32 %15, %mul.i.i
  %16 = tail call i32 @llvm.umax.i32(i32 %13, i32 %add.i) #8
  %temp.0.i = select i1 %tobool.not.i, i32 %13, i32 %16
  %17 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i1.i = tail call i32 @clk_get_rate(ptr noundef %17) #8
  %div.i.i.i2.i = udiv i32 %call.i.i.i1.i, 1000
  %div1.i.i.i3.i = udiv i32 1000000000, %div.i.i.i2.i
  %add.i.i4.i = add i32 %temp.0.i, -1
  %sub.i.i5.i = add i32 %add.i.i4.i, %div1.i.i.i3.i
  %div.i.i6.i = udiv i32 %sub.i.i5.i, %div1.i.i.i3.i
  %18 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i7.i = tail call i32 @clk_get_rate(ptr noundef %18) #8
  %div.i2.i8.i = udiv i32 %call.i.i7.i, 1000
  %div1.i.i9.i = udiv i32 1000000000, %div.i2.i8.i
  %mul.i10.i = mul i32 %div1.i.i9.i, %div.i.i6.i
  %adv_on.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 4
  %19 = ptrtoint ptr %adv_on.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i10.i, ptr %adv_on.i, align 4
  br i1 %sync.0.off0, label %if.then5.i, label %if.end.gpmc_calc_common_timings.exit_crit_edge

if.end.gpmc_calc_common_timings.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_calc_common_timings.exit

if.then5.i:                                       ; preds = %if.end
  %clk.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 18
  %20 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk.i.i, align 4
  %22 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i.i = tail call i32 @clk_get_rate(ptr noundef %22) #8
  %div.i.i.i.i.i = udiv i32 %call.i.i.i.i.i, 1000
  %div1.i.i.i.i.i = udiv i32 1000000000, %div.i.i.i.i.i
  %add.i.i.i.i = add i32 %21, -1
  %sub.i.i.i.i = add i32 %add.i.i.i.i, %div1.i.i.i.i.i
  %div.i.i.i11.i = udiv i32 %sub.i.i.i.i, %div1.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i.i.i11.i)
  %cmp.i.i.i = icmp ugt i32 %div.i.i.i11.i, 4
  %23 = tail call i32 @llvm.smax.i32(i32 %div.i.i.i11.i, i32 1) #8
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 -1, i32 %23
  %24 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i12.i = tail call i32 @clk_get_rate(ptr noundef %24) #8
  %div.i.i13.i = udiv i32 %call.i.i12.i, 1000
  %div1.i.i14.i = udiv i32 1000000000, %div.i.i13.i
  %mul.i15.i = mul i32 %div1.i.i14.i, %retval.0.i.i.i
  %25 = ptrtoint ptr %gpmc_t to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i15.i, ptr %gpmc_t, align 4
  %t_bacc.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 19
  %26 = ptrtoint ptr %t_bacc.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_bacc.i.i, align 4
  %28 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i.i.i = tail call i32 @clk_get_rate(ptr noundef %28) #8
  %div.i.i.i.i.i.i = udiv i32 %call.i.i.i.i.i.i, 1000
  %div1.i.i.i.i.i.i = udiv i32 1000000000, %div.i.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %mul.i15.i, -1
  %sub.i.i.i.i.i = add i32 %add.i.i.i.i.i, %div1.i.i.i.i.i.i
  %div.i.i.i1.i.i = udiv i32 %sub.i.i.i.i.i, %div1.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i.i.i1.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %div.i.i.i1.i.i, 4
  %29 = tail call i32 @llvm.smax.i32(i32 %div.i.i.i1.i.i, i32 1) #8
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 -1, i32 %29
  %30 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i2.i.i = tail call i32 @clk_get_rate(ptr noundef %30) #8
  %div.i.i7.i.i.i = udiv i32 %call.i.i.i2.i.i, 1000
  %div1.i.i.i3.i.i = udiv i32 1000000000, %div.i.i7.i.i.i
  %add.i.i4.i.i = add i32 %27, -1
  %sub.i.i5.i.i = add i32 %add.i.i4.i.i, %div1.i.i.i3.i.i
  %div.i.i6.i.i = udiv i32 %sub.i.i5.i.i, %div1.i.i.i3.i.i
  %add.i.i16.i = add nsw i32 %retval.0.i.i.i.i, -1
  %sub.i.i17.i = add nsw i32 %add.i.i16.i, %div.i.i6.i.i
  %31 = urem i32 %sub.i.i17.i, %retval.0.i.i.i.i
  %mul.i.i.i = sub i32 %sub.i.i17.i, %31
  %32 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i8.i.i.i = tail call i32 @clk_get_rate(ptr noundef %32) #8
  %div.i.i9.i.i.i = udiv i32 %call.i.i8.i.i.i, 1000
  %div1.i.i10.i.i.i = udiv i32 1000000000, %div.i.i9.i.i.i
  %mul.i.i.i.i = mul i32 %div1.i.i10.i.i.i, %mul.i.i.i
  %page_burst_access.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 16
  %33 = ptrtoint ptr %page_burst_access.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul.i.i.i.i, ptr %page_burst_access.i.i, align 4
  %t_ces.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 20
  %34 = ptrtoint ptr %t_ces.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t_ces.i.i, align 4
  %t_avds.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 21
  %36 = ptrtoint ptr %t_avds.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %t_avds.i.i, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %35, i32 %37) #8
  %39 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i7.i.i = tail call i32 @clk_get_rate(ptr noundef %39) #8
  %div.i.i.i8.i.i = udiv i32 %call.i.i.i7.i.i, 1000
  %div1.i.i.i9.i.i = udiv i32 1000000000, %div.i.i.i8.i.i
  %add.i.i10.i.i = add i32 %38, -1
  %sub.i.i11.i.i = add i32 %add.i.i10.i.i, %div1.i.i.i9.i.i
  %div.i.i12.i.i = udiv i32 %sub.i.i11.i.i, %div1.i.i.i9.i.i
  %40 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i18.i = tail call i32 @clk_get_rate(ptr noundef %40) #8
  %div.i2.i.i.i = udiv i32 %call.i.i.i18.i, 1000
  %div1.i.i.i19.i = udiv i32 1000000000, %div.i2.i.i.i
  %mul.i13.i.i = mul i32 %div1.i.i.i19.i, %div.i.i12.i.i
  %clk_activation.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 23
  %41 = ptrtoint ptr %clk_activation.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.i13.i.i, ptr %clk_activation.i.i, align 4
  %42 = ptrtoint ptr %gpmc_t to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpmc_t, align 4
  %44 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i14.i.i = tail call i32 @clk_get_rate(ptr noundef %44) #8
  %div.i.i.i15.i.i = udiv i32 %call.i.i.i14.i.i, 1000
  %div1.i.i.i16.i.i = udiv i32 1000000000, %div.i.i.i15.i.i
  %add.i.i17.i.i = add i32 %43, -1
  %sub.i.i18.i.i = add i32 %add.i.i17.i.i, %div1.i.i.i16.i.i
  %div.i.i19.i.i = udiv i32 %sub.i.i18.i.i, %div1.i.i.i16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i.i19.i.i)
  %45 = icmp ult i32 %div.i.i19.i.i, 2
  br i1 %45, label %if.end.i.i, label %if.then5.i.gpmc_calc_common_timings.exit_crit_edge

if.then5.i.gpmc_calc_common_timings.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_calc_common_timings.exit

if.end.i.i:                                       ; preds = %if.then5.i
  %ce_xdelay.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 32
  %46 = ptrtoint ptr %ce_xdelay.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ce_xdelay.i.i, align 4, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cs_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 26, i32 5
  %48 = ptrtoint ptr %cs_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %cs_extra_delay.i.i, align 1
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then8.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %avd_xdelay.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 33
  %49 = ptrtoint ptr %avd_xdelay.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %avd_xdelay.i.i, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool10.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool10.not.i.i, label %if.end9.i.i.if.end13.i.i_crit_edge, label %if.then11.i.i

if.end9.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %adv_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 26, i32 4
  %51 = ptrtoint ptr %adv_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %adv_extra_delay.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.end9.i.i.if.end13.i.i_crit_edge
  %oe_xdelay.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 34
  %52 = ptrtoint ptr %oe_xdelay.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %oe_xdelay.i.i, align 2, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool14.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool14.not.i.i, label %if.end13.i.i.if.end17.i.i_crit_edge, label %if.then15.i.i

if.end13.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %oe_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 26, i32 3
  %54 = ptrtoint ptr %oe_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %oe_extra_delay.i.i, align 1
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then15.i.i, %if.end13.i.i.if.end17.i.i_crit_edge
  %we_xdelay.i.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 35
  %55 = ptrtoint ptr %we_xdelay.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %we_xdelay.i.i, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool18.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool18.not.i.i, label %if.end17.i.i.gpmc_calc_common_timings.exit_crit_edge, label %if.then19.i.i

if.end17.i.i.gpmc_calc_common_timings.exit_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_calc_common_timings.exit

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %we_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 26, i32 2
  %57 = ptrtoint ptr %we_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %we_extra_delay.i.i, align 2
  br label %gpmc_calc_common_timings.exit

gpmc_calc_common_timings.exit:                    ; preds = %if.then19.i.i, %if.end17.i.i.gpmc_calc_common_timings.exit_crit_edge, %if.then5.i.gpmc_calc_common_timings.exit_crit_edge, %if.end.gpmc_calc_common_timings.exit_crit_edge
  br i1 %tobool.not, label %if.else23.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %gpmc_calc_common_timings.exit
  %sync_read8 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 4
  %58 = ptrtoint ptr %sync_read8 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sync_read8, align 4, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool9.not = icmp eq i8 %59, 0
  br i1 %tobool9.not, label %land.lhs.true17.critedge47, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %t_avdp_r.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 2
  %60 = ptrtoint ptr %t_avdp_r.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %t_avdp_r.i, align 4
  br i1 %mux.0.off0, label %if.then.i, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %clk_activation.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 23
  %62 = ptrtoint ptr %clk_activation.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %clk_activation.i, align 4
  %t_avdh.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 22
  %64 = ptrtoint ptr %t_avdh.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %t_avdh.i, align 4
  %add.i48 = add i32 %65, %63
  %66 = tail call i32 @llvm.umax.i32(i32 %61, i32 %add.i48) #8
  %67 = ptrtoint ptr %adv_on.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %adv_on.i, align 4
  %69 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i50 = tail call i32 @clk_get_rate(ptr noundef %69) #8
  %div.i.i.i51 = udiv i32 %call.i.i.i50, 1000
  %div1.i.i.i52 = udiv i32 1000000000, %div.i.i.i51
  %add1.i = add i32 %div1.i.i.i52, %68
  %70 = tail call i32 @llvm.umax.i32(i32 %add1.i, i32 %66) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then10.if.end.i_crit_edge
  %temp.0.i53 = phi i32 [ %70, %if.then.i ], [ %61, %if.then10.if.end.i_crit_edge ]
  %71 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i54 = tail call i32 @clk_get_rate(ptr noundef %71) #8
  %div.i.i.i.i55 = udiv i32 %call.i.i.i.i54, 1000
  %div1.i.i.i.i56 = udiv i32 1000000000, %div.i.i.i.i55
  %add.i.i.i57 = add i32 %temp.0.i53, -1
  %sub.i.i.i58 = add i32 %add.i.i.i57, %div1.i.i.i.i56
  %div.i.i1.i = udiv i32 %sub.i.i.i58, %div1.i.i.i.i56
  %72 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i2.i = tail call i32 @clk_get_rate(ptr noundef %72) #8
  %div.i2.i.i59 = udiv i32 %call.i.i2.i, 1000
  %div1.i.i3.i = udiv i32 1000000000, %div.i2.i.i59
  %mul.i.i60 = mul i32 %div1.i.i3.i, %div.i.i1.i
  %adv_rd_off.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 5
  %73 = ptrtoint ptr %adv_rd_off.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul.i.i60, ptr %adv_rd_off.i, align 4
  %t_oeasu.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 5
  %74 = ptrtoint ptr %t_oeasu.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %t_oeasu.i, align 4
  br i1 %mux.0.off0, label %if.then10.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %clk_activation11.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 23
  %76 = ptrtoint ptr %clk_activation11.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %clk_activation11.i, align 4
  %t_ach.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 23
  %78 = ptrtoint ptr %t_ach.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %t_ach.i, align 4
  %add12.i = add i32 %79, %77
  %80 = tail call i32 @llvm.umax.i32(i32 %75, i32 %add12.i) #8
  %cyc_aavdh_oe.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 27
  %81 = ptrtoint ptr %cyc_aavdh_oe.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cyc_aavdh_oe.i, align 4
  %conv.i = zext i8 %82 to i32
  %83 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i4.i = tail call i32 @clk_get_rate(ptr noundef %83) #8
  %div.i.i5.i = udiv i32 %call.i.i4.i, 1000
  %div1.i.i6.i = udiv i32 1000000000, %div.i.i5.i
  %mul.i7.i = mul i32 %div1.i.i6.i, %conv.i
  %add21.i = add i32 %mul.i7.i, %mul.i.i60
  %84 = tail call i32 @llvm.umax.i32(i32 %80, i32 %add21.i) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then10.i, %if.end.i.if.end29.i_crit_edge
  %temp.1.i = phi i32 [ %84, %if.then10.i ], [ %75, %if.end.i.if.end29.i_crit_edge ]
  %85 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i8.i = tail call i32 @clk_get_rate(ptr noundef %85) #8
  %div.i.i.i9.i = udiv i32 %call.i.i.i8.i, 1000
  %div1.i.i.i10.i = udiv i32 1000000000, %div.i.i.i9.i
  %add.i.i11.i = add i32 %temp.1.i, -1
  %sub.i.i12.i = add i32 %add.i.i11.i, %div1.i.i.i10.i
  %div.i.i13.i61 = udiv i32 %sub.i.i12.i, %div1.i.i.i10.i
  %86 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i14.i = tail call i32 @clk_get_rate(ptr noundef %86) #8
  %div.i2.i15.i = udiv i32 %call.i.i14.i, 1000
  %div1.i.i16.i = udiv i32 1000000000, %div.i2.i15.i
  %mul.i17.i = mul i32 %div1.i.i16.i, %div.i.i13.i61
  %oe_on.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 12
  %87 = ptrtoint ptr %oe_on.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul.i17.i, ptr %oe_on.i, align 4
  %t_iaa.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 7
  %88 = ptrtoint ptr %t_iaa.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %t_iaa.i, align 4
  %cyc_iaa.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 31
  %90 = ptrtoint ptr %cyc_iaa.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cyc_iaa.i, align 4
  %92 = ptrtoint ptr %gpmc_t to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gpmc_t, align 4
  %mul.i = mul i32 %93, %91
  %94 = tail call i32 @llvm.umax.i32(i32 %89, i32 %mul.i) #8
  %clk_activation38.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 23
  %95 = ptrtoint ptr %clk_activation38.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clk_activation38.i, align 4
  %add39.i = add i32 %94, %96
  %cyc_oe.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 29
  %97 = ptrtoint ptr %cyc_oe.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %cyc_oe.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool40.not.i = icmp eq i8 %98, 0
  br i1 %tobool40.not.i, label %if.end29.i.if.end54.i_crit_edge, label %if.then41.i

if.end29.i.if.end54.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then41.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv44.i = zext i8 %98 to i32
  %99 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i18.i = tail call i32 @clk_get_rate(ptr noundef %99) #8
  %div.i.i19.i = udiv i32 %call.i.i18.i, 1000
  %div1.i.i20.i = udiv i32 1000000000, %div.i.i19.i
  %mul.i21.i = mul i32 %div1.i.i20.i, %conv44.i
  %add46.i = add i32 %mul.i21.i, %mul.i17.i
  %100 = tail call i32 @llvm.umax.i32(i32 %add39.i, i32 %add46.i) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then41.i, %if.end29.i.if.end54.i_crit_edge
  %temp.2.i = phi i32 [ %100, %if.then41.i ], [ %add39.i, %if.end29.i.if.end54.i_crit_edge ]
  %101 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i22.i = tail call i32 @clk_get_rate(ptr noundef %101) #8
  %div.i.i.i23.i = udiv i32 %call.i.i.i22.i, 1000
  %div1.i.i.i24.i = udiv i32 1000000000, %div.i.i.i23.i
  %add.i.i25.i = add i32 %temp.2.i, -1
  %sub.i.i26.i = add i32 %add.i.i25.i, %div1.i.i.i24.i
  %div.i.i27.i = udiv i32 %sub.i.i26.i, %div1.i.i.i24.i
  %102 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i28.i = tail call i32 @clk_get_rate(ptr noundef %102) #8
  %div.i2.i29.i = udiv i32 %call.i.i28.i, 1000
  %div1.i.i30.i = udiv i32 1000000000, %div.i2.i29.i
  %mul.i31.i = mul i32 %div1.i.i30.i, %div.i.i27.i
  %access.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 17
  %103 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul.i31.i, ptr %access.i, align 4
  %104 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i32.i = tail call i32 @clk_get_rate(ptr noundef %104) #8
  %div.i.i33.i = udiv i32 %call.i.i32.i, 1000
  %div1.i.i34.i = udiv i32 1000000000, %div.i.i33.i
  %add58.i = add i32 %div1.i.i34.i, %mul.i31.i
  %oe_off.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 13
  %105 = ptrtoint ptr %oe_off.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add58.i, ptr %oe_off.i, align 4
  %cs_rd_off.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 2
  %106 = ptrtoint ptr %cs_rd_off.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add58.i, ptr %cs_rd_off.i, align 4
  %t_cez_r.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 11
  %107 = ptrtoint ptr %t_cez_r.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %t_cez_r.i, align 4
  %t_oez.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 13
  %109 = ptrtoint ptr %t_oez.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %t_oez.i, align 4
  %111 = tail call i32 @llvm.umax.i32(i32 %108, i32 %110) #8
  %112 = ptrtoint ptr %gpmc_t to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %gpmc_t, align 4
  %114 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i.i62 = tail call i32 @clk_get_rate(ptr noundef %114) #8
  %div.i.i.i.i.i63 = udiv i32 %call.i.i.i.i.i62, 1000
  %div1.i.i.i.i.i64 = udiv i32 1000000000, %div.i.i.i.i.i63
  %add.i.i.i.i65 = add i32 %113, -1
  %sub.i.i.i.i66 = add i32 %add.i.i.i.i65, %div1.i.i.i.i.i64
  %div.i.i.i35.i = udiv i32 %sub.i.i.i.i66, %div1.i.i.i.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i.i.i35.i)
  %cmp.i.i.i67 = icmp ugt i32 %div.i.i.i35.i, 4
  %115 = tail call i32 @llvm.smax.i32(i32 %div.i.i.i35.i, i32 1) #8
  %retval.0.i.i.i68 = select i1 %cmp.i.i.i67, i32 -1, i32 %115
  %116 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i36.i = tail call i32 @clk_get_rate(ptr noundef %116) #8
  %div.i.i7.i.i = udiv i32 %call.i.i.i36.i, 1000
  %div1.i.i.i37.i = udiv i32 1000000000, %div.i.i7.i.i
  %add.i.i38.i = add i32 %111, -1
  %sub.i.i39.i = add i32 %add.i.i38.i, %div1.i.i.i37.i
  %div.i.i40.i = udiv i32 %sub.i.i39.i, %div1.i.i.i37.i
  %add.i.i = add nsw i32 %retval.0.i.i.i68, -1
  %sub.i.i = add nsw i32 %add.i.i, %div.i.i40.i
  %117 = urem i32 %sub.i.i, %retval.0.i.i.i68
  %mul.i41.i = sub i32 %sub.i.i, %117
  %118 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i8.i.i = tail call i32 @clk_get_rate(ptr noundef %118) #8
  %div.i.i9.i.i = udiv i32 %call.i.i8.i.i, 1000
  %div1.i.i10.i.i = udiv i32 1000000000, %div.i.i9.i.i
  %mul.i.i.i69 = mul i32 %div1.i.i10.i.i, %mul.i41.i
  %119 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %access.i, align 4
  %add70.i = add i32 %mul.i.i.i69, %120
  %t_ce_rdyz.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 25
  %121 = ptrtoint ptr %t_ce_rdyz.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %t_ce_rdyz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool71.not.i = icmp eq i32 %122, 0
  br i1 %tobool71.not.i, label %if.end54.i.gpmc_calc_sync_read_timings.exit_crit_edge, label %if.then72.i

if.end54.i.gpmc_calc_sync_read_timings.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_calc_sync_read_timings.exit

if.then72.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %cs_rd_off.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cs_rd_off.i, align 4
  %add75.i = add i32 %124, %122
  %125 = tail call i32 @llvm.umax.i32(i32 %add70.i, i32 %add75.i) #8
  br label %gpmc_calc_sync_read_timings.exit

gpmc_calc_sync_read_timings.exit:                 ; preds = %if.then72.i, %if.end54.i.gpmc_calc_sync_read_timings.exit_crit_edge
  %temp.3.i = phi i32 [ %125, %if.then72.i ], [ %add70.i, %if.end54.i.gpmc_calc_sync_read_timings.exit_crit_edge ]
  %126 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i42.i = tail call i32 @clk_get_rate(ptr noundef %126) #8
  %div.i.i.i43.i = udiv i32 %call.i.i.i42.i, 1000
  %div1.i.i.i44.i = udiv i32 1000000000, %div.i.i.i43.i
  %add.i.i45.i = add i32 %temp.3.i, -1
  %sub.i.i46.i = add i32 %add.i.i45.i, %div1.i.i.i44.i
  %div.i.i47.i = udiv i32 %sub.i.i46.i, %div1.i.i.i44.i
  %127 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i48.i = tail call i32 @clk_get_rate(ptr noundef %127) #8
  %div.i2.i49.i = udiv i32 %call.i.i48.i, 1000
  %div1.i.i50.i = udiv i32 1000000000, %div.i2.i49.i
  %mul.i51.i = mul i32 %div1.i.i50.i, %div.i.i47.i
  %rd_cycle.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 18
  %128 = ptrtoint ptr %rd_cycle.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %mul.i51.i, ptr %rd_cycle.i, align 4
  br label %land.lhs.true17

land.lhs.true17.critedge47:                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @gpmc_calc_async_read_timings(ptr noundef %gpmc_t, ptr noundef %dev_t, i1 noundef zeroext %mux.0.off0)
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true17.critedge47, %gpmc_calc_sync_read_timings.exit
  %sync_write18 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s, i32 0, i32 5
  %129 = ptrtoint ptr %sync_write18 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %sync_write18, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool19.not = icmp eq i8 %130, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.else23_crit_edge, label %if.then20

land.lhs.true17.if.else23_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else23

if.then20:                                        ; preds = %land.lhs.true17
  %t_avdp_w.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 3
  %131 = ptrtoint ptr %t_avdp_w.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %t_avdp_w.i, align 4
  br i1 %mux.0.off0, label %if.then.i78, label %if.then20.if.end.i90_crit_edge

if.then20.if.end.i90_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i90

if.then.i78:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %clk_activation.i70 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 23
  %133 = ptrtoint ptr %clk_activation.i70 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %clk_activation.i70, align 4
  %t_avdh.i71 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 22
  %135 = ptrtoint ptr %t_avdh.i71 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %t_avdh.i71, align 4
  %add.i72 = add i32 %136, %134
  %137 = tail call i32 @llvm.umax.i32(i32 %132, i32 %add.i72) #8
  %138 = ptrtoint ptr %adv_on.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %adv_on.i, align 4
  %140 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i74 = tail call i32 @clk_get_rate(ptr noundef %140) #8
  %div.i.i.i75 = udiv i32 %call.i.i.i74, 1000
  %div1.i.i.i76 = udiv i32 1000000000, %div.i.i.i75
  %add1.i77 = add i32 %div1.i.i.i76, %139
  %141 = tail call i32 @llvm.umax.i32(i32 %add1.i77, i32 %137) #8
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.then.i78, %if.then20.if.end.i90_crit_edge
  %temp.0.i79 = phi i32 [ %141, %if.then.i78 ], [ %132, %if.then20.if.end.i90_crit_edge ]
  %142 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i80 = tail call i32 @clk_get_rate(ptr noundef %142) #8
  %div.i.i.i.i81 = udiv i32 %call.i.i.i.i80, 1000
  %div1.i.i.i.i82 = udiv i32 1000000000, %div.i.i.i.i81
  %add.i.i.i83 = add i32 %temp.0.i79, -1
  %sub.i.i.i84 = add i32 %add.i.i.i83, %div1.i.i.i.i82
  %div.i.i1.i85 = udiv i32 %sub.i.i.i84, %div1.i.i.i.i82
  %143 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i2.i86 = tail call i32 @clk_get_rate(ptr noundef %143) #8
  %div.i2.i.i87 = udiv i32 %call.i.i2.i86, 1000
  %div1.i.i3.i88 = udiv i32 1000000000, %div.i2.i.i87
  %mul.i.i89 = mul i32 %div1.i.i3.i88, %div.i.i1.i85
  %adv_wr_off.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 6
  %144 = ptrtoint ptr %adv_wr_off.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %mul.i.i89, ptr %adv_wr_off.i, align 4
  %t_weasu.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 14
  %145 = ptrtoint ptr %t_weasu.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %t_weasu.i, align 4
  %clk_activation9.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 23
  %147 = ptrtoint ptr %clk_activation9.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %clk_activation9.i, align 4
  %t_rdyo.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 24
  %149 = ptrtoint ptr %t_rdyo.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %t_rdyo.i, align 4
  %add10.i = add i32 %150, %148
  %151 = tail call i32 @llvm.umax.i32(i32 %146, i32 %add10.i) #8
  br i1 %mux.0.off0, label %if.then18.i, label %if.end.i90.if.end37.i_crit_edge

if.end.i90.if.end37.i_crit_edge:                  ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then18.i:                                      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  %t_aavdh.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 4
  %152 = ptrtoint ptr %t_aavdh.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %t_aavdh.i, align 4
  %add20.i = add i32 %153, %mul.i.i89
  %154 = tail call i32 @llvm.umax.i32(i32 %151, i32 %add20.i) #8
  %cyc_aavdh_we.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 28
  %155 = ptrtoint ptr %cyc_aavdh_we.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %cyc_aavdh_we.i, align 1
  %conv.i91 = zext i8 %156 to i32
  %157 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i4.i92 = tail call i32 @clk_get_rate(ptr noundef %157) #8
  %div.i.i5.i93 = udiv i32 %call.i.i4.i92, 1000
  %div1.i.i6.i94 = udiv i32 1000000000, %div.i.i5.i93
  %mul.i7.i95 = mul i32 %div1.i.i6.i94, %conv.i91
  %add29.i = add i32 %mul.i7.i95, %mul.i.i89
  %158 = tail call i32 @llvm.umax.i32(i32 %154, i32 %add29.i) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then18.i, %if.end.i90.if.end37.i_crit_edge
  %temp.1.i96 = phi i32 [ %158, %if.then18.i ], [ %151, %if.end.i90.if.end37.i_crit_edge ]
  %159 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i8.i97 = tail call i32 @clk_get_rate(ptr noundef %159) #8
  %div.i.i.i9.i98 = udiv i32 %call.i.i.i8.i97, 1000
  %div1.i.i.i10.i99 = udiv i32 1000000000, %div.i.i.i9.i98
  %add.i.i11.i100 = add i32 %temp.1.i96, -1
  %sub.i.i12.i101 = add i32 %add.i.i11.i100, %div1.i.i.i10.i99
  %div.i.i13.i102 = udiv i32 %sub.i.i12.i101, %div1.i.i.i10.i99
  %160 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i14.i103 = tail call i32 @clk_get_rate(ptr noundef %160) #8
  %div.i2.i15.i104 = udiv i32 %call.i.i14.i103, 1000
  %div1.i.i16.i105 = udiv i32 1000000000, %div.i2.i15.i104
  %mul.i17.i106 = mul i32 %div1.i.i16.i105, %div.i.i13.i102
  %wr_data_mux_bus.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 25
  %161 = ptrtoint ptr %wr_data_mux_bus.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %mul.i17.i106, ptr %wr_data_mux_bus.i, align 4
  %162 = load i32, ptr @gpmc_capability, align 4
  %and.i = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end45.i_crit_edge, label %if.then40.i

if.end37.i.if.end45.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %t_weasu.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %t_weasu.i, align 4
  %165 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i18.i107 = tail call i32 @clk_get_rate(ptr noundef %165) #8
  %div.i.i.i19.i = udiv i32 %call.i.i.i18.i107, 1000
  %div1.i.i.i20.i = udiv i32 1000000000, %div.i.i.i19.i
  %add.i.i21.i = add i32 %164, -1
  %sub.i.i22.i = add i32 %add.i.i21.i, %div1.i.i.i20.i
  %div.i.i23.i = udiv i32 %sub.i.i22.i, %div1.i.i.i20.i
  %166 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i24.i = tail call i32 @clk_get_rate(ptr noundef %166) #8
  %div.i2.i25.i = udiv i32 %call.i.i24.i, 1000
  %div1.i.i26.i = udiv i32 1000000000, %div.i2.i25.i
  %mul.i27.i = mul i32 %div1.i.i26.i, %div.i.i23.i
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end45.i_crit_edge
  %mul.i27.sink.i = phi i32 [ %mul.i27.i, %if.then40.i ], [ %mul.i17.i106, %if.end37.i.if.end45.i_crit_edge ]
  %167 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 10
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %mul.i27.sink.i, ptr %167, align 4
  %access.i108 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 17
  %169 = ptrtoint ptr %access.i108 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %access.i108, align 4
  %wr_access.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 24
  %171 = ptrtoint ptr %wr_access.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %wr_access.i, align 4
  %t_wpl.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 15
  %172 = ptrtoint ptr %t_wpl.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %t_wpl.i, align 4
  %add47.i = add i32 %173, %mul.i27.sink.i
  %174 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i28.i109 = tail call i32 @clk_get_rate(ptr noundef %174) #8
  %div.i.i29.i = udiv i32 %call.i.i28.i109, 1000
  %div1.i.i30.i110 = udiv i32 1000000000, %div.i.i29.i
  %add50.i = add i32 %div1.i.i30.i110, %170
  %175 = tail call i32 @llvm.umax.i32(i32 %add47.i, i32 %add50.i) #8
  %176 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %167, align 4
  %cyc_wpl.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 30
  %178 = ptrtoint ptr %cyc_wpl.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %cyc_wpl.i, align 1
  %conv59.i = zext i8 %179 to i32
  %180 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i31.i = tail call i32 @clk_get_rate(ptr noundef %180) #8
  %div.i.i32.i = udiv i32 %call.i.i31.i, 1000
  %div1.i.i33.i = udiv i32 1000000000, %div.i.i32.i
  %mul.i34.i = mul i32 %div1.i.i33.i, %conv59.i
  %add61.i = add i32 %mul.i34.i, %177
  %181 = tail call i32 @llvm.umax.i32(i32 %175, i32 %add61.i) #8
  %182 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i35.i = tail call i32 @clk_get_rate(ptr noundef %182) #8
  %div.i.i.i36.i = udiv i32 %call.i.i.i35.i, 1000
  %div1.i.i.i37.i111 = udiv i32 1000000000, %div.i.i.i36.i
  %add.i.i38.i112 = add i32 %181, -1
  %sub.i.i39.i113 = add i32 %add.i.i38.i112, %div1.i.i.i37.i111
  %div.i.i40.i114 = udiv i32 %sub.i.i39.i113, %div1.i.i.i37.i111
  %183 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i41.i = tail call i32 @clk_get_rate(ptr noundef %183) #8
  %div.i2.i42.i = udiv i32 %call.i.i41.i, 1000
  %div1.i.i43.i = udiv i32 1000000000, %div.i2.i42.i
  %mul.i44.i = mul i32 %div1.i.i43.i, %div.i.i40.i114
  %we_off.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 11
  %184 = ptrtoint ptr %we_off.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %mul.i44.i, ptr %we_off.i, align 4
  %t_wph.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 16
  %185 = ptrtoint ptr %t_wph.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %t_wph.i, align 4
  %187 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i45.i = tail call i32 @clk_get_rate(ptr noundef %187) #8
  %div.i.i.i46.i = udiv i32 %call.i.i.i45.i, 1000
  %div1.i.i.i47.i = udiv i32 1000000000, %div.i.i.i46.i
  %add71.i = add i32 %mul.i44.i, -1
  %add.i.i48.i = add i32 %add71.i, %186
  %sub.i.i49.i = add i32 %add.i.i48.i, %div1.i.i.i47.i
  %div.i.i50.i = udiv i32 %sub.i.i49.i, %div1.i.i.i47.i
  %188 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i51.i = tail call i32 @clk_get_rate(ptr noundef %188) #8
  %div.i2.i52.i = udiv i32 %call.i.i51.i, 1000
  %div1.i.i53.i = udiv i32 1000000000, %div.i2.i52.i
  %mul.i54.i = mul i32 %div1.i.i53.i, %div.i.i50.i
  %cs_wr_off.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 3
  %189 = ptrtoint ptr %cs_wr_off.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %mul.i54.i, ptr %cs_wr_off.i, align 4
  %t_cez_w.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 12
  %190 = ptrtoint ptr %t_cez_w.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %t_cez_w.i, align 4
  %192 = ptrtoint ptr %gpmc_t to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %gpmc_t, align 4
  %194 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i.i115 = tail call i32 @clk_get_rate(ptr noundef %194) #8
  %div.i.i.i.i.i116 = udiv i32 %call.i.i.i.i.i115, 1000
  %div1.i.i.i.i.i117 = udiv i32 1000000000, %div.i.i.i.i.i116
  %add.i.i.i.i118 = add i32 %193, -1
  %sub.i.i.i.i119 = add i32 %add.i.i.i.i118, %div1.i.i.i.i.i117
  %div.i.i.i55.i = udiv i32 %sub.i.i.i.i119, %div1.i.i.i.i.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i.i.i55.i)
  %cmp.i.i.i120 = icmp ugt i32 %div.i.i.i55.i, 4
  %195 = tail call i32 @llvm.smax.i32(i32 %div.i.i.i55.i, i32 1) #8
  %retval.0.i.i.i121 = select i1 %cmp.i.i.i120, i32 -1, i32 %195
  %196 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i56.i = tail call i32 @clk_get_rate(ptr noundef %196) #8
  %div.i.i7.i.i122 = udiv i32 %call.i.i.i56.i, 1000
  %div1.i.i.i57.i = udiv i32 1000000000, %div.i.i7.i.i122
  %add.i.i58.i = add i32 %191, -1
  %sub.i.i59.i = add i32 %add.i.i58.i, %div1.i.i.i57.i
  %div.i.i60.i = udiv i32 %sub.i.i59.i, %div1.i.i.i57.i
  %add.i.i123 = add nsw i32 %retval.0.i.i.i121, -1
  %sub.i.i124 = add nsw i32 %add.i.i123, %div.i.i60.i
  %197 = urem i32 %sub.i.i124, %retval.0.i.i.i121
  %mul.i61.i = sub i32 %sub.i.i124, %197
  %198 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i8.i.i125 = tail call i32 @clk_get_rate(ptr noundef %198) #8
  %div.i.i9.i.i126 = udiv i32 %call.i.i8.i.i125, 1000
  %div1.i.i10.i.i127 = udiv i32 1000000000, %div.i.i9.i.i126
  %mul.i.i.i128 = mul i32 %div1.i.i10.i.i127, %mul.i61.i
  %199 = ptrtoint ptr %wr_access.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %wr_access.i, align 4
  %add75.i129 = add i32 %mul.i.i.i128, %200
  %t_ce_rdyz.i130 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 25
  %201 = ptrtoint ptr %t_ce_rdyz.i130 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %t_ce_rdyz.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool76.not.i = icmp eq i32 %202, 0
  br i1 %tobool76.not.i, label %if.end45.i.if.end26_crit_edge, label %if.end45.i.if.end26.sink.split_crit_edge

if.end45.i.if.end26.sink.split_crit_edge:         ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.end45.i.if.end26_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else23.critedge:                               ; preds = %gpmc_calc_common_timings.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @gpmc_calc_async_read_timings(ptr noundef %gpmc_t, ptr noundef %dev_t, i1 noundef zeroext %mux.0.off0)
  br label %if.else23

if.else23:                                        ; preds = %if.else23.critedge, %land.lhs.true17.if.else23_crit_edge
  %t_avdp_w.i132 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 3
  %203 = ptrtoint ptr %t_avdp_w.i132 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %t_avdp_w.i132, align 4
  br i1 %mux.0.off0, label %if.then.i138, label %if.else23.if.end.i152_crit_edge

if.else23.if.end.i152_crit_edge:                  ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i152

if.then.i138:                                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %adv_on.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %adv_on.i, align 4
  %207 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i134 = tail call i32 @clk_get_rate(ptr noundef %207) #8
  %div.i.i.i135 = udiv i32 %call.i.i.i134, 1000
  %div1.i.i.i136 = udiv i32 1000000000, %div.i.i.i135
  %add.i137 = add i32 %div1.i.i.i136, %206
  %208 = tail call i32 @llvm.umax.i32(i32 %add.i137, i32 %204) #8
  br label %if.end.i152

if.end.i152:                                      ; preds = %if.then.i138, %if.else23.if.end.i152_crit_edge
  %temp.0.i139 = phi i32 [ %208, %if.then.i138 ], [ %204, %if.else23.if.end.i152_crit_edge ]
  %209 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i.i140 = tail call i32 @clk_get_rate(ptr noundef %209) #8
  %div.i.i.i.i141 = udiv i32 %call.i.i.i.i140, 1000
  %div1.i.i.i.i142 = udiv i32 1000000000, %div.i.i.i.i141
  %add.i.i.i143 = add i32 %temp.0.i139, -1
  %sub.i.i.i144 = add i32 %add.i.i.i143, %div1.i.i.i.i142
  %div.i.i1.i145 = udiv i32 %sub.i.i.i144, %div1.i.i.i.i142
  %210 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i2.i146 = tail call i32 @clk_get_rate(ptr noundef %210) #8
  %div.i2.i.i147 = udiv i32 %call.i.i2.i146, 1000
  %div1.i.i3.i148 = udiv i32 1000000000, %div.i2.i.i147
  %mul.i.i149 = mul i32 %div1.i.i3.i148, %div.i.i1.i145
  %adv_wr_off.i150 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 6
  %211 = ptrtoint ptr %adv_wr_off.i150 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %mul.i.i149, ptr %adv_wr_off.i150, align 4
  %t_weasu.i151 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 14
  %212 = ptrtoint ptr %t_weasu.i151 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %t_weasu.i151, align 4
  br i1 %mux.0.off0, label %if.then3.i, label %if.end.i152.if.end22.i_crit_edge

if.end.i152.if.end22.i_crit_edge:                 ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then3.i:                                       ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #10
  %t_aavdh.i153 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 4
  %214 = ptrtoint ptr %t_aavdh.i153 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %t_aavdh.i153, align 4
  %add5.i = add i32 %215, %mul.i.i149
  %216 = tail call i32 @llvm.umax.i32(i32 %213, i32 %add5.i) #8
  %cyc_aavdh_we.i154 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 28
  %217 = ptrtoint ptr %cyc_aavdh_we.i154 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %cyc_aavdh_we.i154, align 1
  %conv.i155 = zext i8 %218 to i32
  %219 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i4.i156 = tail call i32 @clk_get_rate(ptr noundef %219) #8
  %div.i.i5.i157 = udiv i32 %call.i.i4.i156, 1000
  %div1.i.i6.i158 = udiv i32 1000000000, %div.i.i5.i157
  %mul.i7.i159 = mul i32 %div1.i.i6.i158, %conv.i155
  %add14.i = add i32 %mul.i7.i159, %mul.i.i149
  %220 = tail call i32 @llvm.umax.i32(i32 %216, i32 %add14.i) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then3.i, %if.end.i152.if.end22.i_crit_edge
  %temp.1.i160 = phi i32 [ %220, %if.then3.i ], [ %213, %if.end.i152.if.end22.i_crit_edge ]
  %221 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i8.i161 = tail call i32 @clk_get_rate(ptr noundef %221) #8
  %div.i.i.i9.i162 = udiv i32 %call.i.i.i8.i161, 1000
  %div1.i.i.i10.i163 = udiv i32 1000000000, %div.i.i.i9.i162
  %add.i.i11.i164 = add i32 %temp.1.i160, -1
  %sub.i.i12.i165 = add i32 %add.i.i11.i164, %div1.i.i.i10.i163
  %div.i.i13.i166 = udiv i32 %sub.i.i12.i165, %div1.i.i.i10.i163
  %222 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i14.i167 = tail call i32 @clk_get_rate(ptr noundef %222) #8
  %div.i2.i15.i168 = udiv i32 %call.i.i14.i167, 1000
  %div1.i.i16.i169 = udiv i32 1000000000, %div.i2.i15.i168
  %mul.i17.i170 = mul i32 %div1.i.i16.i169, %div.i.i13.i166
  %wr_data_mux_bus.i171 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 25
  %223 = ptrtoint ptr %wr_data_mux_bus.i171 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %mul.i17.i170, ptr %wr_data_mux_bus.i171, align 4
  %224 = load i32, ptr @gpmc_capability, align 4
  %and.i172 = and i32 %224, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool24.not.i = icmp eq i32 %and.i172, 0
  br i1 %tobool24.not.i, label %if.end22.i.gpmc_calc_async_write_timings.exit_crit_edge, label %if.then25.i

if.end22.i.gpmc_calc_async_write_timings.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_calc_async_write_timings.exit

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %225 = ptrtoint ptr %t_weasu.i151 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %t_weasu.i151, align 4
  %227 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i18.i173 = tail call i32 @clk_get_rate(ptr noundef %227) #8
  %div.i.i.i19.i174 = udiv i32 %call.i.i.i18.i173, 1000
  %div1.i.i.i20.i175 = udiv i32 1000000000, %div.i.i.i19.i174
  %add.i.i21.i176 = add i32 %226, -1
  %sub.i.i22.i177 = add i32 %add.i.i21.i176, %div1.i.i.i20.i175
  %div.i.i23.i178 = udiv i32 %sub.i.i22.i177, %div1.i.i.i20.i175
  %228 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i24.i179 = tail call i32 @clk_get_rate(ptr noundef %228) #8
  %div.i2.i25.i180 = udiv i32 %call.i.i24.i179, 1000
  %div1.i.i26.i181 = udiv i32 1000000000, %div.i2.i25.i180
  %mul.i27.i182 = mul i32 %div1.i.i26.i181, %div.i.i23.i178
  br label %gpmc_calc_async_write_timings.exit

gpmc_calc_async_write_timings.exit:               ; preds = %if.then25.i, %if.end22.i.gpmc_calc_async_write_timings.exit_crit_edge
  %mul.i27.sink.i183 = phi i32 [ %mul.i27.i182, %if.then25.i ], [ %mul.i17.i170, %if.end22.i.gpmc_calc_async_write_timings.exit_crit_edge ]
  %229 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 10
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %mul.i27.sink.i183, ptr %229, align 4
  %t_wpl.i184 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 15
  %231 = ptrtoint ptr %t_wpl.i184 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %t_wpl.i184, align 4
  %233 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i28.i = tail call i32 @clk_get_rate(ptr noundef %233) #8
  %div.i.i.i29.i = udiv i32 %call.i.i.i28.i, 1000
  %div1.i.i.i30.i = udiv i32 1000000000, %div.i.i.i29.i
  %add32.i = add i32 %mul.i27.sink.i183, -1
  %add.i.i31.i = add i32 %add32.i, %232
  %sub.i.i32.i = add i32 %add.i.i31.i, %div1.i.i.i30.i
  %div.i.i33.i185 = udiv i32 %sub.i.i32.i, %div1.i.i.i30.i
  %234 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i34.i = tail call i32 @clk_get_rate(ptr noundef %234) #8
  %div.i2.i35.i = udiv i32 %call.i.i34.i, 1000
  %div1.i.i36.i = udiv i32 1000000000, %div.i2.i35.i
  %mul.i37.i = mul i32 %div1.i.i36.i, %div.i.i33.i185
  %we_off.i186 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 11
  %235 = ptrtoint ptr %we_off.i186 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %mul.i37.i, ptr %we_off.i186, align 4
  %t_wph.i187 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 16
  %236 = ptrtoint ptr %t_wph.i187 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %t_wph.i187, align 4
  %238 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i38.i = tail call i32 @clk_get_rate(ptr noundef %238) #8
  %div.i.i.i39.i = udiv i32 %call.i.i.i38.i, 1000
  %div1.i.i.i40.i = udiv i32 1000000000, %div.i.i.i39.i
  %add35.i = add i32 %mul.i37.i, -1
  %add.i.i41.i = add i32 %add35.i, %237
  %sub.i.i42.i = add i32 %add.i.i41.i, %div1.i.i.i40.i
  %div.i.i43.i = udiv i32 %sub.i.i42.i, %div1.i.i.i40.i
  %239 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i44.i = tail call i32 @clk_get_rate(ptr noundef %239) #8
  %div.i2.i45.i = udiv i32 %call.i.i44.i, 1000
  %div1.i.i46.i = udiv i32 1000000000, %div.i2.i45.i
  %mul.i47.i = mul i32 %div1.i.i46.i, %div.i.i43.i
  %cs_wr_off.i188 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 3
  %240 = ptrtoint ptr %cs_wr_off.i188 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %mul.i47.i, ptr %cs_wr_off.i188, align 4
  %t_wr_cycle.i = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 17
  %241 = ptrtoint ptr %t_wr_cycle.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %t_wr_cycle.i, align 4
  %t_cez_w.i189 = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 12
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %gpmc_calc_async_write_timings.exit, %if.end45.i.if.end26.sink.split_crit_edge
  %cs_wr_off.i.sink = phi ptr [ %t_cez_w.i189, %gpmc_calc_async_write_timings.exit ], [ %cs_wr_off.i, %if.end45.i.if.end26.sink.split_crit_edge ]
  %.sink209 = phi i32 [ %mul.i47.i, %gpmc_calc_async_write_timings.exit ], [ %202, %if.end45.i.if.end26.sink.split_crit_edge ]
  %add75.i129.sink = phi i32 [ %242, %gpmc_calc_async_write_timings.exit ], [ %add75.i129, %if.end45.i.if.end26.sink.split_crit_edge ]
  %243 = ptrtoint ptr %cs_wr_off.i.sink to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cs_wr_off.i.sink, align 4
  %add80.i = add i32 %244, %.sink209
  %245 = tail call i32 @llvm.umax.i32(i32 %add75.i129.sink, i32 %add80.i) #8
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end45.i.if.end26_crit_edge
  %.sink = phi i32 [ %add75.i129, %if.end45.i.if.end26_crit_edge ], [ %245, %if.end26.sink.split ]
  %246 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i48.i = tail call i32 @clk_get_rate(ptr noundef %246) #8
  %div.i.i.i49.i = udiv i32 %call.i.i.i48.i, 1000
  %div1.i.i.i50.i = udiv i32 1000000000, %div.i.i.i49.i
  %add.i.i51.i = add i32 %.sink, -1
  %sub.i.i52.i = add i32 %add.i.i51.i, %div1.i.i.i50.i
  %div.i.i53.i = udiv i32 %sub.i.i52.i, %div1.i.i.i50.i
  %247 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i54.i = tail call i32 @clk_get_rate(ptr noundef %247) #8
  %div.i2.i55.i = udiv i32 %call.i.i54.i, 1000
  %div1.i.i56.i = udiv i32 1000000000, %div.i2.i55.i
  %mul.i57.i = mul i32 %div1.i.i56.i, %div.i.i53.i
  %wr_cycle.i190 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 19
  %248 = ptrtoint ptr %wr_cycle.i190 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %mul.i57.i, ptr %wr_cycle.i190, align 4
  %249 = ptrtoint ptr %cs_on.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %cs_on.i, align 4
  %div.i = udiv i32 %250, 1000
  store i32 %div.i, ptr %cs_on.i, align 4
  %cs_rd_off.i192 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 2
  %251 = ptrtoint ptr %cs_rd_off.i192 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %cs_rd_off.i192, align 4
  %div1.i = udiv i32 %252, 1000
  store i32 %div1.i, ptr %cs_rd_off.i192, align 4
  %cs_wr_off.i193 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 3
  %253 = ptrtoint ptr %cs_wr_off.i193 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %cs_wr_off.i193, align 4
  %div2.i = udiv i32 %254, 1000
  store i32 %div2.i, ptr %cs_wr_off.i193, align 4
  %255 = ptrtoint ptr %adv_on.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %adv_on.i, align 4
  %div3.i = udiv i32 %256, 1000
  store i32 %div3.i, ptr %adv_on.i, align 4
  %adv_rd_off.i195 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 5
  %257 = ptrtoint ptr %adv_rd_off.i195 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %adv_rd_off.i195, align 4
  %div4.i = udiv i32 %258, 1000
  store i32 %div4.i, ptr %adv_rd_off.i195, align 4
  %adv_wr_off.i196 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 6
  %259 = ptrtoint ptr %adv_wr_off.i196 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %adv_wr_off.i196, align 4
  %div5.i = udiv i32 %260, 1000
  store i32 %div5.i, ptr %adv_wr_off.i196, align 4
  %we_on.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 10
  %261 = ptrtoint ptr %we_on.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %we_on.i, align 4
  %div6.i = udiv i32 %262, 1000
  store i32 %div6.i, ptr %we_on.i, align 4
  %we_off.i197 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 11
  %263 = ptrtoint ptr %we_off.i197 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %we_off.i197, align 4
  %div7.i = udiv i32 %264, 1000
  store i32 %div7.i, ptr %we_off.i197, align 4
  %oe_on.i198 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 12
  %265 = ptrtoint ptr %oe_on.i198 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %oe_on.i198, align 4
  %div8.i = udiv i32 %266, 1000
  store i32 %div8.i, ptr %oe_on.i198, align 4
  %oe_off.i199 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 13
  %267 = ptrtoint ptr %oe_off.i199 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %oe_off.i199, align 4
  %div9.i = udiv i32 %268, 1000
  store i32 %div9.i, ptr %oe_off.i199, align 4
  %page_burst_access.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 16
  %269 = ptrtoint ptr %page_burst_access.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %page_burst_access.i, align 4
  %div10.i = udiv i32 %270, 1000
  store i32 %div10.i, ptr %page_burst_access.i, align 4
  %access.i200 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 17
  %271 = ptrtoint ptr %access.i200 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %access.i200, align 4
  %div11.i = udiv i32 %272, 1000
  store i32 %div11.i, ptr %access.i200, align 4
  %rd_cycle.i201 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 18
  %273 = ptrtoint ptr %rd_cycle.i201 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %rd_cycle.i201, align 4
  %div12.i = udiv i32 %274, 1000
  store i32 %div12.i, ptr %rd_cycle.i201, align 4
  %wr_cycle.i202 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 19
  %275 = ptrtoint ptr %wr_cycle.i202 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %wr_cycle.i202, align 4
  %div13.i = udiv i32 %276, 1000
  store i32 %div13.i, ptr %wr_cycle.i202, align 4
  %bus_turnaround.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 20
  %277 = ptrtoint ptr %bus_turnaround.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %bus_turnaround.i, align 4
  %div14.i = udiv i32 %278, 1000
  store i32 %div14.i, ptr %bus_turnaround.i, align 4
  %cycle2cycle_delay.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 21
  %279 = ptrtoint ptr %cycle2cycle_delay.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %cycle2cycle_delay.i, align 4
  %div15.i = udiv i32 %280, 1000
  store i32 %div15.i, ptr %cycle2cycle_delay.i, align 4
  %wait_monitoring.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 22
  %281 = ptrtoint ptr %wait_monitoring.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %wait_monitoring.i, align 4
  %div16.i = udiv i32 %282, 1000
  store i32 %div16.i, ptr %wait_monitoring.i, align 4
  %clk_activation.i203 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 23
  %283 = ptrtoint ptr %clk_activation.i203 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %clk_activation.i203, align 4
  %div17.i = udiv i32 %284, 1000
  store i32 %div17.i, ptr %clk_activation.i203, align 4
  %wr_access.i204 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 24
  %285 = ptrtoint ptr %wr_access.i204 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %wr_access.i204, align 4
  %div18.i = udiv i32 %286, 1000
  store i32 %div18.i, ptr %wr_access.i204, align 4
  %wr_data_mux_bus.i205 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 25
  %287 = ptrtoint ptr %wr_data_mux_bus.i205 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %wr_data_mux_bus.i205, align 4
  %div19.i = udiv i32 %288, 1000
  store i32 %div19.i, ptr %wr_data_mux_bus.i205, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmc_calc_async_read_timings(ptr nocapture noundef %gpmc_t, ptr nocapture noundef readonly %dev_t, i1 noundef zeroext %mux) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_avdp_r = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 2
  %0 = ptrtoint ptr %t_avdp_r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_avdp_r, align 4
  br i1 %mux, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adv_on = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 4
  %2 = ptrtoint ptr %adv_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adv_on, align 4
  %4 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %4) #8
  %div.i.i = udiv i32 %call.i.i, 1000
  %div1.i.i = udiv i32 1000000000, %div.i.i
  %add = add i32 %div1.i.i, %3
  %5 = tail call i32 @llvm.umax.i32(i32 %add, i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %temp.0 = phi i32 [ %5, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %6 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %6) #8
  %div.i.i.i = udiv i32 %call.i.i.i, 1000
  %div1.i.i.i = udiv i32 1000000000, %div.i.i.i
  %add.i.i = add i32 %temp.0, -1
  %sub.i.i = add i32 %add.i.i, %div1.i.i.i
  %div.i.i1 = udiv i32 %sub.i.i, %div1.i.i.i
  %7 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i2 = tail call i32 @clk_get_rate(ptr noundef %7) #8
  %div.i2.i = udiv i32 %call.i.i2, 1000
  %div1.i.i3 = udiv i32 1000000000, %div.i2.i
  %mul.i = mul i32 %div1.i.i3, %div.i.i1
  %adv_rd_off = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 5
  %8 = ptrtoint ptr %adv_rd_off to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul.i, ptr %adv_rd_off, align 4
  %t_oeasu = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 5
  %9 = ptrtoint ptr %t_oeasu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_oeasu, align 4
  br i1 %mux, label %if.then3, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %t_aavdh = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 4
  %11 = ptrtoint ptr %t_aavdh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %t_aavdh, align 4
  %add5 = add i32 %12, %mul.i
  %13 = tail call i32 @llvm.umax.i32(i32 %10, i32 %add5)
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.end.if.end12_crit_edge
  %temp.1 = phi i32 [ %13, %if.then3 ], [ %10, %if.end.if.end12_crit_edge ]
  %14 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i4 = tail call i32 @clk_get_rate(ptr noundef %14) #8
  %div.i.i.i5 = udiv i32 %call.i.i.i4, 1000
  %div1.i.i.i6 = udiv i32 1000000000, %div.i.i.i5
  %add.i.i7 = add i32 %temp.1, -1
  %sub.i.i8 = add i32 %add.i.i7, %div1.i.i.i6
  %div.i.i9 = udiv i32 %sub.i.i8, %div1.i.i.i6
  %15 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i10 = tail call i32 @clk_get_rate(ptr noundef %15) #8
  %div.i2.i11 = udiv i32 %call.i.i10, 1000
  %div1.i.i12 = udiv i32 1000000000, %div.i2.i11
  %mul.i13 = mul i32 %div1.i.i12, %div.i.i9
  %oe_on = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 12
  %16 = ptrtoint ptr %oe_on to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul.i13, ptr %oe_on, align 4
  %t_iaa = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 7
  %17 = ptrtoint ptr %t_iaa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_iaa, align 4
  %t_oe = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 8
  %19 = ptrtoint ptr %t_oe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t_oe, align 4
  %add15 = add i32 %20, %mul.i13
  %21 = tail call i32 @llvm.umax.i32(i32 %18, i32 %add15)
  %cs_on = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 1
  %22 = ptrtoint ptr %cs_on to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cs_on, align 4
  %t_ce = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 9
  %24 = ptrtoint ptr %t_ce to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_ce, align 4
  %add22 = add i32 %25, %23
  %26 = tail call i32 @llvm.umax.i32(i32 %21, i32 %add22)
  %adv_on29 = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 4
  %27 = ptrtoint ptr %adv_on29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adv_on29, align 4
  %t_aa = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 6
  %29 = ptrtoint ptr %t_aa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t_aa, align 4
  %add30 = add i32 %30, %28
  %31 = tail call i32 @llvm.umax.i32(i32 %26, i32 %add30)
  %32 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i14 = tail call i32 @clk_get_rate(ptr noundef %32) #8
  %div.i.i.i15 = udiv i32 %call.i.i.i14, 1000
  %div1.i.i.i16 = udiv i32 1000000000, %div.i.i.i15
  %add.i.i17 = add i32 %31, -1
  %sub.i.i18 = add i32 %add.i.i17, %div1.i.i.i16
  %div.i.i19 = udiv i32 %sub.i.i18, %div1.i.i.i16
  %33 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i20 = tail call i32 @clk_get_rate(ptr noundef %33) #8
  %div.i2.i21 = udiv i32 %call.i.i20, 1000
  %div1.i.i22 = udiv i32 1000000000, %div.i2.i21
  %mul.i23 = mul i32 %div1.i.i22, %div.i.i19
  %access = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 17
  %34 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i23, ptr %access, align 4
  %35 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i24 = tail call i32 @clk_get_rate(ptr noundef %35) #8
  %div.i.i25 = udiv i32 %call.i.i24, 1000
  %div1.i.i26 = udiv i32 1000000000, %div.i.i25
  %add40 = add i32 %div1.i.i26, %mul.i23
  %oe_off = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 13
  %36 = ptrtoint ptr %oe_off to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add40, ptr %oe_off, align 4
  %cs_rd_off = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 2
  %37 = ptrtoint ptr %cs_rd_off to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add40, ptr %cs_rd_off, align 4
  %t_rd_cycle = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 10
  %38 = ptrtoint ptr %t_rd_cycle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %t_rd_cycle, align 4
  %t_cez_r = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 11
  %40 = ptrtoint ptr %t_cez_r to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %t_cez_r, align 4
  %add43 = add i32 %41, %add40
  %42 = tail call i32 @llvm.umax.i32(i32 %39, i32 %add43)
  %t_oez = getelementptr inbounds %struct.gpmc_device_timings, ptr %dev_t, i32 0, i32 13
  %43 = ptrtoint ptr %t_oez to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %t_oez, align 4
  %add51 = add i32 %44, %add40
  %45 = tail call i32 @llvm.umax.i32(i32 %42, i32 %add51)
  %46 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i.i27 = tail call i32 @clk_get_rate(ptr noundef %46) #8
  %div.i.i.i28 = udiv i32 %call.i.i.i27, 1000
  %div1.i.i.i29 = udiv i32 1000000000, %div.i.i.i28
  %add.i.i30 = add i32 %45, -1
  %sub.i.i31 = add i32 %add.i.i30, %div1.i.i.i29
  %div.i.i32 = udiv i32 %sub.i.i31, %div1.i.i.i29
  %47 = load ptr, ptr @gpmc_l3_clk, align 4
  %call.i.i33 = tail call i32 @clk_get_rate(ptr noundef %47) #8
  %div.i2.i34 = udiv i32 %call.i.i33, 1000
  %div1.i.i35 = udiv i32 1000000000, %div.i2.i34
  %mul.i36 = mul i32 %div1.i.i35, %div.i.i32
  %rd_cycle = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t, i32 0, i32 18
  %48 = ptrtoint ptr %rd_cycle to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.i36, ptr %rd_cycle, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpmc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gpmc_nand_writebuffer_empty() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 84
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !561
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 800, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.152) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  store ptr %call6, ptr @gpmc_base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.then5.if.end22_crit_edge

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call3) #8
  store ptr %call12, ptr @gpmc_base, align 4
  %cmp.i136 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %call17 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.153) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.154) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.gpmc_device, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call17, ptr %data, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then5.if.end22_crit_edge
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.gpmc_device, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call23, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.158) #8
  store ptr %call29, ptr @gpmc_l3_clk, align 4
  %cmp.i137 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.160) #11
  %6 = load ptr, ptr @gpmc_l3_clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %call38 = tail call i32 @clk_get_rate(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.163) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool47.not = icmp eq ptr %9, null
  br i1 %tobool47.not, label %if.else53, label %if.then48

if.then48:                                        ; preds = %if.end45
  %call.i138 = tail call ptr @of_match_device(ptr noundef nonnull @gpmc_dt_ids, ptr noundef %dev) #8
  %tobool.not.i = icmp eq ptr %call.i138, null
  br i1 %tobool.not.i, label %if.then48.if.end54_crit_edge, label %if.end.i

if.then48.if.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end.i:                                         ; preds = %if.then48
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.172, ptr noundef nonnull @gpmc_cs_num, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i139 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i139, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %12 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i = icmp eq i32 %12, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.else12.i

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.174) #11
  br label %cleanup

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp13.i = icmp ugt i32 %12, 8
  br i1 %cmp13.i, label %do.end17.i, label %if.end22.i

do.end17.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.174, i32 noundef 8) #11
  br label %cleanup

if.end22.i:                                       ; preds = %if.else12.i
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i.i40.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.181, ptr noundef nonnull @gpmc_nr_waitpins, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i)
  %cmp26.i = icmp slt i32 %call.i.i40.i, 0
  br i1 %cmp26.i, label %do.end30.i, label %if.end22.i.if.end54_crit_edge

if.end22.i.if.end54_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.174) #11
  br label %cleanup

if.else53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  store i32 8, ptr @gpmc_cs_num, align 4
  store i32 4, ptr @gpmc_nr_waitpins, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.end22.i.if.end54_crit_edge, %if.then48.if.end54_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i140 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %15 = load ptr, ptr @gpmc_base, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !561
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %shr = lshr i32 %17, 4
  %and = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp59 = icmp ugt i32 %and, 4
  br i1 %cmp59, label %if.end61, label %if.end54.do.end69_crit_edge

if.end54.do.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

if.end61:                                         ; preds = %if.end54
  store i32 3, ptr @gpmc_capability, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp64.not = icmp eq i32 %and, 5
  br i1 %cmp64.not, label %if.end61.do.end69_crit_edge, label %if.then65

if.end61.do.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @gpmc_capability, align 4
  %or = or i32 %18, 4
  store i32 %or, ptr @gpmc_capability, align 4
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %if.end61.do.end69_crit_edge, %if.end54.do.end69_crit_edge
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %and73 = and i32 %17, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.166, i32 noundef %and, i32 noundef %and73) #11
  tail call fastcc void @gpmc_mem_init(ptr noundef nonnull %call.i)
  %call74 = tail call fastcc i32 @gpmc_gpio_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %do.end69.gpio_init_failed_crit_edge

do.end69.gpio_init_failed_crit_edge:              ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_init_failed

if.end77:                                         ; preds = %do.end69
  %21 = load i32, ptr @gpmc_nr_waitpins, align 4
  %add = add i32 %21, 2
  %nirqs = getelementptr inbounds %struct.gpmc_device, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %nirqs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %nirqs, align 4
  %call78 = tail call fastcc i32 @gpmc_setup_irq(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.170) #11
  br label %gpio_init_failed

if.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @gpmc_probe_dt_children(ptr noundef %pdev)
  %nb = getelementptr inbounds %struct.gpmc_device, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @omap_gpmc_context_notifier, ptr %nb, align 4
  %call87 = tail call i32 @cpu_pm_register_notifier(ptr noundef %nb) #8
  br label %cleanup

gpio_init_failed:                                 ; preds = %do.end83, %do.end69.gpio_init_failed_crit_edge
  %rc.0 = phi i32 [ %call74, %do.end69.gpio_init_failed_crit_edge ], [ %call78, %do.end83 ]
  tail call fastcc void @gpmc_mem_exit()
  %call.i141 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %gpio_init_failed, %if.end85, %do.end30.i, %do.end17.i, %do.end9.i, %do.end.i, %do.end43, %do.end34, %if.end22.cleanup_crit_edge, %do.end, %if.then14, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then14 ], [ %7, %do.end34 ], [ %rc.0, %gpio_init_failed ], [ 0, %if.end85 ], [ -22, %do.end43 ], [ -2, %do.end ], [ %2, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call.i.i40.i, %do.end30.i ], [ -22, %do.end17.i ], [ -22, %do.end9.i ], [ %call.i.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nb = getelementptr inbounds %struct.gpmc_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %nb) #8
  %irq.i = getelementptr inbounds %struct.gpmc_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #8
  %nirqs.i = getelementptr inbounds %struct.gpmc_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %nirqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nirqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp sgt i32 %5, 0
  br i1 %cmp1.i, label %entry.for.body.i_crit_edge, label %entry.gpmc_free_irq.exit_crit_edge

entry.gpmc_free_irq.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_free_irq.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %irq_find_mapping.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %hwirq.02.i = phi i32 [ %inc.i, %irq_find_mapping.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %6 = load ptr, ptr @gpmc_irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #8
  %7 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !563
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %hwirq.02.i, ptr noundef nonnull %irq.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i

for.body.i.irq_find_mapping.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i, %for.body.i.irq_find_mapping.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %9, %if.then.i.i ], [ 0, %for.body.i.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #8
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.i) #8
  %inc.i = add nuw nsw i32 %hwirq.02.i, 1
  %10 = ptrtoint ptr %nirqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nirqs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %irq_find_mapping.exit.i.for.body.i_crit_edge, label %irq_find_mapping.exit.i.gpmc_free_irq.exit_crit_edge

irq_find_mapping.exit.i.gpmc_free_irq.exit_crit_edge: ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_free_irq.exit

irq_find_mapping.exit.i.for.body.i_crit_edge:     ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

gpmc_free_irq.exit:                               ; preds = %irq_find_mapping.exit.i.gpmc_free_irq.exit_crit_edge, %entry.gpmc_free_irq.exit_crit_edge
  %12 = load ptr, ptr @gpmc_irq_domain, align 4
  call void @irq_domain_remove(ptr noundef %12) #8
  store ptr null, ptr @gpmc_irq_domain, align 4
  %13 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not.i = icmp eq i32 %13, 0
  br i1 %cmp5.not.i, label %gpmc_free_irq.exit.gpmc_mem_exit.exit_crit_edge, label %gpmc_free_irq.exit.for.body.i8_crit_edge

gpmc_free_irq.exit.for.body.i8_crit_edge:         ; preds = %gpmc_free_irq.exit
  br label %for.body.i8

gpmc_free_irq.exit.gpmc_mem_exit.exit_crit_edge:  ; preds = %gpmc_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_mem_exit.exit

for.body.i8:                                      ; preds = %for.inc.i.for.body.i8_crit_edge, %gpmc_free_irq.exit.for.body.i8_crit_edge
  %cs.06.i = phi i32 [ %inc.i10, %for.inc.i.for.body.i8_crit_edge ], [ 0, %gpmc_free_irq.exit.for.body.i8_crit_edge ]
  %14 = load ptr, ptr @gpmc_base, align 4
  %mul.i.i.i = mul i32 %cs.06.i, 48
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 120
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !561
  %16 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %for.body.i8.for.inc.i_crit_edge, label %if.end.i

for.body.i8.for.inc.i_crit_edge:                  ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #10
  %mem.i.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs.06.i, i32 2
  call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #8
  %call.i.i9 = call i32 @release_resource(ptr noundef %mem.i.i) #8
  %17 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mem.i.i, align 4
  %end.i.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs.06.i, i32 2, i32 1
  %18 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %end.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @gpmc_mem_lock) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i8.for.inc.i_crit_edge
  %inc.i10 = add nuw i32 %cs.06.i, 1
  %19 = load i32, ptr @gpmc_cs_num, align 4
  %cmp.i11 = icmp ult i32 %inc.i10, %19
  br i1 %cmp.i11, label %for.inc.i.for.body.i8_crit_edge, label %for.inc.i.gpmc_mem_exit.exit_crit_edge

for.inc.i.gpmc_mem_exit.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_mem_exit.exit

for.inc.i.for.body.i8_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i8

gpmc_mem_exit.exit:                               ; preds = %for.inc.i.gpmc_mem_exit.exit_crit_edge, %gpmc_free_irq.exit.gpmc_mem_exit.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i12 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmc_mem_init(ptr nocapture noundef readonly %gpmc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 16777216, ptr @gpmc_mem_root, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  store i32 %3, ptr @gpmc_mem_root, align 4
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 1073741823, %if.then ], [ %5, %if.else ]
  store i32 %storemerge, ptr getelementptr inbounds (%struct.resource, ptr @gpmc_mem_root, i32 0, i32 1), align 4
  %6 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp32.not = icmp eq i32 %6, 0
  br i1 %cmp32.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %cs.033 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %7 = load ptr, ptr @gpmc_base, align 4
  %mul.i.i = mul i32 %cs.033, 48
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 120
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %mul.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !561
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %10 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i.i22 = getelementptr i8, ptr %10, i32 120
  %add.ptr2.i.i23 = getelementptr i8, ptr %add.ptr1.i.i22, i32 %mul.i.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i23) #8, !srcloc !561
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %and.i24 = shl i32 %12, 24
  %13 = shl i32 %12, 16
  %shl2.i = and i32 %13, 251658240
  %sub.i.i = lshr exact i32 %shl2.i, 23
  %shr.i.i = xor i32 %sub.i.i, 31
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end5
  %size.addr.0.i.i = phi i32 [ %shr.i.i, %if.end5 ], [ %shr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %order.0.i.i = phi i32 [ 23, %if.end5 ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %shr1.i.i = lshr i32 %size.addr.0.i.i, 1
  %inc.i.i = add nuw nsw i32 %order.0.i.i, 1
  %tobool.not.i.i = icmp ult i32 %size.addr.0.i.i, 2
  br i1 %tobool.not.i.i, label %gpmc_cs_insert_mem.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

gpmc_cs_insert_mem.exit:                          ; preds = %do.body.i.i
  %shl.i = and i32 %and.i24, 1056964608
  %mem.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs.033, i32 2
  %shl.i.i = shl i32 2, %order.0.i.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #8
  %14 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl.i, ptr %mem.i, align 4
  %add.i = add nsw i32 %shl.i, -1
  %sub.i25 = add i32 %add.i, %shl.i.i
  %end.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs.033, i32 2, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i25, ptr %end.i, align 4
  %call1.i = tail call i32 @request_resource(ptr noundef nonnull @gpmc_mem_root, ptr noundef %mem.i) #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gpmc_mem_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %gpmc_cs_insert_mem.exit.cleanup_crit_edge, label %do.end

gpmc_cs_insert_mem.exit.cleanup_crit_edge:        ; preds = %gpmc_cs_insert_mem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %gpmc_cs_insert_mem.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub nuw nsw i32 268435456, %shl2.i
  %add = add nuw nsw i32 %sub.i, %shl.i
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, i32 noundef %cs.033, i32 noundef %shl.i, i32 noundef %add) #11
  %16 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i.i28 = getelementptr i8, ptr %16, i32 120
  %add.ptr2.i.i29 = getelementptr i8, ptr %add.ptr1.i.i28, i32 %mul.i.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i29) #8, !srcloc !561
  %18 = and i32 %17, -1073741825
  %19 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i5.i = getelementptr i8, ptr %19, i32 120
  %add.ptr2.i6.i = getelementptr i8, ptr %add.ptr1.i5.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i, i32 %18) #8, !srcloc !559
  br label %cleanup

cleanup:                                          ; preds = %do.end, %gpmc_cs_insert_mem.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %cs.033, 1
  %20 = load i32, ptr @gpmc_cs_num, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpmc_gpio_init(ptr noundef %gpmc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpmc, align 4
  %gpio_chip = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3
  %parent = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %owner, align 4
  %4 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.151, ptr %gpio_chip, align 4
  %5 = load i32, ptr @gpmc_nr_waitpins, align 4
  %conv = trunc i32 %5 to i16
  %ngpio = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %ngpio, align 4
  %get_direction = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gpmc_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpmc_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 9
  %9 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gpmc_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gpmc_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 10
  %11 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gpmc_gpio_get, ptr %get, align 4
  %base = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 3, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %base, align 4
  %call = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %1, ptr noundef %gpio_chip, ptr noundef null, ptr noundef nonnull @gpmc_gpio_init.lock_key, ptr noundef nonnull @gpmc_gpio_init.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %gpmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpmc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.187, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpmc_setup_irq(ptr noundef %gpmc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !559
  %1 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i35 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #8, !srcloc !561
  %3 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i36 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %2) #8, !srcloc !559
  %name = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.189, ptr %name, align 4
  %irq_enable = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %irq_enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gpmc_irq_enable, ptr %irq_enable, align 4
  %irq_disable = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %irq_disable to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gpmc_irq_disable, ptr %irq_disable, align 4
  %irq_ack = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gpmc_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpmc_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 2, i32 9
  %9 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gpmc_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 2, i32 13
  %10 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gpmc_irq_set_type, ptr %irq_set_type, align 4
  %11 = ptrtoint ptr %gpmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpmc, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %nirqs = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 6
  %15 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nirqs, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %16, i32 noundef %16, i32 noundef 0, ptr noundef nonnull @gpmc_irq_domain_ops, ptr noundef %gpmc) #8
  store ptr %call1.i, ptr @gpmc_irq_domain, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %gpmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpmc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.190) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 1
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @gpmc_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.189, ptr noundef %gpmc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %do.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %gpmc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpmc, align 4
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.193, i32 noundef %24, i32 noundef %call.i) #11
  %25 = load ptr, ptr @gpmc_irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %25) #8
  store ptr null, ptr @gpmc_irq_domain, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call.i, %do.end14 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmc_probe_dt_children(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %gpmc_s.i = alloca %struct.gpmc_settings, align 4
  %gpmc_t.i = alloca %struct.gpmc_timings, align 4
  %res.i = alloca %struct.resource, align 4
  %base.i = alloca i32, align 4
  %cs.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #8
  %cmp.not24 = icmp eq ptr %call, null
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s.i, i32 0, i32 6
  %4 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s.i, i32 0, i32 7
  %5 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s.i, i32 0, i32 9
  %6 = getelementptr inbounds %struct.gpmc_settings, ptr %gpmc_s.i, i32 0, i32 11
  %7 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %cs_on.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 1
  %cs_rd_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 2
  %cs_wr_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 3
  %adv_on.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 4
  %adv_rd_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 5
  %adv_wr_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 6
  %adv_aad_mux_on.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 7
  %adv_aad_mux_rd_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 8
  %adv_aad_mux_wr_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 9
  %we_on.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 10
  %we_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 11
  %oe_on.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 12
  %oe_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 13
  %oe_aad_mux_on.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 14
  %oe_aad_mux_off.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 15
  %page_burst_access.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 16
  %access.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 17
  %rd_cycle.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 18
  %wr_cycle.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 19
  %bus_turnaround.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 20
  %cycle2cycle_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 21
  %wait_monitoring.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 22
  %clk_activation.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 23
  %wr_access.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 24
  %wr_data_mux_bus.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 25
  %bool_timings.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 26
  %cycle2cyclesamecsen.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 26, i32 1
  %we_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 26, i32 2
  %oe_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 26, i32 3
  %adv_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 26, i32 4
  %cs_extra_delay.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 26, i32 5
  %time_para_granularity.i.i = getelementptr inbounds %struct.gpmc_timings, ptr %gpmc_t.i, i32 0, i32 26, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.025 = phi ptr [ %call, %for.body.lr.ph ], [ %call5, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gpmc_s.i) #8
  %8 = call ptr @memset(ptr %gpmc_s.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %gpmc_t.i) #8
  %9 = call ptr @memset(ptr %gpmc_t.i, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #8
  %10 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.i) #8
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %base.i, align 4, !annotation !563
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #8
  %12 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %cs.i, align 4, !annotation !563
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !563
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.200, ptr noundef nonnull %cs.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.201, ptr noundef nonnull %child.025) #11
  br label %gpmc_probe_generic_child.exit.thread

if.end.i:                                         ; preds = %for.body
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %child.025, i32 noundef 0, ptr noundef nonnull %res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end7.i, label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.204, ptr noundef nonnull %child.025) #11
  br label %gpmc_probe_generic_child.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cs.i, align 4
  %arrayidx.i.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end9.i.if.end13.i_crit_edge, label %land.lhs.true.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %call11.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.025, ptr noundef nonnull %19) #8
  br i1 %call11.i, label %land.lhs.true.i.no_timings.i_crit_edge, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.lhs.true.i.no_timings.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_timings.i

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end9.i.if.end13.i_crit_edge
  %20 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cs.i, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %24 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %23, 1
  %add.i.i = sub i32 %sub.i.i, %25
  %call15.i = call i32 @gpmc_cs_request(i32 noundef %21, i32 noundef %add.i.i, ptr noundef nonnull %base.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  %26 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cs.i, align 4
  br i1 %cmp16.i, label %do.end20.i, label %gpmc_read_timings_dt.exit.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.207, i32 noundef %27) #11
  br label %gpmc_probe_generic_child.exit.thread

gpmc_read_timings_dt.exit.i:                      ; preds = %if.end13.i
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %child.025, i32 0, i32 2
  %28 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %full_name.i, align 4
  %arrayidx.i217.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %27
  %30 = ptrtoint ptr %arrayidx.i217.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %arrayidx.i217.i, align 4
  call void @gpmc_read_settings_dt(ptr noundef nonnull %child.025, ptr noundef nonnull %gpmc_s.i) #8
  %31 = call ptr @memset(ptr %gpmc_t.i, i32 0, i32 112)
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.248, ptr noundef nonnull %gpmc_t.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i107.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.249, ptr noundef %cs_on.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i108.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.250, ptr noundef %cs_rd_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i109.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.251, ptr noundef %cs_wr_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i110.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.252, ptr noundef %adv_on.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i111.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.253, ptr noundef %adv_rd_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i112.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.254, ptr noundef %adv_wr_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i113.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.255, ptr noundef %adv_aad_mux_on.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i114.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.256, ptr noundef %adv_aad_mux_rd_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i115.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.257, ptr noundef %adv_aad_mux_wr_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i116.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.258, ptr noundef %we_on.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i117.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.259, ptr noundef %we_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i118.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.260, ptr noundef %oe_on.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i119.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.261, ptr noundef %oe_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i120.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.262, ptr noundef %oe_aad_mux_on.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i121.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.263, ptr noundef %oe_aad_mux_off.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i122.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.264, ptr noundef %page_burst_access.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i123.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.265, ptr noundef %access.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i124.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.266, ptr noundef %rd_cycle.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i125.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.267, ptr noundef %wr_cycle.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i126.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.268, ptr noundef %bus_turnaround.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i127.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.269, ptr noundef %cycle2cycle_delay.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i128.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.270, ptr noundef %wait_monitoring.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i129.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.271, ptr noundef %clk_activation.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i130.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.272, ptr noundef %wr_access.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i131.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.273, ptr noundef %wr_data_mux_bus.i.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i218.i = call ptr @of_find_property(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.274, ptr noundef null) #8
  %tobool.i.i.i = icmp ne ptr %call.i.i218.i, null
  %frombool.i.i = zext i1 %tobool.i.i.i to i8
  %32 = ptrtoint ptr %bool_timings.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i.i, ptr %bool_timings.i.i, align 4
  %call.i132.i.i = call ptr @of_find_property(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.275, ptr noundef null) #8
  %tobool.i133.i.i = icmp ne ptr %call.i132.i.i, null
  %frombool29.i.i = zext i1 %tobool.i133.i.i to i8
  %33 = ptrtoint ptr %cycle2cyclesamecsen.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool29.i.i, ptr %cycle2cyclesamecsen.i.i, align 1
  %call.i134.i.i = call ptr @of_find_property(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.276, ptr noundef null) #8
  %tobool.i135.i.i = icmp ne ptr %call.i134.i.i, null
  %frombool31.i.i = zext i1 %tobool.i135.i.i to i8
  %34 = ptrtoint ptr %we_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool31.i.i, ptr %we_extra_delay.i.i, align 2
  %call.i136.i.i = call ptr @of_find_property(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.277, ptr noundef null) #8
  %tobool.i137.i.i = icmp ne ptr %call.i136.i.i, null
  %frombool33.i.i = zext i1 %tobool.i137.i.i to i8
  %35 = ptrtoint ptr %oe_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool33.i.i, ptr %oe_extra_delay.i.i, align 1
  %call.i138.i.i = call ptr @of_find_property(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.278, ptr noundef null) #8
  %tobool.i139.i.i = icmp ne ptr %call.i138.i.i, null
  %frombool35.i.i = zext i1 %tobool.i139.i.i to i8
  %36 = ptrtoint ptr %adv_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool35.i.i, ptr %adv_extra_delay.i.i, align 4
  %call.i140.i.i = call ptr @of_find_property(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.279, ptr noundef null) #8
  %tobool.i141.i.i = icmp ne ptr %call.i140.i.i, null
  %frombool37.i.i = zext i1 %tobool.i141.i.i to i8
  %37 = ptrtoint ptr %cs_extra_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool37.i.i, ptr %cs_extra_delay.i.i, align 1
  %call.i142.i.i = call ptr @of_find_property(ptr noundef nonnull %child.025, ptr noundef nonnull @.str.280, ptr noundef null) #8
  %tobool.i143.i.i = icmp ne ptr %call.i142.i.i, null
  %frombool39.i.i = zext i1 %tobool.i143.i.i to i8
  %38 = ptrtoint ptr %time_para_granularity.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool39.i.i, ptr %time_para_granularity.i.i, align 2
  %39 = ptrtoint ptr %cs_rd_off.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cs_rd_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool23.not.i = icmp eq i32 %40, 0
  %41 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cs.i, align 4
  br i1 %tobool23.not.i, label %do.end32.i, label %if.end45.i

do.end32.i:                                       ; preds = %gpmc_read_timings_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2133, i32 noundef 9, ptr noundef nonnull @.str.209, i32 noundef %42) #8
  %43 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cs.i, align 4
  call fastcc void @gpmc_cs_show_timings(i32 noundef %44, ptr noundef nonnull @.str.210) #8
  br label %no_timings.i

if.end45.i:                                       ; preds = %gpmc_read_timings_dt.exit.i
  %45 = load ptr, ptr @gpmc_base, align 4
  %mul.i.i.i = mul i32 %42, 48
  %add.ptr1.i.i.i = getelementptr i8, ptr %45, i32 120
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !561
  %47 = and i32 %46, -1073741825
  %48 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i5.i.i = getelementptr i8, ptr %48, i32 120
  %add.ptr2.i6.i.i = getelementptr i8, ptr %add.ptr1.i5.i.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i.i, i32 %47) #8, !srcloc !559
  %49 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cs.i, align 4
  %51 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %res.i, align 4
  %53 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %50)
  %cmp.not.i.i = icmp ugt i32 %53, %50
  br i1 %cmp.not.i.i, label %if.end.i219.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.281) #11
  br label %do.end51.i

if.end.i219.i:                                    ; preds = %if.end45.i
  %and.i.i = and i32 %52, -16777216
  %54 = load ptr, ptr @gpmc_base, align 4
  %mul.i.i.i.i = mul i32 %50, 48
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %54, i32 120
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 %mul.i.i.i.i
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #8, !srcloc !561
  %56 = call i32 @llvm.bswap.i32(i32 %55) #8
  %and.i.i.i = shl i32 %56, 24
  %shl.i.i.i = and i32 %and.i.i.i, 1056964608
  %57 = shl i32 %56, 16
  %shl2.i.i.i = and i32 %57, 251658240
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %shl.i.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, %shl.i.i.i
  br i1 %cmp1.i.i, label %if.end.i219.i.if.end69.i_crit_edge, label %if.end3.i.i

if.end.i219.i.if.end69.i_crit_edge:               ; preds = %if.end.i219.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.end3.i.i:                                      ; preds = %if.end.i219.i
  %mem.i.i.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %50, i32 2
  call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #8
  %call.i.i220.i = call i32 @release_resource(ptr noundef %mem.i.i.i) #8
  %58 = ptrtoint ptr %mem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %mem.i.i.i, align 4
  %end.i.i.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %50, i32 2, i32 1
  %59 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %end.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @gpmc_mem_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i220.i)
  %cmp5.i.i = icmp slt i32 %call.i.i220.i, 0
  br i1 %cmp5.i.i, label %if.end3.i.i.do.end51.i_crit_edge, label %if.end7.i.i

if.end3.i.i.do.end51.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %sub.i.i.i.i = xor i32 %shl2.i.i.i, 268435455
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 23
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end7.i.i
  %size.addr.0.i.i.i.i = phi i32 [ %shr.i.i.i.i, %if.end7.i.i ], [ %shr1.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %order.0.i.i.i.i = phi i32 [ 23, %if.end7.i.i ], [ %inc.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %shr1.i.i.i.i = lshr i32 %size.addr.0.i.i.i.i, 1
  %inc.i.i.i.i = add nuw nsw i32 %order.0.i.i.i.i, 1
  %tobool.not.i.i.i.i = icmp ult i32 %size.addr.0.i.i.i.i, 2
  br i1 %tobool.not.i.i.i.i, label %gpmc_cs_insert_mem.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

gpmc_cs_insert_mem.exit.i.i:                      ; preds = %do.body.i.i.i.i
  %shl.i.i.i.i = shl i32 2, %order.0.i.i.i.i
  call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #8
  %60 = ptrtoint ptr %mem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and.i.i, ptr %mem.i.i.i, align 4
  %add.i.i.i = add i32 %and.i.i, -1
  %sub.i27.i.i = add i32 %add.i.i.i, %shl.i.i.i.i
  %61 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i27.i.i, ptr %end.i.i.i, align 4
  %call1.i.i.i = call i32 @request_resource(ptr noundef nonnull @gpmc_mem_root, ptr noundef %mem.i.i.i) #8
  call void @_raw_spin_unlock(ptr noundef nonnull @gpmc_mem_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp9.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp9.i.i, label %gpmc_cs_insert_mem.exit.i.i.do.end51.i_crit_edge, label %if.end11.i.i

gpmc_cs_insert_mem.exit.i.i.do.end51.i_crit_edge: ; preds = %gpmc_cs_insert_mem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51.i

if.end11.i.i:                                     ; preds = %gpmc_cs_insert_mem.exit.i.i
  %and.i30.i.i = and i32 %sub.i.i.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i30.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end11.i.i.do.end51.i_crit_edge

if.end11.i.i.do.end51.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51.i

if.end.i.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i = lshr i32 %52, 24
  %62 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i.i33.i.i = getelementptr i8, ptr %62, i32 120
  %add.ptr2.i.i34.i.i = getelementptr i8, ptr %add.ptr1.i.i33.i.i, i32 %mul.i.i.i.i
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i34.i.i) #8, !srcloc !561
  %64 = and i32 %63, -2131689473
  %65 = call i32 @llvm.bswap.i32(i32 %64) #8
  %and4.i.i.i = and i32 %shr.i.i.i, 63
  %and5.i.i.i = and i32 %56, 3840
  %or.i.i.i = or i32 %and4.i.i.i, %and5.i.i.i
  %or6.i.i.i = or i32 %or.i.i.i, %65
  %or7.i.i.i = or i32 %or6.i.i.i, 64
  %66 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i21.i.i.i = getelementptr i8, ptr %66, i32 120
  %add.ptr2.i22.i.i.i = getelementptr i8, ptr %add.ptr1.i21.i.i.i, i32 %mul.i.i.i.i
  %67 = call i32 @llvm.bswap.i32(i32 %or7.i.i.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22.i.i.i, i32 %67) #8, !srcloc !559
  br label %if.end69.i

do.end51.i:                                       ; preds = %if.end11.i.i.do.end51.i_crit_edge, %gpmc_cs_insert_mem.exit.i.i.do.end51.i_crit_edge, %if.end3.i.i.do.end51.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %if.end11.i.i.do.end51.i_crit_edge ], [ %call1.i.i.i, %gpmc_cs_insert_mem.exit.i.i.do.end51.i_crit_edge ], [ %call.i.i220.i, %if.end3.i.i.do.end51.i_crit_edge ], [ -19, %do.end.i.i ]
  %68 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cs.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.212, i32 noundef %69, ptr noundef nonnull %res.i) #11
  %70 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %71)
  %cmp55.i = icmp ult i32 %71, 16777216
  br i1 %cmp55.i, label %do.end59.i, label %if.else.i

do.end59.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cs.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.215, i32 noundef %73, i32 noundef 16777216) #11
  br label %gpmc_probe_generic_child.exit.thread21

if.else.i:                                        ; preds = %do.end51.i
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %75)
  %cmp61.i = icmp ugt i32 %75, 1073741823
  br i1 %cmp61.i, label %do.end65.i, label %if.else.i.gpmc_probe_generic_child.exit.thread21_crit_edge

if.else.i.gpmc_probe_generic_child.exit.thread21_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_probe_generic_child.exit.thread21

do.end65.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cs.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.218, i32 noundef %77, i32 noundef 1073741823) #11
  br label %gpmc_probe_generic_child.exit.thread21

if.end69.i:                                       ; preds = %if.end.i.i.i, %if.end.i219.i.if.end69.i_crit_edge
  %call70.i = call zeroext i1 @of_node_name_eq(ptr noundef %child.025, ptr noundef nonnull @.str.220) #8
  br i1 %call70.i, label %if.then71.i, label %if.end69.i.if.end79.i_crit_edge

if.end69.i.if.end79.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.then71.i:                                      ; preds = %if.end69.i
  %call.i221.i = call ptr @of_find_property(ptr noundef %child.025, ptr noundef nonnull @.str.221, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i221.i, null
  br i1 %tobool.i.not.i, label %do.end76.i, label %if.then71.i.if.end79.i_crit_edge

if.then71.i.if.end79.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

do.end76.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.223) #11
  br label %gpmc_probe_generic_child.exit.thread21

if.end79.i:                                       ; preds = %if.then71.i.if.end79.i_crit_edge, %if.end69.i.if.end79.i_crit_edge
  %call80.i = call zeroext i1 @of_node_name_eq(ptr noundef %child.025, ptr noundef nonnull @.str.225) #8
  br i1 %call80.i, label %if.then81.i, label %if.end79.i.if.end89.i_crit_edge

if.end79.i.if.end89.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then81.i:                                      ; preds = %if.end79.i
  %call.i222.i = call ptr @of_find_property(ptr noundef %child.025, ptr noundef nonnull @.str.221, ptr noundef null) #8
  %tobool.i223.not.i = icmp eq ptr %call.i222.i, null
  br i1 %tobool.i223.not.i, label %do.end86.i, label %if.then81.i.if.end89.i_crit_edge

if.then81.i.if.end89.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

do.end86.i:                                       ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.227) #11
  br label %gpmc_probe_generic_child.exit.thread21

if.end89.i:                                       ; preds = %if.then81.i.if.end89.i_crit_edge, %if.end79.i.if.end89.i_crit_edge
  %call90.i = call ptr @of_match_node(ptr noundef nonnull @omap_nand_ids, ptr noundef %child.025) #8
  %tobool91.not.i = icmp eq ptr %call90.i, null
  br i1 %tobool91.not.i, label %if.else101.i, label %if.then92.i

if.then92.i:                                      ; preds = %if.end89.i
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8, ptr %val.i, align 4
  %call.i.i224.i = call i32 @of_property_read_variable_u32_array(ptr noundef %child.025, ptr noundef nonnull @.str.229, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %79 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %80, label %do.end98.i [
    i32 8, label %if.then92.i.sw.epilog.i_crit_edge
    i32 16, label %sw.bb94.i
  ]

if.then92.i.sw.epilog.i_crit_edge:                ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb94.i:                                        ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end98.i:                                       ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.231, ptr noundef %child.025) #11
  br label %gpmc_probe_generic_child.exit.thread21

sw.epilog.i:                                      ; preds = %sw.bb94.i, %if.then92.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 2, %sw.bb94.i ], [ 1, %if.then92.i.sw.epilog.i_crit_edge ]
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge.i, ptr %5, align 4
  %83 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i225.i = getelementptr i8, ptr %83, i32 80
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i225.i) #8, !srcloc !561
  %85 = or i32 %84, 268435456
  %86 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %86, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %85) #8, !srcloc !559
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %2, align 1
  br label %if.end114.i

if.else101.i:                                     ; preds = %if.end89.i
  %call.i.i227.i = call i32 @of_property_read_variable_u32_array(ptr noundef %child.025, ptr noundef nonnull @.str.233, ptr noundef %5, i32 noundef 1, i32 noundef 0) #8
  %88 = call i32 @llvm.smin.i32(i32 %call.i.i227.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i227.i)
  %cmp104.i = icmp slt i32 %call.i.i227.i, 0
  br i1 %cmp104.i, label %land.lhs.true105.i, label %if.else101.i.if.end114.i_crit_edge

if.else101.i.if.end114.i_crit_edge:               ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

land.lhs.true105.i:                               ; preds = %if.else101.i
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool107.not.i = icmp eq i32 %90, 0
  br i1 %tobool107.not.i, label %do.end111.i, label %land.lhs.true105.i.if.end114.i_crit_edge

land.lhs.true105.i.if.end114.i_crit_edge:         ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

do.end111.i:                                      ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.235, ptr noundef %child.025) #11
  br label %gpmc_probe_generic_child.exit

if.end114.i:                                      ; preds = %land.lhs.true105.i.if.end114.i_crit_edge, %if.else101.i.if.end114.i_crit_edge, %sw.epilog.i
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %3, align 2, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool115.not.i = icmp eq i8 %92, 0
  br i1 %tobool115.not.i, label %lor.lhs.false.i, label %if.end114.i.if.then117.i_crit_edge

if.end114.i.if.then117.i_crit_edge:               ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117.i

lor.lhs.false.i:                                  ; preds = %if.end114.i
  %93 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %4, align 1, !range !560
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool116.not.i = icmp eq i8 %94, 0
  br i1 %tobool116.not.i, label %lor.lhs.false.i.if.end128.i_crit_edge, label %lor.lhs.false.i.if.then117.i_crit_edge

lor.lhs.false.i.if.then117.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117.i

lor.lhs.false.i.if.end128.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.then117.i:                                     ; preds = %lor.lhs.false.i.if.then117.i_crit_edge, %if.end114.i.if.then117.i_crit_edge
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %6, align 4
  %gpio_chip.i = getelementptr inbounds %struct.gpmc_device, ptr %15, i32 0, i32 3
  %call119.i = call ptr @gpiochip_request_own_desc(ptr noundef %gpio_chip.i, i32 noundef %96, ptr noundef nonnull @.str.237, i32 noundef 0, i32 noundef 1) #8
  %cmp.i.i = icmp ugt ptr %call119.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i, label %if.then117.i.if.end128.i_crit_edge

if.then117.i.if.end128.i_crit_edge:               ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

cleanup.i:                                        ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.239, i32 noundef %96) #11
  %97 = ptrtoint ptr %call119.i to i32
  br label %gpmc_probe_generic_child.exit

if.end128.i:                                      ; preds = %if.then117.i.if.end128.i_crit_edge, %lor.lhs.false.i.if.end128.i_crit_edge
  %waitpin_desc.0.i = phi ptr [ null, %lor.lhs.false.i.if.end128.i_crit_edge ], [ %call119.i, %if.then117.i.if.end128.i_crit_edge ]
  %98 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cs.i, align 4
  call fastcc void @gpmc_cs_show_timings(i32 noundef %99, ptr noundef nonnull @.str.241) #8
  %100 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cs.i, align 4
  %call129.i = call i32 @gpmc_cs_program_settings(i32 noundef %101, ptr noundef nonnull %gpmc_s.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %cmp130.i = icmp slt i32 %call129.i, 0
  br i1 %cmp130.i, label %if.end128.i.err_cs.i_crit_edge, label %if.end132.i

if.end128.i.err_cs.i_crit_edge:                   ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cs.i

if.end132.i:                                      ; preds = %if.end128.i
  %102 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cs.i, align 4
  %call133.i = call i32 @gpmc_cs_set_timings(i32 noundef %103, ptr noundef nonnull %gpmc_t.i, ptr noundef nonnull %gpmc_s.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.not.i, label %if.end140.i, label %if.end132.i.err_cs.i.sink.split_crit_edge

if.end132.i.err_cs.i.sink.split_crit_edge:        ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cs.i.sink.split

if.end140.i:                                      ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 80
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %106 = and i32 %105, -33554433
  %107 = call i32 @llvm.bswap.i32(i32 %106) #8
  %108 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %val.i, align 4
  %109 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i228.i = getelementptr i8, ptr %109, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228.i, i32 %106) #8, !srcloc !559
  %110 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cs.i, align 4
  %112 = load ptr, ptr @gpmc_base, align 4
  %mul.i.i230.i = mul i32 %111, 48
  %add.ptr1.i.i231.i = getelementptr i8, ptr %112, i32 120
  %add.ptr2.i.i232.i = getelementptr i8, ptr %add.ptr1.i.i231.i, i32 %mul.i.i230.i
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i232.i) #8, !srcloc !561
  %114 = or i32 %113, 1073741824
  %115 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i5.i234.i = getelementptr i8, ptr %115, i32 120
  %add.ptr2.i6.i235.i = getelementptr i8, ptr %add.ptr1.i5.i234.i, i32 %mul.i.i230.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i235.i, i32 %114) #8, !srcloc !559
  br label %no_timings.i

no_timings.i:                                     ; preds = %if.end140.i, %do.end32.i, %land.lhs.true.i.no_timings.i_crit_edge
  %waitpin_desc.1.i = phi ptr [ null, %land.lhs.true.i.no_timings.i_crit_edge ], [ %waitpin_desc.0.i, %if.end140.i ], [ null, %do.end32.i ]
  %call143.i = call ptr @of_platform_device_create(ptr noundef %child.025, ptr noundef null, ptr noundef %dev) #8
  %tobool144.not.i = icmp eq ptr %call143.i, null
  br i1 %tobool144.not.i, label %no_timings.i.err_cs.i.sink.split_crit_edge, label %if.end146.i

no_timings.i.err_cs.i.sink.split_crit_edge:       ; preds = %no_timings.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cs.i.sink.split

if.end146.i:                                      ; preds = %no_timings.i
  %call147.i = call ptr @of_match_node(ptr noundef nonnull @of_default_bus_match_table, ptr noundef %child.025) #8
  %tobool148.not.i = icmp eq ptr %call147.i, null
  br i1 %tobool148.not.i, label %if.end146.i.gpmc_probe_generic_child.exit.thread17_crit_edge, label %if.then149.i

if.end146.i.gpmc_probe_generic_child.exit.thread17_crit_edge: ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_probe_generic_child.exit.thread17

if.then149.i:                                     ; preds = %if.end146.i
  %call151.i = call i32 @of_platform_default_populate(ptr noundef %child.025, ptr noundef null, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %if.then149.i.gpmc_probe_generic_child.exit.thread17_crit_edge, label %if.then149.i.err_cs.i.sink.split_crit_edge

if.then149.i.err_cs.i.sink.split_crit_edge:       ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cs.i.sink.split

if.then149.i.gpmc_probe_generic_child.exit.thread17_crit_edge: ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpmc_probe_generic_child.exit.thread17

err_cs.i.sink.split:                              ; preds = %if.then149.i.err_cs.i.sink.split_crit_edge, %no_timings.i.err_cs.i.sink.split_crit_edge, %if.end132.i.err_cs.i.sink.split_crit_edge
  %.str.246.sink = phi ptr [ @.str.243, %if.end132.i.err_cs.i.sink.split_crit_edge ], [ @.str.246, %if.then149.i.err_cs.i.sink.split_crit_edge ], [ @.str.246, %no_timings.i.err_cs.i.sink.split_crit_edge ]
  %ret.2.i.ph = phi i32 [ %call133.i, %if.end132.i.err_cs.i.sink.split_crit_edge ], [ -19, %if.then149.i.err_cs.i.sink.split_crit_edge ], [ -19, %no_timings.i.err_cs.i.sink.split_crit_edge ]
  %waitpin_desc.2.i.ph = phi ptr [ %waitpin_desc.0.i, %if.end132.i.err_cs.i.sink.split_crit_edge ], [ %waitpin_desc.1.i, %if.then149.i.err_cs.i.sink.split_crit_edge ], [ %waitpin_desc.1.i, %no_timings.i.err_cs.i.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.246.sink, ptr noundef %child.025) #11
  br label %err_cs.i

err_cs.i:                                         ; preds = %err_cs.i.sink.split, %if.end128.i.err_cs.i_crit_edge
  %ret.2.i = phi i32 [ %call129.i, %if.end128.i.err_cs.i_crit_edge ], [ %ret.2.i.ph, %err_cs.i.sink.split ]
  %waitpin_desc.2.i = phi ptr [ %waitpin_desc.0.i, %if.end128.i.err_cs.i_crit_edge ], [ %waitpin_desc.2.i.ph, %err_cs.i.sink.split ]
  call void @gpiochip_free_own_desc(ptr noundef %waitpin_desc.2.i) #8
  br label %gpmc_probe_generic_child.exit.thread21

gpmc_probe_generic_child.exit.thread:             ; preds = %do.end20.i, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call15.i, %do.end20.i ], [ -19, %do.end7.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %gpmc_t.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gpmc_s.i) #8
  br label %do.end

gpmc_probe_generic_child.exit.thread17:           ; preds = %if.then149.i.gpmc_probe_generic_child.exit.thread17_crit_edge, %if.end146.i.gpmc_probe_generic_child.exit.thread17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %gpmc_t.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gpmc_s.i) #8
  br label %for.inc

gpmc_probe_generic_child.exit.thread21:           ; preds = %err_cs.i, %do.end98.i, %do.end86.i, %do.end76.i, %do.end65.i, %if.else.i.gpmc_probe_generic_child.exit.thread21_crit_edge, %do.end59.i
  %ret.3.i.ph = phi i32 [ -22, %do.end76.i ], [ -22, %do.end86.i ], [ -22, %do.end98.i ], [ %retval.0.i.ph.i, %if.else.i.gpmc_probe_generic_child.exit.thread21_crit_edge ], [ %retval.0.i.ph.i, %do.end65.i ], [ %retval.0.i.ph.i, %do.end59.i ], [ %ret.2.i, %err_cs.i ]
  %116 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cs.i, align 4
  call void @gpmc_cs_free(i32 noundef %117) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %gpmc_t.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gpmc_s.i) #8
  br label %do.end

gpmc_probe_generic_child.exit:                    ; preds = %cleanup.i, %do.end111.i
  %ret.3.i = phi i32 [ %97, %cleanup.i ], [ %88, %do.end111.i ]
  %118 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cs.i, align 4
  call void @gpmc_cs_free(i32 noundef %119) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %gpmc_t.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gpmc_s.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool.not, label %gpmc_probe_generic_child.exit.for.inc_crit_edge, label %gpmc_probe_generic_child.exit.do.end_crit_edge

gpmc_probe_generic_child.exit.do.end_crit_edge:   ; preds = %gpmc_probe_generic_child.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

gpmc_probe_generic_child.exit.for.inc_crit_edge:  ; preds = %gpmc_probe_generic_child.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %gpmc_probe_generic_child.exit.do.end_crit_edge, %gpmc_probe_generic_child.exit.thread21, %gpmc_probe_generic_child.exit.thread
  %retval.0.i15 = phi i32 [ %retval.0.i.ph, %gpmc_probe_generic_child.exit.thread ], [ %ret.3.i, %gpmc_probe_generic_child.exit.do.end_crit_edge ], [ %ret.3.i.ph, %gpmc_probe_generic_child.exit.thread21 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.198, ptr noundef nonnull %child.025, i32 noundef %retval.0.i15) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %gpmc_probe_generic_child.exit.for.inc_crit_edge, %gpmc_probe_generic_child.exit.thread17
  %120 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %of_node, align 8
  %call5 = call ptr @of_get_next_available_child(ptr noundef %121, ptr noundef nonnull %child.025) #8
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpmc_context_notifier(ptr noundef %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -492
  %is_suspended = getelementptr i8, ptr %nb, i32 300
  %0 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 18
  %3 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %lor.lhs.false
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 15
  %5 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @omap3_gpmc_save_context(ptr noundef %add.ptr)
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @omap3_gpmc_restore_context(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmc_mem_exit() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5.not = icmp eq i32 %0, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cs.06 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @gpmc_base, align 4
  %mul.i.i = mul i32 %cs.06, 48
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 120
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %mul.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !561
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mem.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs.06, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull @gpmc_mem_lock) #8
  %call.i = tail call i32 @release_resource(ptr noundef %mem.i) #8
  %4 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mem.i, align 4
  %end.i = getelementptr [8 x %struct.gpmc_cs_data], ptr @gpmc_cs, i32 0, i32 %cs.06, i32 2, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %end.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gpmc_mem_lock) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %cs.06, 1
  %6 = load i32, ptr @gpmc_cs_num, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpmc_gpio_get_direction(ptr nocapture noundef readnone %chip, i32 noundef %offset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpmc_gpio_direction_input(ptr nocapture noundef readnone %chip, i32 noundef %offset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpmc_gpio_direction_output(ptr nocapture noundef readnone %chip, i32 noundef %offset, i32 noundef %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gpmc_gpio_set(ptr nocapture noundef %chip, i32 noundef %offset, i32 noundef %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_gpio_get(ptr nocapture noundef readnone %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 8
  %0 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 84
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !561
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = lshr i32 %2, %add
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpmc_irq_enable(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  %add.i = add i32 %1, 6
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %1
  %2 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 28
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %shl.i = shl nuw i32 1, %spec.select.i
  %or.i = or i32 %4, %shl.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %6 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %5) #8, !srcloc !559
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpmc_irq_disable(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  %add.i = add i32 %1, 6
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %1
  %2 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 28
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %shl.i = shl nuw i32 1, %spec.select.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %6 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %5) #8, !srcloc !559
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpmc_irq_ack(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  %add = add i32 %1, 6
  %spec.select = select i1 %cmp, i32 %add, i32 %1
  %shl = shl nuw i32 1, %spec.select
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %3 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !559
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpmc_irq_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  %add.i = add i32 %1, 6
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %1
  %2 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 28
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %shl.i = shl nuw i32 1, %spec.select.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %6 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %5) #8, !srcloc !559
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpmc_irq_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  %add.i = add i32 %1, 6
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %1
  %2 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 28
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %shl.i = shl nuw i32 1, %spec.select.i
  %or.i = or i32 %4, %shl.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %6 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %5) #8, !srcloc !559
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %trigger) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %trigger to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %trigger, label %if.end.return_crit_edge [
    i32 2, label %if.then2
    i32 1, label %if.then5
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %1, 6
  %3 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %5, %shl.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %7 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %6) #8, !srcloc !559
  br label %return

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i13 = add i32 %1, 6
  %8 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #8, !srcloc !561
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %shl.i15 = shl nuw i32 1, %add.i13
  %neg.i16 = xor i32 %shl.i15, -1
  %and.i17 = and i32 %10, %neg.i16
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i17) #8
  %12 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i9.i19 = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i19, i32 %11) #8, !srcloc !559
  br label %return

return:                                           ; preds = %if.then5, %if.then2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %if.then5 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 24
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !561
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nirqs = getelementptr inbounds %struct.gpmc_device, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nirqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32 = icmp sgt i32 %3, 0
  br i1 %cmp32, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %regvalx.036 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ %4, %for.body.preheader ]
  %hwirq.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hwirq.033)
  %cmp1 = icmp eq i32 %hwirq.033, 2
  %shr = lshr i32 %regvalx.036, 6
  %spec.select = select i1 %cmp1, i32 %shr, i32 %regvalx.036
  %shl = shl nuw i32 1, %hwirq.033
  %and = and i32 %spec.select, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %5 = load ptr, ptr @gpmc_irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq.i, align 4, !annotation !563
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef %hwirq.033, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  br label %do.end

irq_find_mapping.exit:                            ; preds = %if.then5
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %irq_find_mapping.exit.do.end_crit_edge, label %irq_find_mapping.exit.if.end9_crit_edge

irq_find_mapping.exit.if.end9_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

irq_find_mapping.exit.do.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %irq_find_mapping.exit.do.end_crit_edge, %irq_find_mapping.exit.thread
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.195, i32 noundef %hwirq.033, i32 noundef 0) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %irq_find_mapping.exit.if.end9_crit_edge
  %retval.0.i30 = phi i32 [ 0, %do.end ], [ %8, %irq_find_mapping.exit.if.end9_crit_edge ]
  %call10 = call i32 @generic_handle_irq(i32 noundef %retval.0.i30) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %hwirq.033, 1
  %11 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nirqs, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %1) #8, !srcloc !559
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_irq_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hw)
  %cmp = icmp ult i32 %hw, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 2048, i32 noundef 4096) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handle_edge_irq.sink = phi ptr [ @handle_simple_irq, %if.then ], [ @handle_edge_irq, %entry.if.end_crit_edge ]
  %irq_chip1 = getelementptr inbounds %struct.gpmc_device, ptr %1, i32 0, i32 2
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef %irq_chip1, ptr noundef nonnull %handle_edge_irq.sink, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_request_own_desc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_gpmc_save_context(ptr noundef writeonly %gpmc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gpmc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @gpmc_base, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %context = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !561
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %context, align 4
  %4 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i71 = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #8, !srcloc !561
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %irqenable = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %irqenable to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irqenable, align 4
  %8 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i72 = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #8, !srcloc !561
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %timeout_ctrl = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %timeout_ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %timeout_ctrl, align 4
  %12 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i73 = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #8, !srcloc !561
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %config = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %config, align 4
  %16 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i74 = getelementptr i8, ptr %16, i32 480
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #8, !srcloc !561
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %prefetch_config1 = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 4
  %19 = ptrtoint ptr %prefetch_config1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %prefetch_config1, align 4
  %20 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i75 = getelementptr i8, ptr %20, i32 484
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #8, !srcloc !561
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %prefetch_config2 = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 5
  %23 = ptrtoint ptr %prefetch_config2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %prefetch_config2, align 4
  %24 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i76 = getelementptr i8, ptr %24, i32 492
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #8, !srcloc !561
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %prefetch_control = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 6
  %27 = ptrtoint ptr %prefetch_control to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %prefetch_control, align 4
  %28 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp101.not = icmp eq i32 %28, 0
  br i1 %cmp101.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %29 = load ptr, ptr @gpmc_base, align 4
  %mul.i.i = mul i32 %i.0102, 48
  %add.ptr1.i.i = getelementptr i8, ptr %29, i32 120
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %mul.i.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !561
  %31 = lshr i32 %30, 24
  %and.i = and i32 %31, 64
  %is_valid = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102, i32 7
  %32 = ptrtoint ptr %is_valid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i, ptr %is_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102
  %33 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i77 = getelementptr i8, ptr %33, i32 96
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i77, i32 %mul.i.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !561
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx, align 4
  %37 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i80 = getelementptr i8, ptr %37, i32 100
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i80, i32 %mul.i.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !561
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %config2 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102, i32 1
  %40 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %config2, align 4
  %41 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i83 = getelementptr i8, ptr %41, i32 104
  %add.ptr2.i84 = getelementptr i8, ptr %add.ptr1.i83, i32 %mul.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i84) #8, !srcloc !561
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %config3 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102, i32 2
  %44 = ptrtoint ptr %config3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %config3, align 4
  %45 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i87 = getelementptr i8, ptr %45, i32 108
  %add.ptr2.i88 = getelementptr i8, ptr %add.ptr1.i87, i32 %mul.i.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i88) #8, !srcloc !561
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %config4 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102, i32 3
  %48 = ptrtoint ptr %config4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %config4, align 4
  %49 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i91 = getelementptr i8, ptr %49, i32 112
  %add.ptr2.i92 = getelementptr i8, ptr %add.ptr1.i91, i32 %mul.i.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i92) #8, !srcloc !561
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  %config5 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102, i32 4
  %52 = ptrtoint ptr %config5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %config5, align 4
  %53 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i95 = getelementptr i8, ptr %53, i32 116
  %add.ptr2.i96 = getelementptr i8, ptr %add.ptr1.i95, i32 %mul.i.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i96) #8, !srcloc !561
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %config6 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102, i32 5
  %56 = ptrtoint ptr %config6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %config6, align 4
  %57 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i99 = getelementptr i8, ptr %57, i32 120
  %add.ptr2.i100 = getelementptr i8, ptr %add.ptr1.i99, i32 %mul.i.i
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i100) #8, !srcloc !561
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %config7 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.0102, i32 6
  %60 = ptrtoint ptr %config7 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %config7, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0102, 1
  %61 = load i32, ptr @gpmc_cs_num, align 4
  %cmp = icmp ult i32 %inc, %61
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_gpmc_restore_context(ptr noundef readonly %gpmc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gpmc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @gpmc_base, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %context = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %context, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !559
  %irqenable = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %irqenable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqenable, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %7 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i52 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %6) #8, !srcloc !559
  %timeout_ctrl = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %timeout_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout_ctrl, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %11 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %10) #8, !srcloc !559
  %config = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i54 = getelementptr i8, ptr %15, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %14) #8, !srcloc !559
  %prefetch_config1 = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %prefetch_config1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prefetch_config1, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i55 = getelementptr i8, ptr %19, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %18) #8, !srcloc !559
  %prefetch_config2 = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %prefetch_config2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prefetch_config2, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %23 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i56 = getelementptr i8, ptr %23, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %22) #8, !srcloc !559
  %prefetch_control = getelementptr inbounds %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 6
  %24 = ptrtoint ptr %prefetch_control to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prefetch_control, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %27 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i57 = getelementptr i8, ptr %27, i32 492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %26) #8, !srcloc !559
  %28 = load i32, ptr @gpmc_cs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp86.not = icmp eq i32 %28, 0
  br i1 %cmp86.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %is_valid = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087, i32 7
  %29 = ptrtoint ptr %is_valid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %is_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not = icmp eq i32 %30, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = load ptr, ptr @gpmc_base, align 4
  %add.ptr.i58 = getelementptr i8, ptr %33, i32 96
  %mul.i = mul i32 %i.087, 48
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i58, i32 %mul.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %34) #8, !srcloc !559
  %config2 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087, i32 1
  %35 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config2, align 4
  %37 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i61 = getelementptr i8, ptr %37, i32 100
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i61, i32 %mul.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %38) #8, !srcloc !559
  %config3 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087, i32 2
  %39 = ptrtoint ptr %config3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %config3, align 4
  %41 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i64 = getelementptr i8, ptr %41, i32 104
  %add.ptr2.i65 = getelementptr i8, ptr %add.ptr1.i64, i32 %mul.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i65, i32 %42) #8, !srcloc !559
  %config4 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087, i32 3
  %43 = ptrtoint ptr %config4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %config4, align 4
  %45 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i68 = getelementptr i8, ptr %45, i32 108
  %add.ptr2.i69 = getelementptr i8, ptr %add.ptr1.i68, i32 %mul.i
  %46 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i69, i32 %46) #8, !srcloc !559
  %config5 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087, i32 4
  %47 = ptrtoint ptr %config5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %config5, align 4
  %49 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i72 = getelementptr i8, ptr %49, i32 112
  %add.ptr2.i73 = getelementptr i8, ptr %add.ptr1.i72, i32 %mul.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i73, i32 %50) #8, !srcloc !559
  %config6 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087, i32 5
  %51 = ptrtoint ptr %config6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config6, align 4
  %53 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i76 = getelementptr i8, ptr %53, i32 116
  %add.ptr2.i77 = getelementptr i8, ptr %add.ptr1.i76, i32 %mul.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i77, i32 %54) #8, !srcloc !559
  %config7 = getelementptr %struct.gpmc_device, ptr %gpmc, i32 0, i32 5, i32 7, i32 %i.087, i32 6
  %55 = ptrtoint ptr %config7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %config7, align 4
  %57 = load ptr, ptr @gpmc_base, align 4
  %add.ptr1.i80 = getelementptr i8, ptr %57, i32 120
  %add.ptr2.i81 = getelementptr i8, ptr %add.ptr1.i80, i32 %mul.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i81, i32 %58) #8, !srcloc !559
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %59 = load ptr, ptr @gpmc_base, align 4
  %mul.i83 = mul i32 %i.087, 48
  %add.ptr1.i84 = getelementptr i8, ptr %59, i32 120
  %add.ptr2.i85 = getelementptr i8, ptr %add.ptr1.i84, i32 %mul.i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i85, i32 0) #8, !srcloc !559
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then3
  %inc = add nuw i32 %i.087, 1
  %60 = load i32, ptr @gpmc_cs_num, align 4
  %cmp = icmp ult i32 %inc, %60
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @omap3_gpmc_save_context(ptr noundef %1)
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  %is_suspended = getelementptr inbounds %struct.gpmc_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_suspended, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_suspended, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmc_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  tail call fastcc void @omap3_gpmc_restore_context(ptr noundef %1)
  %is_suspended = getelementptr inbounds %struct.gpmc_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_suspended, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %is_suspended, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 284)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 284)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !135, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !168, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !295, !296, !298, !299, !300, !301, !302, !304, !306, !307, !309, !311, !313, !315, !317, !319, !320, !321, !322, !323, !324, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !339, !341, !342, !343, !345, !347, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !374, !375, !376, !377, !379, !381, !382, !383, !384, !386, !387, !388, !390, !392, !393, !394, !395, !396, !398, !399, !400, !401, !403, !405, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !436, !438, !439, !440, !442, !444, !445, !446, !448, !450, !451, !452, !454, !456, !457, !458, !460, !462, !463, !464, !466, !468, !469, !470, !472, !473, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !543, !544, !546, !548}
!llvm.module.flags = !{!550, !551, !552, !553, !554, !555, !556, !557}
!llvm.ident = !{!558}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/memory/omap-gpmc.c", i32 722, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gpmc_cs_set_timings._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gpmc_cs_set_timings._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/memory/omap-gpmc.c", i32 732, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/memory/omap-gpmc.c", i32 734, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/omap-gpmc.c", i32 736, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/omap-gpmc.c", i32 741, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/omap-gpmc.c", i32 743, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/omap-gpmc.c", i32 745, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/omap-gpmc.c", i32 752, i32 9}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/omap-gpmc.c", i32 755, i32 9}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/omap-gpmc.c", i32 758, i32 9}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memory/omap-gpmc.c", i32 764, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/omap-gpmc.c", i32 766, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/omap-gpmc.c", i32 770, i32 9}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/omap-gpmc.c", i32 773, i32 9}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/omap-gpmc.c", i32 776, i32 22}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/omap-gpmc.c", i32 778, i32 22}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/omap-gpmc.c", i32 783, i32 22}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/omap-gpmc.c", i32 785, i32 22}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/omap-gpmc.c", i32 787, i32 22}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memory/omap-gpmc.c", i32 790, i32 8}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memory/omap-gpmc.c", i32 796, i32 8}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memory/omap-gpmc.c", i32 799, i32 8}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/omap-gpmc.c", i32 806, i32 9}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memory/omap-gpmc.c", i32 813, i32 9}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/omap-gpmc.c", i32 827, i32 8}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/omap-gpmc.c", i32 831, i32 8}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memory/omap-gpmc.c", i32 836, i32 2}
!58 = !{ptr @gpmc_cs_set_timings._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gpmc_cs_set_timings._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/omap-gpmc.c", i32 841, i32 27}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/omap-gpmc.c", i32 976, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gpmc_cs_request._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @gpmc_cs_request._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__ksymtab_gpmc_cs_request, !68, !"__ksymtab_gpmc_cs_request", i1 false, i1 false}
!68 = !{!"../drivers/memory/omap-gpmc.c", i32 1013, i32 1}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/memory/omap-gpmc.c", i32 1022, i32 3}
!71 = !{ptr @__ksymtab_gpmc_cs_free, !72, !"__ksymtab_gpmc_cs_free", i1 false, i1 false}
!72 = !{!"../drivers/memory/omap-gpmc.c", i32 1035, i32 1}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/memory/omap-gpmc.c", i32 1058, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @gpmc_configure._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @gpmc_configure._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @__ksymtab_gpmc_configure, !79, !"__ksymtab_gpmc_configure", i1 false, i1 false}
!79 = !{!"../drivers/memory/omap-gpmc.c", i32 1064, i32 1}
!80 = !{ptr @__ksymtab_gpmc_omap_get_nand_ops, !81, !"__ksymtab_gpmc_omap_get_nand_ops", i1 false, i1 false}
!81 = !{!"../drivers/memory/omap-gpmc.c", i32 1127, i32 1}
!82 = !{ptr @__ksymtab_gpmc_omap_onenand_set_timings, !83, !"__ksymtab_gpmc_omap_onenand_set_timings", i1 false, i1 false}
!83 = !{!"../drivers/memory/omap-gpmc.c", i32 1233, i32 1}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memory/omap-gpmc.c", i32 1238, i32 3}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @gpmc_get_client_irq._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @gpmc_get_client_irq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memory/omap-gpmc.c", i32 1825, i32 3}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @gpmc_cs_program_settings._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @gpmc_cs_program_settings._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/memory/omap-gpmc.c", i32 1831, i32 3}
!96 = !{ptr @gpmc_cs_program_settings._entry.41, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @gpmc_cs_program_settings._entry_ptr.43, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/memory/omap-gpmc.c", i32 1838, i32 3}
!100 = !{ptr @gpmc_cs_program_settings._entry.44, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @gpmc_cs_program_settings._entry_ptr.46, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/memory/omap-gpmc.c", i32 1850, i32 4}
!104 = !{ptr @gpmc_cs_program_settings._entry.47, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @gpmc_cs_program_settings._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/memory/omap-gpmc.c", i32 1857, i32 3}
!108 = !{ptr @gpmc_cs_program_settings._entry.50, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @gpmc_cs_program_settings._entry_ptr.52, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/memory/omap-gpmc.c", i32 1973, i32 43}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/memory/omap-gpmc.c", i32 1974, i32 44}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/memory/omap-gpmc.c", i32 1975, i32 27}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memory/omap-gpmc.c", i32 1976, i32 27}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/memory/omap-gpmc.c", i32 1978, i32 32}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/memory/omap-gpmc.c", i32 1979, i32 45}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memory/omap-gpmc.c", i32 1980, i32 45}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/memory/omap-gpmc.c", i32 1981, i32 46}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/memory/omap-gpmc.c", i32 1983, i32 4}
!128 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @gpmc_read_settings_dt._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @gpmc_read_settings_dt._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/memory/omap-gpmc.c", i32 1987, i32 32}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/memory/omap-gpmc.c", i32 1989, i32 8}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/memory/omap-gpmc.c", i32 1991, i32 9}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/memory/omap-gpmc.c", i32 1993, i32 4}
!139 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @gpmc_read_settings_dt.__UNIQUE_ID_ddebug288, !138, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!141 = !{ptr @__initcall__kmod_omap_gpmc__289_2661_gpmc_init2, !142, !"__initcall__kmod_omap_gpmc__289_2661_gpmc_init2", i1 false, i1 false}
!142 = !{!"../drivers/memory/omap-gpmc.c", i32 2661, i32 1}
!143 = !{ptr @gpmc_irq_domain, !144, !"gpmc_irq_domain", i1 false, i1 false}
!144 = !{!"../drivers/memory/omap-gpmc.c", i32 243, i32 27}
!145 = !{ptr @gpmc_mem_root, !146, !"gpmc_mem_root", i1 false, i1 false}
!146 = !{!"../drivers/memory/omap-gpmc.c", i32 245, i32 24}
!147 = !{ptr @gpmc_cs, !148, !"gpmc_cs", i1 false, i1 false}
!148 = !{!"../drivers/memory/omap-gpmc.c", i32 246, i32 28}
!149 = !{ptr @gpmc_nr_waitpins, !150, !"gpmc_nr_waitpins", i1 false, i1 false}
!150 = !{!"../drivers/memory/omap-gpmc.c", i32 250, i32 21}
!151 = !{ptr @gpmc_capability, !152, !"gpmc_capability", i1 false, i1 false}
!152 = !{!"../drivers/memory/omap-gpmc.c", i32 251, i32 21}
!153 = !{ptr @gpmc_base, !154, !"gpmc_base", i1 false, i1 false}
!154 = !{!"../drivers/memory/omap-gpmc.c", i32 252, i32 22}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/memory/omap-gpmc.c", i32 620, i32 3}
!157 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @set_gpmc_timing_reg._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @set_gpmc_timing_reg._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/memory/omap-gpmc.c", i32 628, i32 2}
!162 = !{ptr @set_gpmc_timing_reg._entry.70, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @set_gpmc_timing_reg._entry_ptr.72, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @gpmc_l3_clk, !165, !"gpmc_l3_clk", i1 false, i1 false}
!165 = !{!"../drivers/memory/omap-gpmc.c", i32 254, i32 20}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/memory/omap-gpmc.c", i32 510, i32 2}
!168 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @gpmc_cs_show_timings._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @gpmc_cs_show_timings._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/memory/omap-gpmc.c", i32 511, i32 2}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/memory/omap-gpmc.c", i32 512, i32 2}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/memory/omap-gpmc.c", i32 513, i32 2}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/memory/omap-gpmc.c", i32 515, i32 2}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/memory/omap-gpmc.c", i32 516, i32 2}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/memory/omap-gpmc.c", i32 517, i32 2}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/memory/omap-gpmc.c", i32 518, i32 2}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/memory/omap-gpmc.c", i32 521, i32 2}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/memory/omap-gpmc.c", i32 522, i32 2}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/memory/omap-gpmc.c", i32 524, i32 2}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/memory/omap-gpmc.c", i32 525, i32 2}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/memory/omap-gpmc.c", i32 527, i32 2}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/memory/omap-gpmc.c", i32 529, i32 2}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/memory/omap-gpmc.c", i32 531, i32 2}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/memory/omap-gpmc.c", i32 532, i32 2}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/memory/omap-gpmc.c", i32 534, i32 2}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/memory/omap-gpmc.c", i32 535, i32 2}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/memory/omap-gpmc.c", i32 537, i32 2}
!207 = !{ptr @gpmc_cs_show_timings._entry.92, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @gpmc_cs_show_timings._entry_ptr.94, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/memory/omap-gpmc.c", i32 538, i32 2}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/memory/omap-gpmc.c", i32 539, i32 2}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/memory/omap-gpmc.c", i32 540, i32 2}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/memory/omap-gpmc.c", i32 542, i32 2}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/memory/omap-gpmc.c", i32 543, i32 2}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/memory/omap-gpmc.c", i32 544, i32 2}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/memory/omap-gpmc.c", i32 546, i32 3}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/memory/omap-gpmc.c", i32 547, i32 3}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/memory/omap-gpmc.c", i32 549, i32 3}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/memory/omap-gpmc.c", i32 553, i32 2}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/memory/omap-gpmc.c", i32 554, i32 2}
!231 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/memory/omap-gpmc.c", i32 556, i32 3}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/memory/omap-gpmc.c", i32 557, i32 3}
!235 = !{ptr @.str.108, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/memory/omap-gpmc.c", i32 559, i32 2}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/memory/omap-gpmc.c", i32 560, i32 2}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/memory/omap-gpmc.c", i32 562, i32 2}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/memory/omap-gpmc.c", i32 563, i32 2}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/memory/omap-gpmc.c", i32 564, i32 2}
!245 = !{ptr @.str.113, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/memory/omap-gpmc.c", i32 566, i32 2}
!247 = !{ptr @.str.114, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/memory/omap-gpmc.c", i32 568, i32 2}
!249 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/memory/omap-gpmc.c", i32 569, i32 2}
!251 = !{ptr @.str.116, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/memory/omap-gpmc.c", i32 571, i32 2}
!253 = !{ptr @.str.117, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/memory/omap-gpmc.c", i32 574, i32 2}
!255 = !{ptr @.str.118, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/memory/omap-gpmc.c", i32 578, i32 2}
!257 = !{ptr @.str.119, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/memory/omap-gpmc.c", i32 579, i32 2}
!259 = !{ptr @.str.120, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/memory/omap-gpmc.c", i32 493, i32 2}
!261 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @gpmc_show_regs._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @gpmc_show_regs._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/memory/omap-gpmc.c", i32 494, i32 2}
!266 = !{ptr @gpmc_show_regs._entry.122, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @gpmc_show_regs._entry_ptr.124, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.125, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @gpmc_show_regs._entry.126, !270, !"_entry", i1 false, i1 false}
!270 = !{!"../drivers/memory/omap-gpmc.c", i32 495, i32 2}
!271 = !{ptr @gpmc_show_regs._entry_ptr.127, !270, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @gpmc_show_regs._entry.129, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/memory/omap-gpmc.c", i32 496, i32 2}
!275 = !{ptr @gpmc_show_regs._entry_ptr.130, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @gpmc_show_regs._entry.132, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/memory/omap-gpmc.c", i32 497, i32 2}
!279 = !{ptr @gpmc_show_regs._entry_ptr.133, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @gpmc_show_regs._entry.135, !282, !"_entry", i1 false, i1 false}
!282 = !{!"../drivers/memory/omap-gpmc.c", i32 498, i32 2}
!283 = !{ptr @gpmc_show_regs._entry_ptr.136, !282, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @gpmc_show_regs._entry.138, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/memory/omap-gpmc.c", i32 499, i32 2}
!287 = !{ptr @gpmc_show_regs._entry_ptr.139, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/memory/omap-gpmc.c", i32 461, i32 3}
!291 = !{ptr @.str.142, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @get_gpmc_timing_reg._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @get_gpmc_timing_reg._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.143, !290, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/memory/omap-gpmc.c", i32 466, i32 3}
!298 = !{ptr @get_gpmc_timing_reg._entry.145, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @get_gpmc_timing_reg._entry_ptr.147, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.148, !297, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.149, !297, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @gpmc_cs_num, !303, !"gpmc_cs_num", i1 false, i1 false}
!303 = !{!"../drivers/memory/omap-gpmc.c", i32 249, i32 21}
!304 = !{ptr @.str.150, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/memory/omap-gpmc.c", i32 247, i32 8}
!306 = !{ptr @gpmc_mem_lock, !305, !"gpmc_mem_lock", i1 false, i1 false}
!307 = !{ptr @nand_ops, !308, !"nand_ops", i1 false, i1 false}
!308 = !{!"../drivers/memory/omap-gpmc.c", i32 1074, i32 29}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/memory/omap-gpmc.c", i32 2651, i32 11}
!311 = !{ptr @gpmc_driver, !312, !"gpmc_driver", i1 false, i1 false}
!312 = !{!"../drivers/memory/omap-gpmc.c", i32 2647, i32 31}
!313 = !{ptr @.str.152, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/memory/omap-gpmc.c", i32 2513, i32 59}
!315 = !{ptr @.str.153, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/memory/omap-gpmc.c", i32 2524, i32 60}
!317 = !{ptr @.str.154, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/memory/omap-gpmc.c", i32 2526, i32 4}
!319 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.156, !318, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.157, !318, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @gpmc_probe._entry, !318, !"_entry", i1 false, i1 false}
!323 = !{ptr @gpmc_probe._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.158, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/memory/omap-gpmc.c", i32 2537, i32 41}
!326 = !{ptr @.str.160, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/memory/omap-gpmc.c", i32 2539, i32 3}
!328 = !{ptr @gpmc_probe._entry.159, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @gpmc_probe._entry_ptr.161, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.163, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/memory/omap-gpmc.c", i32 2544, i32 3}
!332 = !{ptr @gpmc_probe._entry.162, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @gpmc_probe._entry_ptr.164, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.166, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/memory/omap-gpmc.c", i32 2578, i32 2}
!336 = !{ptr @.str.167, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @gpmc_probe._entry.165, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @gpmc_probe._entry_ptr.168, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.170, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/memory/omap-gpmc.c", i32 2589, i32 3}
!341 = !{ptr @gpmc_probe._entry.169, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @gpmc_probe._entry_ptr.171, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.172, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/memory/omap-gpmc.c", i32 2290, i32 48}
!345 = !{ptr @.str.173, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/memory/omap-gpmc.c", i32 2293, i32 3}
!347 = !{ptr @.str.174, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @gpmc_probe_dt._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @gpmc_probe_dt._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.176, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/memory/omap-gpmc.c", i32 2296, i32 3}
!352 = !{ptr @gpmc_probe_dt._entry.175, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @gpmc_probe_dt._entry_ptr.177, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.179, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/memory/omap-gpmc.c", i32 2299, i32 3}
!356 = !{ptr @gpmc_probe_dt._entry.178, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @gpmc_probe_dt._entry_ptr.180, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.181, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/memory/omap-gpmc.c", i32 2304, i32 48}
!360 = !{ptr @.str.183, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/memory/omap-gpmc.c", i32 2307, i32 3}
!362 = !{ptr @gpmc_probe_dt._entry.182, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @gpmc_probe_dt._entry_ptr.184, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.185, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/memory/omap-gpmc.c", i32 1481, i32 4}
!366 = !{ptr @.str.186, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @gpmc_mem_init._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @gpmc_mem_init._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @gpmc_gpio_init.lock_key, !370, !"lock_key", i1 false, i1 false}
!370 = !{!"../drivers/memory/omap-gpmc.c", i32 2390, i32 8}
!371 = !{ptr @gpmc_gpio_init.request_key, !370, !"request_key", i1 false, i1 false}
!372 = !{ptr @.str.187, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/memory/omap-gpmc.c", i32 2392, i32 3}
!374 = !{ptr @.str.188, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @gpmc_gpio_init._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @gpmc_gpio_init._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.189, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/memory/omap-gpmc.c", i32 1406, i32 24}
!379 = !{ptr @.str.190, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/memory/omap-gpmc.c", i32 1419, i32 3}
!381 = !{ptr @.str.191, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @gpmc_setup_irq._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @gpmc_setup_irq._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.193, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/memory/omap-gpmc.c", i32 1425, i32 3}
!386 = !{ptr @gpmc_setup_irq._entry.192, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @gpmc_setup_irq._entry_ptr.194, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @gpmc_irq_domain_ops, !389, !"gpmc_irq_domain_ops", i1 false, i1 false}
!389 = !{!"../drivers/memory/omap-gpmc.c", i32 1355, i32 36}
!390 = !{ptr @.str.195, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/memory/omap-gpmc.c", i32 1380, i32 5}
!392 = !{ptr @.str.196, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.197, !391, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @gpmc_handle_irq._entry, !391, !"_entry", i1 false, i1 false}
!395 = !{ptr @gpmc_handle_irq._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.198, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/memory/omap-gpmc.c", i32 2322, i32 4}
!398 = !{ptr @.str.199, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @gpmc_probe_dt_children._entry, !397, !"_entry", i1 false, i1 false}
!400 = !{ptr @gpmc_probe_dt_children._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.200, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/memory/omap-gpmc.c", i32 2095, i32 34}
!403 = !{ptr @.str.201, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/memory/omap-gpmc.c", i32 2096, i32 3}
!405 = !{ptr @.str.202, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @gpmc_probe_generic_child._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @gpmc_probe_generic_child._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.204, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/memory/omap-gpmc.c", i32 2102, i32 3}
!410 = !{ptr @gpmc_probe_generic_child._entry.203, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @gpmc_probe_generic_child._entry_ptr.205, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.207, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/memory/omap-gpmc.c", i32 2118, i32 3}
!414 = !{ptr @gpmc_probe_generic_child._entry.206, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @gpmc_probe_generic_child._entry_ptr.208, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.209, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/memory/omap-gpmc.c", i32 2132, i32 3}
!418 = !{ptr @.str.210, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/memory/omap-gpmc.c", i32 2135, i32 10}
!420 = !{ptr @.str.212, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/memory/omap-gpmc.c", i32 2152, i32 3}
!422 = !{ptr @gpmc_probe_generic_child._entry.211, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @gpmc_probe_generic_child._entry_ptr.213, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.215, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/memory/omap-gpmc.c", i32 2155, i32 4}
!426 = !{ptr @gpmc_probe_generic_child._entry.214, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @gpmc_probe_generic_child._entry_ptr.216, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.218, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/memory/omap-gpmc.c", i32 2159, i32 4}
!430 = !{ptr @gpmc_probe_generic_child._entry.217, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @gpmc_probe_generic_child._entry_ptr.219, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.220, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/memory/omap-gpmc.c", i32 2166, i32 29}
!434 = !{ptr @.str.221, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/memory/omap-gpmc.c", i32 2168, i32 37}
!436 = !{ptr @.str.223, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/memory/omap-gpmc.c", i32 2169, i32 4}
!438 = !{ptr @gpmc_probe_generic_child._entry.222, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @gpmc_probe_generic_child._entry_ptr.224, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.225, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/memory/omap-gpmc.c", i32 2176, i32 29}
!442 = !{ptr @.str.227, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/memory/omap-gpmc.c", i32 2179, i32 4}
!444 = !{ptr @gpmc_probe_generic_child._entry.226, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @gpmc_probe_generic_child._entry_ptr.228, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.229, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/memory/omap-gpmc.c", i32 2189, i32 31}
!448 = !{ptr @.str.231, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/memory/omap-gpmc.c", i32 2198, i32 4}
!450 = !{ptr @gpmc_probe_generic_child._entry.230, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @gpmc_probe_generic_child._entry_ptr.232, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.233, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/memory/omap-gpmc.c", i32 2208, i32 37}
!454 = !{ptr @.str.235, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/memory/omap-gpmc.c", i32 2211, i32 4}
!456 = !{ptr @gpmc_probe_generic_child._entry.234, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @gpmc_probe_generic_child._entry_ptr.236, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.237, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/memory/omap-gpmc.c", i32 2223, i32 19}
!460 = !{ptr @.str.239, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/memory/omap-gpmc.c", i32 2227, i32 4}
!462 = !{ptr @gpmc_probe_generic_child._entry.238, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @gpmc_probe_generic_child._entry_ptr.240, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.241, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/memory/omap-gpmc.c", i32 2233, i32 27}
!466 = !{ptr @.str.243, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/memory/omap-gpmc.c", i32 2241, i32 3}
!468 = !{ptr @gpmc_probe_generic_child._entry.242, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @gpmc_probe_generic_child._entry_ptr.244, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.246, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/memory/omap-gpmc.c", i32 2270, i32 2}
!472 = !{ptr @gpmc_probe_generic_child._entry.245, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @gpmc_probe_generic_child._entry_ptr.247, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.248, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/memory/omap-gpmc.c", i32 2009, i32 27}
!476 = !{ptr @.str.249, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/memory/omap-gpmc.c", i32 2012, i32 27}
!478 = !{ptr @.str.250, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/memory/omap-gpmc.c", i32 2013, i32 27}
!480 = !{ptr @.str.251, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/memory/omap-gpmc.c", i32 2014, i32 27}
!482 = !{ptr @.str.252, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/memory/omap-gpmc.c", i32 2017, i32 27}
!484 = !{ptr @.str.253, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/memory/omap-gpmc.c", i32 2018, i32 27}
!486 = !{ptr @.str.254, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/memory/omap-gpmc.c", i32 2019, i32 27}
!488 = !{ptr @.str.255, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/memory/omap-gpmc.c", i32 2020, i32 27}
!490 = !{ptr @.str.256, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/memory/omap-gpmc.c", i32 2022, i32 27}
!492 = !{ptr @.str.257, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/memory/omap-gpmc.c", i32 2024, i32 27}
!494 = !{ptr @.str.258, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/memory/omap-gpmc.c", i32 2028, i32 27}
!496 = !{ptr @.str.259, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/memory/omap-gpmc.c", i32 2029, i32 27}
!498 = !{ptr @.str.260, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/memory/omap-gpmc.c", i32 2032, i32 27}
!500 = !{ptr @.str.261, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/memory/omap-gpmc.c", i32 2033, i32 27}
!502 = !{ptr @.str.262, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/memory/omap-gpmc.c", i32 2034, i32 27}
!504 = !{ptr @.str.263, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/memory/omap-gpmc.c", i32 2036, i32 27}
!506 = !{ptr @.str.264, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/memory/omap-gpmc.c", i32 2040, i32 27}
!508 = !{ptr @.str.265, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/memory/omap-gpmc.c", i32 2042, i32 27}
!510 = !{ptr @.str.266, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/memory/omap-gpmc.c", i32 2043, i32 27}
!512 = !{ptr @.str.267, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/memory/omap-gpmc.c", i32 2044, i32 27}
!514 = !{ptr @.str.268, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/memory/omap-gpmc.c", i32 2045, i32 27}
!516 = !{ptr @.str.269, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/memory/omap-gpmc.c", i32 2047, i32 27}
!518 = !{ptr @.str.270, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/memory/omap-gpmc.c", i32 2049, i32 27}
!520 = !{ptr @.str.271, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/memory/omap-gpmc.c", i32 2051, i32 27}
!522 = !{ptr @.str.272, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/memory/omap-gpmc.c", i32 2055, i32 27}
!524 = !{ptr @.str.273, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/memory/omap-gpmc.c", i32 2056, i32 27}
!526 = !{ptr @.str.274, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/memory/omap-gpmc.c", i32 2063, i32 29}
!528 = !{ptr @.str.275, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/memory/omap-gpmc.c", i32 2065, i32 29}
!530 = !{ptr @.str.276, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/memory/omap-gpmc.c", i32 2066, i32 48}
!532 = !{ptr @.str.277, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/memory/omap-gpmc.c", i32 2067, i32 48}
!534 = !{ptr @.str.278, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/memory/omap-gpmc.c", i32 2068, i32 49}
!536 = !{ptr @.str.279, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/memory/omap-gpmc.c", i32 2069, i32 48}
!538 = !{ptr @.str.280, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/memory/omap-gpmc.c", i32 2071, i32 29}
!540 = !{ptr @.str.281, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/memory/omap-gpmc.c", i32 1931, i32 3}
!542 = !{ptr @gpmc_cs_remap._entry, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @gpmc_cs_remap._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @omap_nand_ids, !545, !"omap_nand_ids", i1 false, i1 false}
!545 = !{!"../include/linux/platform_data/mtd-nand-omap2.h", i32 66, i32 34}
!546 = !{ptr @gpmc_dt_ids, !547, !"gpmc_dt_ids", i1 false, i1 false}
!547 = !{!"../drivers/memory/omap-gpmc.c", i32 1892, i32 34}
!548 = !{ptr @gpmc_pm_ops, !549, !"gpmc_pm_ops", i1 false, i1 false}
!549 = !{!"../drivers/memory/omap-gpmc.c", i32 2645, i32 8}
!550 = !{i32 1, !"wchar_size", i32 2}
!551 = !{i32 1, !"min_enum_size", i32 4}
!552 = !{i32 8, !"branch-target-enforcement", i32 0}
!553 = !{i32 8, !"sign-return-address", i32 0}
!554 = !{i32 8, !"sign-return-address-all", i32 0}
!555 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!556 = !{i32 7, !"uwtable", i32 1}
!557 = !{i32 7, !"frame-pointer", i32 2}
!558 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!559 = !{i64 3703214}
!560 = !{i8 0, i8 2}
!561 = !{i64 3703632}
!562 = !{i64 2148765577, i64 2148765582, i64 2148765595, i64 2148765639, i64 2148765673, i64 2148765694}
!563 = !{!"auto-init"}
