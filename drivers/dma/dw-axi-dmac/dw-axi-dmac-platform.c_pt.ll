; ModuleID = '/llk/IR_all_yes/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c_pt.bc'
source_filename = "../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.axi_dma_chip = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dw_axi_dma = type { %struct.dma_device, ptr, %struct.device_dma_parameters, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.axi_dma_chan = type { ptr, ptr, i8, i8, %struct.atomic_t, ptr, %struct.virt_dma_chan, ptr, %struct.dma_slave_config, i32, i8, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw_axi_dma_hcfg = type { i32, i32, i32, [16 x i32], [16 x i32], i32, i8, i8 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.axi_dma_hw_desc = type { ptr, i32, i32 }
%struct.axi_dma_desc = type { ptr, %struct.virt_dma_desc, ptr, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.axi_dma_lli = type { i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_dw_axi_dmac_platform__247_1557_dw_driver_init6 = internal global ptr @dw_driver_init, section ".initcall6.init", align 4
@dw_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_probe, ptr @dw_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_dma_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_axi_dma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_driver_exit = internal global ptr @dw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [71 x i8] c"dw_axi_dmac_platform.file=drivers/dma/dw-axi-dmac/dw-axi-dmac-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [36 x i8] c"dw_axi_dmac_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [88 x i8] c"dw_axi_dmac_platform.description=Synopsys DesignWare AXI DMA Controller platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [75 x i8] c"dw_axi_dmac_platform.author=Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw_axi_dmac_platform\00", [43 x i8] zeroinitializer }, align 32
@dw_dma_of_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,axi-dma-1.01a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,kmb-axi-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dw_axi_dma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axi_dma_runtime_suspend, ptr @axi_dma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel,kmb-axi-dma\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core-clk\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfgr-clk\00", [23 x i8] zeroinitializer }, align 32
@dw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1491, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Failed to register OF DMA controller, fallback to MEM_TO_MEM mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dw_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_probe._entry_ptr = internal global ptr @dw_probe._entry, section ".printk_index", align 4
@dw_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1494, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DesignWare AXI DMA Controller, %d channels\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dw_probe._entry_ptr.12 = internal global ptr @dw_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dma-masters\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,data-width\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,block-size\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps,priority\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snps,axi-max-burst-len\00", [41 x i8] zeroinitializer }, align 32
@dw_axi_dma_interrupt.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 1, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw_axi_dma_interrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s %u IRQ status: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@axi_chan_handle_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 1022, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Bad descriptor submitted for %s, cookie: %d, irq: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axi_chan_handle_err\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@axi_chan_handle_err._entry_ptr = internal global ptr @axi_chan_handle_err._entry, section ".printk_index", align 4
@axi_chan_dump_lli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 992, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"SAR: 0x%llx DAR: 0x%llx LLP: 0x%llx BTS 0x%x CTL: 0x%x:%08x\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axi_chan_dump_lli\00", [46 x i8] zeroinitializer }, align 32
@axi_chan_dump_lli._entry_ptr = internal global ptr @axi_chan_dump_lli._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.27, ptr @.str.28, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/dma/dw-axi-dmac/../virt-dma.h\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@axi_chan_start_first_queued.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.6, ptr @.str.30, i8 0, i8 110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"axi_chan_start_first_queued\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: started %u\0A\00", [16 x i8] zeroinitializer }, align 32
@axi_chan_block_xfer_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 382, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s is non-idle!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"axi_chan_block_xfer_start\00", [38 x i8] zeroinitializer }, align 32
@axi_chan_block_xfer_start._entry_ptr = internal global ptr @axi_chan_block_xfer_start._entry, section ".printk_index", align 4
@dw_axi_dma_set_byte_halfword.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dw_axi_dma_set_byte_halfword\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"apb_regs not initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@axi_chan_block_xfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 1046, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"BUG: %s caught DWAXIDMAC_IRQ_DMA_TRF, but channel not idle!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"axi_chan_block_xfer_complete\00", [35 x i8] zeroinitializer }, align 32
@axi_chan_block_xfer_complete._entry_ptr = internal global ptr @axi_chan_block_xfer_complete._entry, section ".printk_index", align 4
@axi_desc_put.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axi_desc_put\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %d descs put, %d still allocated\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dma_chan_terminate_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 1131, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s failed to stop\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_chan_terminate_all\00", [41 x i8] zeroinitializer }, align 32
@dma_chan_terminate_all._entry_ptr = internal global ptr @dma_chan_terminate_all._entry, section ".printk_index", align 4
@dma_chan_terminate_all.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.6, ptr @.str.41, i8 1, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"terminated: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@dw_axi_dma_set_hw_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.42, ptr @.str.6, i32 521, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dw_axi_dma_set_hw_channel\00", [38 x i8] zeroinitializer }, align 32
@dw_axi_dma_set_hw_channel._entry_ptr = internal global ptr @dw_axi_dma_set_hw_channel._entry, section ".printk_index", align 4
@dma_chan_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.43, ptr @.str.6, i32 472, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dma_chan_alloc_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@dma_chan_alloc_chan_resources._entry_ptr = internal global ptr @dma_chan_alloc_chan_resources._entry, section ".printk_index", align 4
@dma_chan_alloc_chan_resources._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 482, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No memory for descriptors\0A\00", [37 x i8] zeroinitializer }, align 32
@dma_chan_alloc_chan_resources._entry_ptr.46 = internal global ptr @dma_chan_alloc_chan_resources._entry.44, section ".printk_index", align 4
@dma_chan_alloc_chan_resources.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.47, i8 0, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: allocating\0A\00", [16 x i8] zeroinitializer }, align 32
@dma_chan_free_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.48, ptr @.str.6, i32 499, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dma_chan_free_chan_resources\00", [35 x i8] zeroinitializer }, align 32
@dma_chan_free_chan_resources._entry_ptr = internal global ptr @dma_chan_free_chan_resources._entry, section ".printk_index", align 4
@dma_chan_free_chan_resources.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 0, i8 127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: free resources, descriptor still allocated: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@dma_chan_prep_dma_memcpy.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.6, ptr @.str.51, i8 0, i8 -36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma_chan_prep_dma_memcpy\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: memcpy: src: %pad dst: %pad length: %zd flags: %#lx\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@axi_desc_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 266, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: not enough descriptors available\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axi_desc_get\00", [19 x i8] zeroinitializer }, align 32
@axi_desc_get._entry_ptr = internal global ptr @axi_desc_get._entry, section ".printk_index", align 4
@dw_axi_dma_set_hw_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 618, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid buffer alignment\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw_axi_dma_set_hw_desc\00", [41 x i8] zeroinitializer }, align 32
@dw_axi_dma_set_hw_desc._entry_ptr = internal global ptr @dw_axi_dma_set_hw_desc._entry, section ".printk_index", align 4
@axi_dma_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 224, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to set coherent mask\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axi_dma_hw_init\00", [16 x i8] zeroinitializer }, align 32
@axi_dma_hw_init._entry_ptr = internal global ptr @axi_dma_hw_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"dw_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1548, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1552, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"dw_dma_of_id_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1541, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"dw_axi_dma_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1537, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1386, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1392, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1396, i32 43 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1490, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1493, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1287, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1297, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1305, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1313, i32 44 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1324, i32 44 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1337, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1101, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1020, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 985, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [41 x i8] c"../drivers/dma/dw-axi-dmac/../virt-dma.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 101, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 442, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 381, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 354, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1045, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 291, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1130, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1147, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 521, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 471, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 482, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 485, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 498, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 508, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 881, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 265, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 618, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [50 x i8] c"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 224, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_dw_driver_exit, ptr @__initcall__kmod_dw_axi_dmac_platform__247_1557_dw_driver_init6, ptr @axi_chan_block_xfer_complete._entry, ptr @axi_chan_block_xfer_complete._entry_ptr, ptr @axi_chan_block_xfer_start._entry, ptr @axi_chan_block_xfer_start._entry_ptr, ptr @axi_chan_dump_lli._entry, ptr @axi_chan_dump_lli._entry_ptr, ptr @axi_chan_handle_err._entry, ptr @axi_chan_handle_err._entry_ptr, ptr @axi_desc_get._entry, ptr @axi_desc_get._entry_ptr, ptr @axi_dma_hw_init._entry, ptr @axi_dma_hw_init._entry_ptr, ptr @dma_chan_alloc_chan_resources._entry, ptr @dma_chan_alloc_chan_resources._entry.44, ptr @dma_chan_alloc_chan_resources._entry_ptr, ptr @dma_chan_alloc_chan_resources._entry_ptr.46, ptr @dma_chan_free_chan_resources._entry, ptr @dma_chan_free_chan_resources._entry_ptr, ptr @dma_chan_terminate_all._entry, ptr @dma_chan_terminate_all._entry_ptr, ptr @dw_axi_dma_set_hw_channel._entry, ptr @dw_axi_dma_set_hw_channel._entry_ptr, ptr @dw_axi_dma_set_hw_desc._entry, ptr @dw_axi_dma_set_hw_desc._entry_ptr, ptr @dw_driver_exit, ptr @dw_probe._entry, ptr @dw_probe._entry.9, ptr @dw_probe._entry_ptr, ptr @dw_probe._entry_ptr.12, ptr @dw_driver, ptr @.str, ptr @dw_dma_of_id_table, ptr @dw_axi_dma_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_dma_of_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_axi_dma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_chan_handle_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_chan_dump_lli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_chan_block_xfer_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_chan_block_xfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_chan_terminate_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_axi_dma_set_hw_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_chan_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_chan_alloc_chan_resources._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_chan_free_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_desc_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_axi_dma_set_hw_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dma_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i255 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 384, i32 noundef 3520) #12
  %tobool4.not = icmp eq ptr %call.i255, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i256 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #12
  %tobool9.not = icmp eq ptr %call.i256, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %dw12 = getelementptr inbounds %struct.axi_dma_chip, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %dw12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i255, ptr %dw12, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %hdata16 = getelementptr inbounds %struct.dw_axi_dma, ptr %call.i255, i32 0, i32 1
  %4 = ptrtoint ptr %hdata16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i256, ptr %hdata16, align 4
  %call17 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %irq = getelementptr inbounds %struct.axi_dma_chip, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call17, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end21

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %call22) #12
  %regs = getelementptr inbounds %struct.axi_dma_chip, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %call31 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.if.end41_crit_edge, label %if.then33

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then33:                                        ; preds = %if.end30
  %call34 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #12
  %apb_regs = getelementptr inbounds %struct.axi_dma_chip, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %apb_regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %apb_regs, align 4
  %cmp.i257 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then37, label %if.then33.if.end41_crit_edge

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.then33.if.end41_crit_edge, %if.end30.if.end41_crit_edge
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call43 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.2) #12
  %core_clk = getelementptr inbounds %struct.axi_dma_chip, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call43, ptr %core_clk, align 4
  %cmp.i258 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call51 = tail call ptr @devm_clk_get(ptr noundef %17, ptr noundef nonnull @.str.3) #12
  %cfgr_clk = getelementptr inbounds %struct.axi_dma_chip, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %cfgr_clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call51, ptr %cfgr_clk, align 4
  %cmp.i259 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %call58 = tail call fastcc i32 @parse_device_properties(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %20 = ptrtoint ptr %call.i256 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i256, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 260) #12
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !149

devm_kcalloc.exit.thread:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %chan263 = getelementptr inbounds %struct.dw_axi_dma, ptr %call.i255, i32 0, i32 3
  %24 = ptrtoint ptr %chan263 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %chan263, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end61
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %27 = extractvalue { i32, i1 } %22, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef %27, i32 noundef 3520) #12
  %chan = getelementptr inbounds %struct.dw_axi_dma, ptr %call.i255, i32 0, i32 3
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i, ptr %chan, align 4
  %tobool65.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool65.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end67

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67:                                         ; preds = %devm_kcalloc.exit
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call.i260 = tail call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %32, ptr noundef nonnull @dw_axi_dma_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool71.not = icmp eq i32 %call.i260, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 3
  %33 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %channels, ptr %prev.i, align 4
  %35 = ptrtoint ptr %call.i256 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i256, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp75265.not = icmp eq i32 %36, 0
  br i1 %cmp75265.not, label %if.end73.for.end_crit_edge, label %if.end73.for.body_crit_edge

if.end73.for.body_crit_edge:                      ; preds = %if.end73
  br label %for.body

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end73.for.body_crit_edge
  %i.0266 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end73.for.body_crit_edge ]
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan, align 4
  %arrayidx = getelementptr %struct.axi_dma_chan, ptr %38, i32 %i.0266
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %arrayidx, align 4
  %conv = trunc i32 %i.0266 to i8
  %id = getelementptr %struct.axi_dma_chan, ptr %38, i32 %i.0266, i32 2
  %40 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %id, align 4
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 256
  %mul = shl i32 %i.0266, 8
  %add.ptr80 = getelementptr i8, ptr %add.ptr, i32 %mul
  %chan_regs = getelementptr %struct.axi_dma_chan, ptr %38, i32 %i.0266, i32 1
  %43 = ptrtoint ptr %chan_regs to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr80, ptr %chan_regs, align 4
  %descs_allocated = getelementptr %struct.axi_dma_chan, ptr %38, i32 %i.0266, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %descs_allocated, i32 noundef 4) #12
  %44 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %descs_allocated, align 4
  %vc = getelementptr %struct.axi_dma_chan, ptr %38, i32 %i.0266, i32 6
  %desc_free = getelementptr %struct.axi_dma_chan, ptr %38, i32 %i.0266, i32 6, i32 2
  %45 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @vchan_desc_put, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %vc, ptr noundef nonnull %call.i255) #12
  %inc = add nuw i32 %i.0266, 1
  %46 = ptrtoint ptr %call.i256 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call.i256, align 4
  %cmp75 = icmp ult i32 %inc, %47
  br i1 %cmp75, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end73.for.end_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #12
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #12
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #12
  %48 = ptrtoint ptr %call.i256 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call.i256, align 4
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 1
  %50 = ptrtoint ptr %chancnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %chancnt, align 4
  %axi_rw_burst_len = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %call.i256, i32 0, i32 5
  %51 = ptrtoint ptr %axi_rw_burst_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %axi_rw_burst_len, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 23
  %53 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %max_burst, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 19
  %54 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 127, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 20
  %55 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 127, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 21
  %56 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 7, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 26
  %57 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %residue_granularity, align 4
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %dev99 = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 15
  %60 = ptrtoint ptr %dev99 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %dev99, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 49
  %61 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @dma_chan_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 50
  %62 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @dma_chan_issue_pending, ptr %device_issue_pending, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 47
  %63 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dma_chan_terminate_all, ptr %device_terminate_all, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 45
  %64 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @dma_chan_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 46
  %65 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @dma_chan_resume, ptr %device_resume, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 27
  %66 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @dma_chan_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 29
  %67 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @dma_chan_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 30
  %68 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @dma_chan_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 48
  %69 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dw_axi_dma_synchronize, ptr %device_synchronize, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 44
  %70 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @dw_axi_dma_chan_slave_config, ptr %device_config, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 39
  %71 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @dw_axi_dma_chan_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i255, i32 0, i32 40
  %72 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @dw_axi_dma_chan_prep_cyclic, ptr %device_prep_dma_cyclic, align 4
  %dma_parms = getelementptr inbounds %struct.dw_axi_dma, ptr %call.i255, i32 0, i32 2
  %dma_parms114 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 22
  %73 = ptrtoint ptr %dma_parms114 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dma_parms, ptr %dma_parms114, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %74 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %75, null
  br i1 %tobool.not.i, label %for.end.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

