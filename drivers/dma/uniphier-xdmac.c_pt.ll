; ModuleID = '/llk/IR_all_yes/drivers/dma/uniphier-xdmac.c_pt.bc'
source_filename = "../drivers/dma/uniphier-xdmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.uniphier_xdmac_device = type { %struct.dma_device, ptr, i32, [0 x %struct.uniphier_xdmac_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uniphier_xdmac_chan = type { %struct.virt_dma_chan, ptr, ptr, ptr, %struct.dma_slave_config, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.uniphier_xdmac_desc = type { %struct.virt_dma_desc, i32, i32, i32, [0 x %struct.uniphier_xdmac_desc_node] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.uniphier_xdmac_desc_node = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_uniphier_xdmac__258_607_uniphier_xdmac_driver_init6 = internal global ptr @uniphier_xdmac_driver_init, section ".initcall6.init", align 4
@uniphier_xdmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_xdmac_probe, ptr @uniphier_xdmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_xdmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_xdmac_driver_exit = internal global ptr @uniphier_xdmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author259 = internal constant [72 x i8] c"uniphier_xdmac.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [67 x i8] c"uniphier_xdmac.description=UniPhier external DMA controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [47 x i8] c"uniphier_xdmac.file=drivers/dma/uniphier-xdmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [30 x i8] c"uniphier_xdmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uniphier-xdmac\00", [17 x i8] zeroinitializer }, align 32
@uniphier_xdmac_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-xdmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xdmac\00", [26 x i8] zeroinitializer }, align 32
@uniphier_xdmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 536, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uniphier_xdmac_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma/uniphier-xdmac.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_xdmac_probe._entry_ptr = internal global ptr @uniphier_xdmac_probe._entry, section ".printk_index", align 4
@uniphier_xdmac_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 542, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register XDMA device\0A\00", [32 x i8] zeroinitializer }, align 32
@uniphier_xdmac_probe._entry_ptr.10 = internal global ptr @uniphier_xdmac_probe._entry.8, section ".printk_index", align 4
@uniphier_xdmac_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 549, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register XDMA controller\0A\00", [60 x i8] zeroinitializer }, align 32
@uniphier_xdmac_probe._entry_ptr.13 = internal global ptr @uniphier_xdmac_probe._entry.11, section ".printk_index", align 4
@uniphier_xdmac_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 556, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UniPhier XDMAC driver (%d channels)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@uniphier_xdmac_probe._entry_ptr.17 = internal global ptr @uniphier_xdmac_probe._entry.14, section ".printk_index", align 4
@uniphier_xdmac_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Exceed maximum number of burst words\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"uniphier_xdmac_prep_slave_sg\00", [35 x i8] zeroinitializer }, align 32
@uniphier_xdmac_prep_slave_sg._entry_ptr = internal global ptr @uniphier_xdmac_prep_slave_sg._entry, section ".printk_index", align 4
@uniphier_xdmac_prep_slave_sg._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unaligned transfer size: %d\00", [36 x i8] zeroinitializer }, align 32
@uniphier_xdmac_prep_slave_sg._entry_ptr.22 = internal global ptr @uniphier_xdmac_prep_slave_sg._entry.20, section ".printk_index", align 4
@uniphier_xdmac_prep_slave_sg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.5, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Exceed maximum transfer size\00", [35 x i8] zeroinitializer }, align 32
@uniphier_xdmac_prep_slave_sg._entry_ptr.25 = internal global ptr @uniphier_xdmac_prep_slave_sg._entry.23, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@uniphier_xdmac_chan_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 243, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DMA transfer error with aborting issue\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uniphier_xdmac_chan_irq\00", [40 x i8] zeroinitializer }, align 32
@uniphier_xdmac_chan_irq._entry_ptr = internal global ptr @uniphier_xdmac_chan_irq._entry, section ".printk_index", align 4
@uniphier_xdmac_chan_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA transfer error\0A\00", [44 x i8] zeroinitializer }, align 32
@uniphier_xdmac_chan_irq._entry_ptr.30 = internal global ptr @uniphier_xdmac_chan_irq._entry.28, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uniphier_xdmac\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"uniphier_xdmac_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 599, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 603, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"uniphier_xdmac_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 593, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 490, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 534, i32 24 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 536, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 542, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 549, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 555, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 346, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 373, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 380, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 242, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private constant [32 x i8] c"../drivers/dma/uniphier-xdmac.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 245, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 101, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1169, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_uniphier_xdmac_driver_exit, ptr @__initcall__kmod_uniphier_xdmac__258_607_uniphier_xdmac_driver_init6, ptr @uniphier_xdmac_chan_irq._entry, ptr @uniphier_xdmac_chan_irq._entry.28, ptr @uniphier_xdmac_chan_irq._entry_ptr, ptr @uniphier_xdmac_chan_irq._entry_ptr.30, ptr @uniphier_xdmac_driver_exit, ptr @uniphier_xdmac_prep_slave_sg._entry, ptr @uniphier_xdmac_prep_slave_sg._entry.20, ptr @uniphier_xdmac_prep_slave_sg._entry.23, ptr @uniphier_xdmac_prep_slave_sg._entry_ptr, ptr @uniphier_xdmac_prep_slave_sg._entry_ptr.22, ptr @uniphier_xdmac_prep_slave_sg._entry_ptr.25, ptr @uniphier_xdmac_probe._entry, ptr @uniphier_xdmac_probe._entry.11, ptr @uniphier_xdmac_probe._entry.14, ptr @uniphier_xdmac_probe._entry.8, ptr @uniphier_xdmac_probe._entry_ptr, ptr @uniphier_xdmac_probe._entry_ptr.10, ptr @uniphier_xdmac_probe._entry_ptr.13, ptr @uniphier_xdmac_probe._entry_ptr.17, ptr @uniphier_xdmac_driver, ptr @.str, ptr @uniphier_xdmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_prep_slave_sg._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_prep_slave_sg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_chan_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_xdmac_chan_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_xdmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_xdmac_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_xdmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_xdmac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_xdmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nr_chans = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_chans) #9
  %0 = ptrtoint ptr %nr_chans to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_chans, align 4, !annotation !80
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %nr_chans, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp = icmp sgt i32 %4, 16
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %nr_chans to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %nr_chans, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_chans, align 4
  %8 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 248) #9
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %10, i32 372) #9
  %retval.0.i = select i1 %9, i32 -1, i32 %spec.select.i
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_chans, align 4
  %nr_chans9 = getelementptr inbounds %struct.uniphier_xdmac_device, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %nr_chans9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nr_chans9, align 4
  %call10 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %reg_base = getelementptr inbounds %struct.uniphier_xdmac_device, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %dev18 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev18, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cap_mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 278, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %19 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 278, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %20 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %21 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %residue_granularity, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 23
  %22 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65535, ptr %max_burst, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %23 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @uniphier_xdmac_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %24 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @uniphier_xdmac_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %25 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @uniphier_xdmac_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %26 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @uniphier_xdmac_slave_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %27 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @uniphier_xdmac_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %28 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @uniphier_xdmac_synchronize, ptr %device_synchronize, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %29 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %30 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @uniphier_xdmac_issue_pending, ptr %device_issue_pending, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %channels, ptr %prev.i, align 4
  %33 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp21104 = icmp sgt i32 %34, 0
  br i1 %cmp21104, label %if.end16.for.body_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.uniphier_xdmac_device, ptr %call.i, i32 0, i32 3, i32 %i.0105
  %xdev1.i = getelementptr %struct.uniphier_xdmac_device, ptr %call.i, i32 0, i32 3, i32 %i.0105, i32 1
  %35 = ptrtoint ptr %xdev1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %xdev1.i, align 4
  %36 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base, align 4
  %mul.i = shl i32 %i.0105, 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 %mul.i
  %reg_ch_base.i = getelementptr %struct.uniphier_xdmac_device, ptr %call.i, i32 0, i32 3, i32 %i.0105, i32 3
  %38 = ptrtoint ptr %reg_ch_base.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %reg_ch_base.i, align 4
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx.i, i32 0, i32 2
  %39 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @uniphier_xdmac_desc_free, ptr %desc_free.i, align 4
  call void @vchan_init(ptr noundef %arrayidx.i, ptr noundef %call.i) #9
  %inc = add nuw nsw i32 %i.0105, 1
  %40 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_chans, align 4
  %cmp21 = icmp slt i32 %inc, %41
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %call22 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %for.end.cleanup_crit_edge, label %if.end25

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %for.end
  %call.i103 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call22, ptr noundef nonnull @uniphier_xdmac_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool27.not = icmp eq i32 %call.i103, 0
  br i1 %tobool27.not, label %if.end29, label %do.end

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call38 = call i32 @of_dma_controller_register(ptr noundef %43, ptr noundef nonnull @of_dma_uniphier_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %45 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_chans, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %46) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end43, %do.end35, %do.end, %for.end.cleanup_crit_edge, %if.then13, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then13 ], [ %call.i103, %do.end ], [ %call30, %do.end35 ], [ %call38, %do.end43 ], [ 0, %if.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call22, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_chans) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_xdmac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn21 = load ptr, ptr %channels, align 4
  %cmp.not23 = icmp eq ptr %.pn21, %channels
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn21, %entry.for.body_crit_edge ]
  %chan.025 = getelementptr i8, ptr %.pn24, i32 -32
  %3 = ptrtoint ptr %chan.025 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan.025, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.body.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %for.body
  %call.i.i = tail call i32 %6(ptr noundef %chan.025) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 1169) #9
  %7 = ptrtoint ptr %chan.025 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan.025, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 48
  %9 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i, label %if.end.i.if.end_crit_edge, label %if.then.i4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i4.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef %chan.025) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %if.end.i.if.end_crit_edge
  tail call void @uniphier_xdmac_free_chan_resources(ptr noundef %chan.025)
  %11 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %13) #9
  tail call void @dma_async_device_unregister(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %for.body.cleanup_crit_edge ], [ %call.i.i, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_xdmac_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %56 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uniphier_xdmac_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -68157424, i32 %len)
  %cmp = icmp ugt i32 %len, -68157424
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %len, 67108848
  %add = add nuw nsw i32 %div, 1
  %0 = shl nuw nsw i32 %add, 4
  %spec.select.i56 = add nuw nsw i32 %0, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i56, i32 noundef 2304) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %dst.addr.060 = phi i32 [ %add19, %for.body.for.body_crit_edge ], [ %dst, %if.end.for.body_crit_edge ]
  %src.addr.059 = phi i32 [ %add18, %for.body.for.body_crit_edge ], [ %src, %if.end.for.body_crit_edge ]
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %len.addr.057 = phi i32 [ %rem.decomposed, %for.body.for.body_crit_edge ], [ %len, %if.end.for.body_crit_edge ]
  %1 = tail call i32 @llvm.umin.i32(i32 %len.addr.057, i32 67108848)
  %arrayidx = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.058
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %src.addr.059, ptr %arrayidx, align 16
  %dst10 = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.058, i32 1
  %3 = ptrtoint ptr %dst10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dst.addr.060, ptr %dst10, align 4
  %burst_size13 = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.058, i32 2
  %4 = ptrtoint ptr %burst_size13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %burst_size13, align 8
  %len.addr.057.frozen = freeze i32 %len.addr.057
  %.frozen = freeze i32 %1
  %div14 = udiv i32 %len.addr.057.frozen, %.frozen
  %nr_burst = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.058, i32 3
  %5 = ptrtoint ptr %nr_burst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div14, ptr %nr_burst, align 4
  %6 = mul i32 %div14, %.frozen
  %rem.decomposed = sub i32 %len.addr.057.frozen, %6
  %sub = sub nuw i32 %len.addr.057, %rem.decomposed
  %add18 = add i32 %sub, %src.addr.059
  %add19 = add i32 %sub, %dst.addr.060
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond = icmp eq i32 %i.058, %div
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %dir = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dir, align 4
  %nr_node = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %nr_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %nr_node, align 4
  %cur_node = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %cur_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cur_node, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %16, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 16
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node.i, ptr %16, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uniphier_xdmac_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp = icmp eq i32 %direction, 2
  %src_addr_width = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 4, i32 3
  %src_maxburst = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 4, i32 5
  %dst_addr_width = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 4, i32 4
  %dst_maxburst = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 4, i32 6
  %buswidth.0.in = select i1 %cmp, ptr %src_addr_width, ptr %dst_addr_width
  %maxburst.0.in = select i1 %cmp, ptr %src_maxburst, ptr %dst_maxburst
  %2 = ptrtoint ptr %maxburst.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %maxburst.0 = load i32, ptr %maxburst.0.in, align 4
  %3 = ptrtoint ptr %buswidth.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %buswidth.0 = load i32, ptr %buswidth.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxburst.0)
  %tobool.not = icmp eq i32 %maxburst.0, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %maxburst.0
  %xdev = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdev, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_burst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %7)
  %cmp10 = icmp ugt i32 %spec.store.select, %7
  br i1 %cmp10, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sg_len, i32 16) #9
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 128) #9
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #13
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp20118.not = icmp eq i32 %sg_len, 0
  br i1 %cmp20118.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %src_addr = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp23 = icmp eq i32 %direction, 1
  %dst_addr = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 4, i32 2
  %mul = mul i32 %spec.store.select, %buswidth.0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0119 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call65, %for.inc.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0119, i32 0, i32 3
  %cond.in = select i1 %cmp, ptr %src_addr, ptr %dma_address
  %13 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond = load i32, ptr %cond.in, align 4
  %arrayidx = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.0120
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %arrayidx, align 16
  %cond29.in = select i1 %cmp23, ptr %dst_addr, ptr %dma_address
  %15 = ptrtoint ptr %cond29.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond29 = load i32, ptr %cond29.in, align 4
  %dst = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.0120, i32 1
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond29, ptr %dst, align 4
  %burst_size = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.0120, i32 2
  %17 = ptrtoint ptr %burst_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %burst_size, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0119, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  %div = udiv i32 %19, %mul
  %nr_burst = getelementptr %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.0120, i32 3
  %20 = ptrtoint ptr %nr_burst to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %nr_burst, align 4
  %21 = load i32, ptr %dma_length, align 4
  %rem = urem i32 %21, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool43.not = icmp eq i32 %rem, 0
  br i1 %tobool43.not, label %if.end52, label %do.end47

