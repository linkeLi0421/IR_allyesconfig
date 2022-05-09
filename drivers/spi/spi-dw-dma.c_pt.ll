; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-dw-dma.c_pt.bc'
source_filename = "../drivers/spi/spi-dw-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw_spi_dma_setup_mfld\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_spi_dma_setup_mfld\09\09\09\09"
module asm "\09.long\09__crc_dw_spi_dma_setup_mfld\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_spi_dma_setup_mfld:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_spi_dma_setup_mfld\22\09\09\09\09\09"
module asm "__kstrtabns_dw_spi_dma_setup_mfld:\09\09\09\09\09"
module asm "\09.asciz \09\22SPI_DW_CORE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_spi_dma_setup_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_spi_dma_setup_generic\09\09\09\09"
module asm "\09.long\09__crc_dw_spi_dma_setup_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_spi_dma_setup_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_spi_dma_setup_generic\22\09\09\09\09\09"
module asm "__kstrtabns_dw_spi_dma_setup_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22SPI_DW_CORE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dw_spi_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_spi = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, i32, ptr, i32, [266 x i8], i32, i8, ptr, i32, i32, i32, %struct.spi_controller_mem_ops, ptr, i32, ptr, i32, i32, i32, i32, ptr, %struct.completion, ptr, %struct.debugfs_regset32 }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@dw_spi_dma_mfld_ops = internal constant { %struct.dw_spi_dma_ops, [40 x i8] } { %struct.dw_spi_dma_ops { ptr @dw_spi_dma_init_mfld, ptr @dw_spi_dma_exit, ptr @dw_spi_dma_setup, ptr @dw_spi_can_dma, ptr @dw_spi_dma_transfer, ptr @dw_spi_dma_stop }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_dw_spi_dma_setup_mfld = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_spi_dma_setup_mfld = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_spi_dma_setup_mfld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_spi_dma_setup_mfld to i32), ptr @__kstrtab_dw_spi_dma_setup_mfld, ptr @__kstrtabns_dw_spi_dma_setup_mfld }, section "___ksymtab_gpl+dw_spi_dma_setup_mfld", align 4
@dw_spi_dma_generic_ops = internal constant { %struct.dw_spi_dma_ops, [40 x i8] } { %struct.dw_spi_dma_ops { ptr @dw_spi_dma_init_generic, ptr @dw_spi_dma_exit, ptr @dw_spi_dma_setup, ptr @dw_spi_can_dma, ptr @dw_spi_dma_transfer, ptr @dw_spi_dma_stop }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_dw_spi_dma_setup_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_spi_dma_setup_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_spi_dma_setup_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_spi_dma_setup_generic to i32), ptr @__kstrtab_dw_spi_dma_setup_generic, ptr @__kstrtabns_dw_spi_dma_setup_generic }, section "___ksymtab_gpl+dw_spi_dma_setup_generic", align 4
@__const.dw_spi_dma_init_mfld.dma_tx = private unnamed_addr constant { ptr, i8, i8, i8, i8, i8, i8, [2 x i8] } { ptr null, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@dw_spi_dma_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA transaction timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw_spi_dma_wait\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-dw-dma.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_spi_dma_wait._entry_ptr = internal global ptr @dw_spi_dma_wait._entry, section ".printk_index", align 4
@dw_spi_dma_wait_tx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tx hanged up\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw_spi_dma_wait_tx_done\00", [40 x i8] zeroinitializer }, align 32
@dw_spi_dma_wait_tx_done._entry_ptr = internal global ptr @dw_spi_dma_wait_tx_done._entry, section ".printk_index", align 4
@dw_spi_dma_wait_rx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx hanged up\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw_spi_dma_wait_rx_done\00", [40 x i8] zeroinitializer }, align 32
@dw_spi_dma_wait_rx_done._entry_ptr = internal global ptr @dw_spi_dma_wait_rx_done._entry, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"dw_spi_dma_mfld_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 629, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"dw_spi_dma_generic_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 644, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 87, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 1169, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 220, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 248, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 349, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 142, i32 47 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [28 x i8] c"../drivers/spi/spi-dw-dma.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 146, i32 47 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_dw_spi_dma_setup_generic, ptr @__ksymtab_dw_spi_dma_setup_mfld, ptr @dw_spi_dma_wait._entry, ptr @dw_spi_dma_wait._entry_ptr, ptr @dw_spi_dma_wait_rx_done._entry, ptr @dw_spi_dma_wait_rx_done._entry_ptr, ptr @dw_spi_dma_wait_tx_done._entry, ptr @dw_spi_dma_wait_tx_done._entry_ptr, ptr @dw_spi_dma_mfld_ops, ptr @dw_spi_dma_generic_ops, ptr @init_completion.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_dma_mfld_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_dma_generic_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_dma_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_dma_wait_tx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_dma_wait_rx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dw_spi_dma_setup_mfld(ptr nocapture noundef writeonly %dws) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 34
  %0 = ptrtoint ptr %dma_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dw_spi_dma_mfld_ops, ptr %dma_ops, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dw_spi_dma_setup_generic(ptr nocapture noundef writeonly %dws) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 34
  %0 = ptrtoint ptr %dma_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dw_spi_dma_generic_ops, ptr %dma_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_dma_init_mfld(ptr nocapture noundef readnone %dev, ptr noundef %dws) #1 align 64 {
entry:
  %tx.i = alloca %struct.dma_slave_caps, align 4
  %rx.i = alloca %struct.dma_slave_caps, align 4
  %caps.i = alloca %struct.dma_slave_caps, align 4
  %dma_tx = alloca %struct.dw_dma_slave, align 4
  %dma_rx = alloca %struct.dw_dma_slave, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dma_tx) #8
  %0 = call ptr @memcpy(ptr %dma_tx, ptr @__const.dw_spi_dma_init_mfld.dma_tx, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dma_rx) #8
  %1 = getelementptr inbounds i8, ptr %dma_rx, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %call = tail call ptr @pci_get_device(i32 noundef 32902, i32 noundef 2087, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dma_rx, align 4
  %call3 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @dw_spi_dma_chan_filter, ptr noundef nonnull %dma_rx, ptr noundef null) #8
  %rxchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %5 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %rxchan, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dma_tx, align 4
  %call10 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @dw_spi_dma_chan_filter, ptr noundef nonnull %dma_tx, ptr noundef null) #8
  %txchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %7 = ptrtoint ptr %txchan to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %txchan, align 4
  %tobool12.not = icmp eq ptr %call10, null
  %8 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxchan, align 4
  br i1 %tobool12.not, label %free_rxchan, label %if.end14