for.end.dma_set_max_seg_size.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4096, ptr %75, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %for.end.dma_set_max_seg_size.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %79) #12
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !150
  %call119 = tail call fastcc i32 @axi_dma_resume(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %dma_set_max_seg_size.exit.err_pm_disable_crit_edge, label %if.end123

dma_set_max_seg_size.exit.err_pm_disable_crit_edge: ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pm_disable

if.end123:                                        ; preds = %dma_set_max_seg_size.exit
  tail call fastcc void @axi_dma_hw_init(ptr noundef nonnull %call.i)
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %call.i261 = tail call i32 @__pm_runtime_idle(ptr noundef %84, i32 noundef 5) #12
  %call127 = tail call i32 @dmaenginem_async_device_register(ptr noundef nonnull %call.i255) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.end123.err_pm_disable_crit_edge

if.end123.err_pm_disable_crit_edge:               ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pm_disable

if.end130:                                        ; preds = %if.end123
  %85 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %of_node, align 8
  %call133 = tail call i32 @of_dma_controller_register(ptr noundef %86, ptr noundef nonnull @dw_axi_dma_of_xlate, ptr noundef nonnull %call.i255) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %do.end, label %if.end130.do.end141_crit_edge

if.end130.do.end141_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end141

do.end:                                           ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #15
  br label %do.end141

do.end141:                                        ; preds = %do.end, %if.end130.do.end141_crit_edge
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 4
  %89 = ptrtoint ptr %hdata16 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hdata16, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.10, i32 noundef %92) #15
  br label %cleanup

err_pm_disable:                                   ; preds = %if.end123.err_pm_disable_crit_edge, %dma_set_max_seg_size.exit.err_pm_disable_crit_edge
  %ret.0 = phi i32 [ %call119, %dma_set_max_seg_size.exit.err_pm_disable_crit_edge ], [ %call127, %if.end123.err_pm_disable_crit_edge ]
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %94, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %do.end141, %if.end67.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end57.cleanup_crit_edge, %if.then54, %if.then46, %if.then37, %if.then27, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then27 ], [ %11, %if.then37 ], [ %15, %if.then46 ], [ %19, %if.then54 ], [ %ret.0, %err_pm_disable ], [ 0, %do.end141 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call17, %if.end11.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call.i260, %if.end67.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dw1 = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw1, align 4
  %cfgr_clk = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cfgr_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgr_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %5) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %core_clk = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  %call.i59 = tail call i32 @clk_prepare(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i60, label %if.end.i63, label %clk_prepare_enable.exit.clk_prepare_enable.exit66_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit66_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit66

if.end.i63:                                       ; preds = %clk_prepare_enable.exit
  %call1.i61 = tail call i32 @clk_enable(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool2.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool2.not.i62, label %if.end.i63.clk_prepare_enable.exit66_crit_edge, label %if.then3.i64

if.end.i63.clk_prepare_enable.exit66_crit_edge:   ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit66

if.then3.i64:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %clk_prepare_enable.exit66

clk_prepare_enable.exit66:                        ; preds = %if.then3.i64, %if.end.i63.clk_prepare_enable.exit66_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit66_crit_edge
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %11 = and i32 %10, -33554433
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %11) #12, !srcloc !154
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdata, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp74.not = icmp eq i32 %17, 0
  br i1 %cmp74.not, label %clk_prepare_enable.exit66.for.end_crit_edge, label %clk_prepare_enable.exit66.for.body_crit_edge

clk_prepare_enable.exit66.for.body_crit_edge:     ; preds = %clk_prepare_enable.exit66
  br label %for.body

clk_prepare_enable.exit66.for.end_crit_edge:      ; preds = %clk_prepare_enable.exit66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %clk_prepare_enable.exit66.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %clk_prepare_enable.exit66.for.body_crit_edge ]
  %18 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dw1, align 4
  %chan5 = getelementptr inbounds %struct.dw_axi_dma, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %chan5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan5, align 4
  %arrayidx = getelementptr %struct.axi_dma_chan, ptr %21, i32 %i.075
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %regs.i.i67 = getelementptr inbounds %struct.axi_dma_chip, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i.i67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i67, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %25, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #12, !srcloc !151
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id.i = getelementptr %struct.axi_dma_chan, ptr %21, i32 %i.075, i32 2
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %29 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i69 = icmp eq i8 %37, 0
  %shl6.pn.v.i = select i1 %tobool.not.i69, i32 16, i32 8
  %shl6.pn.i = shl i32 %shl.i, %shl6.pn.v.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %27, %neg.i
  %val.0.i = or i32 %shl6.pn.i, %and.i
  %regs.i21.i = getelementptr inbounds %struct.axi_dma_chip, ptr %31, i32 0, i32 2
  %38 = ptrtoint ptr %regs.i21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %40 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %40) #12, !srcloc !154
  %41 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dw1, align 4
  %chan7 = getelementptr inbounds %struct.dw_axi_dma, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %chan7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan7, align 4
  %chan_regs.i.i = getelementptr %struct.axi_dma_chan, ptr %44, i32 %i.075, i32 1
  %45 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %46, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 0) #12, !srcloc !154
  %inc = add nuw i32 %i.075, 1
  %47 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdata, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %cmp = icmp ult i32 %inc, %50
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %clk_prepare_enable.exit66.for.end_crit_edge
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %54 = and i32 %53, -16777217
  %55 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i73 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i73, i32 %54) #12, !srcloc !154
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %58, i1 noundef zeroext true) #12
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 16
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %62 = and i32 %61, -33554433
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %64, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %62) #12, !srcloc !154
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %66, i32 16
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %68 = and i32 %67, -16777217
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i3.i = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i, i32 %68) #12, !srcloc !154
  %71 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %72) #12
  tail call void @clk_unprepare(ptr noundef %72) #12
  %73 = ptrtoint ptr %cfgr_clk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfgr_clk, align 4
  tail call void @clk_disable(ptr noundef %74) #12
  tail call void @clk_unprepare(ptr noundef %74) #12
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %76, i32 noundef %78, ptr noundef %1) #12
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %82) #12
  %channels = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %83 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %channels, align 4
  %cmp23.not76 = icmp eq ptr %84, %channels
  br i1 %cmp23.not76, label %for.end.for.end37_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.body24:                                       ; preds = %list_del.exit.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %85 = phi ptr [ %.pn, %list_del.exit.for.body24_crit_edge ], [ %84, %for.end.for.body24_crit_edge ]
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn = load ptr, ptr %85, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %85) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body24.list_del.exit_crit_edge

for.body24.list_del.exit_crit_edge:               ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %85, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body24.list_del.exit_crit_edge
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 256 to ptr), ptr %85, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr i8, ptr %85, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #12
  %cmp23.not = icmp eq ptr %.pn, %channels
  br i1 %cmp23.not, label %list_del.exit.for.end37_crit_edge, label %list_del.exit.for.body24_crit_edge

list_del.exit.for.body24_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

list_del.exit.for.end37_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.end37:                                        ; preds = %list_del.exit.for.end37_crit_edge, %for.end.for.end37_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_device_properties(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  %carr = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %carr) #12
  %3 = call ptr @memset(ptr %carr, i32 255, i32 64)
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %tmp, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  %6 = add i32 %5, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %6)
  %7 = icmp ult i32 %6, -16
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dw = getelementptr inbounds %struct.axi_dma_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dw, align 4
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdata, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %11, align 4
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp5 = icmp ult i32 %14, 9
  br i1 %cmp5, label %if.then6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dw, align 4
  %hdata8 = getelementptr inbounds %struct.dw_axi_dma, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hdata8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdata8, align 4
  %reg_map_8_channels = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %reg_map_8_channels to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %reg_map_8_channels, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %call.i137 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %tmp, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool11.not = icmp eq i32 %call.i137, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp, align 4
  %22 = add i32 %21, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %22)
  %23 = icmp ult i32 %22, -2
  br i1 %23, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %24 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dw, align 4
  %hdata20 = getelementptr inbounds %struct.dw_axi_dma, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hdata20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdata20, align 4
  %nr_masters = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %nr_masters to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %nr_masters, align 4
  %call.i138 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %tmp, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool22.not = icmp eq i32 %call.i138, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %29 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp25 = icmp ugt i32 %30, 6
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %31 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dw, align 4
  %hdata29 = getelementptr inbounds %struct.dw_axi_dma, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %hdata29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdata29, align 4
  %m_data_width = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %m_data_width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %m_data_width, align 4
  %36 = load ptr, ptr %dw, align 4
  %hdata31 = getelementptr inbounds %struct.dw_axi_dma, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %hdata31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdata31, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %call33 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %carr, i32 noundef %40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %for.cond.preheader, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end27
  %41 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %tmp, align 4
  %42 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dw, align 4
  %hdata38142 = getelementptr inbounds %struct.dw_axi_dma, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %hdata38142 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hdata38142, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp40143.not = icmp eq i32 %47, 0
  br i1 %cmp40143.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %48 = phi ptr [ %59, %if.end46.for.body_crit_edge ], [ %45, %for.cond.preheader.for.body_crit_edge ]
  %storemerge144 = phi i32 [ %inc, %if.end46.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr %carr, i32 0, i32 %storemerge144
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %51 = add i32 %50, -2097153
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2097152, i32 %51)
  %52 = icmp ult i32 %51, -2097152
  br i1 %52, label %for.body.cleanup_crit_edge, label %if.end46

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %for.body
  %arrayidx50 = getelementptr %struct.dw_axi_dma_hcfg, ptr %48, i32 0, i32 3, i32 %storemerge144
  %53 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %arrayidx50, align 4
  %54 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tmp, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %tmp, align 4
  %56 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dw, align 4
  %hdata38 = getelementptr inbounds %struct.dw_axi_dma, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %hdata38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hdata38, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %cmp40 = icmp ult i32 %inc, %61
  br i1 %cmp40, label %if.end46.for.body_crit_edge, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %61, %if.end46.for.end_crit_edge ]
  %call55 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %carr, i32 noundef %.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.cond59.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond59.preheader:                             ; preds = %for.end
  %62 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tmp, align 4
  %63 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dw, align 4
  %hdata61145 = getelementptr inbounds %struct.dw_axi_dma, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %hdata61145 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hdata61145, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp63146.not = icmp eq i32 %68, 0
  br i1 %cmp63146.not, label %for.cond59.preheader.for.end78_crit_edge, label %for.cond59.preheader.for.body64_crit_edge

for.cond59.preheader.for.body64_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body64

for.cond59.preheader.for.end78_crit_edge:         ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end78

for.body64:                                       ; preds = %if.end71.for.body64_crit_edge, %for.cond59.preheader.for.body64_crit_edge
  %69 = phi i32 [ %81, %if.end71.for.body64_crit_edge ], [ %68, %for.cond59.preheader.for.body64_crit_edge ]
  %70 = phi ptr [ %79, %if.end71.for.body64_crit_edge ], [ %66, %for.cond59.preheader.for.body64_crit_edge ]
  %storemerge133147 = phi i32 [ %inc77, %if.end71.for.body64_crit_edge ], [ 0, %for.cond59.preheader.for.body64_crit_edge ]
  %arrayidx65 = getelementptr [16 x i32], ptr %carr, i32 0, i32 %storemerge133147
  %71 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %69)
  %cmp69.not = icmp ult i32 %72, %69
  br i1 %cmp69.not, label %if.end71, label %for.body64.cleanup_crit_edge

for.body64.cleanup_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end71:                                         ; preds = %for.body64
  %arrayidx75 = getelementptr %struct.dw_axi_dma_hcfg, ptr %70, i32 0, i32 4, i32 %storemerge133147
  %73 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx75, align 4
  %74 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tmp, align 4
  %inc77 = add i32 %75, 1
  store i32 %inc77, ptr %tmp, align 4
  %76 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dw, align 4
  %hdata61 = getelementptr inbounds %struct.dw_axi_dma, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %hdata61 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hdata61, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %cmp63 = icmp ult i32 %inc77, %81
  br i1 %cmp63, label %if.end71.for.body64_crit_edge, label %if.end71.for.end78_crit_edge

if.end71.for.end78_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end78

if.end71.for.body64_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body64

for.end78:                                        ; preds = %if.end71.for.end78_crit_edge, %for.cond59.preheader.for.end78_crit_edge
  %call.i139 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %tmp, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool80.not = icmp eq i32 %call.i139, 0
  br i1 %tobool80.not, label %if.then81, label %for.end78.cleanup_crit_edge

for.end78.cleanup_crit_edge:                      ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then81:                                        ; preds = %for.end78
  %82 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tmp, align 4
  %84 = add i32 %83, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %84)
  %85 = icmp ult i32 %84, -256
  br i1 %85, label %if.then81.cleanup_crit_edge, label %if.end87

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end87:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dw, align 4
  %hdata89 = getelementptr inbounds %struct.dw_axi_dma, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %hdata89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hdata89, align 4
  %restrict_axi_burst_len = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %restrict_axi_burst_len to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %restrict_axi_burst_len, align 1
  %91 = load ptr, ptr %dw, align 4
  %hdata91 = getelementptr inbounds %struct.dw_axi_dma, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %hdata91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hdata91, align 4
  %axi_rw_burst_len = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %axi_rw_burst_len to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %83, ptr %axi_rw_burst_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.then81.cleanup_crit_edge, %for.end78.cleanup_crit_edge, %for.body64.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i137, %if.end9.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %call.i138, %if.end18.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ %call33, %if.end27.cleanup_crit_edge ], [ %call55, %for.end.cleanup_crit_edge ], [ -22, %if.then81.cleanup_crit_edge ], [ 0, %if.end87 ], [ 0, %for.end78.cleanup_crit_edge ], [ -22, %for.body64.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %carr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_axi_dma_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dw1 = getelementptr inbounds %struct.axi_dma_chip, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw1, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %5 = and i32 %4, -33554433
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %5) #12, !srcloc !154
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdata, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp37.not = icmp eq i32 %11, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chan2 = getelementptr inbounds %struct.dw_axi_dma, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan2, align 4
  %arrayidx = getelementptr %struct.axi_dma_chan, ptr %13, i32 %i.038
  %chan_regs.i.i = getelementptr %struct.axi_dma_chan, ptr %13, i32 %i.038, i32 1
  %14 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %15, i32 136
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #12, !srcloc !151
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %18 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %19, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %16) #12, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_axi_dma_interrupt.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_axi_dma_interrupt, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !157

if.then:                                          ; preds = %for.body
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  %dev.i.i = getelementptr %struct.axi_dma_chan, ptr %13, i32 %i.038, i32 6, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.axi_chan_name.exit_crit_edge

