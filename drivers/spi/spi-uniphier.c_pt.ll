; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-uniphier.c_pt.bc'
source_filename = "../drivers/spi/spi-uniphier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniphier_spi_priv = type { ptr, i32, ptr, ptr, %struct.completion, i32, i32, i32, ptr, ptr, %struct.atomic_t, i8, i8, i16, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_uniphier__274_807_uniphier_spi_driver_init6 = internal global ptr @uniphier_spi_driver_init, section ".initcall6.init", align 4
@uniphier_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_spi_probe, ptr @uniphier_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_spi_driver_exit = internal global ptr @uniphier_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author275 = internal constant [70 x i8] c"spi_uniphier.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [72 x i8] c"spi_uniphier.author=Keiji Hayashibara <hayashibara.keiji@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [66 x i8] c"spi_uniphier.description=Socionext UniPhier SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [43 x i8] c"spi_uniphier.file=drivers/spi/spi-uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [28 x i8] c"spi_uniphier.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uniphier-spi\00", [19 x i8] zeroinitializer }, align 32
@uniphier_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-scssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uniphier_spi_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-uniphier.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_spi_probe._entry_ptr = internal global ptr @uniphier_spi_probe._entry, section ".printk_index", align 4
@uniphier_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@uniphier_spi_probe._entry_ptr.8 = internal global ptr @uniphier_spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@uniphier_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get TX DMA capacities: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@uniphier_spi_probe._entry_ptr.12 = internal global ptr @uniphier_spi_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@uniphier_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 746, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get RX DMA capacities: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@uniphier_spi_probe._entry_ptr.16 = internal global ptr @uniphier_spi_probe._entry.14, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@uniphier_spi_transfer_one_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"transfer timeout.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"uniphier_spi_transfer_one_irq\00", [34 x i8] zeroinitializer }, align 32
@uniphier_spi_transfer_one_irq._entry_ptr = internal global ptr @uniphier_spi_transfer_one_irq._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.uniphier_spi_transfer_one = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5242880, i32 0, i32 3145728, i32 6291456], [16 x i8] zeroinitializer }, align 32
@switch.table.uniphier_spi_transfer_one.21 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 4194304, i32 4194304, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"uniphier_spi_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 799, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 803, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"uniphier_spi_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 793, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 671, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 689, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 716, i32 48 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 727, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 734, i32 48 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 745, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1169, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [30 x i8] c"../drivers/spi/spi-uniphier.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 491, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [39 x i8] c"switch.table.uniphier_spi_transfer_one\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [42 x i8] c"switch.table.uniphier_spi_transfer_one.21\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_uniphier_spi_driver_exit, ptr @__initcall__kmod_spi_uniphier__274_807_uniphier_spi_driver_init6, ptr @uniphier_spi_driver_exit, ptr @uniphier_spi_probe._entry, ptr @uniphier_spi_probe._entry.10, ptr @uniphier_spi_probe._entry.14, ptr @uniphier_spi_probe._entry.6, ptr @uniphier_spi_probe._entry_ptr, ptr @uniphier_spi_probe._entry_ptr.12, ptr @uniphier_spi_probe._entry_ptr.16, ptr @uniphier_spi_probe._entry_ptr.8, ptr @uniphier_spi_transfer_one_irq._entry, ptr @uniphier_spi_transfer_one_irq._entry_ptr, ptr @uniphier_spi_driver, ptr @.str, ptr @uniphier_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.uniphier_spi_transfer_one, ptr @switch.table.uniphier_spi_transfer_one.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_spi_transfer_one_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uniphier_spi_transfer_one to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uniphier_spi_transfer_one.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_spi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_spi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  %caps = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps) #8
  %1 = call ptr @memset(ptr %caps, i32 255, i32 36)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 104, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i194 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i194 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i194, align 4
  %master2 = getelementptr inbounds %struct.uniphier_spi_priv, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %master2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %master2, align 4
  %is_save_param = getelementptr inbounds %struct.uniphier_spi_priv, ptr %4, i32 0, i32 11
  %6 = ptrtoint ptr %is_save_param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_save_param, align 4
  %call3 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %4, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call3 to i32
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %base_dma_addr = getelementptr inbounds %struct.uniphier_spi_priv, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %base_dma_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %base_dma_addr, align 4
  %call11 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.uniphier_spi_priv, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %clk, align 4
  %cmp.i195 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %spi_controller_put.exit

if.end18:                                         ; preds = %if.end9
  %call.i196 = call i32 @clk_prepare(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool.not.i = icmp eq i32 %call.i196, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.spi_controller_put.exit_crit_edge

if.end18.spi_controller_put.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end18
  %call1.i = call i32 @clk_enable(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call11) #8
  br label %spi_controller_put.exit

if.end23:                                         ; preds = %if.end.i
  %call24 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.out_disable_clk_crit_edge, label %if.end26

if.end23.out_disable_clk_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable_clk

if.end26:                                         ; preds = %if.end23
  %call.i197 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call24, ptr noundef nonnull @uniphier_spi_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool29.not = icmp eq i32 %call.i197, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %out_disable_clk

if.end35:                                         ; preds = %if.end26
  %xfer_done = getelementptr inbounds %struct.uniphier_spi_priv, ptr %4, i32 0, i32 4
  %18 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %4, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %call37 = call i32 @clk_get_rate(ptr noundef %20) #8
  %sub = add i32 %call37, 3
  %div193 = lshr i32 %sub, 2
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div193, ptr %max_speed_hz, align 8
  %sub39 = add i32 %call37, 253
  %div40 = udiv i32 %sub39, 254
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div40, ptr %min_speed_hz, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 15, ptr %mode_bits, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %of_node43 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %26 = ptrtoint ptr %of_node43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %of_node43, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %conv = trunc i32 %28 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %bus_num, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %bits_per_word_mask, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %31 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @uniphier_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %32 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @uniphier_spi_transfer_one, ptr %transfer_one, align 4
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %33 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @uniphier_spi_prepare_transfer_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %34 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @uniphier_spi_unprepare_transfer_hardware, ptr %unprepare_transfer_hardware, align 8
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 52
  %35 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @uniphier_spi_handle_err, ptr %handle_err, align 8
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %36 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @uniphier_spi_can_dma, ptr %can_dma, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %num_chipselect, align 2
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 24, ptr %flags, align 4
  %call45 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 60
  %39 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call45, ptr %dma_tx, align 8
  %tobool.not.i198 = icmp eq ptr %call45, null
  %cmp.i199 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i198, %cmp.i199
  br i1 %spec.select.i, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end35
  %cmp51 = icmp eq ptr %call45, inttoptr (i32 -517 to ptr)
  br i1 %cmp51, label %if.then48.out_disable_clk_crit_edge, label %if.end54

if.then48.out_disable_clk_crit_edge:              ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable_clk

if.end54:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end65

if.else:                                          ; preds = %if.end35
  %call57 = call i32 @dma_get_slave_caps(ptr noundef nonnull %call45, ptr noundef nonnull %caps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call57) #11
  br label %out_release_dma

if.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %max_burst = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 4
  %41 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_burst, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end54
  %dma_tx_burst.0 = phi i32 [ 2147483647, %if.end54 ], [ %42, %if.end64 ]
  %call67 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %43 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call67, ptr %dma_rx, align 4
  %tobool.not.i200 = icmp eq ptr %call67, null
  %cmp.i201 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  %spec.select.i202 = or i1 %tobool.not.i200, %cmp.i201
  br i1 %spec.select.i202, label %if.then70, label %if.else78

if.then70:                                        ; preds = %if.end65
  %cmp73 = icmp eq ptr %call67, inttoptr (i32 -517 to ptr)
  br i1 %cmp73, label %if.then70.out_release_dma_crit_edge, label %if.end76

if.then70.out_release_dma_crit_edge:              ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_dma

if.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end89

if.else78:                                        ; preds = %if.end65
  %call80 = call i32 @dma_get_slave_caps(ptr noundef nonnull %call67, ptr noundef nonnull %caps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call80) #11
  br label %out_release_dma

if.end87:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %max_burst88 = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 4
  %45 = ptrtoint ptr %max_burst88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_burst88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end87, %if.end76
  %dma_rx_burst.0 = phi i32 [ 2147483647, %if.end76 ], [ %46, %if.end87 ]
  %47 = call i32 @llvm.umin.i32(i32 %dma_tx_burst.0, i32 %dma_rx_burst.0)
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 43
  %48 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %max_dma_len, align 4
  %call93 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end89.cleanup_crit_edge, label %if.end89.out_release_dma_crit_edge

if.end89.out_release_dma_crit_edge:               ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_dma

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_release_dma:                                  ; preds = %if.end89.out_release_dma_crit_edge, %do.end85, %if.then70.out_release_dma_crit_edge, %do.end62
  %ret.0 = phi i32 [ %call93, %if.end89.out_release_dma_crit_edge ], [ %call80, %do.end85 ], [ %call57, %do.end62 ], [ -517, %if.then70.out_release_dma_crit_edge ]
  %dma_rx97 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %49 = ptrtoint ptr %dma_rx97 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_rx97, align 4
  %tobool.not.i203 = icmp eq ptr %50, null
  %cmp.i204 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  %spec.select.i205 = or i1 %tobool.not.i203, %cmp.i204
  br i1 %spec.select.i205, label %out_release_dma.if.end102_crit_edge, label %if.then99

out_release_dma.if.end102_crit_edge:              ; preds = %out_release_dma
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then99:                                        ; preds = %out_release_dma
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %50) #8
  %51 = ptrtoint ptr %dma_rx97 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %dma_rx97, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %out_release_dma.if.end102_crit_edge
  %52 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_tx, align 8
  %tobool.not.i206 = icmp eq ptr %53, null
  %cmp.i207 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %spec.select.i208 = or i1 %tobool.not.i206, %cmp.i207
  br i1 %spec.select.i208, label %if.end102.out_disable_clk_crit_edge, label %if.then105