if.end14:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dws, align 4
  %dma_rx16 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 61
  %12 = ptrtoint ptr %dma_rx16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %dma_rx16, align 4
  %13 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txchan, align 4
  %15 = load ptr, ptr %dws, align 4
  %dma_tx19 = getelementptr inbounds %struct.spi_controller, ptr %15, i32 0, i32 60
  %16 = ptrtoint ptr %dma_tx19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %dma_tx19, align 8
  %dma_completion = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35
  %17 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dma_completion, align 4
  %wait.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps.i) #8
  %18 = call ptr @memset(ptr %caps.i, i32 255, i32 36)
  %fifo_len.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 7
  %19 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_len.i, align 4
  %div37.i = lshr i32 %20, 1
  %21 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rxchan, align 4
  %call.i = call i32 @dma_get_slave_caps(ptr noundef %22, ptr noundef nonnull %caps.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end14.if.else.i_crit_edge

if.end14.if.else.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end14
  %max_burst1.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i, i32 0, i32 4
  %23 = ptrtoint ptr %max_burst1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_burst1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end14.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %max_burst.0.i = phi i32 [ 16, %if.else.i ], [ %24, %land.lhs.true.i.if.end.i_crit_edge ]
  %25 = call i32 @llvm.umin.i32(i32 %max_burst.0.i, i32 %div37.i) #8
  %rxburst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 30
  %26 = ptrtoint ptr %rxburst.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rxburst.i, align 4
  %sub.i = add nsw i32 %25, -1
  %regs.i.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 4
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %sub.i) #8, !srcloc !44
  %29 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %txchan, align 4
  %call5.i = call i32 @dma_get_slave_caps(ptr noundef %30, ptr noundef nonnull %caps.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %if.end.i.if.else12.i_crit_edge

if.end.i.if.else12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12.i

land.lhs.true7.i:                                 ; preds = %if.end.i
  %max_burst8.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i, i32 0, i32 4
  %31 = ptrtoint ptr %max_burst8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_burst8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool9.not.i = icmp eq i32 %32, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.else12.i_crit_edge, label %land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge

land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_maxburst_init.exit

land.lhs.true7.i.if.else12.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12.i

if.else12.i:                                      ; preds = %land.lhs.true7.i.if.else12.i_crit_edge, %if.end.i.if.else12.i_crit_edge
  br label %dw_spi_dma_maxburst_init.exit

dw_spi_dma_maxburst_init.exit:                    ; preds = %if.else12.i, %land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge
  %max_burst.1.i = phi i32 [ 16, %if.else12.i ], [ %32, %land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge ]
  %33 = call i32 @llvm.umin.i32(i32 %max_burst.1.i, i32 %div37.i) #8
  %txburst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 28
  %34 = ptrtoint ptr %txburst.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %txburst.i, align 4
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %36, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %33) #8, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tx.i) #8
  %37 = call ptr @memset(ptr %tx.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rx.i) #8
  %38 = call ptr @memset(ptr %rx.i, i32 0, i32 36)
  %39 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %txchan, align 4
  %call.i44 = call i32 @dma_get_slave_caps(ptr noundef %40, ptr noundef nonnull %tx.i) #8
  %41 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rxchan, align 4
  %call1.i = call i32 @dma_get_slave_caps(ptr noundef %42, ptr noundef nonnull %rx.i) #8
  %max_sg_burst.i = getelementptr inbounds %struct.dma_slave_caps, ptr %tx.i, i32 0, i32 5
  %43 = ptrtoint ptr %max_sg_burst.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_sg_burst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 0
  %max_sg_burst13.i = getelementptr inbounds %struct.dma_slave_caps, ptr %rx.i, i32 0, i32 5
  %45 = ptrtoint ptr %max_sg_burst13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_sg_burst13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp14.not.i = icmp eq i32 %46, 0
  br i1 %cmp.not.i, label %if.else12.i47, label %land.lhs.true.i46

land.lhs.true.i46:                                ; preds = %dw_spi_dma_maxburst_init.exit
  br i1 %cmp14.not.i, label %if.then9.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  %47 = call i32 @llvm.umin.i32(i32 %44, i32 %46) #8
  %dma_sg_burst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 31
  %48 = ptrtoint ptr %dma_sg_burst.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %dma_sg_burst.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

if.then9.i:                                       ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  %dma_sg_burst11.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 31
  %49 = ptrtoint ptr %dma_sg_burst11.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %44, ptr %dma_sg_burst11.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

if.else12.i47:                                    ; preds = %dw_spi_dma_maxburst_init.exit
  %dma_sg_burst19.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 31
  br i1 %cmp14.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else12.i47
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %dma_sg_burst19.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %46, ptr %dma_sg_burst19.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

if.else18.i:                                      ; preds = %if.else12.i47
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %dma_sg_burst19.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %dma_sg_burst19.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

dw_spi_dma_sg_burst_init.exit:                    ; preds = %if.else18.i, %if.then15.i, %if.then9.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rx.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tx.i) #8
  br label %cleanup

free_rxchan:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef %9) #8
  %52 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rxchan, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_rxchan, %dw_spi_dma_sg_burst_init.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dw_spi_dma_sg_burst_init.exit ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %free_rxchan ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dma_rx) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dma_tx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_spi_dma_exit(ptr nocapture noundef readonly %dws) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %txchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %0 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txchan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %5(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1169) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef nonnull %1) #8
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %10 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txchan, align 4
  tail call void @dma_release_channel(ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_sync.exit, %entry.if.end_crit_edge
  %rxchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %12 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxchan, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %device_terminate_all.i.i15 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %device_terminate_all.i.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_terminate_all.i.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i16, label %if.then4.dmaengine_terminate_sync.exit24_crit_edge, label %dmaengine_terminate_async.exit.i19

if.then4.dmaengine_terminate_sync.exit24_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit24

dmaengine_terminate_async.exit.i19:               ; preds = %if.then4
  %call.i.i17 = tail call i32 %17(ptr noundef nonnull %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i18 = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i18, label %if.end.i22, label %dmaengine_terminate_async.exit.i19.dmaengine_terminate_sync.exit24_crit_edge

dmaengine_terminate_async.exit.i19.dmaengine_terminate_sync.exit24_crit_edge: ; preds = %dmaengine_terminate_async.exit.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit24

if.end.i22:                                       ; preds = %dmaengine_terminate_async.exit.i19
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1169) #8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %device_synchronize.i.i20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 48
  %20 = ptrtoint ptr %device_synchronize.i.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_synchronize.i.i20, align 4
  %tobool.not.i1.i21 = icmp eq ptr %21, null
  br i1 %tobool.not.i1.i21, label %if.end.i22.dmaengine_terminate_sync.exit24_crit_edge, label %if.then.i2.i23

if.end.i22.dmaengine_terminate_sync.exit24_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit24

if.then.i2.i23:                                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef nonnull %13) #8
  br label %dmaengine_terminate_sync.exit24

dmaengine_terminate_sync.exit24:                  ; preds = %if.then.i2.i23, %if.end.i22.dmaengine_terminate_sync.exit24_crit_edge, %dmaengine_terminate_async.exit.i19.dmaengine_terminate_sync.exit24_crit_edge, %if.then4.dmaengine_terminate_sync.exit24_crit_edge
  %22 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxchan, align 4
  tail call void @dma_release_channel(ptr noundef %23) #8
  br label %if.end8

if.end8:                                          ; preds = %dmaengine_terminate_sync.exit24, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_dma_setup(ptr nocapture noundef %dws, ptr nocapture noundef readonly %xfer) #1 align 64 {
entry:
  %rxconf.i = alloca %struct.dma_slave_config, align 4
  %txconf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xfer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %txconf.i) #8
  %2 = getelementptr inbounds i8, ptr %txconf.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 44)
  %4 = ptrtoint ptr %txconf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %txconf.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 33
  %5 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 2
  %7 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dst_addr.i, align 4
  %txburst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 28
  %8 = ptrtoint ptr %txburst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 6
  %10 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dst_maxburst.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 3
  %11 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %src_addr_width.i, align 4
  %n_bytes.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 21
  %12 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %n_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %switch.selectcmp.i.i = icmp eq i8 %13, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %switch.selectcmp8.i.i = icmp eq i8 %13, 1
  %switch.select9.i.i = select i1 %switch.selectcmp8.i.i, i32 1, i32 %switch.select.i.i
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 4
  %14 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.select9.i.i, ptr %dst_addr_width.i, align 4
  %txchan.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %15 = ptrtoint ptr %txchan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %txchan.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %dw_spi_dma_config_tx.exit.thread, label %dw_spi_dma_config_tx.exit