if.then.axi_chan_name.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %if.then.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %27, %if.end.i.i.i ], [ %25, %if.then.axi_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_axi_dma_interrupt.__UNIQUE_ID_ddebug245, ptr noundef %21, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i.i, i32 noundef %i.038, i32 noundef %17) #12
  br label %do.end

do.end:                                           ; preds = %axi_chan_name.exit, %for.body
  %and = and i32 %17, 4161504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @axi_chan_handle_err(ptr noundef %arrayidx, i32 noundef %17)
  br label %for.inc

if.else:                                          ; preds = %do.end
  %and10 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else.for.inc_crit_edge, label %if.then12

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @axi_chan_block_xfer_complete(ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.else.for.inc_crit_edge, %if.then9
  %inc = add nuw i32 %i.038, 1
  %28 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdata, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %35 = or i32 %34, 33554432
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i35 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i35, i32 %35) #12, !srcloc !154
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vchan_desc_put(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vdesc, i32 -4
  tail call fastcc void @axi_desc_put(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_chan_tx_status(ptr noundef %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge52 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge52, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr i8, ptr %dchan, i32 92
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %dchan, i32 noundef %cookie) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %call9, i32 -4
  %length13 = getelementptr i8, ptr %call9, i32 124
  %8 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length13, align 4
  %completed_blocks15 = getelementptr i8, ptr %call9, i32 120
  %10 = ptrtoint ptr %completed_blocks15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %completed_blocks15, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %len17 = getelementptr inbounds %struct.axi_dma_hw_desc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len17, align 4
  %mul = mul i32 %15, %11
  %sub = sub i32 %9, %mul
  br label %dma_set_residue.exit

if.else:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 124)
  %16 = load i32, ptr inttoptr (i32 124 to ptr), align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.else, %if.then11
  %bytes.0 = phi i32 [ %sub, %if.then11 ], [ %16, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %17 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bytes.0, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i51.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i51 = zext i1 %retval.0.i.i51.shrunk to i32
  ret i32 %retval.0.i.i51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_chan_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %lock = getelementptr i8, ptr %dchan, i32 92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %desc_issued.i = getelementptr %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %if.then

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  %12 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %13, %desc_issued.i
  %add.ptr.i.i13 = getelementptr i8, ptr %13, i32 -108
  %tobool.not19.i = icmp eq ptr %add.ptr.i.i13, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not19.i
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %add.ptr.i17.i = getelementptr i8, ptr %13, i32 -112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axi_chan_start_first_queued.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_chan_issue_pending, %do.end.i)) #12
          to label %if.then7.i [label %do.end.i], !srcloc !157

if.then7.i:                                       ; preds = %if.end.i
  %dev.i.i = getelementptr i8, ptr %dchan, i32 20
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  %init_name.i.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then7.i.axi_chan_name.exit.i_crit_edge

if.then7.i.axi_chan_name.exit.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i.i, align 4
  br label %axi_chan_name.exit.i

axi_chan_name.exit.i:                             ; preds = %if.end.i.i.i.i, %if.then7.i.axi_chan_name.exit.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %19, %if.end.i.i.i.i ], [ %17, %if.then7.i.axi_chan_name.exit.i_crit_edge ]
  %20 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axi_chan_start_first_queued.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i.i.i, i32 noundef %21) #12
  br label %do.end.i

do.end.i:                                         ; preds = %axi_chan_name.exit.i, %if.end.i
  tail call fastcc void @axi_chan_block_xfer_start(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i17.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_chan_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %id = getelementptr i8, ptr %dchan, i32 -12
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #12
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %8, i32 24
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98) #12, !srcloc !151
  %10 = call i32 @llvm.bswap.i32(i32 %9) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 4
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %shl6.pn.v.i = select i1 %tobool.not.i, i32 16, i32 8
  %shl6.pn.i = shl i32 %shl.i, %shl6.pn.v.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %10, %neg.i
  %val.0.i = or i32 %shl6.pn.i, %and.i
  %regs.i21.i = getelementptr inbounds %struct.axi_dma_chip, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %22, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  call void @arm_heavy_mb() #12
  %23 = call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %23) #12, !srcloc !154
  %call2 = call i64 @ktime_get() #12
  %add.i = add i64 %call2, 10000000
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 4
  %regs119 = getelementptr inbounds %struct.axi_dma_chip, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %regs119 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs119, align 4
  %add.ptr120 = getelementptr i8, ptr %27, i32 24
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #12, !srcloc !151
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  %and121 = and i32 %29, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool.not122 = icmp eq i32 %and121, 0
  br i1 %tobool.not122, label %entry.if.end36_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call7 = call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #12
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i.i, align 4
  %regs = getelementptr inbounds %struct.axi_dma_chip, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 24
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !151
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  %and = and i32 %36, %shl
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.if.end36_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false.if.end36_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

for.end:                                          ; preds = %land.lhs.true
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i, align 4
  %regs14 = getelementptr inbounds %struct.axi_dma_chip, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs14, align 4
  %add.ptr15 = getelementptr i8, ptr %40, i32 24
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #12, !srcloc !151
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %.pre = and i32 %42, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool30.not = icmp eq i32 %.pre, 0
  br i1 %tobool30.not, label %for.end.if.end36_crit_edge, label %do.end

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end:                                           ; preds = %for.end
  %dev.i = getelementptr %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %44, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %44, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.axi_chan_name.exit_crit_edge

do.end.axi_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %do.end.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %48, %if.end.i.i.i ], [ %46, %do.end.axi_chan_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i.i.i) #15
  br label %if.end36

if.end36:                                         ; preds = %axi_chan_name.exit, %for.end.if.end36_crit_edge, %cond.false.if.end36_crit_edge, %entry.if.end36_crit_edge
  %direction = getelementptr i8, ptr %dchan, i32 232
  %49 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp37.not = icmp eq i32 %50, 0
  br i1 %cmp37.not, label %if.end36.do.body47_crit_edge, label %if.end40

if.end36.do.body47_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

if.end40:                                         ; preds = %if.end36
  call fastcc void @dw_axi_dma_set_hw_channel(ptr noundef %add.ptr.i.i, i1 noundef zeroext false)
  %51 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp42 = icmp eq i32 %.pr, 1
  br i1 %cmp42, label %if.then44, label %if.end40.do.body47_crit_edge

if.end40.do.body47_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

if.then44:                                        ; preds = %if.end40
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i.i, align 4
  %apb_regs.i = getelementptr inbounds %struct.axi_dma_chip, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %apb_regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %apb_regs.i, align 4
  %tobool.not.i100 = icmp eq ptr %55, null
  br i1 %tobool.not.i100, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_axi_dma_set_byte_halfword.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_chan_terminate_all, %do.body47)) #12
          to label %if.then6.i [label %do.body47], !srcloc !157

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_axi_dma_set_byte_halfword.__UNIQUE_ID_ddebug240, ptr noundef %59, ptr noundef nonnull @.str.34) #12
  br label %do.body47

if.end8.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %dst_addr_width.i = getelementptr i8, ptr %dchan, i32 200
  %60 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dst_addr_width.i, align 4
  %62 = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i101 = icmp eq i32 %62, 2
  %spec.select.i = select i1 %cmp.i101, i32 32, i32 28
  %add.ptr.i = getelementptr i8, ptr %55, i32 %spec.select.i
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !151
  %64 = call i32 @llvm.bswap.i32(i32 %63) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id, align 4
  %conv.i103 = zext i8 %66 to i32
  %shl.i104 = shl nuw i32 1, %conv.i103
  %neg.i105 = xor i32 %shl.i104, -1
  %and.i106 = and i32 %64, %neg.i105
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i.i, align 4
  %apb_regs22.i = getelementptr inbounds %struct.axi_dma_chip, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %apb_regs22.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %apb_regs22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %70, i32 %spec.select.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  call void @arm_heavy_mb() #12
  %71 = call i32 @llvm.bswap.i32(i32 %and.i106) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %71) #12, !srcloc !154
  br label %do.body47

do.body47:                                        ; preds = %if.end8.i, %if.then6.i, %do.body.i, %if.end40.do.body47_crit_edge, %if.end36.do.body47_crit_edge
  %lock = getelementptr i8, ptr %dchan, i32 92
  %call52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %72 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %73, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %do.body47.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

do.body47.list_splice_tail_init.exit.i_crit_edge: ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %73, ptr %75, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %head, ptr %77, align 4
  store ptr %77, ptr %2, align 4
  %81 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %do.body47.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %82 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %83, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %86 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %88 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i12.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %83, ptr %85, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %head, ptr %87, align 4
  store ptr %87, ptr %2, align 4
  %91 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %92 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %93, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %96 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %98 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev3.i.i18.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %93, ptr %95, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %head, ptr %97, align 4
  store ptr %97, ptr %2, align 4
  %101 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
  %102 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %103, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
  %106 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev3.i.i24.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %103, ptr %105, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %head, ptr %107, align 4
  store ptr %107, ptr %2, align 4
  %111 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %112 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %113, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %116 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %118 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i30.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %113, ptr %115, align 4
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %head, ptr %117, align 4
  store ptr %117, ptr %2, align 4
  %121 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %cyclic = getelementptr i8, ptr %dchan, i32 236
  %122 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %cyclic, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call52) #12
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_chan_terminate_all.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_chan_terminate_all, %do.end74)) #12
          to label %if.then69 [label %do.end74], !srcloc !157

if.then69:                                        ; preds = %vchan_get_all_descriptors.exit
  %dev.i107 = getelementptr %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %123 = ptrtoint ptr %dev.i107 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i107, align 4
  %device.i108 = getelementptr inbounds %struct.dma_chan_dev, ptr %124, i32 0, i32 1
  %init_name.i.i.i110 = getelementptr inbounds %struct.dma_chan_dev, ptr %124, i32 0, i32 1, i32 3
  %125 = ptrtoint ptr %init_name.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %init_name.i.i.i110, align 8
  %tobool.not.i.i.i111 = icmp eq ptr %126, null
  br i1 %tobool.not.i.i.i111, label %if.end.i.i.i113, label %if.then69.axi_chan_name.exit115_crit_edge

if.then69.axi_chan_name.exit115_crit_edge:        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit115

if.end.i.i.i113:                                  ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %device.i108 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device.i108, align 4
  br label %axi_chan_name.exit115

axi_chan_name.exit115:                            ; preds = %if.end.i.i.i113, %if.then69.axi_chan_name.exit115_crit_edge
  %retval.0.i.i.i114 = phi ptr [ %128, %if.end.i.i.i113 ], [ %126, %if.then69.axi_chan_name.exit115_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_chan_terminate_all.__UNIQUE_ID_ddebug246, ptr noundef %device.i108, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i.i.i114) #12
  br label %do.end74

do.end74:                                         ; preds = %axi_chan_name.exit115, %vchan_get_all_descriptors.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_chan_pause(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %lock = getelementptr i8, ptr %dchan, i32 92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dw = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw, align 4
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdata, align 4
  %reg_map_8_channels = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %reg_map_8_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_map_8_channels, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !151
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id = getelementptr i8, ptr %dchan, i32 -12
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 4
  %conv8 = zext i8 %13 to i32
  %shl = shl nuw i32 1, %conv8
  %shl9 = shl i32 %shl, 16
  %shl13 = shl i32 %shl, 24
  %or = or i32 %shl13, %11
  %or14 = or i32 %or, %shl9
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %regs.i52 = getelementptr inbounds %struct.axi_dma_chip, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %or14) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %18) #12, !srcloc !154
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id16 = getelementptr i8, ptr %dchan, i32 -12
  %19 = ptrtoint ptr %id16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id16, align 4
  %conv17 = zext i8 %20 to i32
  %shl18 = shl nuw i32 1, %conv17
  %shl23 = shl i32 %shl18, 16
  %or24 = or i32 %shl23, %shl18
  %regs.i54 = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %or24) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %23) #12, !srcloc !154
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chan_regs.i.i = getelementptr i8, ptr %dchan, i32 -16
  br label %do.body26

do.body26:                                        ; preds = %if.end30.do.body26_crit_edge, %if.end
  %timeout.0 = phi i32 [ 20, %if.end ], [ %dec, %if.end30.do.body26_crit_edge ]
  %24 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %25, i32 136
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool28.not = icmp eq i32 %27, 0
  br i1 %tobool28.not, label %if.end30, label %do.body26.do.end33_crit_edge

do.body26.do.end33_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

if.end30:                                         ; preds = %do.body26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 429496) #12
  %dec = add nsw i32 %timeout.0, -1
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %if.end30.do.end33_crit_edge, label %if.end30.do.body26_crit_edge

if.end30.do.body26_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

if.end30.do.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

do.end33:                                         ; preds = %if.end30.do.end33_crit_edge, %do.body26.do.end33_crit_edge
  %timeout.1 = phi i32 [ %timeout.0, %do.body26.do.end33_crit_edge ], [ 0, %if.end30.do.end33_crit_edge ]
  %29 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %30, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 32) #12, !srcloc !154
  %is_paused = getelementptr i8, ptr %dchan, i32 237
  %31 = ptrtoint ptr %is_paused to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_paused, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool36.not = icmp eq i32 %timeout.1, 0
  %spec.select = select i1 %tobool36.not, i32 -11, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_chan_resume(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dchan, i32 92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %is_paused = getelementptr i8, ptr %dchan, i32 237
  %0 = ptrtoint ptr %is_paused to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_paused, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #12, !srcloc !151
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %id8.i = getelementptr i8, ptr %dchan, i32 -12
  %16 = ptrtoint ptr %id8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id8.i, align 4
  %conv9.i = zext i8 %17 to i32
  %shl10.i = shl nuw i32 1, %conv9.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %shl2.i = shl i32 %shl10.i, 16
  %neg.i = xor i32 %shl2.i, -1
  %and.i = and i32 %7, %neg.i
  %shl6.i = shl i32 %shl10.i, 24
  %or.i = or i32 %and.i, %shl6.i
  %regs.i33.i = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i33.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %20) #12, !srcloc !154
  br label %axi_chan_resume.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %neg12.i = xor i32 %shl10.i, -1
  %and13.i = and i32 %7, %neg12.i
  %shl17.i = shl i32 %shl10.i, 16
  %or18.i = or i32 %and13.i, %shl17.i
  %regs.i35.i = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i35.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i35.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %23) #12, !srcloc !154
  br label %axi_chan_resume.exit

axi_chan_resume.exit:                             ; preds = %if.else.i, %if.then.i
  %24 = ptrtoint ptr %is_paused to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_paused, align 1
  br label %if.end