if.end102.out_disable_clk_crit_edge:              ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable_clk

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %53) #8
  %54 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %dma_tx, align 8
  br label %out_disable_clk

out_disable_clk:                                  ; preds = %if.then105, %if.end102.out_disable_clk_crit_edge, %if.then48.out_disable_clk_crit_edge, %do.end33, %if.end23.out_disable_clk_crit_edge
  %ret.1 = phi i32 [ %call.i197, %do.end33 ], [ %ret.0, %if.end102.out_disable_clk_crit_edge ], [ %ret.0, %if.then105 ], [ %call24, %if.end23.out_disable_clk_crit_edge ], [ -517, %if.then48.out_disable_clk_crit_edge ]
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %56) #8
  call void @clk_unprepare(ptr noundef %56) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_disable_clk, %if.then3.i, %if.end18.spi_controller_put.exit_crit_edge, %do.end, %if.then6
  %ret.2 = phi i32 [ %8, %if.then6 ], [ %17, %do.end ], [ %ret.1, %out_disable_clk ], [ %call1.i, %if.then3.i ], [ %call.i196, %if.end18.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end89.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i12 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i12, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %7) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %clk = getelementptr inbounds %struct.uniphier_spi_priv, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_spi_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !62
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 419430400) #8, !srcloc !65
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.done.sink.split_crit_edge

entry.done.sink.split_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

if.end:                                           ; preds = %entry
  %6 = and i32 %3, 520
  call void @__sanitizer_cov_trace_const_cmp4(i32 520, i32 %6)
  %.not = icmp eq i32 %6, 520
  br i1 %.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %rx_bytes = getelementptr inbounds %struct.uniphier_spi_priv, ptr %dev_id, i32 0, i32 7
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %add.ptr1255 = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1255) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not56 = icmp eq i32 %10, 0
  br i1 %tobool17.not56, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %tx_bytes = getelementptr inbounds %struct.uniphier_spi_priv, ptr %dev_id, i32 0, i32 6
  %bits_per_word.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %dev_id, i32 0, i32 12
  %rx_buf.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %dev_id, i32 0, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %uniphier_spi_recv.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %11 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_bytes, align 4
  %13 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not = icmp eq i32 %12, %14
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %15 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits_per_word.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %16)
  %cmp.i.i = icmp ult i8 %16, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %16)
  %cmp1.i.i = icmp ult i8 %16, 17
  %cond.i.i = select i1 %cmp1.i.i, i32 2, i32 4
  %cond2.i.i = select i1 %cmp.i.i, i32 1, i32 %cond.i.i
  %17 = tail call i32 @llvm.umin.i32(i32 %cond2.i.i, i32 %12) #8
  %sub.i = sub i32 %12, %17
  %18 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %rx_bytes, align 4
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %22 = lshr i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %23 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %while.body.uniphier_spi_recv.exit_crit_edge, label %if.then.i

while.body.uniphier_spi_recv.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_spi_recv.exit

if.then.i:                                        ; preds = %while.body
  %25 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.then.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
    i32 4, label %sw.bb11.i
  ]

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = trunc i32 %22 to i8
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6.i, ptr %24, align 1
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = lshr i32 %21, 16
  %28 = trunc i32 %27 to i16
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %24, align 1
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %21, ptr %24, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb8.i, %sw.bb.i, %if.then.i.sw.epilog.i_crit_edge
  %31 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buf.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %32, i32 %17
  store ptr %add.ptr14.i, ptr %rx_buf.i, align 4
  br label %uniphier_spi_recv.exit

uniphier_spi_recv.exit:                           ; preds = %sw.epilog.i, %while.body.uniphier_spi_recv.exit_crit_edge
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %add.ptr12 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %36 = and i32 %35, 16777216
  %tobool17.not = icmp eq i32 %36, 0
  br i1 %tobool17.not, label %uniphier_spi_recv.exit.while.end_crit_edge, label %uniphier_spi_recv.exit.land.rhs_crit_edge

uniphier_spi_recv.exit.land.rhs_crit_edge:        ; preds = %uniphier_spi_recv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

uniphier_spi_recv.exit.while.end_crit_edge:       ; preds = %uniphier_spi_recv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %uniphier_spi_recv.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 4
  %add.ptr21 = getelementptr i8, ptr %38, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool26.not = icmp eq i32 %40, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %while.end.done.sink.split_crit_edge

while.end.done.sink.split_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

lor.lhs.false:                                    ; preds = %while.end
  %41 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_bytes, align 4
  %tx_bytes28 = getelementptr inbounds %struct.uniphier_spi_priv, ptr %dev_id, i32 0, i32 6
  %43 = ptrtoint ptr %tx_bytes28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_bytes28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp29.not = icmp eq i32 %42, %44
  br i1 %cmp29.not, label %if.else, label %lor.lhs.false.done.sink.split_crit_edge