dw_spi_dma_config_tx.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #8
  br label %cleanup

dw_spi_dma_config_tx.exit:                        ; preds = %if.end
  %call.i.i = call i32 %20(ptr noundef %16, ptr noundef nonnull %txconf.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end3, label %dw_spi_dma_config_tx.exit.cleanup_crit_edge

dw_spi_dma_config_tx.exit.cleanup_crit_edge:      ; preds = %dw_spi_dma_config_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %dw_spi_dma_config_tx.exit
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf, align 4
  %tobool4.not = icmp eq ptr %22, null
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rxconf.i) #8
  %23 = getelementptr inbounds i8, ptr %rxconf.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %rxconf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %rxconf.i, align 4
  %26 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 1
  %28 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %src_addr.i, align 4
  %rxburst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 30
  %29 = ptrtoint ptr %rxburst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxburst.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 5
  %31 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %src_maxburst.i, align 4
  %dst_addr_width.i41 = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 4
  %32 = ptrtoint ptr %dst_addr_width.i41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %dst_addr_width.i41, align 4
  %33 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %n_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %switch.selectcmp.i.i43 = icmp eq i8 %34, 2
  %switch.select.i.i44 = select i1 %switch.selectcmp.i.i43, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %switch.selectcmp8.i.i45 = icmp eq i8 %34, 1
  %switch.select9.i.i46 = select i1 %switch.selectcmp8.i.i45, i32 1, i32 %switch.select.i.i44
  %src_addr_width.i47 = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 3
  %35 = ptrtoint ptr %src_addr_width.i47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.select9.i.i46, ptr %src_addr_width.i47, align 4
  %rxchan.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %36 = ptrtoint ptr %rxchan.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rxchan.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_config.i.i48 = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %device_config.i.i48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_config.i.i48, align 4
  %tobool.not.i.i49 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i49, label %dw_spi_dma_config_rx.exit.thread, label %dw_spi_dma_config_rx.exit

dw_spi_dma_config_rx.exit.thread:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #8
  br label %cleanup

dw_spi_dma_config_rx.exit:                        ; preds = %if.then5
  %call.i.i50 = call i32 %41(ptr noundef %37, ptr noundef nonnull %rxconf.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %tobool7.not = icmp eq i32 %call.i.i50, 0
  br i1 %tobool7.not, label %dw_spi_dma_config_rx.exit.if.end10_crit_edge, label %dw_spi_dma_config_rx.exit.cleanup_crit_edge

dw_spi_dma_config_rx.exit.cleanup_crit_edge:      ; preds = %dw_spi_dma_config_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dw_spi_dma_config_rx.exit.if.end10_crit_edge:     ; preds = %dw_spi_dma_config_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %dw_spi_dma_config_rx.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %42 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_buf, align 4
  %tobool12.not = icmp eq ptr %43, null
  %spec.select = select i1 %tobool12.not, i32 2, i32 3
  %regs.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 4
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %spec.select) #8, !srcloc !44
  %46 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_buf, align 4
  %tobool18.not = icmp eq ptr %47, null
  %imr.0 = select i1 %tobool18.not, i32 2, i32 14
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 44
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !45
  %or.i = or i32 %50, %imr.0
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %52, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %or.i) #8, !srcloc !44
  %dma_completion = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35
  %53 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %dma_completion, align 4
  %transfer_handler = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 22
  %54 = ptrtoint ptr %transfer_handler to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @dw_spi_dma_transfer_handler, ptr %transfer_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %dw_spi_dma_config_rx.exit.cleanup_crit_edge, %dw_spi_dma_config_rx.exit.thread, %dw_spi_dma_config_tx.exit.cleanup_crit_edge, %dw_spi_dma_config_tx.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %dw_spi_dma_config_tx.exit.cleanup_crit_edge ], [ %call.i.i50, %dw_spi_dma_config_rx.exit.cleanup_crit_edge ], [ -38, %dw_spi_dma_config_tx.exit.thread ], [ -38, %dw_spi_dma_config_rx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw_spi_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %fifo_len = getelementptr inbounds %struct.dw_spi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %fifo_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_dma_transfer(ptr noundef %dws, ptr noundef %xfer) #1 align 64 {
entry:
  %delay.i190 = alloca %struct.spi_delay, align 4
  %delay.i = alloca %struct.spi_delay, align 4
  %tx_tmp.i = alloca %struct.scatterlist, align 4
  %rx_tmp.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nents1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %nents1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents1, align 4
  %nents2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6, i32 1
  %dma_sg_burst = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 31
  %2 = ptrtoint ptr %dma_sg_burst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_sg_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %nents2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nents2, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %1, i32 %5)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %tobool3.not = icmp ne ptr %8, null
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp6.not = icmp ugt i32 %6, %3
  %or.cond = select i1 %tobool3.not, i1 %cmp6.not, i1 false
  br i1 %or.cond, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %9 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_sg.i, align 4
  %call.i = tail call fastcc i32 @dw_spi_dma_submit_tx(ptr noundef %dws, ptr noundef %10, i32 noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dw_spi_dma_transfer_all.exit_crit_edge

if.then.dw_spi_dma_transfer_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_transfer_all.exit

if.end.i:                                         ; preds = %if.then
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %11 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_buf.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then3.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.end.i
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %13 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_sg.i, align 4
  %15 = ptrtoint ptr %nents2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nents2, align 4
  %call7.i = tail call fastcc i32 @dw_spi_dma_submit_rx(ptr noundef %dws, ptr noundef %14, i32 noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then3.i.dw_spi_dma_transfer_all.exit_crit_edge

if.then3.i.dw_spi_dma_transfer_all.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_transfer_all.exit

if.end10.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %rxchan.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %17 = ptrtoint ptr %rxchan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxchan.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 50
  %21 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %22(ptr noundef %18) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end10.i, %if.end.i.if.end11.i_crit_edge
  %txchan.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %23 = ptrtoint ptr %txchan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %txchan.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %device_issue_pending.i26.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 50
  %27 = ptrtoint ptr %device_issue_pending.i26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_issue_pending.i26.i, align 4
  tail call void %28(ptr noundef %24) #8
  %dma_completion.i.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %mul1.i.i = mul i32 %30, 8000
  %effective_speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 13
  %31 = ptrtoint ptr %effective_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %effective_speed_hz.i, align 4
  %div176.i.i = udiv i32 %mul1.i.i, %32
  %conv177.i.i = zext i32 %div176.i.i to i64
  %reass.add.i.i = shl nuw nsw i64 %conv177.i.i, 1
  %33 = call i64 @llvm.umin.i64(i64 %reass.add.i.i, i64 4294967095)
  %34 = trunc i64 %33 to i32
  %conv190.i.i = add i32 %34, 200
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv190.i.i) #8
  %call192.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_completion.i.i, i32 noundef %call2.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i.i)
  %cmp194.i.i = icmp eq i32 %call192.i.i, 0
  br i1 %cmp194.i.i, label %do.end.i.i, label %if.end11.i.dw_spi_dma_transfer_all.exit_crit_edge

if.end11.i.dw_spi_dma_transfer_all.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_transfer_all.exit