if.end:                                           ; preds = %axi_chan_resume.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_chan_alloc_chan_resources(ptr nocapture noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #12, !srcloc !151
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id.i = getelementptr i8, ptr %dchan, i32 -12
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %dev.i40 = getelementptr i8, ptr %dchan, i32 20
  %8 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i40, align 4
  br i1 %tobool.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.axi_chan_name.exit_crit_edge

do.end.axi_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %do.end.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %do.end.axi_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i.i.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device.i41 = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %device.i41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i41, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i42 = phi ptr [ %17, %if.end.i ], [ %15, %if.end.dev_name.exit_crit_edge ]
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call6 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i42, ptr noundef %21, i32 noundef 64, i32 noundef 64, i32 noundef 0) #12
  %desc_pool = getelementptr i8, ptr %dchan, i32 -4
  %22 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call6, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end11, label %do.body14

do.end11:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i40, align 4
  %device.i44 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i44, ptr noundef nonnull @.str.45) #15
  br label %cleanup

do.body14:                                        ; preds = %dev_name.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_chan_alloc_chan_resources.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_chan_alloc_chan_resources, %do.end25)) #12
          to label %if.then20 [label %do.end25], !srcloc !157

if.then20:                                        ; preds = %do.body14
  %25 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i40, align 4
  %device.i46 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  %init_name.i.i.i48 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %init_name.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i.i48, align 8
  %tobool.not.i.i.i49 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i49, label %if.end.i.i.i51, label %if.then20.axi_chan_name.exit53_crit_edge

if.then20.axi_chan_name.exit53_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit53

if.end.i.i.i51:                                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %device.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i46, align 4
  br label %axi_chan_name.exit53

axi_chan_name.exit53:                             ; preds = %if.end.i.i.i51, %if.then20.axi_chan_name.exit53_crit_edge
  %retval.0.i.i.i52 = phi ptr [ %30, %if.end.i.i.i51 ], [ %28, %if.then20.axi_chan_name.exit53_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_chan_alloc_chan_resources.__UNIQUE_ID_ddebug242, ptr noundef %device.i46, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i.i.i52) #12
  br label %do.end25

do.end25:                                         ; preds = %axi_chan_name.exit53, %do.body14
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end11, %axi_chan_name.exit
  %retval.0 = phi i32 [ -16, %axi_chan_name.exit ], [ 0, %do.end25 ], [ -12, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_chan_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #12, !srcloc !151
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id.i = getelementptr i8, ptr %dchan, i32 -12
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  %dev.i = getelementptr %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.axi_chan_name.exit_crit_edge

do.end.axi_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %do.end.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %do.end.axi_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i.i.i) #15
  br label %if.end

if.end:                                           ; preds = %axi_chan_name.exit, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %regs.i.i30 = getelementptr inbounds %struct.axi_dma_chip, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i30, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #12, !srcloc !151
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id.i, align 4
  %conv.i33 = zext i8 %21 to i32
  %shl.i34 = shl nuw i32 1, %conv.i33
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  %shl6.pn.v.i = select i1 %tobool.not.i, i32 16, i32 8
  %shl6.pn.i = shl i32 %shl.i34, %shl6.pn.v.i
  %neg.i = xor i32 %shl.i34, -1
  %and.i35 = and i32 %19, %neg.i
  %val.0.i = or i32 %shl6.pn.i, %and.i35
  %regs.i21.i = getelementptr inbounds %struct.axi_dma_chip, ptr %23, i32 0, i32 2
  %30 = ptrtoint ptr %regs.i21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %32) #12, !srcloc !154
  %chan_regs.i.i = getelementptr i8, ptr %dchan, i32 -16
  %33 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %34, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36, i32 0) #12, !srcloc !154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %35 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head.i, ptr %head.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %head.i, ptr %35, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %38 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %39, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.list_splice_tail_init.exit.i.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %41, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %head.i, ptr %43, align 4
  store ptr %43, ptr %35, align 4
  %47 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %48 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %49, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i12.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head.i, ptr %53, align 4
  store ptr %53, ptr %35, align 4
  %57 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %58 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %59, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %35, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i18.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %61, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %head.i, ptr %63, align 4
  store ptr %63, ptr %35, align 4
  %67 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
  %68 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %69, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %35, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i24.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %69, ptr %71, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %head.i, ptr %73, align 4
  store ptr %73, ptr %35, align 4
  %77 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %78 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %79, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %35, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev3.i.i30.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %79, ptr %81, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %head.i, ptr %83, align 4
  store ptr %83, ptr %35, align 4
  %87 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %88 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %89 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %90, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %91 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  %desc_pool = getelementptr i8, ptr %dchan, i32 -4
  %92 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc_pool, align 4
  call void @dma_pool_destroy(ptr noundef %93) #12
  %94 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %desc_pool, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_chan_free_chan_resources.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_chan_free_chan_resources, %do.end16)) #12
          to label %if.then10 [label %do.end16], !srcloc !157

if.then10:                                        ; preds = %vchan_free_chan_resources.exit
  %dev.i37 = getelementptr %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %95 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i37, align 4
  %device.i38 = getelementptr inbounds %struct.dma_chan_dev, ptr %96, i32 0, i32 1
  %init_name.i.i.i40 = getelementptr inbounds %struct.dma_chan_dev, ptr %96, i32 0, i32 1, i32 3
  %97 = ptrtoint ptr %init_name.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i.i.i40, align 8
  %tobool.not.i.i.i41 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i.i41, label %if.end.i.i.i43, label %if.then10.axi_chan_name.exit45_crit_edge

if.then10.axi_chan_name.exit45_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit45

if.end.i.i.i43:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %device.i38 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device.i38, align 4
  br label %axi_chan_name.exit45

axi_chan_name.exit45:                             ; preds = %if.end.i.i.i43, %if.then10.axi_chan_name.exit45_crit_edge
  %retval.0.i.i.i44 = phi ptr [ %100, %if.end.i.i.i43 ], [ %98, %if.then10.axi_chan_name.exit45_crit_edge ]
  %descs_allocated = getelementptr i8, ptr %dchan, i32 -8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %descs_allocated, i32 noundef 4) #12
  %101 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %descs_allocated, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_chan_free_chan_resources.__UNIQUE_ID_ddebug243, ptr noundef %device.i38, ptr noundef nonnull @.str.49, ptr noundef %retval.0.i.i.i44, i32 noundef %102) #12
  br label %do.end16

do.end16:                                         ; preds = %axi_chan_name.exit45, %vchan_free_chan_resources.exit
  %103 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %106, i32 noundef 5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dma_chan_prep_dma_memcpy(ptr noundef %dchan, i32 noundef %dst_adr, i32 noundef %src_adr, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %phys.i = alloca i32, align 4
  %dst_adr.addr = alloca i32, align 4
  %src_adr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst_adr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dst_adr, ptr %dst_adr.addr, align 4
  %1 = ptrtoint ptr %src_adr.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src_adr, ptr %src_adr.addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_chan_prep_dma_memcpy.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_chan_prep_dma_memcpy, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !157

if.then:                                          ; preds = %entry
  %dev.i = getelementptr i8, ptr %dchan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.axi_chan_name.exit_crit_edge

if.then.axi_chan_name.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %if.then.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %7, %if.end.i.i.i ], [ %5, %if.then.axi_chan_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_chan_prep_dma_memcpy.__UNIQUE_ID_ddebug244, ptr noundef %device.i, ptr noundef nonnull @.str.51, ptr noundef %retval.0.i.i.i, ptr noundef nonnull %src_adr.addr, ptr noundef nonnull %dst_adr.addr, i32 noundef %len, i32 noundef %flags) #12
  br label %do.end

do.end:                                           ; preds = %axi_chan_name.exit, %entry
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %dw = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dw, align 4
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdata, align 4
  %id = getelementptr i8, ptr %dchan, i32 -12
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 4
  %idxprom = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.dw_axi_dma_hcfg, ptr %13, i32 0, i32 3, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %src_adr.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_adr.addr, align 4
  %20 = ptrtoint ptr %dst_adr.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_adr.addr, align 4
  %m_data_width.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %13, i32 0, i32 2
  %22 = ptrtoint ptr %m_data_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_data_width.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2304, i32 noundef 136) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %add = add i32 %len, -1
  %or.i = or i32 %19, %len
  %or1.i = or i32 %or.i, %21
  %shl.i = shl nuw i32 1, %23
  %or2.i = or i32 %or1.i, %shl.i
  %25 = call i32 @llvm.cttz.i32(i32 %or2.i, i1 true) #12, !range !161
  %shl = shl i32 %17, %25
  %sub = add i32 %add, %shl
  %div = udiv i32 %sub, %shl
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 12) #12
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !149

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %if.then4.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 2304) #17
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.if.then4.i_crit_edge, label %if.end20

if.end7.i.i.i.if.then4.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end7.i.i.i.if.then4.i_crit_edge, %kcalloc.exit.thread.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end7.i.i.i
  %chan21 = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %chan21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.i, ptr %chan21, align 8
  %length = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool22.not190 = icmp eq i32 %len, 0
  br i1 %tobool22.not190, label %if.end20.while.end_crit_edge, label %while.body.lr.ph

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end20
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 -4
  %descs_allocated.i = getelementptr i8, ptr %dchan, i32 -8
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %while.body.lr.ph
  %len.addr.0192 = phi i32 [ %len, %while.body.lr.ph ], [ %sub71, %if.end58.while.body_crit_edge ]
  %num.0191 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end58.while.body_crit_edge ]
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx24 = getelementptr %struct.axi_dma_hw_desc, ptr %34, i32 %num.0191
  %35 = ptrtoint ptr %src_adr.addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_adr.addr, align 4
  %37 = ptrtoint ptr %dst_adr.addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dst_adr.addr, align 4
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 4
  %dw.i167 = getelementptr inbounds %struct.axi_dma_chip, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %dw.i167 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dw.i167, align 4
  %hdata.i168 = getelementptr inbounds %struct.dw_axi_dma, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %hdata.i168 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdata.i168, align 4
  %m_data_width.i169 = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %m_data_width.i169 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m_data_width.i169, align 4
  %shl.i172 = shl nuw i32 1, %46
  %or.i170 = or i32 %36, %len.addr.0192
  %or1.i171 = or i32 %or.i170, %38
  %or2.i173 = or i32 %or1.i171, %shl.i172
  %47 = call i32 @llvm.cttz.i32(i32 %or2.i173, i1 true) #12, !range !161
  %shr = lshr i32 %len.addr.0192, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %17)
  %cmp = icmp ugt i32 %shr, %17
  %shl27 = shl i32 %17, %47
  %spec.select163 = select i1 %cmp, i32 %shl27, i32 %len.addr.0192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #12
  %48 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %phys.i, align 4, !annotation !156
  %49 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %50, i32 noundef 2304, ptr noundef nonnull %phys.i) #12
  %tobool.not.i174 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i174, label %do.end.i, label %if.end42, !prof !149

do.end.i:                                         ; preds = %while.body
  %dev.i.i175 = getelementptr i8, ptr %dchan, i32 20
  %51 = ptrtoint ptr %dev.i.i175 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i175, align 4
  %device.i.i176 = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  %init_name.i.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i177, label %do.end.i.if.then89_crit_edge

do.end.i.if.then89_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

if.end.i.i.i.i177:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %device.i.i176 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device.i.i176, align 4
  br label %if.then89

if.end42:                                         ; preds = %while.body
  %llp29 = getelementptr %struct.axi_dma_hw_desc, ptr %34, i32 %num.0191, i32 1
  %57 = call i32 @llvm.umin.i32(i32 %shr, i32 %17)
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %descs_allocated.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %descs_allocated.i, i32 1, i32 3, i32 1) #12
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %descs_allocated.i, ptr %descs_allocated.i, i32 1, ptr elementtype(i32) %descs_allocated.i) #12, !srcloc !150
  %59 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %phys.i, align 4
  %61 = ptrtoint ptr %llp29 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %llp29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #12
  %62 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i, ptr %arrayidx24, align 4
  %63 = ptrtoint ptr %src_adr.addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_adr.addr, align 4
  %conv.i = zext i32 %64 to i64
  %65 = call i64 @llvm.bswap.i64(i64 %conv.i) #12
  %66 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %call.i.i, align 1
  %67 = ptrtoint ptr %dst_adr.addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dst_adr.addr, align 4
  %conv.i179 = zext i32 %68 to i64
  %69 = call i64 @llvm.bswap.i64(i64 %conv.i179) #12
  %70 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx24, align 4
  %dar.i = getelementptr inbounds %struct.axi_dma_lli, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %dar.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %69, ptr %dar.i, align 1
  %sub43 = add i32 %57, -1
  %73 = call i32 @llvm.bswap.i32(i32 %sub43)
  %74 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx24, align 4
  %block_ts_lo = getelementptr inbounds %struct.axi_dma_lli, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %block_ts_lo to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %73, ptr %block_ts_lo, align 1
  %77 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i.i, align 4
  %dw46 = getelementptr inbounds %struct.axi_dma_chip, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %dw46 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dw46, align 4
  %hdata47 = getelementptr inbounds %struct.dw_axi_dma, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %hdata47 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hdata47, align 4
  %restrict_axi_burst_len = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %restrict_axi_burst_len to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %restrict_axi_burst_len, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool48.not = icmp eq i8 %84, 0
  br i1 %tobool48.not, label %if.end42.if.end58_crit_edge, label %if.then49

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %axi_rw_burst_len = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %82, i32 0, i32 5
  %85 = ptrtoint ptr %axi_rw_burst_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %axi_rw_burst_len, align 4
  %shl53 = shl i32 %86, 7
  %shl55 = shl i32 %86, 16
  %or54 = or i32 %shl55, %shl53
  %or57 = or i32 %or54, -2147450816
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %if.end42.if.end58_crit_edge
  %reg.0 = phi i32 [ %or57, %if.then49 ], [ -2147483648, %if.end42.if.end58_crit_edge ]
  %87 = call i32 @llvm.bswap.i32(i32 %reg.0)
  %88 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx24, align 4
  %ctl_hi = getelementptr inbounds %struct.axi_dma_lli, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %ctl_hi to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %87, ptr %ctl_hi, align 1
  %shl60 = shl nuw nsw i32 %47, 11
  %shl62 = shl nuw nsw i32 %47, 8
  %or61 = or i32 %shl62, %shl60
  %or63 = or i32 %or61, 278528
  %91 = call i32 @llvm.bswap.i32(i32 %or63)
  %92 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx24, align 4
  %ctl_lo = getelementptr inbounds %struct.axi_dma_lli, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %ctl_lo to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %91, ptr %ctl_lo, align 1
  %95 = load ptr, ptr %arrayidx24, align 4
  %ctl_lo.i = getelementptr inbounds %struct.axi_dma_lli, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %ctl_lo.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %ctl_lo.i, align 1
  %98 = and i32 %97, -16777217
  store i32 %98, ptr %ctl_lo.i, align 1
  %99 = load ptr, ptr %arrayidx24, align 4
  %ctl_lo.i180 = getelementptr inbounds %struct.axi_dma_lli, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %ctl_lo.i180 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %ctl_lo.i180, align 1
  %102 = ptrtoint ptr %chan21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chan21, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %dw.i181 = getelementptr inbounds %struct.axi_dma_chip, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %dw.i181 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dw.i181, align 4
  %hdata.i182 = getelementptr inbounds %struct.dw_axi_dma, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %hdata.i182 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hdata.i182, align 4
  %nr_masters.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %nr_masters.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_masters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp.i = icmp ugt i32 %111, 1
  %112 = and i32 %101, -67108865
  %113 = call i32 @llvm.bswap.i32(i32 %112) #12
  %masksel.i = select i1 %cmp.i, i32 4, i32 0
  %val.0.i = or i32 %masksel.i, %113
  %114 = call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  %115 = ptrtoint ptr %ctl_lo.i180 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %114, ptr %ctl_lo.i180, align 1
  %len67 = getelementptr %struct.axi_dma_hw_desc, ptr %34, i32 %num.0191, i32 2
  %116 = ptrtoint ptr %len67 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.select163, ptr %len67, align 4
  %117 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %length, align 8
  %add70 = add i32 %118, %spec.select163
  store i32 %add70, ptr %length, align 8
  %sub71 = sub i32 %len.addr.0192, %spec.select163
  %119 = ptrtoint ptr %dst_adr.addr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dst_adr.addr, align 4
  %add72 = add i32 %120, %spec.select163
  store i32 %add72, ptr %dst_adr.addr, align 4
  %121 = ptrtoint ptr %src_adr.addr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %src_adr.addr, align 4
  %add73 = add i32 %122, %spec.select163
  store i32 %add73, ptr %src_adr.addr, align 4
  %inc = add i32 %num.0191, 1
  %tobool22.not = icmp eq i32 %sub71, 0
  br i1 %tobool22.not, label %if.end58.while.end_crit_edge, label %if.end58.while.body_crit_edge

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end58.while.end_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end58.while.end_crit_edge, %if.end20.while.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %if.end20.while.end_crit_edge ], [ %inc, %if.end58.while.end_crit_edge ]
  %123 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call7.i.i.i, align 8
  %sub75 = add i32 %num.0.lcssa, -1
  %arrayidx76 = getelementptr %struct.axi_dma_hw_desc, ptr %124, i32 %sub75
  %125 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx76, align 4
  %ctl_hi.i = getelementptr inbounds %struct.axi_dma_lli, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %ctl_hi.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %ctl_hi.i, align 1
  %129 = or i32 %128, 64
  store i32 %129, ptr %ctl_hi.i, align 1
  br label %do.body77