lor.lhs.false.done.sink.split_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp33 = icmp eq i32 %42, 0
  br i1 %cmp33, label %if.else.done_crit_edge, label %if.end36

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uniphier_spi_fill_tx_fifo(ptr noundef %dev_id)
  br label %cleanup

done.sink.split:                                  ; preds = %lor.lhs.false.done.sink.split_crit_edge, %while.end.done.sink.split_crit_edge, %entry.done.sink.split_crit_edge
  %error31 = getelementptr inbounds %struct.uniphier_spi_priv, ptr %dev_id, i32 0, i32 5
  %45 = ptrtoint ptr %error31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -5, ptr %error31, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %if.else.done_crit_edge
  %xfer_done = getelementptr inbounds %struct.uniphier_spi_priv, ptr %dev_id, i32 0, i32 4
  tail call void @complete(ptr noundef %xfer_done) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end36, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %done ], [ 1, %if.end36 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %7 = and i32 %6, -8388609
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %enable, i32 32768, i32 0
  %val.0 = or i32 %8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #8, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_spi_transfer_one(ptr noundef %master, ptr noundef %spi, ptr noundef %t) #2 align 64 {
entry:
  %rxconf.i = alloca %struct.dma_slave_config, align 4
  %txconf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %error.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %error.i, align 4
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t, align 4
  %tx_buf1.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 8
  %11 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %tx_buf1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf.i, align 4
  %rx_buf2.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %rx_buf2.i, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %rx_bytes.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 7
  %17 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rx_bytes.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %tx_bytes.i, align 4
  %is_save_param.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 11
  %19 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_save_param.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %mode.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 13
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mode.i, align 2
  %conv.i = zext i16 %22 to i32
  %mode3.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %23 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %24, %conv.i
  br i1 %cmp.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %25 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %29 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %30, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.uniphier_spi_transfer_one, i32 0, i32 %and.i.i
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep57 = getelementptr inbounds [4 x i32], ptr @switch.table.uniphier_spi_transfer_one.21, i32 0, i32 %and.i.i
  %32 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  %and5.i.i = shl i32 %30, 21
  %33 = and i32 %and5.i.i, 8388608
  %34 = or i32 %switch.load58, %33
  %35 = xor i32 %34, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %28, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %switch.load) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %28, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %35) #8, !srcloc !65
  %40 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mode.i.i, align 8
  %and12.i.i = shl i32 %41, 27
  %42 = and i32 %and12.i.i, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %28, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %42) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %28, align 4
  %add.ptr41.i.i = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i.i, i32 %42) #8, !srcloc !65
  %47 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode.i.i, align 8
  %conv6.i = trunc i32 %48 to i16
  %mode7.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 13
  %49 = ptrtoint ptr %mode7.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv6.i, ptr %mode7.i, align 2
  %50 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %is_save_param.i, align 4
  br label %if.then17.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %bits_per_word.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 12
  %51 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word13.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %53 = ptrtoint ptr %bits_per_word13.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bits_per_word13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp15.not.i = icmp eq i8 %52, %54
  br i1 %cmp15.not.i, label %lor.lhs.false11.i.if.end22.i_crit_edge, label %lor.lhs.false11.i.if.then17.i_crit_edge

lor.lhs.false11.i.if.then17.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

lor.lhs.false11.i.if.end22.i_crit_edge:           ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then17.i:                                      ; preds = %lor.lhs.false11.i.if.then17.i_crit_edge, %if.then.i
  %bits_per_word18.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %55 = ptrtoint ptr %bits_per_word18.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bits_per_word18.i, align 1
  %57 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i65.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %driver_data.i.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i.i65.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %62, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  %conv19.i = zext i8 %56 to i32
  %64 = and i32 %63, -1061093377
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %shl.i.i = shl nuw nsw i32 %conv19.i, 8
  %and17.i.i = and i32 %shl.i.i, 16128
  %and41.i.i = and i32 %conv19.i, 63
  %or.i.i = or i32 %and17.i.i, %and41.i.i
  %or42.i.i = or i32 %or.i.i, %65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %or42.i.i) #8
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %60, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i.i, i32 %66) #8, !srcloc !65
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %60, align 4
  %add.ptr51.i.i = getelementptr i8, ptr %70, i32 12
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %72 = and i32 %71, -1056964609
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %or80.i.i = or i32 %73, %and41.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %74 = tail call i32 @llvm.bswap.i32(i32 %or80.i.i) #8
  %75 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %60, align 4
  %add.ptr85.i.i = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i.i, i32 %74) #8, !srcloc !65
  %77 = ptrtoint ptr %bits_per_word18.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bits_per_word18.i, align 1
  %bits_per_word21.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 12
  %79 = ptrtoint ptr %bits_per_word21.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %bits_per_word21.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %lor.lhs.false11.i.if.end22.i_crit_edge
  %80 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_save_param.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool24.not.i = icmp eq i8 %81, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.then29.i_crit_edge, label %lor.lhs.false25.i

if.end22.i.if.then29.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

lor.lhs.false25.i:                                ; preds = %if.end22.i
  %speed_hz.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 14
  %82 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %speed_hz.i, align 4
  %speed_hz26.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %84 = ptrtoint ptr %speed_hz26.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %speed_hz26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp27.not.i = icmp eq i32 %83, %85
  br i1 %cmp27.not.i, label %lor.lhs.false25.i.uniphier_spi_setup_transfer.exit_crit_edge, label %lor.lhs.false25.i.if.then29.i_crit_edge

lor.lhs.false25.i.if.then29.i_crit_edge:          ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

lor.lhs.false25.i.uniphier_spi_setup_transfer.exit_crit_edge: ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_spi_setup_transfer.exit

if.then29.i:                                      ; preds = %lor.lhs.false25.i.if.then29.i_crit_edge, %if.end22.i.if.then29.i_crit_edge
  %speed_hz30.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %86 = ptrtoint ptr %speed_hz30.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %speed_hz30.i, align 4
  %88 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i68.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %driver_data.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i.i68.i, align 4
  %clk.i.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk.i.i, align 4
  %call1.i.i = tail call i32 @clk_get_rate(ptr noundef %93) #8
  %add.i.i = add i32 %87, -1
  %sub.i.i = add i32 %add.i.i, %call1.i.i
  %div.i.i = udiv i32 %sub.i.i, %87
  %sub2.i.i = add i32 %div.i.i, 255
  %or.i69.i = or i32 %sub2.i.i, 1
  %add3.i.i = add i32 %or.i69.i, 1
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %91, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %97 = and i32 %96, 16777215
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  %and6.i.i = and i32 %add3.i.i, 254
  %or7.i.i = or i32 %98, %and6.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %99 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #8
  %100 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %91, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %101, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %99) #8, !srcloc !65
  %102 = ptrtoint ptr %speed_hz30.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %speed_hz30.i, align 4
  %speed_hz32.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %7, i32 0, i32 14
  %104 = ptrtoint ptr %speed_hz32.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %speed_hz32.i, align 4
  br label %uniphier_spi_setup_transfer.exit

uniphier_spi_setup_transfer.exit:                 ; preds = %if.then29.i, %lor.lhs.false25.i.uniphier_spi_setup_transfer.exit_crit_edge
  %105 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %is_save_param.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %7, align 4
  %add.ptr.i = getelementptr i8, ptr %107, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 269484032) #8, !srcloc !65
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %108 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %can_dma, align 4
  %tobool1.not = icmp eq ptr %109, null
  br i1 %tobool1.not, label %uniphier_spi_setup_transfer.exit.if.end8_crit_edge, label %cond.true