do.end47:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xdev, align 4
  %dev50 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.21, i32 noundef %21) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

if.end52:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div)
  %cmp56 = icmp ugt i32 %div, 65535
  br i1 %cmp56, label %do.end60, label %for.inc

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xdev, align 4
  %dev63 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.24) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end52
  %inc = add nuw i32 %i.0120, 1
  %call65 = tail call ptr @sg_next(ptr noundef %sg.0119) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %dir = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %direction, ptr %dir, align 4
  %nr_node = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %nr_node to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sg_len, ptr %nr_node, align 4
  %cur_node = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %call9.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %cur_node to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %cur_node, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %39, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node.i, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 16
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node.i, ptr %39, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end60, %do.end47, %if.end8.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end47 ], [ null, %do.end60 ], [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_xdmac_slave_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sconfig = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %sconfig, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_xdmac_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %xd = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 2
  %3 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xd, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %8, ptr noundef %desc_terminated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node.i, ptr %8, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 9
  %13 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %14, %4
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %16 = ptrtoint ptr %xd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xd, align 4
  %call9 = call fastcc i32 @uniphier_xdmac_chan_stop(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %vchan_terminate_vdesc.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call9, %vchan_terminate_vdesc.exit ], [ 0, %entry.if.end_crit_edge ]
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %17 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end.list_splice_tail_init.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i19, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %20, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head, ptr %22, align 4
  store ptr %22, ptr %0, align 4
  %26 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %28, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i12.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %30, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head, ptr %32, align 4
  store ptr %32, ptr %0, align 4
  %36 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %37 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %38, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i18.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %40, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %head, ptr %42, align 4
  store ptr %42, ptr %0, align 4
  %46 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %47 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %48, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i24.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %head, ptr %52, align 4
  store ptr %52, ptr %0, align 4
  %56 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i20 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %57 = ptrtoint ptr %desc_terminated.i20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %desc_terminated.i20, align 4
  %cmp.i.not.i27.i = icmp eq ptr %58, %desc_terminated.i20
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i30.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %58, ptr %60, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %head, ptr %62, align 4
  store ptr %62, ptr %0, align 4
  %66 = ptrtoint ptr %desc_terminated.i20 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %desc_terminated.i20, ptr %desc_terminated.i20, align 4
  store ptr %desc_terminated.i20, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_xdmac_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %entry.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2, align 4
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue, align 4
  %in_flight_bytes = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %or.cond.i = or i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.then.i.dma_async_is_complete.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_xdmac_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc_issued.i, ptr %5, align 4
  store ptr %5, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %10 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %11, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %xd = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %chan, i32 0, i32 2
  %12 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xd, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %15, %desc_issued.i
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 -108
  %tobool.not4.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i = or i1 %cmp.not.i.i.i, %tobool.not4.i.i
  br i1 %tobool.not.i.i, label %if.then.uniphier_xdmac_start.exit_crit_edge, label %if.end.i.i

if.then.uniphier_xdmac_start.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %uniphier_xdmac_start.exit

if.end.i.i:                                       ; preds = %if.then
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i.i.i, %if.end.i.i.if.then.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call fastcc void @uniphier_xdmac_chan_start(ptr noundef %chan, ptr noundef nonnull %add.ptr.i.i.i) #9
  br label %uniphier_xdmac_start.exit

uniphier_xdmac_start.exit:                        ; preds = %if.then.i, %if.then.uniphier_xdmac_start.exit_crit_edge
  %retval.0.i8.i = phi ptr [ %add.ptr.i.i.i, %if.then.i ], [ null, %if.then.uniphier_xdmac_start.exit_crit_edge ]
  %24 = ptrtoint ptr %xd to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i8.i, ptr %xd, align 4
  br label %if.end

if.end:                                           ; preds = %uniphier_xdmac_start.exit, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_xdmac_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_chans = getelementptr inbounds %struct.uniphier_xdmac_device, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uniphier_xdmac_device, ptr %dev_id, i32 0, i32 3, i32 %i.05
  tail call fastcc void @uniphier_xdmac_chan_irq(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.05, 1
  %2 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_chans, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_dma_uniphier_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %nr_chans = getelementptr inbounds %struct.uniphier_xdmac_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp slt i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1 = getelementptr %struct.uniphier_xdmac_device, ptr %1, i32 0, i32 3, i32 %3
  %id = getelementptr %struct.uniphier_xdmac_device, ptr %1, i32 0, i32 3, i32 %3, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %id, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %req_factor = getelementptr %struct.uniphier_xdmac_device, ptr %1, i32 0, i32 3, i32 %3, i32 6
  %9 = ptrtoint ptr %req_factor to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %req_factor, align 4
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %arrayidx1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_xdmac_chan_stop(ptr nocapture noundef readonly %xc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_ch_base = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 3
  %0 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %3 = and i32 %2, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !85
  %6 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr16 = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !85
  %call17 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call17, 1000000
  %11 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr2264 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2264) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not66 = icmp eq i32 %14, 0
  br i1 %tobool.not66, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call28 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call28, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call28, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #9
  %16 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  %19 = and i32 %18, 16777216
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %cond.false.for.end.thread_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

cond.false.for.end.thread_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr34 = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool48.not = icmp eq i32 %23, 0
  br i1 %tobool48.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %24

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %cond.false.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %24

24:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %25 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_xdmac_chan_start(ptr nocapture noundef readonly %xc, ptr nocapture noundef readonly %xd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_node = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %xd, i32 0, i32 2
  %0 = ptrtoint ptr %cur_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_node, align 4
  %arrayidx = getelementptr %struct.uniphier_xdmac_desc, ptr %xd, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %dst = getelementptr %struct.uniphier_xdmac_desc, ptr %xd, i32 0, i32 4, i32 %1, i32 1
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %burst_size = getelementptr %struct.uniphier_xdmac_desc, ptr %xd, i32 0, i32 4, i32 %1, i32 2
  %6 = ptrtoint ptr %burst_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %burst_size, align 4
  %nr_burst = getelementptr %struct.uniphier_xdmac_desc, ptr %xd, i32 0, i32 4, i32 %1, i32 3
  %8 = ptrtoint ptr %nr_burst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_burst, align 4
  %dir = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %xd, i32 0, i32 3
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.do.end81_crit_edge [
    i32 2, label %do.end21.thread
    i32 1, label %if.then24
  ]

entry.do.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

do.end21.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src_addr_width = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_addr_width, align 4
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #9, !range !90
  %phi.bo = shl nuw nsw i32 %15, 24
  %phi.bo189 = and i32 %phi.bo, 50331648
  br label %do.end81

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dst_addr_width = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_addr_width, align 4
  br label %do.end81

do.end81:                                         ; preds = %if.then24, %do.end21.thread, %entry.do.end81_crit_edge
  %18 = phi i32 [ 50331648, %if.then24 ], [ %phi.bo189, %do.end21.thread ], [ 50331648, %entry.do.end81_crit_edge ]
  %src_mode.0188 = phi i32 [ 0, %if.then24 ], [ 16, %do.end21.thread ], [ 0, %entry.do.end81_crit_edge ]
  %buswidth.1 = phi i32 [ %17, %if.then24 ], [ 8, %do.end21.thread ], [ 8, %entry.do.end81_crit_edge ]
  %dst_mode.0 = phi i32 [ 16, %if.then24 ], [ 0, %do.end21.thread ], [ 0, %entry.do.end81_crit_edge ]
  %req_factor = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 6
  %19 = ptrtoint ptr %req_factor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req_factor, align 4
  %21 = tail call i32 @llvm.cttz.i32(i32 %buswidth.1, i1 false) #9, !range !90
  %shl45 = shl nuw nsw i32 %21, 24
  %and46 = and i32 %shl45, 50331648
  %and85 = and i32 %20, 63
  %or = or i32 %and85, 1310720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_ch_base = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 3
  %23 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %3)
  %26 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr94 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %25) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr100 = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 0) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %5)
  %31 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr106 = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %30) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr113 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #9, !srcloc !85
  %or114 = or i32 %src_mode.0188, %18
  %or115 = or i32 %and46, %dst_mode.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %or114)
  %36 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr120 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %35) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or115)
  %39 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr125 = getelementptr i8, ptr %40, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %38) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %7)
  %42 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr130 = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %41) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %9)
  %45 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr135 = getelementptr i8, ptr %46, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %44) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr140 = getelementptr i8, ptr %48, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 50331648) #9, !srcloc !85
  %49 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr142 = getelementptr i8, ptr %50, i32 48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %52 = or i32 %51, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr151 = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %52) #9, !srcloc !85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_xdmac_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_xdmac_chan_irq(ptr noundef %xc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %xc, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %reg_ch_base = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 3
  %0 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @uniphier_xdmac_chan_stop(ptr noundef %xc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %xdev8 = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 1
  %4 = ptrtoint ptr %xdev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdev8, align 4
  %dev10 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  br i1 %tobool3.not, label %do.end7, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26) #12
  br label %do.body27