do.body77:                                        ; preds = %do.body77.do.body77_crit_edge, %while.end
  %num.1 = phi i32 [ %num.0.lcssa, %while.end ], [ %dec, %do.body77.do.body77_crit_edge ]
  %llp.0.off0 = phi i32 [ 0, %while.end ], [ %137, %do.body77.do.body77_crit_edge ]
  %130 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %call7.i.i.i, align 8
  %dec = add i32 %num.1, -1
  %arrayidx79 = getelementptr %struct.axi_dma_hw_desc, ptr %131, i32 %dec
  %conv.i183 = zext i32 %llp.0.off0 to i64
  %132 = call i64 @llvm.bswap.i64(i64 %conv.i183) #12
  %133 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx79, align 4
  %llp.i = getelementptr inbounds %struct.axi_dma_lli, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %llp.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 8)
  store i64 %132, ptr %llp.i, align 1
  %llp82 = getelementptr %struct.axi_dma_hw_desc, ptr %131, i32 %dec, i32 1
  %136 = ptrtoint ptr %llp82 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %llp82, align 4
  %tobool85.not = icmp eq i32 %dec, 0
  br i1 %tobool85.not, label %do.end86, label %do.body77.do.body77_crit_edge

do.body77.do.body77_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body77

do.end86:                                         ; preds = %do.body77
  %vd = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %dchan) #12
  %flags2.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %flags, ptr %flags2.i, align 8
  %tx_submit.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %139 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %140 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 8
  %tx_result.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %tx_result.i, align 8
  %residue.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %142 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %143 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i184 = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %144, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i184, label %if.end.i.i.i185, label %do.end86.vchan_tx_prep.exit_crit_edge

do.end86.vchan_tx_prep.exit_crit_edge:            ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i185:                                  ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %node.i, ptr %prev.i.i, align 4
  %146 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %desc_allocated.i, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 1
  %147 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %144, ptr %prev3.i.i.i, align 4
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %node.i, ptr %144, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i185, %do.end86.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

if.then89:                                        ; preds = %if.end.i.i.i.i177, %do.end.i.if.then89_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %56, %if.end.i.i.i.i177 ], [ %54, %do.end.i.if.then89_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i176, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #12
  %149 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx24, align 4
  call fastcc void @axi_desc_put(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %vchan_tx_prep.exit, %if.then4.i, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %vd, %vchan_tx_prep.exit ], [ null, %if.then89 ], [ null, %if.then4.i ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_axi_dma_synchronize(ptr noundef %dchan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #12
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_axi_dma_chan_slave_config(ptr nocapture noundef writeonly %dchan, ptr nocapture noundef readonly %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr i8, ptr %dchan, i32 184
  %0 = call ptr @memcpy(ptr %config1, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_axi_dma_chan_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %0 = add i32 %direction, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool.not = icmp eq i32 %sg_len, 0
  %spec.select = or i1 %tobool.not, %1
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !149

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdata.i, align 4
  %id.i = getelementptr i8, ptr %dchan, i32 -12
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 4
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.dw_axi_dma_hcfg, ptr %7, i32 0, i32 3, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %15 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address, align 4
  %m_data_width.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %m_data_width.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_data_width.i, align 4
  %shl.i = shl nuw i32 1, %18
  %or.i = or i32 %16, %14
  %or4.i = or i32 %or.i, %shl.i
  %19 = tail call i32 @llvm.cttz.i32(i32 %or4.i, i1 true) #12, !range !161
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 2) #12
  br label %calculate_block_len.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %src_addr_width.i = getelementptr i8, ptr %dchan, i32 196
  %21 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_addr_width.i, align 4
  %23 = tail call i32 @llvm.cttz.i32(i32 %22, i1 false) #12, !range !161
  br label %calculate_block_len.exit

calculate_block_len.exit:                         ; preds = %sw.bb6.i, %sw.bb.i
  %.pn = phi i32 [ %23, %sw.bb6.i ], [ %20, %sw.bb.i ]
  %block_len.0.i = shl i32 %11, %.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_len.0.i)
  %cmp = icmp eq i32 %block_len.0.i, 0
  br i1 %cmp, label %calculate_block_len.exit.cleanup_crit_edge, label %for.body.lr.ph

calculate_block_len.exit.cleanup_crit_edge:       ; preds = %calculate_block_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %calculate_block_len.exit
  %add = add i32 %block_len.0.i, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %num_sgs.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %add10, %for.body.for.body_crit_edge ]
  %sg.0141 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call11, %for.body.for.body_crit_edge ]
  %dma_length9 = getelementptr inbounds %struct.scatterlist, ptr %sg.0141, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length9, align 4
  %sub = add i32 %add, %25
  %div = udiv i32 %sub, %block_len.0.i
  %add10 = add i32 %div, %num_sgs.0142
  %inc = add nuw i32 %i.0143, 1
  %call11 = tail call ptr @sg_next(ptr noundef %sg.0141) #12
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2304, i32 noundef 136) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.cleanup_crit_edge, label %if.end.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add10, i32 12) #12
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !149

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %if.then4.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %30 = extractvalue { i32, i1 } %27, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 2304) #17
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.if.then4.i_crit_edge, label %for.body28.lr.ph

if.end7.i.i.i.if.then4.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end7.i.i.i.if.then4.i_crit_edge, %kcalloc.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

for.body28.lr.ph:                                 ; preds = %if.end7.i.i.i
  %chan24 = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %chan24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i.i, ptr %chan24, align 8
  %length = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %length, align 8
  %direction25 = getelementptr i8, ptr %dchan, i32 232
  %34 = ptrtoint ptr %direction25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %direction, ptr %direction25, align 4
  %add32 = add i32 %block_len.0.i, -1
  br label %for.body28

for.body28:                                       ; preds = %for.inc51.for.body28_crit_edge, %for.body28.lr.ph
  %i.1147 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc52, %for.inc51.for.body28_crit_edge ]
  %sg.1146 = phi ptr [ %sgl, %for.body28.lr.ph ], [ %call53, %for.inc51.for.body28_crit_edge ]
  %loop.0145 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc40, %for.inc51.for.body28_crit_edge ]
  %dma_address29 = getelementptr inbounds %struct.scatterlist, ptr %sg.1146, i32 0, i32 3
  %35 = ptrtoint ptr %dma_address29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_address29, align 4
  %dma_length30 = getelementptr inbounds %struct.scatterlist, ptr %sg.1146, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length30, align 4
  %sub33 = add i32 %add32, %38
  %div34 = udiv i32 %sub33, %block_len.0.i
  %add36 = add i32 %38, -1
  %sub37 = add i32 %add36, %div34
  %div38 = udiv i32 %sub37, %div34
  br label %do.body

do.body:                                          ; preds = %if.end44.do.body_crit_edge, %for.body28
  %loop.1 = phi i32 [ %loop.0145, %for.body28 ], [ %inc40, %if.end44.do.body_crit_edge ]
  %len.0 = phi i32 [ %38, %for.body28 ], [ %sub48, %if.end44.do.body_crit_edge ]
  %mem.0 = phi i32 [ %36, %for.body28 ], [ %add49, %if.end44.do.body_crit_edge ]
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx = getelementptr %struct.axi_dma_hw_desc, ptr %40, i32 %loop.1
  %call41 = tail call fastcc i32 @dw_axi_dma_set_hw_desc(ptr noundef %add.ptr.i.i, ptr noundef %arrayidx, i32 noundef %mem.0, i32 noundef %div38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then69, label %if.end44

if.end44:                                         ; preds = %do.body
  %inc40 = add i32 %loop.1, 1
  %len45 = getelementptr %struct.axi_dma_hw_desc, ptr %40, i32 %loop.1, i32 2
  %41 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len45, align 4
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 8
  %add47 = add i32 %44, %42
  store i32 %add47, ptr %length, align 8
  %sub48 = sub i32 %len.0, %div38
  %add49 = add i32 %mem.0, %div38
  %cmp50.not = icmp ult i32 %sub48, %div38
  br i1 %cmp50.not, label %for.inc51, label %if.end44.do.body_crit_edge

if.end44.do.body_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc51:                                        ; preds = %if.end44
  %inc52 = add nuw i32 %i.1147, 1
  %call53 = tail call ptr @sg_next(ptr noundef %sg.1146) #12
  %exitcond148.not = icmp eq i32 %inc52, %sg_len
  br i1 %exitcond148.not, label %for.end54, label %for.inc51.for.body28_crit_edge

for.inc51.for.body28_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28

for.end54:                                        ; preds = %for.inc51
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i.i, align 8
  %sub56 = add i32 %add10, -1
  %arrayidx57 = getelementptr %struct.axi_dma_hw_desc, ptr %46, i32 %sub56
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx57, align 4
  %ctl_hi.i = getelementptr inbounds %struct.axi_dma_lli, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %ctl_hi.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ctl_hi.i, align 1
  %51 = or i32 %50, 64
  store i32 %51, ptr %ctl_hi.i, align 1
  br label %do.body58

do.body58:                                        ; preds = %do.body58.do.body58_crit_edge, %for.end54
  %num_sgs.1 = phi i32 [ %add10, %for.end54 ], [ %dec, %do.body58.do.body58_crit_edge ]
  %llp.0.off0 = phi i32 [ 0, %for.end54 ], [ %59, %do.body58.do.body58_crit_edge ]
  %52 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call7.i.i.i, align 8
  %dec = add i32 %num_sgs.1, -1
  %arrayidx60 = getelementptr %struct.axi_dma_hw_desc, ptr %53, i32 %dec
  %conv.i = zext i32 %llp.0.off0 to i64
  %54 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #12
  %55 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx60, align 4
  %llp.i = getelementptr inbounds %struct.axi_dma_lli, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %llp.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %54, ptr %llp.i, align 1
  %llp62 = getelementptr %struct.axi_dma_hw_desc, ptr %53, i32 %dec, i32 1
  %58 = ptrtoint ptr %llp62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %llp62, align 4
  %tobool65.not = icmp eq i32 %dec, 0
  br i1 %tobool65.not, label %do.end66, label %do.body58.do.body58_crit_edge

do.body58.do.body58_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

do.end66:                                         ; preds = %do.body58
  tail call fastcc void @dw_axi_dma_set_hw_channel(ptr noundef %add.ptr.i.i, i1 noundef zeroext true)
  %vd = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %dchan) #12
  %flags2.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %flags, ptr %flags2.i, align 8
  %tx_submit.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %61 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %62 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 8
  %tx_result.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tx_result.i, align 8
  %residue.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %64 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %66, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i134, label %do.end66.vchan_tx_prep.exit_crit_edge

do.end66.vchan_tx_prep.exit_crit_edge:            ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i134:                                  ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %node.i, ptr %prev.i.i, align 4
  %68 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %desc_allocated.i, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %node.i, ptr %66, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i134, %do.end66.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

if.then69:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @axi_desc_put(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %vchan_tx_prep.exit, %if.then4.i, %for.end.cleanup_crit_edge, %calculate_block_len.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vd, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %calculate_block_len.exit.cleanup_crit_edge ], [ null, %if.then69 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then4.i ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_axi_dma_chan_prep_cyclic(ptr noundef %dchan, i32 noundef %dma_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dchan, i32 -20
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdata.i, align 4
  %id.i = getelementptr i8, ptr %dchan, i32 -12
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 4
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.dw_axi_dma_hcfg, ptr %5, i32 0, i32 3, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %direction, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %m_data_width.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %m_data_width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_data_width.i, align 4
  %shl.i = shl nuw i32 1, %12
  %or.i = or i32 %buf_len, %dma_addr
  %or4.i = or i32 %or.i, %shl.i
  %13 = tail call i32 @llvm.cttz.i32(i32 %or4.i, i1 true) #12, !range !161
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 2) #12
  br label %calculate_block_len.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %src_addr_width.i = getelementptr i8, ptr %dchan, i32 196
  %15 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_addr_width.i, align 4
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #12, !range !161
  br label %calculate_block_len.exit

calculate_block_len.exit:                         ; preds = %sw.bb6.i, %sw.bb.i
  %.pn93 = phi i32 [ %17, %sw.bb6.i ], [ %14, %sw.bb.i ]
  %block_len.0.i = shl i32 %9, %.pn93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_len.0.i)
  %cmp = icmp eq i32 %block_len.0.i, 0
  br i1 %cmp, label %calculate_block_len.exit.cleanup_crit_edge, label %if.end

calculate_block_len.exit.cleanup_crit_edge:       ; preds = %calculate_block_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %calculate_block_len.exit
  %div = udiv i32 %buf_len, %period_len
  %add = add i32 %period_len, -1
  %sub = add i32 %add, %block_len.0.i
  %div2 = udiv i32 %sub, %block_len.0.i
  %sub4 = add i32 %add, %div2
  %div5 = udiv i32 %sub4, %div2
  %mul = mul i32 %div2, %div
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2304, i32 noundef 136) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 12) #12
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !149

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %if.then4.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %22 = extractvalue { i32, i1 } %19, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 2304) #17
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.if.then4.i_crit_edge, label %if.end11