uniphier_spi_setup_transfer.exit.if.end8_crit_edge: ; preds = %uniphier_spi_setup_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

cond.true:                                        ; preds = %uniphier_spi_setup_transfer.exit
  %call3 = tail call zeroext i1 %109(ptr noundef %master, ptr noundef %spi, ptr noundef %t) #8
  br i1 %call3, label %if.then6, label %cond.true.if.end8_crit_edge

cond.true.if.end8_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %cond.true
  %110 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver_data.i.i, align 4
  %dma_busy.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %111, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_busy.i, i32 noundef 4) #8
  %112 = ptrtoint ptr %dma_busy.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 0, ptr %dma_busy.i, align 4
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %111, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %114, i32 32
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %116 = and i32 %115, -252641281
  %117 = or i32 %116, 17235968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %111, align 4
  %add.ptr48.i.i = getelementptr i8, ptr %119, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i.i, i32 %117) #8, !srcloc !65
  %bits_per_word.i34 = getelementptr inbounds %struct.uniphier_spi_priv, ptr %111, i32 0, i32 12
  %120 = ptrtoint ptr %bits_per_word.i34 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bits_per_word.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %121)
  %cmp.i = icmp ult i8 %121, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %121)
  %cmp4.i = icmp ult i8 %121, 17
  %..i = select i1 %cmp4.i, i32 2, i32 4
  %buswidth.0.i = select i1 %cmp.i, i32 1, i32 %..i
  %rx_buf.i35 = getelementptr inbounds %struct.uniphier_spi_priv, ptr %111, i32 0, i32 9
  %122 = ptrtoint ptr %rx_buf.i35 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rx_buf.i35, align 4
  %tobool.not.i36 = icmp eq ptr %123, null
  br i1 %tobool.not.i36, label %if.then6.if.end20.i_crit_edge, label %if.then9.i

if.then6.if.end20.i_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then9.i:                                       ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rxconf.i) #8
  %124 = getelementptr inbounds i8, ptr %rxconf.i, i32 36
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %124, align 4, !annotation !61
  %126 = ptrtoint ptr %rxconf.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2, ptr %rxconf.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 1
  %base_dma_addr.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %111, i32 0, i32 1
  %127 = ptrtoint ptr %base_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %base_dma_addr.i, align 4
  %add.i = add i32 %128, 36
  %129 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add.i, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 2
  %130 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 3
  %131 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %buswidth.0.i, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 4
  %132 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 5
  %133 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 6
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 10
  %134 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 11
  %135 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %peripheral_size.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %136 = call ptr @memset(ptr %dst_maxburst.i, i32 0, i32 13)
  %137 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_rx.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %140, i32 0, i32 44
  %141 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i37 = icmp eq ptr %142, null
  br i1 %tobool.not.i.i37, label %if.then9.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i39

if.then9.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit.i

if.then.i.i39:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 %142(ptr noundef %138, ptr noundef nonnull %rxconf.i) #8
  %143 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr.i38 = load ptr, ptr %dma_rx.i, align 4
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i39, %if.then9.i.dmaengine_slave_config.exit.i_crit_edge
  %144 = phi ptr [ %138, %if.then9.i.dmaengine_slave_config.exit.i_crit_edge ], [ %.pr.i38, %if.then.i.i39 ]
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6
  %145 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rx_sg.i, align 4
  %nents.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6, i32 1
  %147 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nents.i, align 4
  %tobool.not.i6.i = icmp eq ptr %144, null
  br i1 %tobool.not.i6.i, label %dmaengine_slave_config.exit.i.out_err_prep.thread.i_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit.i.out_err_prep.thread.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.thread.i

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit.i
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %144, align 4
  %tobool1.not.i.i = icmp eq ptr %150, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.out_err_prep.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.out_err_prep.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %150, i32 0, i32 39
  %151 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %152, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.out_err_prep.thread.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.out_err_prep.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.thread.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i7.i = call ptr %152(ptr noundef nonnull %144, ptr noundef %146, i32 noundef %148, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  %tobool14.not.i = icmp eq ptr %call.i7.i, null
  br i1 %tobool14.not.i, label %dmaengine_prep_slave_sg.exit.i.out_err_prep.thread.i_crit_edge, label %cleanup.i

dmaengine_prep_slave_sg.exit.i.out_err_prep.thread.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.thread.i

out_err_prep.thread.i:                            ; preds = %dmaengine_prep_slave_sg.exit.i.out_err_prep.thread.i_crit_edge, %lor.lhs.false2.i.i.out_err_prep.thread.i_crit_edge, %lor.lhs.false.i.i.out_err_prep.thread.i_crit_edge, %dmaengine_slave_config.exit.i.out_err_prep.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #8
  br label %cleanup

cleanup.i:                                        ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i7.i, i32 0, i32 6
  %153 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @uniphier_spi_dma_rxcb, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i7.i, i32 0, i32 8
  %154 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %master, ptr %callback_param.i, align 4
  %155 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %111, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %156, i32 24
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %158 = or i32 %157, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @arm_heavy_mb() #8
  %159 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %111, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %160, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %158) #8, !srcloc !65
  %call.i.i4.i = call zeroext i1 @__kasan_check_write(ptr noundef %dma_busy.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %dma_busy.i, i32 1, i32 3, i32 1) #8
  %161 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_busy.i, ptr %dma_busy.i, i32 2, ptr elementtype(i32) %dma_busy.i) #8, !srcloc !87
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i7.i, i32 0, i32 4
  %162 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i9.i = call i32 %163(ptr noundef nonnull %call.i7.i) #8
  %164 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dma_rx.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %167, i32 0, i32 50
  %168 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %169(ptr noundef %165) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %cleanup.i, %if.then6.if.end20.i_crit_edge
  %rxdesc.0.i = phi ptr [ %call.i7.i, %cleanup.i ], [ null, %if.then6.if.end20.i_crit_edge ]
  %tx_buf.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %111, i32 0, i32 8
  %170 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tx_buf.i, align 4
  %tobool21.not.i = icmp eq ptr %171, null
  br i1 %tobool21.not.i, label %if.end20.i.lor.rhs.i_crit_edge, label %if.then22.i

if.end20.i.lor.rhs.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %txconf.i) #8
  %172 = getelementptr inbounds i8, ptr %txconf.i, i32 36
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 16777215, ptr %172, align 4, !annotation !61
  %174 = ptrtoint ptr %txconf.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %txconf.i, align 4
  %src_addr24.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 1
  %175 = ptrtoint ptr %src_addr24.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %src_addr24.i, align 4
  %dst_addr25.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 2
  %base_dma_addr26.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %111, i32 0, i32 1
  %176 = ptrtoint ptr %base_dma_addr26.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %base_dma_addr26.i, align 4
  %add27.i = add i32 %177, 36
  %178 = ptrtoint ptr %dst_addr25.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add27.i, ptr %dst_addr25.i, align 4
  %src_addr_width28.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 3
  %179 = ptrtoint ptr %src_addr_width28.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %src_addr_width28.i, align 4
  %dst_addr_width29.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 4
  %180 = ptrtoint ptr %dst_addr_width29.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %buswidth.0.i, ptr %dst_addr_width29.i, align 4
  %src_maxburst30.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 5
  %181 = ptrtoint ptr %src_maxburst30.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %src_maxburst30.i, align 4
  %dst_maxburst31.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 6
  %182 = ptrtoint ptr %dst_maxburst31.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %dst_maxburst31.i, align 4
  %src_port_window_size32.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 7
  %183 = ptrtoint ptr %src_port_window_size32.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %src_port_window_size32.i, align 4
  %dst_port_window_size33.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 8
  %184 = ptrtoint ptr %dst_port_window_size33.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %dst_port_window_size33.i, align 4
  %peripheral_config35.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 10
  %185 = ptrtoint ptr %peripheral_config35.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %peripheral_config35.i, align 4
  %peripheral_size36.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 11
  %186 = ptrtoint ptr %peripheral_size36.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %peripheral_size36.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %187 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dma_tx.i, align 8
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %device_config.i10.i = getelementptr inbounds %struct.dma_device, ptr %190, i32 0, i32 44
  %191 = ptrtoint ptr %device_config.i10.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %device_config.i10.i, align 4
  %tobool.not.i11.i = icmp eq ptr %192, null
  br i1 %tobool.not.i11.i, label %if.then22.i.dmaengine_slave_config.exit14.i_crit_edge, label %if.then.i13.i