do.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.29) #12
  br label %do.body27

if.else11:                                        ; preds = %entry
  %and12 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else11.do.body27_crit_edge, label %land.lhs.true

if.else11.do.body27_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

land.lhs.true:                                    ; preds = %if.else11
  %xd = getelementptr inbounds %struct.uniphier_xdmac_chan, ptr %xc, i32 0, i32 2
  %8 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xd, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %land.lhs.true.do.body27_crit_edge, label %if.then15

land.lhs.true.do.body27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.then15:                                        ; preds = %land.lhs.true
  %cur_node = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cur_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_node, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %cur_node, align 4
  %12 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xd, align 4
  %cur_node18 = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %cur_node18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_node18, align 4
  %nr_node = getelementptr inbounds %struct.uniphier_xdmac_desc, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %nr_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_node, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp ult i32 %15, %17
  br i1 %cmp.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.then15
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i = icmp slt i32 %21, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !104

do.body2.i.i:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then20
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %completed_cookie.i.i, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uniphier_xdmac_chan_irq, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !106

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef %13, i32 noundef %21) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %29, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %node.i, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %node.i, ptr %29, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %xc, i32 0, i32 6
  %34 = ptrtoint ptr %desc_issued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %desc_issued.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %35, %desc_issued.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 -108
  %tobool.not4.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i50 = or i1 %cmp.not.i.i.i, %tobool.not4.i.i
  br i1 %tobool.not.i.i50, label %vchan_cookie_complete.exit.uniphier_xdmac_start.exit_crit_edge, label %if.end.i.i