if.end7.i.i.i.if.then4.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end7.i.i.i.if.then4.i_crit_edge, %kcalloc.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i.i.i
  %direction12 = getelementptr i8, ptr %dchan, i32 232
  %24 = ptrtoint ptr %direction12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %direction, ptr %direction12, align 4
  %chan13 = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %chan13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i, ptr %chan13, align 8
  %cyclic = getelementptr i8, ptr %dchan, i32 236
  %26 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %cyclic, align 4
  %length = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %length, align 8
  %period_len14 = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %period_len14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %period_len, ptr %period_len14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1594.not = icmp eq i32 %mul, 0
  br i1 %cmp1594.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %if.end11.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %src_addr.095 = phi i32 [ %add23, %if.end20.for.body_crit_edge ], [ %dma_addr, %if.end11.for.body_crit_edge ]
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx = getelementptr %struct.axi_dma_hw_desc, ptr %30, i32 %i.096
  %call17 = tail call fastcc i32 @dw_axi_dma_set_hw_desc(ptr noundef %add.ptr.i.i, ptr noundef %arrayidx, i32 noundef %src_addr.095, i32 noundef %div5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then36, label %if.end20

if.end20:                                         ; preds = %for.body
  %len = getelementptr %struct.axi_dma_hw_desc, ptr %30, i32 %i.096, i32 2
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 8
  %add22 = add i32 %34, %32
  store i32 %add22, ptr %length, align 8
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %ctl_hi.i = getelementptr inbounds %struct.axi_dma_lli, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %ctl_hi.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ctl_hi.i, align 1
  %39 = or i32 %38, 64
  store i32 %39, ptr %ctl_hi.i, align 1
  %add23 = add i32 %src_addr.095, %div5
  %inc = add nuw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %if.end11.for.end_crit_edge
  %40 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i.i, align 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.end
  %total_segments.0 = phi i32 [ %mul, %for.end ], [ %dec, %do.body.do.body_crit_edge ]
  %.pn = phi ptr [ %41, %for.end ], [ %arrayidx28, %do.body.do.body_crit_edge ]
  %llp.0.in.in = getelementptr inbounds %struct.axi_dma_hw_desc, ptr %.pn, i32 0, i32 1
  %42 = ptrtoint ptr %llp.0.in.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %llp.0.in87 = load i32, ptr %llp.0.in.in, align 4
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i.i, align 8
  %dec = add i32 %total_segments.0, -1
  %arrayidx28 = getelementptr %struct.axi_dma_hw_desc, ptr %44, i32 %dec
  %conv.i = zext i32 %llp.0.in87 to i64
  %45 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #12
  %46 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx28, align 4
  %llp.i = getelementptr inbounds %struct.axi_dma_lli, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %llp.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %45, ptr %llp.i, align 1
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  tail call fastcc void @dw_axi_dma_set_hw_channel(ptr noundef %add.ptr.i.i, i1 noundef zeroext true)
  %vd = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %dchan) #12
  %flags2.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %flags, ptr %flags2.i, align 8
  %tx_submit.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %50 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %51 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 8
  %tx_result.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tx_result.i, align 8
  %residue.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %53 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %55, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i88, label %do.end.vchan_tx_prep.exit_crit_edge

do.end.vchan_tx_prep.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i88:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %node.i, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %desc_allocated.i, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.axi_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %node.i, ptr %55, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i88, %do.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @axi_desc_put(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %vchan_tx_prep.exit, %if.then4.i, %if.end.cleanup_crit_edge, %calculate_block_len.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vd, %vchan_tx_prep.exit ], [ null, %calculate_block_len.exit.cleanup_crit_edge ], [ null, %if.then36 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then4.i ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axi_dma_resume(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgr_clk = getelementptr inbounds %struct.axi_dma_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %cfgr_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgr_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %1) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %core_clk = getelementptr inbounds %struct.axi_dma_chip, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_clk, align 4
  %call.i11 = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %if.end.clk_prepare_enable.exit18_crit_edge

if.end.clk_prepare_enable.exit18_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit18

if.end.i15:                                       ; preds = %if.end
  %call1.i13 = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool2.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool2.not.i14, label %if.end.i15.if.end4_crit_edge, label %if.then3.i16

if.end.i15.if.end4_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %clk_prepare_enable.exit18

clk_prepare_enable.exit18:                        ; preds = %if.then3.i16, %if.end.clk_prepare_enable.exit18_crit_edge
  %retval.0.i17 = phi i32 [ %call.i11, %if.end.clk_prepare_enable.exit18_crit_edge ], [ %call1.i13, %if.then3.i16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i17)
  %cmp2 = icmp slt i32 %retval.0.i17, 0
  br i1 %cmp2, label %clk_prepare_enable.exit18.cleanup_crit_edge, label %clk_prepare_enable.exit18.if.end4_crit_edge

clk_prepare_enable.exit18.if.end4_crit_edge:      ; preds = %clk_prepare_enable.exit18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

clk_prepare_enable.exit18.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %clk_prepare_enable.exit18.if.end4_crit_edge, %if.end.i15.if.end4_crit_edge
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %7) #12, !srcloc !154
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %13 = or i32 %12, 33554432
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i21 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i21, i32 %13) #12, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %clk_prepare_enable.exit18.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %retval.0.i17, %clk_prepare_enable.exit18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_dma_hw_init(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dw = getelementptr inbounds %struct.axi_dma_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw, align 4
  %hdata14 = getelementptr inbounds %struct.dw_axi_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdata14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdata14, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not = icmp eq i32 %5, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %35, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %chan = getelementptr inbounds %struct.dw_axi_dma, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan, align 4
  %chan_regs.i.i = getelementptr %struct.axi_dma_chan, ptr %8, i32 %i.016, i32 1
  %9 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !154
  %11 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dw, align 4
  %chan3 = getelementptr inbounds %struct.dw_axi_dma, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %chan3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan3, align 4
  %arrayidx4 = getelementptr %struct.axi_dma_chan, ptr %14, i32 %i.016
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #12, !srcloc !151
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id.i = getelementptr %struct.axi_dma_chan, ptr %14, i32 %i.016, i32 2
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %22 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx4, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  %shl6.pn.v.i = select i1 %tobool.not.i, i32 16, i32 8
  %shl6.pn.i = shl i32 %shl.i, %shl6.pn.v.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %20, %neg.i
  %val.0.i = or i32 %shl6.pn.i, %and.i
  %regs.i21.i = getelementptr inbounds %struct.axi_dma_chip, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %regs.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %33) #12, !srcloc !154
  %inc = add nuw i32 %i.016, 1
  %34 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dw, align 4
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdata, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %41, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %do.end

dma_set_mask_and_coherent.exit.thread:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %41, i64 noundef -1) #12
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.56) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %dma_set_mask_and_coherent.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_axi_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %conv = trunc i32 %3 to i8
  %hw_handshake_num = getelementptr i8, ptr %call, i32 -11
  %4 = ptrtoint ptr %hw_handshake_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %hw_handshake_num, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_chan_handle_err(ptr noundef %chan, i32 noundef %status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !151
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %shl6.pn.v.i = select i1 %tobool.not.i, i32 16, i32 8
  %shl6.pn.i = shl i32 %shl.i, %shl6.pn.v.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %5, %neg.i
  %val.0.i = or i32 %shl6.pn.i, %and.i
  %regs.i21.i = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %18) #12, !srcloc !154
  %desc_issued.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 6
  %19 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %20, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %20, i32 -108
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %27 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 0, i32 5
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %list_del.exit.axi_chan_name.exit_crit_edge

list_del.exit.axi_chan_name.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %list_del.exit.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %34, %if.end.i.i.i ], [ %32, %list_del.exit.axi_chan_name.exit_crit_edge ]
  %35 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %spec.select.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i.i, i32 noundef %36, i32 noundef %status) #15
  %add.ptr.i25 = getelementptr i8, ptr %spec.select.i, i32 -4
  %descs_allocated.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %descs_allocated.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %descs_allocated.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %descs_allocated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp4.i = icmp sgt i32 %38, 0
  br i1 %cmp4.i, label %axi_chan_name.exit.for.body.i_crit_edge, label %axi_chan_name.exit.axi_chan_list_dump_lli.exit_crit_edge

axi_chan_name.exit.axi_chan_list_dump_lli.exit_crit_edge: ; preds = %axi_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_list_dump_lli.exit

axi_chan_name.exit.for.body.i_crit_edge:          ; preds = %axi_chan_name.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %axi_chan_name.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %axi_chan_name.exit.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %add.ptr.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i25, align 4
  %arrayidx.i = getelementptr %struct.axi_dma_hw_desc, ptr %40, i32 %i.05.i
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %44, align 1
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #12
  %dar.i.i = getelementptr inbounds %struct.axi_dma_lli, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %dar.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %dar.i.i, align 1
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #12
  %llp.i.i = getelementptr inbounds %struct.axi_dma_lli, ptr %44, i32 0, i32 4
  %51 = ptrtoint ptr %llp.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %llp.i.i, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52) #12
  %block_ts_lo.i.i = getelementptr inbounds %struct.axi_dma_lli, ptr %44, i32 0, i32 2
  %54 = ptrtoint ptr %block_ts_lo.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %block_ts_lo.i.i, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #12
  %ctl_hi.i.i = getelementptr inbounds %struct.axi_dma_lli, ptr %44, i32 0, i32 6
  %57 = ptrtoint ptr %ctl_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %ctl_hi.i.i, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  %ctl_lo.i.i = getelementptr inbounds %struct.axi_dma_lli, ptr %44, i32 0, i32 5
  %60 = ptrtoint ptr %ctl_lo.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %ctl_lo.i.i, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i.i, ptr noundef nonnull @.str.24, i64 noundef %47, i64 noundef %50, i64 noundef %53, i32 noundef %56, i32 noundef %59, i32 noundef %62) #15
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %38
  br i1 %exitcond.not.i, label %for.body.i.axi_chan_list_dump_lli.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.axi_chan_list_dump_lli.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_list_dump_lli.exit

axi_chan_list_dump_lli.exit:                      ; preds = %for.body.i.axi_chan_list_dump_lli.exit_crit_edge, %axi_chan_name.exit.axi_chan_list_dump_lli.exit_crit_edge
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %spec.select.i, i32 0, i32 3
  %63 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chan.i, align 4
  %65 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %spec.select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i.i = icmp slt i32 %66, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !149

do.body2.i.i:                                     ; preds = %axi_chan_list_dump_lli.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw-axi-dmac/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !162
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %axi_chan_list_dump_lli.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %64, i32 0, i32 3
  %67 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %completed_cookie.i.i, align 4
  %68 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %spec.select.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_chan_handle_err, %do.end.i)) #12
          to label %if.then.i [label %do.end.i], !srcloc !157

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %64, align 4
  %dev.i26 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 15
  %71 = ptrtoint ptr %dev.i26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %72, ptr noundef nonnull @.str.28, ptr noundef %spec.select.i, i32 noundef %66) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %64, i32 0, i32 7
  %prev.i.i27 = getelementptr inbounds %struct.virt_dma_chan, ptr %64, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i27, align 4
  %call.i.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %74, ptr noundef %desc_completed.i) #12
  br i1 %call.i.i.i28, label %if.end.i.i.i29, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i29:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %node, ptr %prev.i.i27, align 4
  %76 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %desc_completed.i, ptr %node, align 4
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %node, ptr %74, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i29, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %64, i32 0, i32 1, i32 1
  %call.i.i30 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool.not.i.i = icmp eq i32 %call.i.i30, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %64, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #12
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %79 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %80, %desc_issued.i
  %add.ptr.i.i31 = getelementptr i8, ptr %80, i32 -108
  %tobool.not19.i = icmp eq ptr %add.ptr.i.i31, null
  %tobool.not.i32 = or i1 %cmp.not.i.i, %tobool.not19.i
  br i1 %tobool.not.i32, label %vchan_cookie_complete.exit.axi_chan_start_first_queued.exit_crit_edge, label %if.end.i

vchan_cookie_complete.exit.axi_chan_start_first_queued.exit_crit_edge: ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_start_first_queued.exit

if.end.i:                                         ; preds = %vchan_cookie_complete.exit
  %add.ptr.i17.i = getelementptr i8, ptr %80, i32 -112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axi_chan_start_first_queued.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_chan_handle_err, %do.end.i35)) #12
          to label %if.then7.i [label %do.end.i35], !srcloc !157

if.then7.i:                                       ; preds = %if.end.i
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %device.i.i34 = getelementptr inbounds %struct.dma_chan_dev, ptr %82, i32 0, i32 1
  %init_name.i.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %82, i32 0, i32 1, i32 3
  %83 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then7.i.axi_chan_name.exit.i_crit_edge

if.then7.i.axi_chan_name.exit.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %device.i.i34 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device.i.i34, align 4
  br label %axi_chan_name.exit.i

axi_chan_name.exit.i:                             ; preds = %if.end.i.i.i.i, %if.then7.i.axi_chan_name.exit.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %86, %if.end.i.i.i.i ], [ %84, %if.then7.i.axi_chan_name.exit.i_crit_edge ]
  %87 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i.i31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axi_chan_start_first_queued.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i34, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i.i.i, i32 noundef %88) #12
  br label %do.end.i35

do.end.i35:                                       ; preds = %axi_chan_name.exit.i, %if.end.i
  tail call fastcc void @axi_chan_block_xfer_start(ptr noundef %chan, ptr noundef %add.ptr.i17.i) #12
  br label %axi_chan_start_first_queued.exit

axi_chan_start_first_queued.exit:                 ; preds = %do.end.i35, %vchan_cookie_complete.exit.axi_chan_start_first_queued.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_chan_block_xfer_complete(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %descs_allocated = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %descs_allocated, i32 noundef 4) #12
  %0 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %descs_allocated, align 4
  %lock = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !151
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.end10, !prof !163

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end10:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end10.axi_chan_name.exit_crit_edge