if.then22.i.dmaengine_slave_config.exit14.i_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit14.i

if.then.i13.i:                                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i12.i = call i32 %192(ptr noundef %188, ptr noundef nonnull %txconf.i) #8
  %193 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %.pr40.i = load ptr, ptr %dma_tx.i, align 8
  br label %dmaengine_slave_config.exit14.i

dmaengine_slave_config.exit14.i:                  ; preds = %if.then.i13.i, %if.then22.i.dmaengine_slave_config.exit14.i_crit_edge
  %194 = phi ptr [ %188, %if.then22.i.dmaengine_slave_config.exit14.i_crit_edge ], [ %.pr40.i, %if.then.i13.i ]
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5
  %195 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tx_sg.i, align 4
  %nents41.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5, i32 1
  %197 = ptrtoint ptr %nents41.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nents41.i, align 4
  %tobool.not.i15.i = icmp eq ptr %194, null
  br i1 %tobool.not.i15.i, label %dmaengine_slave_config.exit14.i.out_err_prep.i_crit_edge, label %lor.lhs.false.i17.i

dmaengine_slave_config.exit14.i.out_err_prep.i_crit_edge: ; preds = %dmaengine_slave_config.exit14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.i

lor.lhs.false.i17.i:                              ; preds = %dmaengine_slave_config.exit14.i
  %199 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %194, align 4
  %tobool1.not.i16.i = icmp eq ptr %200, null
  br i1 %tobool1.not.i16.i, label %lor.lhs.false.i17.i.out_err_prep.i_crit_edge, label %lor.lhs.false2.i20.i

lor.lhs.false.i17.i.out_err_prep.i_crit_edge:     ; preds = %lor.lhs.false.i17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.i

lor.lhs.false2.i20.i:                             ; preds = %lor.lhs.false.i17.i
  %device_prep_slave_sg.i18.i = getelementptr inbounds %struct.dma_device, ptr %200, i32 0, i32 39
  %201 = ptrtoint ptr %device_prep_slave_sg.i18.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device_prep_slave_sg.i18.i, align 4
  %tobool4.not.i19.i = icmp eq ptr %202, null
  br i1 %tobool4.not.i19.i, label %lor.lhs.false2.i20.i.out_err_prep.i_crit_edge, label %dmaengine_prep_slave_sg.exit24.i

lor.lhs.false2.i20.i.out_err_prep.i_crit_edge:    ; preds = %lor.lhs.false2.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.i

dmaengine_prep_slave_sg.exit24.i:                 ; preds = %lor.lhs.false2.i20.i
  %call.i21.i = call ptr %202(ptr noundef nonnull %194, ptr noundef %196, i32 noundef %198, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  %tobool43.not.i = icmp eq ptr %call.i21.i, null
  br i1 %tobool43.not.i, label %dmaengine_prep_slave_sg.exit24.i.out_err_prep.i_crit_edge, label %if.end54.i

dmaengine_prep_slave_sg.exit24.i.out_err_prep.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_prep.i

if.end54.i:                                       ; preds = %dmaengine_prep_slave_sg.exit24.i
  %callback46.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i21.i, i32 0, i32 6
  %203 = ptrtoint ptr %callback46.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @uniphier_spi_dma_txcb, ptr %callback46.i, align 4
  %callback_param47.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i21.i, i32 0, i32 8
  %204 = ptrtoint ptr %callback_param47.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %master, ptr %callback_param47.i, align 4
  %205 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %111, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %206, i32 24
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #8, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %208 = or i32 %207, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @arm_heavy_mb() #8
  %209 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %111, align 4
  %add.ptr3.i27.i = getelementptr i8, ptr %210, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i27.i, i32 %208) #8, !srcloc !65
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %dma_busy.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %dma_busy.i, i32 1, i32 3, i32 1) #8
  %211 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_busy.i, ptr %dma_busy.i, i32 1, ptr elementtype(i32) %dma_busy.i) #8, !srcloc !87
  %tx_submit.i28.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i21.i, i32 0, i32 4
  %212 = ptrtoint ptr %tx_submit.i28.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %tx_submit.i28.i, align 4
  %call.i29.i = call i32 %213(ptr noundef nonnull %call.i21.i) #8
  %214 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dma_tx.i, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %device_issue_pending.i30.i = getelementptr inbounds %struct.dma_device, ptr %217, i32 0, i32 50
  %218 = ptrtoint ptr %device_issue_pending.i30.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %device_issue_pending.i30.i, align 4
  call void %219(ptr noundef %215) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #8
  %220 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %.pr45.i = load ptr, ptr %tx_buf.i, align 4
  %tobool56.not.i = icmp eq ptr %.pr45.i, null
  br i1 %tobool56.not.i, label %if.end54.i.lor.rhs.i_crit_edge, label %if.end54.i.cleanup_crit_edge

if.end54.i.cleanup_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54.i.lor.rhs.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end54.i.lor.rhs.i_crit_edge, %if.end20.i.lor.rhs.i_crit_edge
  %221 = ptrtoint ptr %rx_buf.i35 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rx_buf.i35, align 4
  %tobool58.i = icmp ne ptr %222, null
  %phi.cast.i = zext i1 %tobool58.i to i32
  br label %cleanup

out_err_prep.i:                                   ; preds = %dmaengine_prep_slave_sg.exit24.i.out_err_prep.i_crit_edge, %lor.lhs.false2.i20.i.out_err_prep.i_crit_edge, %lor.lhs.false.i17.i.out_err_prep.i_crit_edge, %dmaengine_slave_config.exit14.i.out_err_prep.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #8
  %tobool59.not.i = icmp eq ptr %rxdesc.0.i, null
  br i1 %tobool59.not.i, label %out_err_prep.i.cleanup_crit_edge, label %if.then60.i

out_err_prep.i.cleanup_crit_edge:                 ; preds = %out_err_prep.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60.i:                                      ; preds = %out_err_prep.i
  %dma_rx61.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %223 = ptrtoint ptr %dma_rx61.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dma_rx61.i, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %226, i32 0, i32 47
  %227 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %228, null
  br i1 %tobool.not.i.i.i, label %if.then60.i.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then60.i.cleanup_crit_edge:                    ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then60.i
  %call.i.i31.i = call i32 %228(ptr noundef %224) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31.i)
  %tobool.not.i32.i = icmp eq i32 %call.i.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i33.i, label %dmaengine_terminate_async.exit.i.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i33.i:                                     ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 1169) #8
  %229 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %224, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %230, i32 0, i32 48
  %231 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %232, null
  br i1 %tobool.not.i1.i.i, label %if.end.i33.i.cleanup_crit_edge, label %if.then.i2.i.i