do.end.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dws, align 4
  %cur_msg.i.i = getelementptr inbounds %struct.spi_controller, ptr %36, i32 0, i32 31
  %37 = ptrtoint ptr %cur_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_msg.i.i, align 4
  %spi.i.i = getelementptr inbounds %struct.spi_message, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.2) #11
  br label %dw_spi_dma_transfer_all.exit

dw_spi_dma_transfer_all.exit:                     ; preds = %do.end.i.i, %if.end11.i.dw_spi_dma_transfer_all.exit_crit_edge, %if.then3.i.dw_spi_dma_transfer_all.exit_crit_edge, %if.then.dw_spi_dma_transfer_all.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.dw_spi_dma_transfer_all.exit_crit_edge ], [ %call7.i, %if.then3.i.dw_spi_dma_transfer_all.exit_crit_edge ], [ -110, %do.end.i.i ], [ 0, %if.end11.i.dw_spi_dma_transfer_all.exit_crit_edge ]
  %regs.i.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 4
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !44
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_tmp.i) #8
  %43 = getelementptr inbounds %struct.scatterlist, ptr %tx_tmp.i, i32 0, i32 3
  %44 = getelementptr inbounds %struct.scatterlist, ptr %tx_tmp.i, i32 0, i32 4
  %45 = call ptr @memset(ptr %tx_tmp.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rx_tmp.i) #8
  %46 = getelementptr inbounds %struct.scatterlist, ptr %rx_tmp.i, i32 0, i32 3
  %47 = getelementptr inbounds %struct.scatterlist, ptr %rx_tmp.i, i32 0, i32 4
  %48 = call ptr @memset(ptr %rx_tmp.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %tx_tmp.i, i32 noundef 1) #8
  call void @sg_init_table(ptr noundef nonnull %rx_tmp.i, i32 noundef 1) #8
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %49 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp79.not.i = icmp eq i32 %50, 0
  br i1 %cmp79.not.i, label %if.else.dw_spi_dma_transfer_one.exit_crit_edge, label %for.body.lr.ph.i

if.else.dw_spi_dma_transfer_one.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_transfer_one.exit

for.body.lr.ph.i:                                 ; preds = %if.else
  %tx_sg3.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %rx_sg9.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %rxchan.i49 = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %txchan.i50 = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %effective_speed_hz.i51 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 13
  %dma_completion.i.i52 = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35
  br label %for.body.i

for.body.i:                                       ; preds = %if.end38.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tx_sg.084.i = phi ptr [ null, %for.body.lr.ph.i ], [ %tx_sg.1.i, %if.end38.i.for.body.i_crit_edge ]
  %base.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add43.i, %if.end38.i.for.body.i_crit_edge ]
  %rx_len.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %sub42.i, %if.end38.i.for.body.i_crit_edge ]
  %tx_len.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %sub.i, %if.end38.i.for.body.i_crit_edge ]
  %rx_sg.080.i = phi ptr [ null, %for.body.lr.ph.i ], [ %rx_sg.1.i, %if.end38.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_len.081.i)
  %tobool.not.i53 = icmp eq i32 %tx_len.081.i, 0
  br i1 %tobool.not.i53, label %if.then.i, label %for.body.i.if.end.i56_crit_edge

for.body.i.if.end.i56_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i56

if.then.i:                                        ; preds = %for.body.i
  %tobool2.not.i54 = icmp eq ptr %tx_sg.084.i, null
  br i1 %tobool2.not.i54, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %tx_sg3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_sg3.i, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i55 = call ptr @sg_next(ptr noundef nonnull %tx_sg.084.i) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %52, %cond.true.i ], [ %call.i55, %cond.false.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %cond.i, i32 0, i32 3
  %53 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_address.i, align 4
  %55 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %43, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %cond.i, i32 0, i32 4
  %56 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_length.i, align 4
  br label %if.end.i56

if.end.i56:                                       ; preds = %cond.end.i, %for.body.i.if.end.i56_crit_edge
  %tx_len.1.i = phi i32 [ %tx_len.081.i, %for.body.i.if.end.i56_crit_edge ], [ %57, %cond.end.i ]
  %tx_sg.1.i = phi ptr [ %tx_sg.084.i, %for.body.i.if.end.i56_crit_edge ], [ %cond.i, %cond.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_len.082.i)
  %tobool5.not.i = icmp eq i32 %rx_len.082.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i56.if.end19.i_crit_edge

if.end.i56.if.end19.i_crit_edge:                  ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then6.i:                                       ; preds = %if.end.i56
  %tobool7.not.i = icmp eq ptr %rx_sg.080.i, null
  br i1 %tobool7.not.i, label %cond.true8.i, label %cond.false12.i

cond.true8.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %rx_sg9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_sg9.i, align 4
  br label %cond.end14.i

cond.false12.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call ptr @sg_next(ptr noundef nonnull %rx_sg.080.i) #8
  br label %cond.end14.i

cond.end14.i:                                     ; preds = %cond.false12.i, %cond.true8.i
  %cond15.i = phi ptr [ %59, %cond.true8.i ], [ %call13.i, %cond.false12.i ]
  %dma_address16.i = getelementptr inbounds %struct.scatterlist, ptr %cond15.i, i32 0, i32 3
  %60 = ptrtoint ptr %dma_address16.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_address16.i, align 4
  %62 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %46, align 4
  %dma_length18.i = getelementptr inbounds %struct.scatterlist, ptr %cond15.i, i32 0, i32 4
  %63 = ptrtoint ptr %dma_length18.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length18.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %cond.end14.i, %if.end.i56.if.end19.i_crit_edge
  %rx_sg.1.i = phi ptr [ %rx_sg.080.i, %if.end.i56.if.end19.i_crit_edge ], [ %cond15.i, %cond.end14.i ]
  %rx_len.1.i = phi i32 [ %rx_len.082.i, %if.end.i56.if.end19.i_crit_edge ], [ %64, %cond.end14.i ]
  %65 = call i32 @llvm.umin.i32(i32 %tx_len.1.i, i32 %rx_len.1.i) #8
  %66 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %44, align 4
  %67 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %65, ptr %47, align 4
  %call27.i = call fastcc i32 @dw_spi_dma_submit_tx(ptr noundef %dws, ptr noundef nonnull %tx_tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end19.i.dw_spi_dma_transfer_one.exit_crit_edge

if.end19.i.dw_spi_dma_transfer_one.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_transfer_one.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call31.i = call fastcc i32 @dw_spi_dma_submit_rx(ptr noundef %dws, ptr noundef nonnull %rx_tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.dw_spi_dma_transfer_one.exit_crit_edge

if.end30.i.dw_spi_dma_transfer_one.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_transfer_one.exit

if.end34.i:                                       ; preds = %if.end30.i
  %68 = ptrtoint ptr %rxchan.i49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rxchan.i49, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %device_issue_pending.i.i57 = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 50
  %72 = ptrtoint ptr %device_issue_pending.i.i57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device_issue_pending.i.i57, align 4
  call void %73(ptr noundef %69) #8
  %74 = ptrtoint ptr %txchan.i50 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %txchan.i50, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %device_issue_pending.i76.i = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 50
  %78 = ptrtoint ptr %device_issue_pending.i76.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_issue_pending.i76.i, align 4
  call void %79(ptr noundef %75) #8
  %mul1.i.i58 = mul i32 %65, 8000
  %80 = ptrtoint ptr %effective_speed_hz.i51 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %effective_speed_hz.i51, align 4
  %div176.i.i164 = udiv i32 %mul1.i.i58, %81
  %conv177.i.i165 = zext i32 %div176.i.i164 to i64
  %reass.add.i.i168 = shl nuw nsw i64 %conv177.i.i165, 1
  %82 = call i64 @llvm.umin.i64(i64 %reass.add.i.i168, i64 4294967095)
  %83 = trunc i64 %82 to i32
  %conv190.i.i170 = add i32 %83, 200
  %call2.i.i.i177 = call i32 @__msecs_to_jiffies(i32 noundef %conv190.i.i170) #8
  %call192.i.i180 = call i32 @wait_for_completion_timeout(ptr noundef %dma_completion.i.i52, i32 noundef %call2.i.i.i177) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i.i180)
  %cmp194.i.i181 = icmp eq i32 %call192.i.i180, 0
  br i1 %cmp194.i.i181, label %dw_spi_dma_wait.exit.i, label %if.end38.i

dw_spi_dma_wait.exit.i:                           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dws, align 4
  %cur_msg.i.i183 = getelementptr inbounds %struct.spi_controller, ptr %85, i32 0, i32 31
  %86 = ptrtoint ptr %cur_msg.i.i183 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur_msg.i.i183, align 4
  %spi.i.i184 = getelementptr inbounds %struct.spi_message, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %spi.i.i184 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi.i.i184, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.2) #11
  br label %dw_spi_dma_transfer_one.exit

if.end38.i:                                       ; preds = %if.end34.i
  %90 = ptrtoint ptr %dma_completion.i.i52 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %dma_completion.i.i52, align 4
  %91 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %43, align 4
  %add.i = add i32 %92, %65
  store i32 %add.i, ptr %43, align 4
  %93 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %46, align 4
  %add41.i = add i32 %94, %65
  store i32 %add41.i, ptr %46, align 4
  %sub.i = sub i32 %tx_len.1.i, %65
  %sub42.i = sub i32 %rx_len.1.i, %65
  %add43.i = add i32 %65, %base.083.i
  %95 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len1.i, align 4
  %cmp.i = icmp ult i32 %add43.i, %96
  br i1 %cmp.i, label %if.end38.i.for.body.i_crit_edge, label %if.end38.i.dw_spi_dma_transfer_one.exit_crit_edge

if.end38.i.dw_spi_dma_transfer_one.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_transfer_one.exit

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

dw_spi_dma_transfer_one.exit:                     ; preds = %if.end38.i.dw_spi_dma_transfer_one.exit_crit_edge, %dw_spi_dma_wait.exit.i, %if.end30.i.dw_spi_dma_transfer_one.exit_crit_edge, %if.end19.i.dw_spi_dma_transfer_one.exit_crit_edge, %if.else.dw_spi_dma_transfer_one.exit_crit_edge
  %ret.1.i = phi i32 [ -110, %dw_spi_dma_wait.exit.i ], [ -1, %if.else.dw_spi_dma_transfer_one.exit_crit_edge ], [ %call31.i, %if.end30.i.dw_spi_dma_transfer_one.exit_crit_edge ], [ %call27.i, %if.end19.i.dw_spi_dma_transfer_one.exit_crit_edge ], [ 0, %if.end38.i.dw_spi_dma_transfer_one.exit_crit_edge ]
  %regs.i.i185 = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 4
  %97 = ptrtoint ptr %regs.i.i185 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i185, align 4
  %add.ptr.i.i186 = getelementptr i8, ptr %98, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i186, i32 0) #8, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rx_tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_tmp.i) #8
  br label %if.end