do.end10.axi_chan_name.exit_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %do.end10.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end10.axi_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i.i) #15
  tail call fastcc void @axi_chan_disable(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %axi_chan_name.exit, %entry.if.end_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %17, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %17, i32 -108
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %cyclic = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 10
  %18 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cyclic, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  %add.ptr.i64 = getelementptr i8, ptr %spec.select.i, i32 -4
  %tobool18.not = icmp eq ptr %add.ptr.i64, null
  br i1 %tobool18.not, label %if.then16.if.end36_crit_edge, label %if.then19

if.then16.if.end36_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then19:                                        ; preds = %if.then16
  %chan_regs = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 1
  %20 = ptrtoint ptr %chan_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan_regs, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !164
  %add.ptr.i65 = getelementptr i8, ptr %21, i32 44
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  %24 = zext i32 %23 to i64
  %25 = zext i32 %22 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2186 = icmp sgt i32 %1, 0
  br i1 %cmp2186, label %for.body.lr.ph, label %if.then19.for.end_crit_edge

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then19
  %29 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i64, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %llp24 = getelementptr %struct.axi_dma_hw_desc, ptr %30, i32 %i.087, i32 1
  %31 = ptrtoint ptr %llp24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %llp24, align 4
  %conv25 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv25)
  %cmp26 = icmp eq i64 %28, %conv25
  br i1 %cmp26, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.axi_dma_hw_desc, ptr %30, i32 %i.087
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %status_lo = getelementptr inbounds %struct.axi_dma_lli, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %status_lo to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %status_lo, align 1
  %37 = ptrtoint ptr %chan_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan_regs, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %38, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 %39) #12, !srcloc !154
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %ctl_hi = getelementptr inbounds %struct.axi_dma_lli, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %ctl_hi to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %ctl_hi, align 1
  %or = or i32 %43, -2147483648
  store i32 %or, ptr %ctl_hi, align 1
  %completed_blocks = getelementptr i8, ptr %spec.select.i, i32 120
  %44 = ptrtoint ptr %completed_blocks to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.087, ptr %completed_blocks, align 4
  %len = getelementptr %struct.axi_dma_hw_desc, ptr %30, i32 %i.087, i32 2
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %add = add nuw nsw i32 %i.087, 1
  %mul = mul i32 %46, %add
  %period_len = getelementptr i8, ptr %spec.select.i, i32 128
  %47 = ptrtoint ptr %period_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %period_len, align 4
  %rem = urem i32 %mul, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp30 = icmp eq i32 %rem, 0
  br i1 %cmp30, label %if.then32, label %if.then28.for.end_crit_edge

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then32:                                        ; preds = %if.then28
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %spec.select.i, i32 0, i32 3
  %49 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %spec.select.i, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 1, i32 1
  %call.i.i67 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool.not.i.i = icmp eq i32 %call.i.i67, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then32.for.end_crit_edge

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i.i, %if.then32.for.end_crit_edge, %if.then28.for.end_crit_edge, %if.then19.for.end_crit_edge
  %52 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan, align 4
  %regs.i.i68 = getelementptr inbounds %struct.axi_dma_chip, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %regs.i.i68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i68, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %55, i32 24
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %57 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i = icmp eq i8 %64, 0
  %65 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id.i, align 4
  %conv9.i = zext i8 %66 to i32
  %shl10.i = shl nuw i32 1, %conv9.i
  %..i = select i1 %tobool.not.i, i32 16, i32 8
  %shl15.i = shl i32 %shl10.i, %..i
  %67 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  %or16.i = or i32 %shl10.i, %67
  %val.0.i = or i32 %or16.i, %shl15.i
  %regs.i27.i = getelementptr inbounds %struct.axi_dma_chip, ptr %58, i32 0, i32 2
  %68 = ptrtoint ptr %regs.i27.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i27.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %70 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %70) #12, !srcloc !154
  br label %if.end36

if.else:                                          ; preds = %if.end
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %call.i.i70 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i70, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %77 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan.i71 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %spec.select.i, i32 0, i32 3
  %79 = ptrtoint ptr %chan.i71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chan.i71, align 4
  %81 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %spec.select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i.i = icmp slt i32 %82, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !149

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw-axi-dmac/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !162
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %80, i32 0, i32 3
  %83 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %completed_cookie.i.i, align 4
  %84 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %spec.select.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_chan_block_xfer_complete, %do.end.i)) #12
          to label %if.then.i [label %do.end.i], !srcloc !157

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %80, align 4
  %dev.i72 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %88, ptr noundef nonnull @.str.28, ptr noundef %spec.select.i, i32 noundef %82) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 7
  %prev.i.i73 = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 7, i32 1
  %89 = ptrtoint ptr %prev.i.i73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i73, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %90, ptr noundef %desc_completed.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i74, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i74:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %prev.i.i73 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %node, ptr %prev.i.i73, align 4
  %92 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %desc_completed.i, ptr %node, align 4
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %node, ptr %90, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i74, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i75 = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 1, i32 1
  %call.i.i76 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %call.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.then.i.i79, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_cookie_complete.exit

if.then.i.i79:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %task.i78 = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i78) #12
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i79, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %95 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %96, %desc_issued.i
  %add.ptr.i.i80 = getelementptr i8, ptr %96, i32 -108
  %tobool.not19.i = icmp eq ptr %add.ptr.i.i80, null
  %tobool.not.i81 = or i1 %cmp.not.i.i, %tobool.not19.i
  br i1 %tobool.not.i81, label %vchan_cookie_complete.exit.if.end36_crit_edge, label %if.end.i

vchan_cookie_complete.exit.if.end36_crit_edge:    ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end.i:                                         ; preds = %vchan_cookie_complete.exit
  %add.ptr.i17.i = getelementptr i8, ptr %96, i32 -112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axi_chan_start_first_queued.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_chan_block_xfer_complete, %do.end.i84)) #12
          to label %if.then7.i [label %do.end.i84], !srcloc !157

if.then7.i:                                       ; preds = %if.end.i
  %dev.i.i82 = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 0, i32 5
  %97 = ptrtoint ptr %dev.i.i82 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i.i82, align 4
  %device.i.i83 = getelementptr inbounds %struct.dma_chan_dev, ptr %98, i32 0, i32 1
  %init_name.i.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %98, i32 0, i32 1, i32 3
  %99 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then7.i.axi_chan_name.exit.i_crit_edge

if.then7.i.axi_chan_name.exit.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %device.i.i83 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device.i.i83, align 4
  br label %axi_chan_name.exit.i

axi_chan_name.exit.i:                             ; preds = %if.end.i.i.i.i, %if.then7.i.axi_chan_name.exit.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %102, %if.end.i.i.i.i ], [ %100, %if.then7.i.axi_chan_name.exit.i_crit_edge ]
  %103 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i.i80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axi_chan_start_first_queued.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i83, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i.i.i, i32 noundef %104) #12
  br label %do.end.i84

do.end.i84:                                       ; preds = %axi_chan_name.exit.i, %if.end.i
  tail call fastcc void @axi_chan_block_xfer_start(ptr noundef %chan, ptr noundef %add.ptr.i17.i) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.i84, %vchan_cookie_complete.exit.if.end36_crit_edge, %for.end, %if.then16.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_chan_disable(ptr nocapture noundef readonly %chan) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %regs.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !151
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %id = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %dw = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dw, align 4
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdata, align 4
  %reg_map_8_channels = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %reg_map_8_channels to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_map_8_channels, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %shl6.pn.v = select i1 %tobool.not, i32 16, i32 8
  %shl6.pn = shl i32 %shl, %shl6.pn.v
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %val.0 = or i32 %shl6.pn, %and
  %regs.i21 = getelementptr inbounds %struct.axi_dma_chip, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i21, align 4
  %add.ptr.i22 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %val.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %18) #12, !srcloc !154
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_chan_block_xfer_start(ptr noundef readonly %chan, ptr nocapture noundef readonly %first) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dw = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw, align 4
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdata, align 4
  %id = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.dw_axi_dma_hcfg, ptr %5, i32 0, i32 4, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %regs.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !151
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 4
  %conv.i = zext i8 %15 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %do.end, !prof !163

do.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.axi_chan_name.exit_crit_edge

do.end.axi_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %do.end.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %21, %if.end.i.i.i ], [ %19, %do.end.axi_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i.i.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  %regs.i.i62 = getelementptr inbounds %struct.axi_dma_chip, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i62, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i63) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %27 = or i32 %26, 16777216
  %28 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i62, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %27) #12, !srcloc !154
  %direction = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 9
  %30 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %direction, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %31, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan, align 4
  %apb_regs.i = getelementptr inbounds %struct.axi_dma_chip, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %apb_regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %apb_regs.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_axi_dma_set_byte_halfword.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_chan_block_xfer_start, %dw_axi_dma_set_byte_halfword.exit)) #12
          to label %if.then6.i [label %dw_axi_dma_set_byte_halfword.exit], !srcloc !157

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_axi_dma_set_byte_halfword.__UNIQUE_ID_ddebug240, ptr noundef %40, ptr noundef nonnull @.str.34) #12
  br label %dw_axi_dma_set_byte_halfword.exit

if.end8.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %dst_addr_width.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 8, i32 4
  %41 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst_addr_width.i, align 4
  %43 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.i = icmp eq i32 %43, 2
  %spec.select.i = select i1 %cmp.i, i32 32, i32 28
  %add.ptr.i = getelementptr i8, ptr %36, i32 %spec.select.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !151
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %id, align 4
  %conv.i65 = zext i8 %47 to i32
  %shl.i66 = shl nuw i32 1, %conv.i65
  %or.i = or i32 %shl.i66, %45
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan, align 4
  %apb_regs22.i = getelementptr inbounds %struct.axi_dma_chip, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %apb_regs22.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %apb_regs22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %51, i32 %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %52) #12, !srcloc !154
  br label %dw_axi_dma_set_byte_halfword.exit

dw_axi_dma_set_byte_halfword.exit:                ; preds = %if.end8.i, %if.then6.i, %do.body.i
  %device_fc = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 8, i32 9
  %53 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %device_fc, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool7.not = icmp eq i8 %54, 0
  %conv9 = select i1 %tobool7.not, i8 1, i8 6
  %55 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chan, align 4
  %apb_regs = getelementptr inbounds %struct.axi_dma_chip, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %apb_regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %apb_regs, align 4
  %tobool12.not = icmp eq ptr %58, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %dw_axi_dma_set_byte_halfword.exit
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %id, align 4
  br label %sw.epilog

if.else:                                          ; preds = %dw_axi_dma_set_byte_halfword.exit
  call void @__sanitizer_cov_trace_pc() #14
  %hw_handshake_num = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 3
  %61 = ptrtoint ptr %hw_handshake_num to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %hw_handshake_num, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %device_fc19 = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 8, i32 9
  %63 = ptrtoint ptr %device_fc19 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %device_fc19, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool20.not = icmp eq i8 %64, 0
  %conv23 = select i1 %tobool20.not, i8 2, i8 4
  %65 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chan, align 4
  %apb_regs26 = getelementptr inbounds %struct.axi_dma_chip, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %apb_regs26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %apb_regs26, align 4
  %tobool27.not = icmp eq ptr %68, null
  br i1 %tobool27.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %id, align 4
  br label %sw.epilog

if.else30:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  %hw_handshake_num31 = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 3
  %71 = ptrtoint ptr %hw_handshake_num31 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hw_handshake_num31, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else30, %if.then28, %if.else, %if.then13, %if.end.sw.epilog_crit_edge
  %config.sroa.7.0 = phi i8 [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %if.else30 ], [ 0, %if.then28 ], [ %62, %if.else ], [ %60, %if.then13 ]
  %config.sroa.15.0 = phi i8 [ 0, %if.end.sw.epilog_crit_edge ], [ %conv23, %if.else30 ], [ %conv23, %if.then28 ], [ %conv9, %if.else ], [ %conv9, %if.then13 ]
  %config.sroa.11.0 = phi i8 [ 0, %if.end.sw.epilog_crit_edge ], [ %72, %if.else30 ], [ %70, %if.then28 ], [ 0, %if.else ], [ 0, %if.then13 ]
  %73 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chan, align 4
  %dw.i = getelementptr inbounds %struct.axi_dma_chip, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dw.i, align 4
  %hdata.i = getelementptr inbounds %struct.dw_axi_dma, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %hdata.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hdata.i, align 4
  %reg_map_8_channels.i = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %reg_map_8_channels.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %reg_map_8_channels.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i71 = icmp eq i8 %80, 0
  br i1 %tobool.not.i71, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i = zext i8 %config.sroa.15.0 to i32
  %conv11.i = zext i8 %config.sroa.11.0 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 7
  %or13.i = or i32 %shl12.i, %conv3.i
  br label %axi_chan_config_write.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %conv21.i = zext i8 %config.sroa.11.0 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 4
  %conv24.i = zext i8 %config.sroa.7.0 to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 11
  %or26.i = or i32 %shl25.i, %shl22.i
  %or27.i = or i32 %or26.i, 15
  %conv29.i = zext i8 %config.sroa.15.0 to i32
  br label %axi_chan_config_write.exit

axi_chan_config_write.exit:                       ; preds = %if.else.i, %if.then.i
  %hs_sel_dst35.sink.i.sroa.speculated = phi i8 [ 0, %if.else.i ], [ %config.sroa.7.0, %if.then.i ]
  %.sink62.i = phi i32 [ 4, %if.else.i ], [ 12, %if.then.i ]
  %or34.sink.i = phi i32 [ %conv29.i, %if.else.i ], [ %or13.i, %if.then.i ]
  %.sink.i = phi i32 [ 20, %if.else.i ], [ 17, %if.then.i ]
  %cfg_lo.0.i = phi i32 [ %or27.i, %if.else.i ], [ 15, %if.then.i ]
  %conv36.i = zext i8 %hs_sel_dst35.sink.i.sroa.speculated to i32
  %shl37.i = shl nuw nsw i32 %conv36.i, %.sink62.i
  %or38.i = or i32 %or34.sink.i, %shl37.i
  %conv40.i = and i32 %9, 255
  %shl41.i = shl nuw nsw i32 %conv40.i, %.sink.i
  %or42.i = or i32 %or38.i, %shl41.i
  %chan_regs.i.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 1
  %81 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %82, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %83 = tail call i32 @llvm.bswap.i32(i32 %cfg_lo.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %83) #12, !srcloc !154
  %84 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %85, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %86 = tail call i32 @llvm.bswap.i32(i32 %or42.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %86) #12, !srcloc !154
  %87 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %first, align 4
  %llp = getelementptr inbounds %struct.axi_dma_hw_desc, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %llp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %llp, align 4
  %91 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %92, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %93 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i74, i32 %93) #12, !srcloc !154
  %94 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %95, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #12, !srcloc !154
  %96 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %97, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76, i32 -494977280) #12, !srcloc !154
  %98 = ptrtoint ptr %chan_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chan_regs.i.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %99, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 -494977248) #12, !srcloc !154
  %100 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %chan, align 4
  %regs.i.i79 = getelementptr inbounds %struct.axi_dma_chip, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %regs.i.i79 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %103, i32 24
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %105 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %chan, align 4
  %dw.i81 = getelementptr inbounds %struct.axi_dma_chip, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %dw.i81 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dw.i81, align 4
  %hdata.i82 = getelementptr inbounds %struct.dw_axi_dma, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %hdata.i82 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hdata.i82, align 4
  %reg_map_8_channels.i83 = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %reg_map_8_channels.i83 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %reg_map_8_channels.i83, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i84 = icmp eq i8 %112, 0
  %113 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %id, align 4
  %conv9.i = zext i8 %114 to i32
  %shl10.i = shl nuw i32 1, %conv9.i
  %..i = select i1 %tobool.not.i84, i32 16, i32 8
  %shl15.i = shl i32 %shl10.i, %..i
  %115 = tail call i32 @llvm.bswap.i32(i32 %104) #12
  %or16.i = or i32 %shl10.i, %115
  %val.0.i = or i32 %or16.i, %shl15.i
  %regs.i27.i = getelementptr inbounds %struct.axi_dma_chip, ptr %106, i32 0, i32 2
  %116 = ptrtoint ptr %regs.i27.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i27.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %117, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %118 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %118) #12, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %axi_chan_config_write.exit, %axi_chan_name.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_desc_put(ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.axi_dma_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %descs_allocated = getelementptr inbounds %struct.axi_dma_chan, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %descs_allocated, i32 noundef 4) #12
  %2 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %descs_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29 = icmp sgt i32 %3, 0
  br i1 %cmp29, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %desc_pool = getelementptr inbounds %struct.axi_dma_chan, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %descs_put.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %struct.axi_dma_hw_desc, ptr %5, i32 %descs_put.030
  %6 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_pool, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %llp = getelementptr %struct.axi_dma_hw_desc, ptr %5, i32 %descs_put.030, i32 1
  %10 = ptrtoint ptr %llp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %llp, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #12
  %inc = add nuw nsw i32 %descs_put.030, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %descs_put.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %3, %for.body.for.end_crit_edge ]
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  tail call void @kfree(ptr noundef %13) #12
  tail call void @kfree(ptr noundef %desc) #12
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %descs_allocated, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %descs_allocated, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %descs_allocated, ptr %descs_allocated, i32 %descs_put.0.lcssa, ptr elementtype(i32) %descs_allocated) #12, !srcloc !166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axi_desc_put.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_desc_put, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !157