if.end.i33.i.cleanup_crit_edge:                   ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i.i:                                   ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %232(ptr noundef %224) #8
  br label %cleanup

if.end8:                                          ; preds = %cond.true.if.end8_crit_edge, %uniphier_spi_setup_transfer.exit.if.end8_crit_edge
  %speed_hz = getelementptr inbounds %struct.uniphier_spi_priv, ptr %1, i32 0, i32 14
  %233 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %speed_hz, align 4
  %mul = mul i32 %234, 200
  %sub = add i32 %mul, 7999999
  %div = udiv i32 %sub, 8000000
  %235 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %div)
  %cmp = icmp ugt i32 %236, %div
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @uniphier_spi_transfer_one_irq(ptr noundef %master)
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %237 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %driver_data.i.i, align 4
  %tx_bytes.i41 = getelementptr inbounds %struct.uniphier_spi_priv, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %tx_bytes.i41 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %tx_bytes.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool.not13.i = icmp eq i32 %240, 0
  br i1 %tobool.not13.i, label %if.else.cleanup_crit_edge, label %while.body.lr.ph.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.else
  %rx_bytes.i42 = getelementptr inbounds %struct.uniphier_spi_priv, ptr %238, i32 0, i32 7
  %bits_per_word.i.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %238, i32 0, i32 12
  %rx_buf.i.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %238, i32 0, i32 9
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %uniphier_spi_recv.exit.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %241 = phi i32 [ %243, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %276, %uniphier_spi_recv.exit.i.while.cond.loopexit.i_crit_edge ]
  %loop.1.lcssa.i = phi i32 [ %loop.014.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %loop.2.lcssa19.i, %uniphier_spi_recv.exit.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i43 = icmp eq i32 %241, 0
  br i1 %tobool.not.i43, label %while.cond.loopexit.i.cleanup_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.loopexit.i.cleanup_crit_edge:          ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %loop.014.i = phi i32 [ 2000, %while.body.lr.ph.i ], [ %loop.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  tail call fastcc void @uniphier_spi_fill_tx_fifo(ptr noundef %238) #8
  %242 = ptrtoint ptr %rx_bytes.i42 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rx_bytes.i42, align 4
  %244 = ptrtoint ptr %tx_bytes.i41 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %tx_bytes.i41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %245)
  %cmp.not10.i = icmp eq i32 %243, %245
  br i1 %cmp.not10.i, label %while.body.i.while.cond.loopexit.i_crit_edge, label %while.body.i.while.cond4.preheader.i_crit_edge

while.body.i.while.cond4.preheader.i_crit_edge:   ; preds = %while.body.i
  br label %while.cond4.preheader.i

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit.i

while.cond4.preheader.i:                          ; preds = %uniphier_spi_recv.exit.i.while.cond4.preheader.i_crit_edge, %while.body.i.while.cond4.preheader.i_crit_edge
  %loop.111.i = phi i32 [ %loop.2.lcssa19.i, %uniphier_spi_recv.exit.i.while.cond4.preheader.i_crit_edge ], [ %loop.014.i, %while.body.i.while.cond4.preheader.i_crit_edge ]
  %246 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %238, align 4
  %add.ptr7.i = getelementptr i8, ptr %247, i32 20
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %249 = and i32 %248, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool7.not8.i = icmp eq i32 %249, 0
  br i1 %tobool7.not8.i, label %while.cond4.preheader.i.land.rhs.i_crit_edge, label %while.end.i

while.cond4.preheader.i.land.rhs.i_crit_edge:     ; preds = %while.cond4.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body9.i.land.rhs.i_crit_edge, %while.cond4.preheader.i.land.rhs.i_crit_edge
  %loop.29.i = phi i32 [ %dec.i, %while.body9.i.land.rhs.i_crit_edge ], [ %loop.111.i, %while.cond4.preheader.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loop.29.i)
  %tobool8.not.i = icmp eq i32 %loop.29.i, 0
  br i1 %tobool8.not.i, label %land.rhs.i.irq_transfer.i_crit_edge, label %while.body9.i

land.rhs.i.irq_transfer.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_transfer.i

while.body9.i:                                    ; preds = %land.rhs.i
  %dec.i = add i32 %loop.29.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %250(i32 noundef 214748) #8
  %251 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %238, align 4
  %add.ptr.i44 = getelementptr i8, ptr %252, i32 20
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %254 = and i32 %253, 16777216
  %tobool7.not.i = icmp eq i32 %254, 0
  br i1 %tobool7.not.i, label %while.body9.i.land.rhs.i_crit_edge, label %while.body9.i.if.end.i48_crit_edge

while.body9.i.if.end.i48_crit_edge:               ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i48

while.body9.i.land.rhs.i_crit_edge:               ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.cond4.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %loop.111.i)
  %cmp10.i = icmp eq i32 %loop.111.i, -1
  br i1 %cmp10.i, label %while.end.i.irq_transfer.i_crit_edge, label %while.end.i.if.end.i48_crit_edge

while.end.i.if.end.i48_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i48

while.end.i.irq_transfer.i_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_transfer.i

if.end.i48:                                       ; preds = %while.end.i.if.end.i48_crit_edge, %while.body9.i.if.end.i48_crit_edge
  %loop.2.lcssa19.i = phi i32 [ %loop.111.i, %while.end.i.if.end.i48_crit_edge ], [ %dec.i, %while.body9.i.if.end.i48_crit_edge ]
  %255 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %bits_per_word.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %256)
  %cmp.i.i.i = icmp ult i8 %256, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %256)
  %cmp1.i.i.i = icmp ult i8 %256, 17
  %cond.i.i.i = select i1 %cmp1.i.i.i, i32 2, i32 4
  %cond2.i.i.i = select i1 %cmp.i.i.i, i32 1, i32 %cond.i.i.i
  %257 = ptrtoint ptr %rx_bytes.i42 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %rx_bytes.i42, align 4
  %259 = tail call i32 @llvm.umin.i32(i32 %cond2.i.i.i, i32 %258) #8
  %sub.i.i45 = sub i32 %258, %259
  %260 = ptrtoint ptr %rx_bytes.i42 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %sub.i.i45, ptr %rx_bytes.i42, align 4
  %261 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %238, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %262, i32 36
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #8, !srcloc !62
  %264 = lshr i32 %263, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %265 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool.not.i.i47 = icmp eq ptr %266, null
  br i1 %tobool.not.i.i47, label %if.end.i48.uniphier_spi_recv.exit.i_crit_edge, label %if.then.i.i49

if.end.i48.uniphier_spi_recv.exit.i_crit_edge:    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_spi_recv.exit.i

if.then.i.i49:                                    ; preds = %if.end.i48
  %267 = zext i32 %259 to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %259, label %if.then.i.i49.sw.epilog.i.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb8.i.i
    i32 4, label %sw.bb11.i.i
  ]

if.then.i.i49.sw.epilog.i.i_crit_edge:            ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i.i = trunc i32 %264 to i8
  %268 = ptrtoint ptr %266 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %conv6.i.i, ptr %266, align 1
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  %269 = lshr i32 %263, 16
  %270 = trunc i32 %269 to i16
  %271 = ptrtoint ptr %266 to i32
  call void @__asan_storeN_noabort(i32 %271, i32 2)
  store i16 %270, ptr %266, align 1
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  %272 = ptrtoint ptr %266 to i32
  call void @__asan_storeN_noabort(i32 %272, i32 4)
  store i32 %263, ptr %266, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb11.i.i, %sw.bb8.i.i, %sw.bb.i.i, %if.then.i.i49.sw.epilog.i.i_crit_edge
  %273 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rx_buf.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %274, i32 %259
  store ptr %add.ptr14.i.i, ptr %rx_buf.i.i, align 4
  br label %uniphier_spi_recv.exit.i