if.end:                                           ; preds = %dw_spi_dma_transfer_one.exit, %dw_spi_dma_transfer_all.exit
  %ret.0 = phi i32 [ %ret.0.i, %dw_spi_dma_transfer_all.exit ], [ %ret.1.i, %dw_spi_dma_transfer_one.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %99 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dws, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %100, i32 0, i32 31
  %101 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur_msg, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %104)
  %cmp11 = icmp eq i32 %104, -115
  br i1 %cmp11, label %if.then12, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i) #8
  %105 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -64769, ptr %delay.i, align 4, !annotation !46
  %regs.i.i187 = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 4
  %106 = ptrtoint ptr %regs.i.i187 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i.i187, align 4
  %add.ptr.i.i188 = getelementptr i8, ptr %107, i32 32
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i188) #8, !srcloc !45
  %n_bytes.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 21
  %109 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %n_bytes.i, align 4
  %conv.i = zext i8 %110 to i32
  %mul.i = mul i32 %108, %conv.i
  %mul.tr.i = trunc i32 %mul.i to i16
  %conv2.i = shl i16 %mul.tr.i, 3
  %111 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv2.i, ptr %delay.i, align 4
  %112 = ptrtoint ptr %regs.i.i187 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i.i187, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %113, i32 40
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #8, !srcloc !45
  %and.i17.i = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i18.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.rhs.preheader.i, label %if.then12.dw_spi_dma_wait_tx_done.exit.thread_crit_edge

if.then12.dw_spi_dma_wait_tx_done.exit.thread_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_tx_done.exit.thread

land.rhs.preheader.i:                             ; preds = %if.then12
  %call5.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i, ptr noundef %xfer) #8
  %115 = ptrtoint ptr %regs.i.i187 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i187, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %116, i32 40
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !45
  %and.i.i = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i189 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i189, label %land.rhs.1.i, label %land.rhs.preheader.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge

land.rhs.preheader.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge: ; preds = %land.rhs.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_tx_done.exit.thread

land.rhs.1.i:                                     ; preds = %land.rhs.preheader.i
  %call5.1.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i, ptr noundef %xfer) #8
  %118 = ptrtoint ptr %regs.i.i187 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i187, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %119, i32 40
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i) #8, !srcloc !45
  %and.i.1.i = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %and.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %land.rhs.2.i, label %land.rhs.1.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge

land.rhs.1.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge: ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_tx_done.exit.thread

land.rhs.2.i:                                     ; preds = %land.rhs.1.i
  %call5.2.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i, ptr noundef %xfer) #8
  %121 = ptrtoint ptr %regs.i.i187 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i.i187, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %122, i32 40
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i) #8, !srcloc !45
  %and.i.2.i = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %and.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %land.rhs.3.i, label %land.rhs.2.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge

land.rhs.2.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge: ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_tx_done.exit.thread

land.rhs.3.i:                                     ; preds = %land.rhs.2.i
  %call5.3.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i, ptr noundef %xfer) #8
  %124 = ptrtoint ptr %regs.i.i187 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i.i187, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %125, i32 40
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i) #8, !srcloc !45
  %and.i.3.i = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %and.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %land.rhs.4.i, label %land.rhs.3.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge

land.rhs.3.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge: ; preds = %land.rhs.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_tx_done.exit.thread

land.rhs.4.i:                                     ; preds = %land.rhs.3.i
  %call5.4.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i, ptr noundef %xfer) #8
  %127 = ptrtoint ptr %regs.i.i187 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i.i187, align 4
  %add.ptr.i.i.4.i = getelementptr i8, ptr %128, i32 40
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i) #8, !srcloc !45
  %and.i.4.i = and i32 %129, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %and.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %dw_spi_dma_wait_tx_done.exit, label %land.rhs.4.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge

land.rhs.4.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge: ; preds = %land.rhs.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_tx_done.exit.thread