vchan_cookie_complete.exit.uniphier_xdmac_start.exit_crit_edge: ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %uniphier_xdmac_start.exit

if.end.i.i:                                       ; preds = %vchan_cookie_complete.exit
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.then.i51_crit_edge

if.end.i.i.if.then.i51_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i51

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %if.then.i51

if.then.i51:                                      ; preds = %if.end.i.i.i.i, %if.end.i.i.if.then.i51_crit_edge
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call fastcc void @uniphier_xdmac_chan_start(ptr noundef %xc, ptr noundef nonnull %add.ptr.i.i.i) #9
  br label %uniphier_xdmac_start.exit

uniphier_xdmac_start.exit:                        ; preds = %if.then.i51, %vchan_cookie_complete.exit.uniphier_xdmac_start.exit_crit_edge
  %retval.0.i8.i = phi ptr [ %add.ptr.i.i.i, %if.then.i51 ], [ null, %vchan_cookie_complete.exit.uniphier_xdmac_start.exit_crit_edge ]
  %44 = ptrtoint ptr %xd to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %retval.0.i8.i, ptr %xd, align 4
  br label %do.body27

if.else22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @uniphier_xdmac_chan_start(ptr noundef %xc, ptr noundef %13)
  br label %do.body27

do.body27:                                        ; preds = %if.else22, %uniphier_xdmac_start.exit, %land.lhs.true.do.body27_crit_edge, %if.else11.do.body27_crit_edge, %do.end7, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr31 = getelementptr i8, ptr %46, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %2) #9, !srcloc !85
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_uniphier_xdmac__258_607_uniphier_xdmac_driver_init6, !1, !"__initcall__kmod_uniphier_xdmac__258_607_uniphier_xdmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/uniphier-xdmac.c", i32 607, i32 1}
!2 = !{ptr @__exitcall_uniphier_xdmac_driver_exit, !1, !"__exitcall_uniphier_xdmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author259, !4, !"__UNIQUE_ID_author259", i1 false, i1 false}
!4 = !{!"../drivers/dma/uniphier-xdmac.c", i32 609, i32 1}
!5 = !{ptr @__UNIQUE_ID_description260, !6, !"__UNIQUE_ID_description260", i1 false, i1 false}
!6 = !{!"../drivers/dma/uniphier-xdmac.c", i32 610, i32 1}
!7 = !{ptr @__UNIQUE_ID_file261, !8, !"__UNIQUE_ID_file261", i1 false, i1 false}
!8 = !{!"../drivers/dma/uniphier-xdmac.c", i32 611, i32 1}
!9 = !{ptr @__UNIQUE_ID_license262, !8, !"__UNIQUE_ID_license262", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/uniphier-xdmac.c", i32 603, i32 11}
!12 = !{ptr @uniphier_xdmac_driver, !13, !"uniphier_xdmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/uniphier-xdmac.c", i32 599, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/uniphier-xdmac.c", i32 490, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/uniphier-xdmac.c", i32 534, i32 24}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/uniphier-xdmac.c", i32 536, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @uniphier_xdmac_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @uniphier_xdmac_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/uniphier-xdmac.c", i32 542, i32 3}
!28 = !{ptr @uniphier_xdmac_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @uniphier_xdmac_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/uniphier-xdmac.c", i32 549, i32 3}
!32 = !{ptr @uniphier_xdmac_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @uniphier_xdmac_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/uniphier-xdmac.c", i32 555, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @uniphier_xdmac_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @uniphier_xdmac_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/uniphier-xdmac.c", i32 346, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @uniphier_xdmac_prep_slave_sg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @uniphier_xdmac_prep_slave_sg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/uniphier-xdmac.c", i32 373, i32 4}
!46 = !{ptr @uniphier_xdmac_prep_slave_sg._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @uniphier_xdmac_prep_slave_sg._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/uniphier-xdmac.c", i32 380, i32 4}
!50 = !{ptr @uniphier_xdmac_prep_slave_sg._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @uniphier_xdmac_prep_slave_sg._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/uniphier-xdmac.c", i32 242, i32 4}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @uniphier_xdmac_chan_irq._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @uniphier_xdmac_chan_irq._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/uniphier-xdmac.c", i32 245, i32 4}
!59 = !{ptr @uniphier_xdmac_chan_irq._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @uniphier_xdmac_chan_irq._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !62, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!69 = !{ptr @uniphier_xdmac_match, !70, !"uniphier_xdmac_match", i1 false, i1 false}
!70 = !{!"../drivers/dma/uniphier-xdmac.c", i32 593, i32 34}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i64 2154083592}
!82 = !{i64 3029726}
!83 = !{i64 2154548550}
!84 = !{i64 2154548938}
!85 = !{i64 3029308}
!86 = !{i64 2154549629}
!87 = !{i64 2154549933}
!88 = !{i64 2154552222}
!89 = !{i64 2154552728}
!90 = !{i32 0, i32 33}
!91 = !{i64 2154542156}
!92 = !{i64 2154542626}
!93 = !{i64 2154543191}
!94 = !{i64 2154543757}
!95 = !{i64 2154544322}
!96 = !{i64 2154544827}
!97 = !{i64 2154545251}
!98 = !{i64 2154545670}
!99 = !{i64 2154546075}
!100 = !{i64 2154546700}
!101 = !{i64 2154547553}
!102 = !{i64 2154547859}
!103 = !{i64 2154553833}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 2154082092, i64 2154082579, i64 2154082129, i64 2154082185, i64 2154082219, i64 2154082243, i64 2154082284, i64 2154082305, i64 2154082333, i64 2154082367}
!106 = !{i64 2148744918, i64 2148744923, i64 2148744936, i64 2148744980, i64 2148745014, i64 2148745035}
!107 = !{i64 2154557554}