uniphier_spi_recv.exit.i:                         ; preds = %sw.epilog.i.i, %if.end.i48.uniphier_spi_recv.exit.i_crit_edge
  %275 = ptrtoint ptr %rx_bytes.i42 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %rx_bytes.i42, align 4
  %277 = ptrtoint ptr %tx_bytes.i41 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %tx_bytes.i41, align 4
  %cmp.not.i50 = icmp eq i32 %276, %278
  br i1 %cmp.not.i50, label %uniphier_spi_recv.exit.i.while.cond.loopexit.i_crit_edge, label %uniphier_spi_recv.exit.i.while.cond4.preheader.i_crit_edge

uniphier_spi_recv.exit.i.while.cond4.preheader.i_crit_edge: ; preds = %uniphier_spi_recv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond4.preheader.i

uniphier_spi_recv.exit.i.while.cond.loopexit.i_crit_edge: ; preds = %uniphier_spi_recv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit.i

irq_transfer.i:                                   ; preds = %while.end.i.irq_transfer.i_crit_edge, %land.rhs.i.irq_transfer.i_crit_edge
  %call13.i = tail call fastcc i32 @uniphier_spi_transfer_one_irq(ptr noundef %master) #8
  br label %cleanup

cleanup:                                          ; preds = %irq_transfer.i, %while.cond.loopexit.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11, %if.then.i2.i.i, %if.end.i33.i.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.i.cleanup_crit_edge, %if.then60.i.cleanup_crit_edge, %out_err_prep.i.cleanup_crit_edge, %lor.rhs.i, %if.end54.i.cleanup_crit_edge, %out_err_prep.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end54.i.cleanup_crit_edge ], [ %phi.cast.i, %lor.rhs.i ], [ -22, %out_err_prep.i.cleanup_crit_edge ], [ -22, %out_err_prep.thread.i ], [ -22, %if.then60.i.cleanup_crit_edge ], [ -22, %dmaengine_terminate_async.exit.i.i.cleanup_crit_edge ], [ -22, %if.end.i33.i.cleanup_crit_edge ], [ -22, %if.then.i2.i.i ], [ %call13.i, %irq_transfer.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %while.cond.loopexit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_spi_prepare_transfer_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #8, !srcloc !65
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_spi_unprepare_transfer_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !65
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_spi_handle_err(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 269484032) #8, !srcloc !65
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %9 = and i32 %8, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #8, !srcloc !65
  %dma_busy = getelementptr inbounds %struct.uniphier_spi_priv, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_busy, i32 noundef 4) #8
  %12 = ptrtoint ptr %dma_busy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dma_busy, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %14 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_tx, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_async.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %19(ptr noundef %15) #8
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %if.then.dmaengine_terminate_async.exit_crit_edge
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_busy, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %dma_busy, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_busy, ptr %dma_busy, i32 1, ptr elementtype(i32) %dma_busy) #8, !srcloc !95
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_async.exit, %entry.if.end_crit_edge
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_busy, i32 noundef 4) #8
  %21 = ptrtoint ptr %dma_busy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dma_busy, align 4
  %and11 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %23 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_rx, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %device_terminate_all.i28 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 47
  %27 = ptrtoint ptr %device_terminate_all.i28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_terminate_all.i28, align 4
  %tobool.not.i29 = icmp eq ptr %28, null
  br i1 %tobool.not.i29, label %if.then13.dmaengine_terminate_async.exit33_crit_edge, label %if.then.i31

if.then13.dmaengine_terminate_async.exit33_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_async.exit33

if.then.i31:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i30 = tail call i32 %28(ptr noundef %24) #8
  br label %dmaengine_terminate_async.exit33

dmaengine_terminate_async.exit33:                 ; preds = %if.then.i31, %if.then13.dmaengine_terminate_async.exit33_crit_edge
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_busy, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %dma_busy, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_busy, ptr %dma_busy, i32 2, ptr elementtype(i32) %dma_busy) #8, !srcloc !95
  br label %if.end16

if.end16:                                         ; preds = %dmaengine_terminate_async.exit33, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @uniphier_spi_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.uniphier_spi_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp.i = icmp ult i8 %3, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %3)
  %cmp1.i = icmp ult i8 %3, 17
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %4 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.lor.lhs.false7_crit_edge

entry.lor.lhs.false7_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false7

land.lhs.true:                                    ; preds = %entry
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %6 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true5.lor.lhs.false7_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true5.lor.lhs.false7_crit_edge:          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true5.lor.lhs.false7_crit_edge, %entry.lor.lhs.false7_crit_edge
  %dma_rx8 = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %10 = ptrtoint ptr %dma_rx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_rx8, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true10, label %lor.lhs.false7.if.end_crit_edge

lor.lhs.false7.if.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false7
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %lor.lhs.false7.if.end_crit_edge
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %cond.i.op = select i1 %cmp1.i, i32 1, i32 3
  %add = select i1 %cmp.i, i32 0, i32 %cond.i.op
  %sub = add i32 %add, %15
  %16 = select i1 %cmp1.i, i32 1, i32 2
  %17 = select i1 %cmp.i, i32 0, i32 %16
  %div21 = lshr i32 %sub, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div21)
  %cmp = icmp ugt i32 %div21, 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %land.lhs.true10.cleanup_crit_edge ], [ false, %land.lhs.true5.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_spi_fill_tx_fifo(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.uniphier_spi_priv, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %rx_bytes = getelementptr inbounds %struct.uniphier_spi_priv, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_bytes, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp.i = icmp ult i8 %1, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %1)
  %cmp1.i = icmp ult i8 %1, 17
  %cond.i.op = select i1 %cmp1.i, i32 1, i32 3
  %add = select i1 %cmp.i, i32 0, i32 %cond.i.op
  %sub = add i32 %add, %3
  %7 = select i1 %cmp1.i, i32 1, i32 2
  %8 = select i1 %cmp.i, i32 0, i32 %7
  %div24 = lshr i32 %sub, %8
  %9 = tail call i32 @llvm.umin.i32(i32 %div24, i32 8)
  %10 = and i32 %6, -252641281
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %.neg = mul nuw nsw i32 %9, 3840
  %shl.i = add nuw nsw i32 %.neg, 2048
  %and18.i = and i32 %shl.i, 3840
  %or.i = or i32 %9, %11
  %or43.i = or i32 %or.i, %and18.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or43.i) #8
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr48.i = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %12) #8, !srcloc !65
  %15 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_bytes, align 4
  %tx_bytes = getelementptr inbounds %struct.uniphier_spi_priv, ptr %priv, i32 0, i32 6
  %17 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_bytes, align 4
  %add4 = add i32 %add, %16
  %sub5 = sub i32 %add4, %18
  %div625 = lshr i32 %sub5, %8
  %sub7 = sub i32 %9, %div625
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %tobool.not27 = icmp eq i32 %sub7, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tx_buf.i = getelementptr inbounds %struct.uniphier_spi_priv, ptr %priv, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %uniphier_spi_send.exit.while.body_crit_edge, %while.body.lr.ph
  %fill_words.028 = phi i32 [ %sub7, %while.body.lr.ph ], [ %dec, %uniphier_spi_send.exit.while.body_crit_edge ]
  %dec = add i32 %fill_words.028, -1
  %19 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %20)
  %cmp.i.i = icmp ult i8 %20, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %20)
  %cmp1.i.i = icmp ult i8 %20, 17
  %cond.i.i = select i1 %cmp1.i.i, i32 2, i32 4
  %cond2.i.i = select i1 %cmp.i.i, i32 1, i32 %cond.i.i
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_bytes, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %cond2.i.i, i32 %22) #8
  %sub.i20 = sub i32 %22, %23
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i20, ptr %tx_bytes, align 4
  %25 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_buf.i, align 4
  %tobool.not.i21 = icmp eq ptr %26, null
  br i1 %tobool.not.i21, label %while.body.uniphier_spi_send.exit_crit_edge, label %if.then.i22