dw_spi_dma_wait_tx_done.exit.thread:              ; preds = %land.rhs.4.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge, %land.rhs.3.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge, %land.rhs.2.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge, %land.rhs.1.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge, %land.rhs.preheader.i.dw_spi_dma_wait_tx_done.exit.thread_crit_edge, %if.then12.dw_spi_dma_wait_tx_done.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i) #8
  br label %if.end17

dw_spi_dma_wait_tx_done.exit:                     ; preds = %land.rhs.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dws, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i) #8
  br label %cleanup

if.end17:                                         ; preds = %dw_spi_dma_wait_tx_done.exit.thread, %if.end10.if.end17_crit_edge
  %rx_buf18 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %132 = ptrtoint ptr %rx_buf18 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rx_buf18, align 4
  %tobool19.not = icmp eq ptr %133, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %land.lhs.true

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end17
  %134 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dws, align 4
  %cur_msg21 = getelementptr inbounds %struct.spi_controller, ptr %135, i32 0, i32 31
  %136 = ptrtoint ptr %cur_msg21 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur_msg21, align 4
  %status22 = getelementptr inbounds %struct.spi_message, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %status22 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %status22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %139)
  %cmp23 = icmp eq i32 %139, -115
  br i1 %cmp23, label %if.then24, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i190) #8
  %140 = ptrtoint ptr %delay.i190 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %delay.i190, align 4, !annotation !46
  %regs.i.i191 = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 4
  %141 = ptrtoint ptr %regs.i.i191 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i191, align 4
  %add.ptr.i.i192 = getelementptr i8, ptr %142, i32 36
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i192) #8, !srcloc !45
  %max_freq.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 10
  %144 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %max_freq.i, align 4
  %div.i = udiv i32 -294967296, %145
  %mul.i193 = mul i32 %div.i, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %mul.i193)
  %cmp.i194 = icmp ult i32 %mul.i193, 1001
  %sub.i195 = add i32 %mul.i193, 999
  %div1.i = udiv i32 %sub.i195, 1000
  %146 = call i32 @llvm.umin.i32(i32 %div1.i, i32 65535) #8
  %.sink.i = zext i1 %cmp.i194 to i8
  %storemerge.in.i = select i1 %cmp.i194, i32 %mul.i193, i32 %146
  %147 = getelementptr inbounds %struct.spi_delay, ptr %delay.i190, i32 0, i32 1
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %.sink.i, ptr %147, align 2
  %storemerge.i = trunc i32 %storemerge.in.i to i16
  %149 = ptrtoint ptr %delay.i190 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %storemerge.i, ptr %delay.i190, align 4
  %150 = ptrtoint ptr %regs.i.i191 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs.i.i191, align 4
  %add.ptr.i.i38.i = getelementptr i8, ptr %151, i32 40
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38.i) #8, !srcloc !45
  %and.i39.i = and i32 %152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %tobool.i.not40.i = icmp eq i32 %and.i39.i, 0
  br i1 %tobool.i.not40.i, label %if.then24.dw_spi_dma_wait_rx_done.exit_crit_edge, label %land.rhs.preheader.i198

if.then24.dw_spi_dma_wait_rx_done.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_rx_done.exit

land.rhs.preheader.i198:                          ; preds = %if.then24
  %call16.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i190, ptr noundef null) #8
  %153 = ptrtoint ptr %regs.i.i191 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i.i191, align 4
  %add.ptr.i.i.i196 = getelementptr i8, ptr %154, i32 40
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i196) #8, !srcloc !45
  %and.i.i197 = and i32 %155, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i197)
  %tobool.i.not.i = icmp eq i32 %and.i.i197, 0
  br i1 %tobool.i.not.i, label %land.rhs.preheader.i198.dw_spi_dma_wait_rx_done.exit_crit_edge, label %land.rhs.1.i201

land.rhs.preheader.i198.dw_spi_dma_wait_rx_done.exit_crit_edge: ; preds = %land.rhs.preheader.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_rx_done.exit

land.rhs.1.i201:                                  ; preds = %land.rhs.preheader.i198
  %call16.1.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i190, ptr noundef null) #8
  %156 = ptrtoint ptr %regs.i.i191 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i.i191, align 4
  %add.ptr.i.i.1.i199 = getelementptr i8, ptr %157, i32 40
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i199) #8, !srcloc !45
  %and.i.1.i200 = and i32 %158, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i200)
  %tobool.i.not.1.i = icmp eq i32 %and.i.1.i200, 0
  br i1 %tobool.i.not.1.i, label %land.rhs.1.i201.dw_spi_dma_wait_rx_done.exit_crit_edge, label %land.rhs.2.i204

land.rhs.1.i201.dw_spi_dma_wait_rx_done.exit_crit_edge: ; preds = %land.rhs.1.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_rx_done.exit

land.rhs.2.i204:                                  ; preds = %land.rhs.1.i201
  %call16.2.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i190, ptr noundef null) #8
  %159 = ptrtoint ptr %regs.i.i191 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i.i191, align 4
  %add.ptr.i.i.2.i202 = getelementptr i8, ptr %160, i32 40
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i202) #8, !srcloc !45
  %and.i.2.i203 = and i32 %161, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i203)
  %tobool.i.not.2.i = icmp eq i32 %and.i.2.i203, 0
  br i1 %tobool.i.not.2.i, label %land.rhs.2.i204.dw_spi_dma_wait_rx_done.exit_crit_edge, label %land.rhs.3.i207

land.rhs.2.i204.dw_spi_dma_wait_rx_done.exit_crit_edge: ; preds = %land.rhs.2.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_rx_done.exit

land.rhs.3.i207:                                  ; preds = %land.rhs.2.i204
  %call16.3.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i190, ptr noundef null) #8
  %162 = ptrtoint ptr %regs.i.i191 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs.i.i191, align 4
  %add.ptr.i.i.3.i205 = getelementptr i8, ptr %163, i32 40
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i205) #8, !srcloc !45
  %and.i.3.i206 = and i32 %164, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i206)
  %tobool.i.not.3.i = icmp eq i32 %and.i.3.i206, 0
  br i1 %tobool.i.not.3.i, label %land.rhs.3.i207.dw_spi_dma_wait_rx_done.exit_crit_edge, label %land.rhs.4.i210

land.rhs.3.i207.dw_spi_dma_wait_rx_done.exit_crit_edge: ; preds = %land.rhs.3.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_rx_done.exit

land.rhs.4.i210:                                  ; preds = %land.rhs.3.i207
  %call16.4.i = call i32 @spi_delay_exec(ptr noundef nonnull %delay.i190, ptr noundef null) #8
  %165 = ptrtoint ptr %regs.i.i191 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i.i191, align 4
  %add.ptr.i.i.4.i208 = getelementptr i8, ptr %166, i32 40
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i208) #8, !srcloc !45
  %and.i.4.i209 = and i32 %167, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4.i209)
  %tobool.i.not.4.i = icmp eq i32 %and.i.4.i209, 0
  br i1 %tobool.i.not.4.i, label %land.rhs.4.i210.dw_spi_dma_wait_rx_done.exit_crit_edge, label %do.end.i211

land.rhs.4.i210.dw_spi_dma_wait_rx_done.exit_crit_edge: ; preds = %land.rhs.4.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_wait_rx_done.exit

do.end.i211:                                      ; preds = %land.rhs.4.i210
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dws, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.9) #11
  br label %dw_spi_dma_wait_rx_done.exit