if.then:                                          ; preds = %for.end
  %dev.i = getelementptr inbounds %struct.axi_dma_chan, ptr %1, i32 0, i32 6, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.axi_chan_name.exit_crit_edge

if.then.axi_chan_name.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_chan_name.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  br label %axi_chan_name.exit

axi_chan_name.exit:                               ; preds = %if.end.i.i.i, %if.then.axi_chan_name.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %20, %if.end.i.i.i ], [ %18, %if.then.axi_chan_name.exit_crit_edge ]
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %descs_allocated, i32 noundef 4) #12
  %21 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %descs_allocated, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axi_desc_put.__UNIQUE_ID_ddebug239, ptr noundef %device.i, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i.i, i32 noundef %descs_put.0.lcssa, i32 noundef %22) #12
  br label %do.end

do.end:                                           ; preds = %axi_chan_name.exit, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_axi_dma_set_hw_channel(ptr nocapture noundef readonly %chan, i1 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %apb_regs = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %apb_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %set, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %hw_handshake_num = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %hw_handshake_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_handshake_num, align 1
  %conv = zext i8 %7 to i32
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %val.0 = phi i32 [ %conv, %if.then3 ], [ 63, %if.end.if.end4_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !164
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  %10 = call i32 @llvm.bswap.i32(i32 %8)
  %id = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 2
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 4
  %conv7 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv7, 3
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %shl11 = shl i32 %val.0, %mul
  %or = or i32 %and, %shl11
  %13 = ptrtoint ptr %apb_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %apb_regs, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %15) #12, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %add.ptr.i25 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #12, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_axi_dma_set_hw_desc(ptr noundef %chan, ptr nocapture noundef %hw_desc, i32 noundef %mem_addr, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dw = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw, align 4
  %hdata = getelementptr inbounds %struct.dw_axi_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdata, align 4
  %m_data_width = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %m_data_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_data_width, align 4
  %shl = shl nuw i32 1, %7
  %id = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %struct.dw_axi_dma_hcfg, ptr %5, i32 0, i32 3, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %len, %mem_addr
  %or4 = or i32 %or, %shl
  %12 = tail call i32 @llvm.cttz.i32(i32 %or4, i1 true) #12, !range !161
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 2)
  %and = and i32 %mem_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54) #15
  br label %cleanup

if.end8:                                          ; preds = %entry
  %direction = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 9
  %16 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %direction, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %17, label %if.end8.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %dst_addr_width = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 8, i32 4
  %19 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_addr_width, align 4
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 false) #12, !range !161
  %dst_addr = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 8, i32 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %src_addr_width = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_addr_width, align 4
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #12, !range !161
  %src_addr = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb
  %shl21.sink.in = phi i32 [ %13, %sw.bb16 ], [ %21, %sw.bb ]
  %.sink = phi i32 [ 16, %sw.bb16 ], [ 64, %sw.bb ]
  %device_addr.0.in = phi ptr [ %src_addr, %sw.bb16 ], [ %dst_addr, %sw.bb ]
  %call18.pn = phi i32 [ %24, %sw.bb16 ], [ %13, %sw.bb ]
  %shl21.sink = shl nuw nsw i32 %shl21.sink.in, 11
  %shl20.sink = shl nuw nsw i32 %call18.pn, 8
  %or22 = or i32 %shl21.sink, %shl20.sink
  %or24 = or i32 %or22, %.sink
  %block_ts.0 = lshr i32 %len, %call18.pn
  %25 = ptrtoint ptr %device_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %device_addr.0 = load i32, ptr %device_addr.0.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %block_ts.0, i32 %11)
  %cmp26 = icmp ugt i32 %block_ts.0, %11
  br i1 %cmp26, label %sw.epilog.cleanup_crit_edge, label %if.end28

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #12
  %26 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %phys.i, align 4, !annotation !156
  %desc_pool.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef 2304, ptr noundef nonnull %phys.i) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end35, !prof !149

do.end.i:                                         ; preds = %if.end28
  %dev.i.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 6, i32 0, i32 5
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  %init_name.i.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.axi_desc_get.exit.thread_crit_edge

do.end.i.axi_desc_get.exit.thread_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axi_desc_get.exit.thread

if.end.i.i.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i.i, align 4
  br label %axi_desc_get.exit.thread

axi_desc_get.exit.thread:                         ; preds = %if.end.i.i.i.i, %do.end.i.axi_desc_get.exit.thread_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %34, %if.end.i.i.i.i ], [ %32, %do.end.i.axi_desc_get.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #12
  %35 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %hw_desc, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %llp = getelementptr inbounds %struct.axi_dma_hw_desc, ptr %hw_desc, i32 0, i32 1
  %descs_allocated.i = getelementptr inbounds %struct.axi_dma_chan, ptr %chan, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %descs_allocated.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %descs_allocated.i, i32 1, i32 3, i32 1) #12
  %36 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %descs_allocated.i, ptr %descs_allocated.i, i32 1, ptr elementtype(i32) %descs_allocated.i) #12, !srcloc !150
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys.i, align 4
  %39 = ptrtoint ptr %llp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %llp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #12
  %40 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %hw_desc, align 4
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chan, align 4
  %dw37 = getelementptr inbounds %struct.axi_dma_chip, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %dw37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dw37, align 4
  %hdata38 = getelementptr inbounds %struct.dw_axi_dma, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %hdata38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdata38, align 4
  %restrict_axi_burst_len = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %restrict_axi_burst_len to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %restrict_axi_burst_len, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool39.not = icmp eq i8 %48, 0
  br i1 %tobool39.not, label %if.end35.if.end49_crit_edge, label %if.then40

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %axi_rw_burst_len = getelementptr inbounds %struct.dw_axi_dma_hcfg, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %axi_rw_burst_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %axi_rw_burst_len, align 4
  %shl44 = shl i32 %50, 7
  %shl46 = shl i32 %50, 16
  %or45 = or i32 %shl46, %shl44
  %or48 = or i32 %or45, -2147450816
  br label %if.end49

if.end49:                                         ; preds = %if.then40, %if.end35.if.end49_crit_edge
  %ctlhi.0 = phi i32 [ %or48, %if.then40 ], [ -2147483648, %if.end35.if.end49_crit_edge ]
  %51 = call i32 @llvm.bswap.i32(i32 %ctlhi.0)
  %ctl_hi = getelementptr inbounds %struct.axi_dma_lli, ptr %call.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %ctl_hi to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %ctl_hi, align 1
  %53 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp52 = icmp eq i32 %54, 1
  %mem_addr.device_addr.0 = select i1 %cmp52, i32 %mem_addr, i32 %device_addr.0
  %device_addr.0.mem_addr = select i1 %cmp52, i32 %device_addr.0, i32 %mem_addr
  %conv.i107 = zext i32 %mem_addr.device_addr.0 to i64
  %55 = call i64 @llvm.bswap.i64(i64 %conv.i107) #12
  %56 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_desc, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %55, ptr %57, align 1
  %conv.i108 = zext i32 %device_addr.0.mem_addr to i64
  %59 = call i64 @llvm.bswap.i64(i64 %conv.i108) #12
  %60 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_desc, align 4
  %dar.i109 = getelementptr inbounds %struct.axi_dma_lli, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %dar.i109 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %59, ptr %dar.i109, align 1
  %sub = add i32 %block_ts.0, -1
  %63 = call i32 @llvm.bswap.i32(i32 %sub)
  %64 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_desc, align 4
  %block_ts_lo = getelementptr inbounds %struct.axi_dma_lli, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %block_ts_lo to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %63, ptr %block_ts_lo, align 1
  %or56 = or i32 %or24, 278528
  %67 = call i32 @llvm.bswap.i32(i32 %or56)
  %68 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw_desc, align 4
  %ctl_lo = getelementptr inbounds %struct.axi_dma_lli, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %ctl_lo to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %67, ptr %ctl_lo, align 1
  %71 = load ptr, ptr %hw_desc, align 4
  %ctl_lo.i = getelementptr inbounds %struct.axi_dma_lli, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %ctl_lo.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %ctl_lo.i, align 1
  %74 = and i32 %73, -16777217
  store i32 %74, ptr %ctl_lo.i, align 1
  %len58 = getelementptr inbounds %struct.axi_dma_hw_desc, ptr %hw_desc, i32 0, i32 2
  %75 = ptrtoint ptr %len58 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %len, ptr %len58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %axi_desc_get.exit.thread, %sw.epilog.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -22, %do.end ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -12, %axi_desc_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_dma_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i.i.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %5 = and i32 %4, -33554433
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %5) #12, !srcloc !154
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #12, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i3.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i, i32 %11) #12, !srcloc !154
  %core_clk.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #12
  tail call void @clk_unprepare(ptr noundef %15) #12
  %cfgr_clk.i = getelementptr inbounds %struct.axi_dma_chip, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %cfgr_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfgr_clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #12
  tail call void @clk_unprepare(ptr noundef %17) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_dma_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @axi_dma_resume(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__initcall__kmod_dw_axi_dmac_platform__247_1557_dw_driver_init6, !1, !"__initcall__kmod_dw_axi_dmac_platform__247_1557_dw_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1557, i32 1}
!2 = !{ptr @__exitcall_dw_driver_exit, !1, !"__exitcall_dw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file248, !4, !"__UNIQUE_ID_file248", i1 false, i1 false}
!4 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1559, i32 1}
!5 = !{ptr @__UNIQUE_ID_license249, !4, !"__UNIQUE_ID_license249", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description250, !7, !"__UNIQUE_ID_description250", i1 false, i1 false}
!7 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1560, i32 1}
!8 = !{ptr @__UNIQUE_ID_author251, !9, !"__UNIQUE_ID_author251", i1 false, i1 false}
!9 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1561, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1552, i32 11}
!12 = !{ptr @dw_driver, !13, !"dw_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1548, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1386, i32 36}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1392, i32 43}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1396, i32 43}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1490, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dw_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @dw_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1493, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dw_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @dw_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1287, i32 38}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1297, i32 38}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1305, i32 38}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1313, i32 44}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1324, i32 44}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1337, i32 38}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1101, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dw_axi_dma_interrupt.__UNIQUE_ID_ddebug245, !46, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1020, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @axi_chan_handle_err._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @axi_chan_handle_err._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 985, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @axi_chan_dump_lli._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @axi_chan_dump_lli._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/dw-axi-dmac/../virt-dma.h", i32 101, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !61, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 442, i32 2}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @axi_chan_start_first_queued.__UNIQUE_ID_ddebug241, !66, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 381, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @axi_chan_block_xfer_start._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @axi_chan_block_xfer_start._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 354, i32 3}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dw_axi_dma_set_byte_halfword.__UNIQUE_ID_ddebug240, !75, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1045, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @axi_chan_block_xfer_complete._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @axi_chan_block_xfer_complete._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 291, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @axi_desc_put.__UNIQUE_ID_ddebug239, !84, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1130, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dma_chan_terminate_all._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @dma_chan_terminate_all._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1147, i32 2}
!94 = !{ptr @dma_chan_terminate_all.__UNIQUE_ID_ddebug246, !93, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 521, i32 3}
!97 = !{ptr @dw_axi_dma_set_hw_channel._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dw_axi_dma_set_hw_channel._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 471, i32 3}
!101 = !{ptr @dma_chan_alloc_chan_resources._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @dma_chan_alloc_chan_resources._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 482, i32 3}
!105 = !{ptr @dma_chan_alloc_chan_resources._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @dma_chan_alloc_chan_resources._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 485, i32 2}
!109 = !{ptr @dma_chan_alloc_chan_resources.__UNIQUE_ID_ddebug242, !108, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 498, i32 3}
!112 = !{ptr @dma_chan_free_chan_resources._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @dma_chan_free_chan_resources._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 508, i32 2}
!116 = !{ptr @dma_chan_free_chan_resources.__UNIQUE_ID_ddebug243, !115, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 881, i32 2}
!119 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dma_chan_prep_dma_memcpy.__UNIQUE_ID_ddebug244, !118, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 265, i32 3}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @axi_desc_get._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @axi_desc_get._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 618, i32 3}
!128 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @dw_axi_dma_set_hw_desc._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @dw_axi_dma_set_hw_desc._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 224, i32 3}
!133 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @axi_dma_hw_init._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @axi_dma_hw_init._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @dw_dma_of_id_table, !137, !"dw_dma_of_id_table", i1 false, i1 false}
!137 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1541, i32 34}
!138 = !{ptr @dw_axi_dma_pm_ops, !139, !"dw_axi_dma_pm_ops", i1 false, i1 false}
!139 = !{!"../drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c", i32 1537, i32 32}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2148201711, i64 2148201737, i64 2148201766, i64 2148201800, i64 2148201831, i64 2148201854}
!151 = !{i64 6314478}
!152 = !{i64 2153854827}
!153 = !{i64 2153856182}
!154 = !{i64 6314060}
!155 = !{i8 0, i8 2}
!156 = !{!"auto-init"}
!157 = !{i64 2148795822, i64 2148795827, i64 2148795840, i64 2148795884, i64 2148795918, i64 2148795939}
!158 = !{i64 2154431415}
!159 = !{i64 2154543987}
!160 = !{i64 2154544501}
!161 = !{i32 0, i32 33}
!162 = !{i64 2154429900, i64 2154430402, i64 2154429937, i64 2154429993, i64 2154430027, i64 2154430051, i64 2154430092, i64 2154430113, i64 2154430141, i64 2154430175}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{i64 2154224114}
!165 = !{i64 2154224552}
!166 = !{i64 2148204176, i64 2148204202, i64 2148204231, i64 2148204265, i64 2148204296, i64 2148204319}
!167 = !{i64 2154224922}
!168 = !{i64 2154225295}