while.body.uniphier_spi_send.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_spi_send.exit

if.then.i22:                                      ; preds = %while.body
  %27 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %23, label %if.then.i22.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
    i32 4, label %sw.bb9.i
  ]

if.then.i22.sw.epilog.i_crit_edge:                ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %26, align 1
  %conv4.i = zext i8 %29 to i32
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %26, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  %conv8.i = zext i16 %32 to i32
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %26, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb5.i, %sw.bb.i, %if.then.i22.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 0, %if.then.i22.sw.epilog.i_crit_edge ], [ %35, %sw.bb9.i ], [ %conv8.i, %sw.bb5.i ], [ %conv4.i, %sw.bb.i ]
  %add.ptr.i23 = getelementptr i8, ptr %26, i32 %23
  %36 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i23, ptr %tx_buf.i, align 4
  br label %uniphier_spi_send.exit

uniphier_spi_send.exit:                           ; preds = %sw.epilog.i, %while.body.uniphier_spi_send.exit_crit_edge
  %val.1.i = phi i32 [ %val.0.i, %sw.epilog.i ], [ 0, %while.body.uniphier_spi_send.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #8
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 4
  %add.ptr13.i = getelementptr i8, ptr %39, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %37) #8, !srcloc !65
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %uniphier_spi_send.exit.while.end_crit_edge, label %uniphier_spi_send.exit.while.body_crit_edge

uniphier_spi_send.exit.while.body_crit_edge:      ; preds = %uniphier_spi_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

uniphier_spi_send.exit.while.end_crit_edge:       ; preds = %uniphier_spi_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %uniphier_spi_send.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_spi_transfer_one_irq(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %xfer_done = getelementptr inbounds %struct.uniphier_spi_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %xfer_done, align 4
  tail call fastcc void @uniphier_spi_fill_tx_fifo(ptr noundef %1)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %8 = or i32 %7, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #8, !srcloc !65
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_done, i32 noundef 200) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i1 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %14 = and i32 %13, -150994945
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr3.i2 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i2, i32 %14) #8, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.uniphier_spi_priv, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %18, %if.end ], [ -110, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_spi_dma_rxcb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_busy = getelementptr inbounds %struct.uniphier_spi_priv, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_busy, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %dma_busy, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_busy, ptr %dma_busy, i32 2, ptr elementtype(i32) %dma_busy) #8, !srcloc !98
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !99
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %6 = and i32 %5, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #8, !srcloc !65
  %and = and i32 %asmresult.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_finalize_current_transfer(ptr noundef %data) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_spi_dma_txcb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_busy = getelementptr inbounds %struct.uniphier_spi_priv, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_busy, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %dma_busy, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_busy, ptr %dma_busy, i32 1, ptr elementtype(i32) %dma_busy) #8, !srcloc !98
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !99
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %6 = and i32 %5, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #8, !srcloc !65
  %and = and i32 %asmresult.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_finalize_current_transfer(ptr noundef %data) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !47, !48, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_spi_uniphier__274_807_uniphier_spi_driver_init6, !1, !"__initcall__kmod_spi_uniphier__274_807_uniphier_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-uniphier.c", i32 807, i32 1}
!2 = !{ptr @__exitcall_uniphier_spi_driver_exit, !1, !"__exitcall_uniphier_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author275, !4, !"__UNIQUE_ID_author275", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-uniphier.c", i32 809, i32 1}
!5 = !{ptr @__UNIQUE_ID_author276, !6, !"__UNIQUE_ID_author276", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-uniphier.c", i32 810, i32 1}
!7 = !{ptr @__UNIQUE_ID_description277, !8, !"__UNIQUE_ID_description277", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-uniphier.c", i32 811, i32 1}
!9 = !{ptr @__UNIQUE_ID_file278, !10, !"__UNIQUE_ID_file278", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-uniphier.c", i32 812, i32 1}
!11 = !{ptr @__UNIQUE_ID_license279, !10, !"__UNIQUE_ID_license279", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-uniphier.c", i32 803, i32 11}
!14 = !{ptr @uniphier_spi_driver, !15, !"uniphier_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-uniphier.c", i32 799, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-uniphier.c", i32 671, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uniphier_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @uniphier_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-uniphier.c", i32 689, i32 3}
!26 = !{ptr @uniphier_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @uniphier_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-uniphier.c", i32 716, i32 48}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-uniphier.c", i32 727, i32 4}
!32 = !{ptr @uniphier_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @uniphier_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-uniphier.c", i32 734, i32 48}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-uniphier.c", i32 745, i32 4}
!38 = !{ptr @uniphier_spi_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @uniphier_spi_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-uniphier.c", i32 491, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @uniphier_spi_transfer_one_irq._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @uniphier_spi_transfer_one_irq._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @uniphier_spi_match, !51, !"uniphier_spi_match", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-uniphier.c", i32 793, i32 34}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 6352387}
!63 = !{i64 2154639390}
!64 = !{i64 2154639855}
!65 = !{i64 6351969}
!66 = !{i64 2154640769}
!67 = !{i64 2154543348}
!68 = !{i64 2154641342}
!69 = !{i64 2154631373}
!70 = !{i64 2154631760}
!71 = !{i8 0, i8 2}
!72 = !{i64 2154363783}
!73 = !{i64 2154364181}
!74 = !{i64 2154408261}
!75 = !{i64 2154408659}
!76 = !{i64 2154409374}
!77 = !{i64 2154490410}
!78 = !{i64 2154491076}
!79 = !{i64 2154535613}
!80 = !{i64 2154536489}
!81 = !{i64 2154538056}
!82 = !{i64 2154538662}
!83 = !{i64 2154543839}
!84 = !{i64 2154629119}
!85 = !{i64 2154360723}
!86 = !{i64 2154360942}
!87 = !{i64 2148236110, i64 2148236136, i64 2148236165, i64 2148236199, i64 2148236230, i64 2148236253}
!88 = !{i64 2154635565}
!89 = !{i64 2154636206}
!90 = !{i64 2154636726}
!91 = !{i64 2154637168}
!92 = !{i64 2154637722}
!93 = !{i64 2154361777}
!94 = !{i64 2154361996}
!95 = !{i64 2148234466, i64 2148234492, i64 2148234521, i64 2148234555, i64 2148234586, i64 2148234609}
!96 = !{i64 2154540869}
!97 = !{i64 2148325242}
!98 = !{i64 2148235217, i64 2148235249, i64 2148235278, i64 2148235312, i64 2148235343, i64 2148235366}
!99 = !{i64 2148325473}