dw_spi_dma_wait_rx_done.exit:                     ; preds = %do.end.i211, %land.rhs.4.i210.dw_spi_dma_wait_rx_done.exit_crit_edge, %land.rhs.3.i207.dw_spi_dma_wait_rx_done.exit_crit_edge, %land.rhs.2.i204.dw_spi_dma_wait_rx_done.exit_crit_edge, %land.rhs.1.i201.dw_spi_dma_wait_rx_done.exit_crit_edge, %land.rhs.preheader.i198.dw_spi_dma_wait_rx_done.exit_crit_edge, %if.then24.dw_spi_dma_wait_rx_done.exit_crit_edge
  %retval.0.i212 = phi i32 [ -5, %do.end.i211 ], [ 0, %land.rhs.preheader.i198.dw_spi_dma_wait_rx_done.exit_crit_edge ], [ 0, %land.rhs.1.i201.dw_spi_dma_wait_rx_done.exit_crit_edge ], [ 0, %land.rhs.2.i204.dw_spi_dma_wait_rx_done.exit_crit_edge ], [ 0, %land.rhs.3.i207.dw_spi_dma_wait_rx_done.exit_crit_edge ], [ 0, %land.rhs.4.i210.dw_spi_dma_wait_rx_done.exit_crit_edge ], [ 0, %if.then24.dw_spi_dma_wait_rx_done.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i190) #8
  br label %cleanup

cleanup:                                          ; preds = %dw_spi_dma_wait_rx_done.exit, %land.lhs.true.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %dw_spi_dma_wait_tx_done.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end.cleanup_crit_edge ], [ -5, %dw_spi_dma_wait_tx_done.exit ], [ %retval.0.i212, %dw_spi_dma_wait_rx_done.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_spi_dma_stop(ptr noundef %dws) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan_busy = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 32
  %0 = ptrtoint ptr %dma_chan_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dma_chan_busy, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %txchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %3 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %txchan, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %8(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1169) #8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %12, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %12(ptr noundef %4) #8
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dma_chan_busy) #8
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_sync.exit, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %dma_chan_busy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dma_chan_busy, align 4
  %and1.i15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i15)
  %tobool5.not = icmp eq i32 %and1.i15, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %rxchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %15 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxchan, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i.i16 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i.i16, align 4
  %tobool.not.i.i17 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i17, label %if.then6.dmaengine_terminate_sync.exit25_crit_edge, label %dmaengine_terminate_async.exit.i20

if.then6.dmaengine_terminate_sync.exit25_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit25

dmaengine_terminate_async.exit.i20:               ; preds = %if.then6
  %call.i.i18 = tail call i32 %20(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %tobool.not.i19 = icmp eq i32 %call.i.i18, 0
  br i1 %tobool.not.i19, label %if.end.i23, label %dmaengine_terminate_async.exit.i20.dmaengine_terminate_sync.exit25_crit_edge

dmaengine_terminate_async.exit.i20.dmaengine_terminate_sync.exit25_crit_edge: ; preds = %dmaengine_terminate_async.exit.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit25

if.end.i23:                                       ; preds = %dmaengine_terminate_async.exit.i20
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1169) #8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %device_synchronize.i.i21 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %device_synchronize.i.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_synchronize.i.i21, align 4
  %tobool.not.i1.i22 = icmp eq ptr %24, null
  br i1 %tobool.not.i1.i22, label %if.end.i23.dmaengine_terminate_sync.exit25_crit_edge, label %if.then.i2.i24

if.end.i23.dmaengine_terminate_sync.exit25_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit25

if.then.i2.i24:                                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %24(ptr noundef %16) #8
  br label %dmaengine_terminate_sync.exit25

dmaengine_terminate_sync.exit25:                  ; preds = %if.then.i2.i24, %if.end.i23.dmaengine_terminate_sync.exit25_crit_edge, %dmaengine_terminate_async.exit.i20.dmaengine_terminate_sync.exit25_crit_edge, %if.then6.dmaengine_terminate_sync.exit25_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %dma_chan_busy) #8
  br label %if.end9

if.end9:                                          ; preds = %dmaengine_terminate_sync.exit25, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw_spi_dma_chan_filter(ptr nocapture noundef %chan, ptr noundef %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %cmp.not = icmp eq ptr %1, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %param, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_dma_transfer_handler(ptr noundef %dws) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dw_spi_check_status(ptr noundef %dws, i1 noundef zeroext false) #8
  %dma_completion = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35
  tail call void @complete(ptr noundef %dma_completion) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_spi_check_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_spi_dma_submit_tx(ptr noundef %dws, ptr noundef %sgl, i32 noundef %nents) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %txchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %0 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txchan, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %5(ptr noundef nonnull %1, ptr noundef %sgl, i32 noundef %nents, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, label %if.end

dmaengine_prep_slave_sg.exit.cleanup_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dw_spi_dma_tx_done, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dws, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_submit.i, align 4
  %call.i17 = tail call i32 %9(ptr noundef nonnull %call.i) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i17, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i17)
  %tobool3.not = icmp sgt i32 %call.i17, -1
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txchan, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then4.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then4
  %call.i.i = tail call i32 %16(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i18 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i18, label %if.end.i19, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i19:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1169) #8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 48
  %19 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %20, null
  br i1 %tobool.not.i1.i, label %if.end.i19.cleanup_crit_edge, label %if.then.i2.i

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %20(ptr noundef %12) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dma_chan_busy = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dma_chan_busy) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.i2.i, %if.end.i19.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge ], [ %10, %if.then4.cleanup_crit_edge ], [ %10, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ %10, %if.end.i19.cleanup_crit_edge ], [ %10, %if.then.i2.i ], [ -12, %lor.lhs.false2.i.cleanup_crit_edge ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_spi_dma_submit_rx(ptr noundef %dws, ptr noundef %sgl, i32 noundef %nents) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rxchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %0 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxchan, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %5(ptr noundef nonnull %1, ptr noundef %sgl, i32 noundef %nents, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, label %if.end

dmaengine_prep_slave_sg.exit.cleanup_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dw_spi_dma_rx_done, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dws, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_submit.i, align 4
  %call.i17 = tail call i32 %9(ptr noundef nonnull %call.i) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i17, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i17)
  %tobool3.not = icmp sgt i32 %call.i17, -1
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxchan, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then4.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then4
  %call.i.i = tail call i32 %16(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i18 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i18, label %if.end.i19, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i19:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1169) #8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 48
  %19 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %20, null
  br i1 %tobool.not.i1.i, label %if.end.i19.cleanup_crit_edge, label %if.then.i2.i

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %20(ptr noundef %12) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dma_chan_busy = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 0, ptr noundef %dma_chan_busy) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.i2.i, %if.end.i19.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge ], [ %10, %if.then4.cleanup_crit_edge ], [ %10, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ %10, %if.end.i19.cleanup_crit_edge ], [ %10, %if.then.i2.i ], [ -12, %lor.lhs.false2.i.cleanup_crit_edge ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_spi_dma_tx_done(ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan_busy = getelementptr inbounds %struct.dw_spi, ptr %arg, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dma_chan_busy) #8
  %0 = ptrtoint ptr %dma_chan_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dma_chan_busy, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_completion = getelementptr inbounds %struct.dw_spi, ptr %arg, i32 0, i32 35
  tail call void @complete(ptr noundef %dma_completion) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_spi_dma_rx_done(ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan_busy = getelementptr inbounds %struct.dw_spi, ptr %arg, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %dma_chan_busy) #8
  %0 = ptrtoint ptr %dma_chan_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dma_chan_busy, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_completion = getelementptr inbounds %struct.dw_spi, ptr %arg, i32 0, i32 35
  tail call void @complete(ptr noundef %dma_completion) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_dma_init_generic(ptr noundef %dev, ptr noundef %dws) #1 align 64 {
entry:
  %tx.i = alloca %struct.dma_slave_caps, align 4
  %rx.i = alloca %struct.dma_slave_caps, align 4
  %caps.i = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %rxchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 29
  %0 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spec.select.i, ptr %rxchan, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i25 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %cmp.i.i26 = icmp ugt ptr %call.i25, inttoptr (i32 -4096 to ptr)
  %spec.select.i27 = select i1 %cmp.i.i26, ptr null, ptr %call.i25
  %txchan = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 27
  %1 = ptrtoint ptr %txchan to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select.i27, ptr %txchan, align 4
  %tobool4.not = icmp eq ptr %spec.select.i27, null
  %2 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxchan, align 4
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef %3) #8
  %4 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rxchan, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %dws to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dws, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 61
  %7 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %dma_rx, align 4
  %8 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txchan, align 4
  %10 = load ptr, ptr %dws, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 60
  %11 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %dma_tx, align 8
  %dma_completion = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35
  %12 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_completion, align 4
  %wait.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 35, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps.i) #8
  %13 = call ptr @memset(ptr %caps.i, i32 255, i32 36)
  %fifo_len.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 7
  %14 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo_len.i, align 4
  %div37.i = lshr i32 %15, 1
  %16 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxchan, align 4
  %call.i28 = call i32 @dma_get_slave_caps(ptr noundef %17, ptr noundef nonnull %caps.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end8.if.else.i_crit_edge

if.end8.if.else.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end8
  %max_burst1.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i, i32 0, i32 4
  %18 = ptrtoint ptr %max_burst1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_burst1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end8.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %max_burst.0.i = phi i32 [ 16, %if.else.i ], [ %19, %land.lhs.true.i.if.end.i_crit_edge ]
  %20 = call i32 @llvm.umin.i32(i32 %max_burst.0.i, i32 %div37.i) #8
  %rxburst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 30
  %21 = ptrtoint ptr %rxburst.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rxburst.i, align 4
  %sub.i = add nsw i32 %20, -1
  %regs.i.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 4
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %sub.i) #8, !srcloc !44
  %24 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %txchan, align 4
  %call5.i = call i32 @dma_get_slave_caps(ptr noundef %25, ptr noundef nonnull %caps.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %if.end.i.if.else12.i_crit_edge

if.end.i.if.else12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12.i

land.lhs.true7.i:                                 ; preds = %if.end.i
  %max_burst8.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i, i32 0, i32 4
  %26 = ptrtoint ptr %max_burst8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_burst8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not.i = icmp eq i32 %27, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.else12.i_crit_edge, label %land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge

land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_spi_dma_maxburst_init.exit

land.lhs.true7.i.if.else12.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12.i

if.else12.i:                                      ; preds = %land.lhs.true7.i.if.else12.i_crit_edge, %if.end.i.if.else12.i_crit_edge
  br label %dw_spi_dma_maxburst_init.exit

dw_spi_dma_maxburst_init.exit:                    ; preds = %if.else12.i, %land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge
  %max_burst.1.i = phi i32 [ 16, %if.else12.i ], [ %27, %land.lhs.true7.i.dw_spi_dma_maxburst_init.exit_crit_edge ]
  %28 = call i32 @llvm.umin.i32(i32 %max_burst.1.i, i32 %div37.i) #8
  %txburst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 28
  %29 = ptrtoint ptr %txburst.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %txburst.i, align 4
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %31, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %28) #8, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tx.i) #8
  %32 = call ptr @memset(ptr %tx.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rx.i) #8
  %33 = call ptr @memset(ptr %rx.i, i32 0, i32 36)
  %34 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txchan, align 4
  %call.i30 = call i32 @dma_get_slave_caps(ptr noundef %35, ptr noundef nonnull %tx.i) #8
  %36 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rxchan, align 4
  %call1.i = call i32 @dma_get_slave_caps(ptr noundef %37, ptr noundef nonnull %rx.i) #8
  %max_sg_burst.i = getelementptr inbounds %struct.dma_slave_caps, ptr %tx.i, i32 0, i32 5
  %38 = ptrtoint ptr %max_sg_burst.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_sg_burst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  %max_sg_burst13.i = getelementptr inbounds %struct.dma_slave_caps, ptr %rx.i, i32 0, i32 5
  %40 = ptrtoint ptr %max_sg_burst13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_sg_burst13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp14.not.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i, label %if.else12.i33, label %land.lhs.true.i32

land.lhs.true.i32:                                ; preds = %dw_spi_dma_maxburst_init.exit
  br i1 %cmp14.not.i, label %if.then9.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #10
  %42 = call i32 @llvm.umin.i32(i32 %39, i32 %41) #8
  %dma_sg_burst.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 31
  %43 = ptrtoint ptr %dma_sg_burst.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dma_sg_burst.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

if.then9.i:                                       ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #10
  %dma_sg_burst11.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 31
  %44 = ptrtoint ptr %dma_sg_burst11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %dma_sg_burst11.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

if.else12.i33:                                    ; preds = %dw_spi_dma_maxburst_init.exit
  %dma_sg_burst19.i = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 31
  br i1 %cmp14.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else12.i33
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %dma_sg_burst19.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %41, ptr %dma_sg_burst19.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

if.else18.i:                                      ; preds = %if.else12.i33
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dma_sg_burst19.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %dma_sg_burst19.i, align 4
  br label %dw_spi_dma_sg_burst_init.exit

dw_spi_dma_sg_burst_init.exit:                    ; preds = %if.else18.i, %if.then15.i, %if.then9.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rx.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tx.i) #8
  br label %return

return:                                           ; preds = %dw_spi_dma_sg_burst_init.exit, %if.then5, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %dw_spi_dma_sg_burst_init.exit ], [ -19, %if.then5 ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_dw_spi_dma_setup_mfld, !1, !"__ksymtab_dw_spi_dma_setup_mfld", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-dw-dma.c", i32 642, i32 1}
!2 = !{ptr @__ksymtab_dw_spi_dma_setup_generic, !3, !"__ksymtab_dw_spi_dma_setup_generic", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-dw-dma.c", i32 657, i32 1}
!4 = !{ptr @dw_spi_dma_mfld_ops, !5, !"dw_spi_dma_mfld_ops", i1 false, i1 false}
!5 = !{!"../drivers/spi/spi-dw-dma.c", i32 629, i32 36}
!6 = !{ptr @init_completion.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/completion.h", i32 87, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-dw-dma.c", i32 220, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dw_spi_dma_wait._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @dw_spi_dma_wait._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-dw-dma.c", i32 248, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dw_spi_dma_wait_tx_done._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @dw_spi_dma_wait_tx_done._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-dw-dma.c", i32 349, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dw_spi_dma_wait_rx_done._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dw_spi_dma_wait_rx_done._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dw_spi_dma_generic_ops, !30, !"dw_spi_dma_generic_ops", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-dw-dma.c", i32 644, i32 36}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-dw-dma.c", i32 142, i32 47}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-dw-dma.c", i32 146, i32 47}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 6231767}
!45 = !{i64 6232185}
!46 = !{!"auto-init"}
