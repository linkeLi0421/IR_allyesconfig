; ModuleID = '/llk/IR_all_yes/drivers/dma/xilinx/xilinx_dpdma.c_pt.bc'
source_filename = "../drivers/dma/xilinx/xilinx_dpdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xilinx_dpdma_debugfs = type { i32, i16, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xilinx_dpdma_debugfs_request = type { ptr, i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xilinx_dpdma_device = type { %struct.dma_device, ptr, ptr, i32, ptr, [6 x ptr], i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xilinx_dpdma_chan = type { %struct.virt_dma_chan, ptr, i32, %struct.wait_queue_head, i8, i8, i8, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.anon.75, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.anon.75 = type { ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.xilinx_dpdma_tx_desc = type { %struct.virt_dma_desc, ptr, %struct.list_head, i8 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dmaengine_result = type { i32, i32 }
%struct.xilinx_dpdma_sw_desc = type { %struct.xilinx_dpdma_hw_desc, %struct.list_head, i32, [244 x i8] }
%struct.xilinx_dpdma_hw_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [192 x i8] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_xilinx_dpdma__322_1775_xilinx_dpdma_driver_init6 = internal global ptr @xilinx_dpdma_driver_init, section ".initcall6.init", align 4
@xilinx_dpdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xilinx_dpdma_probe, ptr @xilinx_dpdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xilinx_dpdma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xilinx_dpdma_driver_exit = internal global ptr @xilinx_dpdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author323 = internal constant [33 x i8] c"xilinx_dpdma.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [52 x i8] c"xilinx_dpdma.description=Xilinx ZynqMP DPDMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [50 x i8] c"xilinx_dpdma.file=drivers/dma/xilinx/xilinx_dpdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [28 x i8] c"xilinx_dpdma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xilinx-zynqmp-dpdma\00", [44 x i8] zeroinitializer }, align 32
@xilinx_dpdma_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-dpdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_clk\00", [24 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get platform irq\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xilinx_dpdma_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/dma/xilinx/xilinx_dpdma.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry_ptr = internal global ptr @xilinx_dpdma_probe._entry, section ".printk_index", align 4
@xilinx_dpdma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1663, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry_ptr.9 = internal global ptr @xilinx_dpdma_probe._entry.7, section ".printk_index", align 4
@xilinx_dpdma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1696, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize channel %u\0A\00", [63 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry_ptr.12 = internal global ptr @xilinx_dpdma_probe._entry.10, section ".printk_index", align 4
@xilinx_dpdma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1703, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable the axi clock\0A\00", [32 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry_ptr.15 = internal global ptr @xilinx_dpdma_probe._entry.13, section ".printk_index", align 4
@xilinx_dpdma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1709, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register the dma device\0A\00", [61 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry_ptr.18 = internal global ptr @xilinx_dpdma_probe._entry.16, section ".printk_index", align 4
@xilinx_dpdma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1716, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register DMA to DT DMA helper\0A\00", [55 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry_ptr.21 = internal global ptr @xilinx_dpdma_probe._entry.19, section ".printk_index", align 4
@xilinx_dpdma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1724, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Xilinx DPDMA engine is probed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xilinx_dpdma_probe._entry_ptr.25 = internal global ptr @xilinx_dpdma_probe._entry.22, section ".printk_index", align 4
@xilinx_dpdma_chan_vsync_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 1, i8 17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xilinx_dpdma\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xilinx_dpdma_chan_vsync_irq\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"chan%u: vsync race lost (%u != %u), retrying\0A\00", [50 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.31, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/dma/xilinx/../virt-dma.h\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@xilinx_dpdma_chan_done_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 1057, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"chan%u: DONE IRQ with no active descriptor!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xilinx_dpdma_chan_done_irq\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_done_irq._entry_ptr = internal global ptr @xilinx_dpdma_chan_done_irq._entry, section ".printk_index", align 4
@dpdma_debugfs = internal global { %struct.xilinx_dpdma_debugfs, [20 x i8] } zeroinitializer, align 32
@xilinx_dpdma_chan_notify_no_ostand.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 -24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xilinx_dpdma_chan_notify_no_ostand\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"chan%u: %d outstanding transactions\0A\00", [59 x i8] zeroinitializer }, align 32
@xilinx_dpdma_handle_err_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@xilinx_dpdma_handle_err_irq.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 1, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xilinx_dpdma_handle_err_irq\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error irq: isr = 0x%08x, eisr = 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@xilinx_dpdma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 1238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"chan%u: failed to allocate a descriptor pool\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xilinx_dpdma_alloc_chan_resources\00", [62 x i8] zeroinitializer }, align 32
@xilinx_dpdma_alloc_chan_resources._entry_ptr = internal global ptr @xilinx_dpdma_alloc_chan_resources._entry, section ".printk_index", align 4
@xilinx_dpdma_chan_prep_interleaved_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 696, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"chan%u: buffer should be aligned at %d B\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xilinx_dpdma_chan_prep_interleaved_dma\00", [57 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_prep_interleaved_dma._entry_ptr = internal global ptr @xilinx_dpdma_chan_prep_interleaved_dma._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xilinx_dpdma_chan_wait_no_ostand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 967, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"chan%u: not ready to stop: %d trans\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xilinx_dpdma_chan_wait_no_ostand\00", [63 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_wait_no_ostand._entry_ptr = internal global ptr @xilinx_dpdma_chan_wait_no_ostand._entry, section ".printk_index", align 4
@xilinx_dpdma_chan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_init.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&chan->wait_to_stop\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xilinx_dpdma_chan_poll_no_ostand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.49, ptr @.str.4, i32 1002, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xilinx_dpdma_chan_poll_no_ostand\00", [63 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_poll_no_ostand._entry_ptr = internal global ptr @xilinx_dpdma_chan_poll_no_ostand._entry, section ".printk_index", align 4
@xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 1, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xilinx_dpdma_chan_handle_err\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"chan%u: cur desc addr = 0x%04x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.50, ptr @.str.4, ptr @.str.52, i8 1, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chan%u: cur payload addr = 0x%04x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.50, ptr @.str.4, ptr @.str.53, i8 1, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"chan%u: repeated error on desc\0A\00", [32 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.55, i8 0, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xilinx_dpdma_chan_dump_tx_desc\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"------- TX descriptor dump start -------\0A\00", [54 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.56, i8 0, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"------- channel ID = %d -------\0A\00", [63 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.57, i8 0, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"------- HW descriptor %d -------\0A\00", [62 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.58, i8 0, i8 -106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"descriptor DMA addr: %pad\0A\00", [37 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.59, i8 0, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"control: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.60, i8 0, i8 -105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"desc_id: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.61, i8 0, i8 -105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xfer_size: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.62, i8 0, i8 -105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hsize_stride: 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.63, i8 0, i8 -105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timestamp_lsb: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.64, i8 0, i8 -104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timestamp_msb: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.65, i8 0, i8 -104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"addr_ext: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.66, i8 0, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"next_desc: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.67, i8 0, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"src_addr: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.68, i8 0, i8 -103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"addr_ext_23: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.69, i8 0, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"addr_ext_45: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.70, i8 0, i8 -103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"src_addr2: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.71, i8 0, i8 -103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"src_addr3: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.72, i8 0, i8 -102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"src_addr4: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.73, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"src_addr5: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.74, i8 0, i8 -102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"crc: 0x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.54, ptr @.str.4, ptr @.str.75, i8 0, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"------- TX descriptor dump end -------\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"testcase\00", [23 x i8] zeroinitializer }, align 32
@fops_xilinx_dpdma_dbgfs = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xilinx_dpdma_debugfs_read, ptr @xilinx_dpdma_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@xilinx_dpdma_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to create debugfs testcase file\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xilinx_dpdma_debugfs_init\00", [38 x i8] zeroinitializer }, align 32
@xilinx_dpdma_debugfs_init._entry_ptr = internal global ptr @xilinx_dpdma_debugfs_init._entry, section ".printk_index", align 4
@dpdma_debugfs_reqs = internal constant { [1 x %struct.xilinx_dpdma_debugfs_request], [16 x i8] } { [1 x %struct.xilinx_dpdma_debugfs_request] [%struct.xilinx_dpdma_debugfs_request { ptr @.str.80, i32 0, ptr @xilinx_dpdma_debugfs_desc_done_irq_read, ptr @xilinx_dpdma_debugfs_desc_done_irq_write }], [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No testcase executed\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DESCRIPTOR_DONE_INTR\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"xilinx_dpdma_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1766, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1770, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"xilinx_dpdma_of_match\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1760, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1644, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1656, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1663, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1695, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1703, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1709, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1716, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1724, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1090, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [36 x i8] c"../drivers/dma/xilinx/../virt-dma.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 101, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1055, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"dpdma_debugfs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 290, i32 36 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 928, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1434, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1236, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 694, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 966, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1569, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1570, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1001, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1150, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1154, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1171, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 595, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 596, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 601, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 602, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 603, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 604, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 605, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 606, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 607, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 608, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 609, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 610, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 611, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 612, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 613, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 614, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 615, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 616, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 617, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 618, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 621, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 457, i32 29 }
@___asan_gen_.333 = private unnamed_addr constant [24 x i8] c"fops_xilinx_dpdma_dbgfs\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 445, i32 37 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 460, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [19 x i8] c"dpdma_debugfs_reqs\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 348, i32 44 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 379, i32 22 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 350, i32 11 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 313, i32 29 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 325, i32 22 }
@___asan_gen_.361 = private constant [37 x i8] c"../drivers/dma/xilinx/xilinx_dpdma.c\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 326, i32 31 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 230, i32 6 }
@___asan_gen_.367 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 214, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 174, i32 2 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_xilinx_dpdma_driver_exit, ptr @__initcall__kmod_xilinx_dpdma__322_1775_xilinx_dpdma_driver_init6, ptr @xilinx_dpdma_alloc_chan_resources._entry, ptr @xilinx_dpdma_alloc_chan_resources._entry_ptr, ptr @xilinx_dpdma_chan_done_irq._entry, ptr @xilinx_dpdma_chan_done_irq._entry_ptr, ptr @xilinx_dpdma_chan_poll_no_ostand._entry, ptr @xilinx_dpdma_chan_poll_no_ostand._entry_ptr, ptr @xilinx_dpdma_chan_prep_interleaved_dma._entry, ptr @xilinx_dpdma_chan_prep_interleaved_dma._entry_ptr, ptr @xilinx_dpdma_chan_wait_no_ostand._entry, ptr @xilinx_dpdma_chan_wait_no_ostand._entry_ptr, ptr @xilinx_dpdma_debugfs_init._entry, ptr @xilinx_dpdma_debugfs_init._entry_ptr, ptr @xilinx_dpdma_driver_exit, ptr @xilinx_dpdma_probe._entry, ptr @xilinx_dpdma_probe._entry.10, ptr @xilinx_dpdma_probe._entry.13, ptr @xilinx_dpdma_probe._entry.16, ptr @xilinx_dpdma_probe._entry.19, ptr @xilinx_dpdma_probe._entry.22, ptr @xilinx_dpdma_probe._entry.7, ptr @xilinx_dpdma_probe._entry_ptr, ptr @xilinx_dpdma_probe._entry_ptr.12, ptr @xilinx_dpdma_probe._entry_ptr.15, ptr @xilinx_dpdma_probe._entry_ptr.18, ptr @xilinx_dpdma_probe._entry_ptr.21, ptr @xilinx_dpdma_probe._entry_ptr.25, ptr @xilinx_dpdma_probe._entry_ptr.9, ptr @xilinx_dpdma_driver, ptr @.str, ptr @xilinx_dpdma_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @dpdma_debugfs, ptr @.str.35, ptr @.str.36, ptr @xilinx_dpdma_handle_err_irq._rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @xilinx_dpdma_chan_init.__key, ptr @.str.46, ptr @xilinx_dpdma_chan_init.__key.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @fops_xilinx_dpdma_dbgfs, ptr @.str.77, ptr @.str.78, ptr @dpdma_debugfs_reqs, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_chan_done_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpdma_debugfs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_handle_err_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_chan_prep_interleaved_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_chan_wait_no_ostand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_chan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_chan_init.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_chan_poll_no_ostand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_xilinx_dpdma_dbgfs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dpdma_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpdma_debugfs_reqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinx_dpdma_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dpdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @xilinx_dpdma_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 408, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %ext_addr = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %ext_addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ext_addr, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %channels, ptr %prev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  %axi_clk = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %axi_clk, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #14
  %reg = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %reg, align 4
  %cmp.i168 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  tail call fastcc void @dpdma_hw_init(ptr noundef nonnull %call.i)
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #14
  %irq = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call18, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  br i1 %cmp, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2) #17
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.dev_name.exit_crit_edge

if.end23.dev_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end23.dev_name.exit_crit_edge ]
  %call.i169 = tail call i32 @request_threaded_irq(i32 noundef %call18, ptr noundef nonnull @xilinx_dpdma_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool28.not = icmp eq i32 %call.i169, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8) #17
  br label %cleanup

if.end34:                                         ; preds = %dev_name.exit
  %dev37 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %20 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev37, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #14
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #14
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask) #14
  tail call void @_set_bit(i32 noundef 15, ptr noundef %cap_mask) #14
  tail call void @_set_bit(i32 noundef 16, ptr noundef %cap_mask) #14
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %copy_align, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %22 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xilinx_dpdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %23 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xilinx_dpdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_interleaved_dma = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 41
  %24 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xilinx_dpdma_prep_interleaved_dma, ptr %device_prep_interleaved_dma, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %25 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %26 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xilinx_dpdma_issue_pending, ptr %device_issue_pending, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %27 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xilinx_dpdma_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %28 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @xilinx_dpdma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %29 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @xilinx_dpdma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %30 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @xilinx_dpdma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %31 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xilinx_dpdma_synchronize, ptr %device_synchronize, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %32 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %src_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %33 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %34 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %residue_granularity, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end34
  %i.0180 = phi i32 [ 0, %if.end34 ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef 328, i32 noundef 3520) #14
  %tobool.not.i170 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i170, label %do.end49, label %for.inc

do.end49:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.11, i32 noundef %i.0180) #17
  br label %error

for.inc:                                          ; preds = %for.body
  %id.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %call.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0180, ptr %id.i, align 4
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 512
  %mul.i = shl nuw nsw i32 %i.0180, 8
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %reg3.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %call.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %reg3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr2.i, ptr %reg3.i, align 4
  %running.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %call.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %running.i, align 4
  %xdev4.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %call.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %xdev4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %xdev4.i, align 4
  %lock.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %call.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @xilinx_dpdma_chan_init.__key, i16 noundef signext 3) #14
  %wait_to_stop.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %call.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait_to_stop.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @xilinx_dpdma_chan_init.__key.47) #14
  %err_task.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %call.i.i, i32 0, i32 9
  tail call void @tasklet_setup(ptr noundef %err_task.i, ptr noundef nonnull @xilinx_dpdma_chan_err_task) #14
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %call.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xilinx_dpdma_chan_free_tx_desc, ptr %desc_free.i, align 4
  tail call void @vchan_init(ptr noundef nonnull %call.i.i, ptr noundef %call.i) #14
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 5, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.0180, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %49 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %axi_clk, align 4
  %call53 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.14) #17
  br label %error

if.end60:                                         ; preds = %for.end
  %call61 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  %53 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev2, align 4
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.17) #17
  br label %error_dma_async

if.end68:                                         ; preds = %if.end60
  %of_node = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node, align 8
  %call70 = tail call i32 @of_dma_controller_register(ptr noundef %56, ptr noundef nonnull @of_dma_xilinx_xlate, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.20) #17
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #14
  br label %error_dma_async

if.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_enable_irq(ptr noundef nonnull %call.i)
  tail call fastcc void @xilinx_dpdma_debugfs_init(ptr noundef nonnull %call.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23) #17
  br label %cleanup

error_dma_async:                                  ; preds = %do.end75, %do.end66
  %ret.0 = phi i32 [ %call61, %do.end66 ], [ %call70, %do.end75 ]
  %59 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %60) #14
  tail call void @clk_unprepare(ptr noundef %60) #14
  br label %error

error:                                            ; preds = %error_dma_async, %do.end58, %do.end49
  %ret.1 = phi i32 [ -12, %do.end49 ], [ %call53, %do.end58 ], [ %ret.0, %error_dma_async ]
  %arrayidx = getelementptr %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 5, i32 0
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i173 = icmp eq ptr %62, null
  br i1 %tobool.not.i173, label %error.xilinx_dpdma_chan_remove.exit_crit_edge, label %if.end.i175

error.xilinx_dpdma_chan_remove.exit_crit_edge:    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit

if.end.i175:                                      ; preds = %error
  %err_task.i174 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %62, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i174) #14
  %device_node.i = getelementptr inbounds %struct.dma_chan, ptr %62, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i175.list_del.exit.i_crit_edge

if.end.i175.list_del.exit.i_crit_edge:            ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %62, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i, align 4
  %65 = ptrtoint ptr %device_node.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i175.list_del.exit.i_crit_edge
  %69 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dma_chan, ptr %62, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %xilinx_dpdma_chan_remove.exit

xilinx_dpdma_chan_remove.exit:                    ; preds = %list_del.exit.i, %error.xilinx_dpdma_chan_remove.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i173.1 = icmp eq ptr %72, null
  br i1 %tobool.not.i173.1, label %xilinx_dpdma_chan_remove.exit.xilinx_dpdma_chan_remove.exit.1_crit_edge, label %if.end.i175.1

xilinx_dpdma_chan_remove.exit.xilinx_dpdma_chan_remove.exit.1_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.1

if.end.i175.1:                                    ; preds = %xilinx_dpdma_chan_remove.exit
  %err_task.i174.1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %72, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i174.1) #14
  %device_node.i.1 = getelementptr inbounds %struct.dma_chan, ptr %72, i32 0, i32 8
  %call.i.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.1) #14
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %if.end.i175.1.list_del.exit.i.1_crit_edge

if.end.i175.1.list_del.exit.i.1_crit_edge:        ; preds = %if.end.i175.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.1

if.end.i.i.i.1:                                   ; preds = %if.end.i175.1
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.1 = getelementptr inbounds %struct.dma_chan, ptr %72, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %prev.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i.1, align 4
  %75 = ptrtoint ptr %device_node.i.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device_node.i.1, align 4
  %prev1.i.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i.1, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del.exit.i.1

list_del.exit.i.1:                                ; preds = %if.end.i.i.i.1, %if.end.i175.1.list_del.exit.i.1_crit_edge
  %79 = ptrtoint ptr %device_node.i.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.1, align 4
  %prev.i.i.1 = getelementptr inbounds %struct.dma_chan, ptr %72, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.1, align 4
  br label %xilinx_dpdma_chan_remove.exit.1

xilinx_dpdma_chan_remove.exit.1:                  ; preds = %list_del.exit.i.1, %xilinx_dpdma_chan_remove.exit.xilinx_dpdma_chan_remove.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 5, i32 2
  %81 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i173.2 = icmp eq ptr %82, null
  br i1 %tobool.not.i173.2, label %xilinx_dpdma_chan_remove.exit.1.xilinx_dpdma_chan_remove.exit.2_crit_edge, label %if.end.i175.2

xilinx_dpdma_chan_remove.exit.1.xilinx_dpdma_chan_remove.exit.2_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.2

if.end.i175.2:                                    ; preds = %xilinx_dpdma_chan_remove.exit.1
  %err_task.i174.2 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %82, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i174.2) #14
  %device_node.i.2 = getelementptr inbounds %struct.dma_chan, ptr %82, i32 0, i32 8
  %call.i.i.i.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.2) #14
  br i1 %call.i.i.i.2, label %if.end.i.i.i.2, label %if.end.i175.2.list_del.exit.i.2_crit_edge

if.end.i175.2.list_del.exit.i.2_crit_edge:        ; preds = %if.end.i175.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.2

if.end.i.i.i.2:                                   ; preds = %if.end.i175.2
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.2 = getelementptr inbounds %struct.dma_chan, ptr %82, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %prev.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i.i.2, align 4
  %85 = ptrtoint ptr %device_node.i.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device_node.i.2, align 4
  %prev1.i.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i.i.2, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit.i.2

list_del.exit.i.2:                                ; preds = %if.end.i.i.i.2, %if.end.i175.2.list_del.exit.i.2_crit_edge
  %89 = ptrtoint ptr %device_node.i.2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.2, align 4
  %prev.i.i.2 = getelementptr inbounds %struct.dma_chan, ptr %82, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.2, align 4
  br label %xilinx_dpdma_chan_remove.exit.2

xilinx_dpdma_chan_remove.exit.2:                  ; preds = %list_del.exit.i.2, %xilinx_dpdma_chan_remove.exit.1.xilinx_dpdma_chan_remove.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 5, i32 3
  %91 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i173.3 = icmp eq ptr %92, null
  br i1 %tobool.not.i173.3, label %xilinx_dpdma_chan_remove.exit.2.xilinx_dpdma_chan_remove.exit.3_crit_edge, label %if.end.i175.3

xilinx_dpdma_chan_remove.exit.2.xilinx_dpdma_chan_remove.exit.3_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.3

if.end.i175.3:                                    ; preds = %xilinx_dpdma_chan_remove.exit.2
  %err_task.i174.3 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %92, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i174.3) #14
  %device_node.i.3 = getelementptr inbounds %struct.dma_chan, ptr %92, i32 0, i32 8
  %call.i.i.i.3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.3) #14
  br i1 %call.i.i.i.3, label %if.end.i.i.i.3, label %if.end.i175.3.list_del.exit.i.3_crit_edge

if.end.i175.3.list_del.exit.i.3_crit_edge:        ; preds = %if.end.i175.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.3

if.end.i.i.i.3:                                   ; preds = %if.end.i175.3
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.3 = getelementptr inbounds %struct.dma_chan, ptr %92, i32 0, i32 8, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i.3, align 4
  %95 = ptrtoint ptr %device_node.i.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device_node.i.3, align 4
  %prev1.i.i.i.i.3 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i.3, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit.i.3

list_del.exit.i.3:                                ; preds = %if.end.i.i.i.3, %if.end.i175.3.list_del.exit.i.3_crit_edge
  %99 = ptrtoint ptr %device_node.i.3 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.3, align 4
  %prev.i.i.3 = getelementptr inbounds %struct.dma_chan, ptr %92, i32 0, i32 8, i32 1
  %100 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.3, align 4
  br label %xilinx_dpdma_chan_remove.exit.3

xilinx_dpdma_chan_remove.exit.3:                  ; preds = %list_del.exit.i.3, %xilinx_dpdma_chan_remove.exit.2.xilinx_dpdma_chan_remove.exit.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 5, i32 4
  %101 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i173.4 = icmp eq ptr %102, null
  br i1 %tobool.not.i173.4, label %xilinx_dpdma_chan_remove.exit.3.xilinx_dpdma_chan_remove.exit.4_crit_edge, label %if.end.i175.4

xilinx_dpdma_chan_remove.exit.3.xilinx_dpdma_chan_remove.exit.4_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.4

if.end.i175.4:                                    ; preds = %xilinx_dpdma_chan_remove.exit.3
  %err_task.i174.4 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %102, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i174.4) #14
  %device_node.i.4 = getelementptr inbounds %struct.dma_chan, ptr %102, i32 0, i32 8
  %call.i.i.i.4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.4) #14
  br i1 %call.i.i.i.4, label %if.end.i.i.i.4, label %if.end.i175.4.list_del.exit.i.4_crit_edge

if.end.i175.4.list_del.exit.i.4_crit_edge:        ; preds = %if.end.i175.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.4

if.end.i.i.i.4:                                   ; preds = %if.end.i175.4
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.4 = getelementptr inbounds %struct.dma_chan, ptr %102, i32 0, i32 8, i32 1
  %103 = ptrtoint ptr %prev.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i.i.4, align 4
  %105 = ptrtoint ptr %device_node.i.4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_node.i.4, align 4
  %prev1.i.i.i.i.4 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i.i.4, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del.exit.i.4

list_del.exit.i.4:                                ; preds = %if.end.i.i.i.4, %if.end.i175.4.list_del.exit.i.4_crit_edge
  %109 = ptrtoint ptr %device_node.i.4 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.4, align 4
  %prev.i.i.4 = getelementptr inbounds %struct.dma_chan, ptr %102, i32 0, i32 8, i32 1
  %110 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.4, align 4
  br label %xilinx_dpdma_chan_remove.exit.4

xilinx_dpdma_chan_remove.exit.4:                  ; preds = %list_del.exit.i.4, %xilinx_dpdma_chan_remove.exit.3.xilinx_dpdma_chan_remove.exit.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xilinx_dpdma_device, ptr %call.i, i32 0, i32 5, i32 5
  %111 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i173.5 = icmp eq ptr %112, null
  br i1 %tobool.not.i173.5, label %xilinx_dpdma_chan_remove.exit.4.xilinx_dpdma_chan_remove.exit.5_crit_edge, label %if.end.i175.5

xilinx_dpdma_chan_remove.exit.4.xilinx_dpdma_chan_remove.exit.5_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.5

if.end.i175.5:                                    ; preds = %xilinx_dpdma_chan_remove.exit.4
  %err_task.i174.5 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %112, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i174.5) #14
  %device_node.i.5 = getelementptr inbounds %struct.dma_chan, ptr %112, i32 0, i32 8
  %call.i.i.i.5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.5) #14
  br i1 %call.i.i.i.5, label %if.end.i.i.i.5, label %if.end.i175.5.list_del.exit.i.5_crit_edge

if.end.i175.5.list_del.exit.i.5_crit_edge:        ; preds = %if.end.i175.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.5

if.end.i.i.i.5:                                   ; preds = %if.end.i175.5
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.5 = getelementptr inbounds %struct.dma_chan, ptr %112, i32 0, i32 8, i32 1
  %113 = ptrtoint ptr %prev.i.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i.i.i.5, align 4
  %115 = ptrtoint ptr %device_node.i.5 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %device_node.i.5, align 4
  %prev1.i.i.i.i.5 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev1.i.i.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev1.i.i.i.i.5, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %114, align 4
  br label %list_del.exit.i.5

list_del.exit.i.5:                                ; preds = %if.end.i.i.i.5, %if.end.i175.5.list_del.exit.i.5_crit_edge
  %119 = ptrtoint ptr %device_node.i.5 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.5, align 4
  %prev.i.i.5 = getelementptr inbounds %struct.dma_chan, ptr %112, i32 0, i32 8, i32 1
  %120 = ptrtoint ptr %prev.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.5, align 4
  br label %xilinx_dpdma_chan_remove.exit.5

xilinx_dpdma_chan_remove.exit.5:                  ; preds = %list_del.exit.i.5, %xilinx_dpdma_chan_remove.exit.4.xilinx_dpdma_chan_remove.exit.5_crit_edge
  %121 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq, align 4
  %call90 = tail call ptr @free_irq(i32 noundef %122, ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %xilinx_dpdma_chan_remove.exit.5, %if.end77, %do.end32, %do.end, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ %8, %if.then14 ], [ %13, %do.end ], [ %call.i169, %do.end32 ], [ %ret.1, %xilinx_dpdma_chan_remove.exit.5 ], [ 0, %if.end77 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #14
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -241) #14, !srcloc !216
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1) #14, !srcloc !216
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %9) #14
  tail call void @dma_async_device_unregister(ptr noundef %1) #14
  %axi_clk = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #14
  tail call void @clk_unprepare(ptr noundef %11) #14
  %arrayidx = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.xilinx_dpdma_chan_remove.exit_crit_edge, label %if.end.i

entry.xilinx_dpdma_chan_remove.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit

if.end.i:                                         ; preds = %entry
  %err_task.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %13, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i) #14
  %device_node.i = getelementptr inbounds %struct.dma_chan, ptr %13, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %13, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %device_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dma_chan, ptr %13, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %xilinx_dpdma_chan_remove.exit

xilinx_dpdma_chan_remove.exit:                    ; preds = %list_del.exit.i, %entry.xilinx_dpdma_chan_remove.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %23, null
  br i1 %tobool.not.i.1, label %xilinx_dpdma_chan_remove.exit.xilinx_dpdma_chan_remove.exit.1_crit_edge, label %if.end.i.1

xilinx_dpdma_chan_remove.exit.xilinx_dpdma_chan_remove.exit.1_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.1

if.end.i.1:                                       ; preds = %xilinx_dpdma_chan_remove.exit
  %err_task.i.1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %23, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i.1) #14
  %device_node.i.1 = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 8
  %call.i.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.1) #14
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %if.end.i.1.list_del.exit.i.1_crit_edge

if.end.i.1.list_del.exit.i.1_crit_edge:           ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.1

if.end.i.i.i.1:                                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.1 = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.1, align 4
  %26 = ptrtoint ptr %device_node.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_node.i.1, align 4
  %prev1.i.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.1, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i.1

list_del.exit.i.1:                                ; preds = %if.end.i.i.i.1, %if.end.i.1.list_del.exit.i.1_crit_edge
  %30 = ptrtoint ptr %device_node.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.1, align 4
  %prev.i.i.1 = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.1, align 4
  br label %xilinx_dpdma_chan_remove.exit.1

xilinx_dpdma_chan_remove.exit.1:                  ; preds = %list_del.exit.i.1, %xilinx_dpdma_chan_remove.exit.xilinx_dpdma_chan_remove.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %33, null
  br i1 %tobool.not.i.2, label %xilinx_dpdma_chan_remove.exit.1.xilinx_dpdma_chan_remove.exit.2_crit_edge, label %if.end.i.2

xilinx_dpdma_chan_remove.exit.1.xilinx_dpdma_chan_remove.exit.2_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.2

if.end.i.2:                                       ; preds = %xilinx_dpdma_chan_remove.exit.1
  %err_task.i.2 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %33, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i.2) #14
  %device_node.i.2 = getelementptr inbounds %struct.dma_chan, ptr %33, i32 0, i32 8
  %call.i.i.i.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.2) #14
  br i1 %call.i.i.i.2, label %if.end.i.i.i.2, label %if.end.i.2.list_del.exit.i.2_crit_edge

if.end.i.2.list_del.exit.i.2_crit_edge:           ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.2

if.end.i.i.i.2:                                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.2 = getelementptr inbounds %struct.dma_chan, ptr %33, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.2, align 4
  %36 = ptrtoint ptr %device_node.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_node.i.2, align 4
  %prev1.i.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i.2, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i.2

list_del.exit.i.2:                                ; preds = %if.end.i.i.i.2, %if.end.i.2.list_del.exit.i.2_crit_edge
  %40 = ptrtoint ptr %device_node.i.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.2, align 4
  %prev.i.i.2 = getelementptr inbounds %struct.dma_chan, ptr %33, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.2, align 4
  br label %xilinx_dpdma_chan_remove.exit.2

xilinx_dpdma_chan_remove.exit.2:                  ; preds = %list_del.exit.i.2, %xilinx_dpdma_chan_remove.exit.1.xilinx_dpdma_chan_remove.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 3
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %43, null
  br i1 %tobool.not.i.3, label %xilinx_dpdma_chan_remove.exit.2.xilinx_dpdma_chan_remove.exit.3_crit_edge, label %if.end.i.3

xilinx_dpdma_chan_remove.exit.2.xilinx_dpdma_chan_remove.exit.3_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.3

if.end.i.3:                                       ; preds = %xilinx_dpdma_chan_remove.exit.2
  %err_task.i.3 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %43, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i.3) #14
  %device_node.i.3 = getelementptr inbounds %struct.dma_chan, ptr %43, i32 0, i32 8
  %call.i.i.i.3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.3) #14
  br i1 %call.i.i.i.3, label %if.end.i.i.i.3, label %if.end.i.3.list_del.exit.i.3_crit_edge

if.end.i.3.list_del.exit.i.3_crit_edge:           ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.3

if.end.i.i.i.3:                                   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.3 = getelementptr inbounds %struct.dma_chan, ptr %43, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.3, align 4
  %46 = ptrtoint ptr %device_node.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_node.i.3, align 4
  %prev1.i.i.i.i.3 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i.3, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i.3

list_del.exit.i.3:                                ; preds = %if.end.i.i.i.3, %if.end.i.3.list_del.exit.i.3_crit_edge
  %50 = ptrtoint ptr %device_node.i.3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.3, align 4
  %prev.i.i.3 = getelementptr inbounds %struct.dma_chan, ptr %43, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.3, align 4
  br label %xilinx_dpdma_chan_remove.exit.3

xilinx_dpdma_chan_remove.exit.3:                  ; preds = %list_del.exit.i.3, %xilinx_dpdma_chan_remove.exit.2.xilinx_dpdma_chan_remove.exit.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 4
  %52 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %53, null
  br i1 %tobool.not.i.4, label %xilinx_dpdma_chan_remove.exit.3.xilinx_dpdma_chan_remove.exit.4_crit_edge, label %if.end.i.4

xilinx_dpdma_chan_remove.exit.3.xilinx_dpdma_chan_remove.exit.4_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.4

if.end.i.4:                                       ; preds = %xilinx_dpdma_chan_remove.exit.3
  %err_task.i.4 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %53, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i.4) #14
  %device_node.i.4 = getelementptr inbounds %struct.dma_chan, ptr %53, i32 0, i32 8
  %call.i.i.i.4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.4) #14
  br i1 %call.i.i.i.4, label %if.end.i.i.i.4, label %if.end.i.4.list_del.exit.i.4_crit_edge

if.end.i.4.list_del.exit.i.4_crit_edge:           ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.4

if.end.i.i.i.4:                                   ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.4 = getelementptr inbounds %struct.dma_chan, ptr %53, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %prev.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i.4, align 4
  %56 = ptrtoint ptr %device_node.i.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_node.i.4, align 4
  %prev1.i.i.i.i.4 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.i.4, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit.i.4

list_del.exit.i.4:                                ; preds = %if.end.i.i.i.4, %if.end.i.4.list_del.exit.i.4_crit_edge
  %60 = ptrtoint ptr %device_node.i.4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.4, align 4
  %prev.i.i.4 = getelementptr inbounds %struct.dma_chan, ptr %53, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.4, align 4
  br label %xilinx_dpdma_chan_remove.exit.4

xilinx_dpdma_chan_remove.exit.4:                  ; preds = %list_del.exit.i.4, %xilinx_dpdma_chan_remove.exit.3.xilinx_dpdma_chan_remove.exit.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 5
  %62 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i.5 = icmp eq ptr %63, null
  br i1 %tobool.not.i.5, label %xilinx_dpdma_chan_remove.exit.4.xilinx_dpdma_chan_remove.exit.5_crit_edge, label %if.end.i.5

xilinx_dpdma_chan_remove.exit.4.xilinx_dpdma_chan_remove.exit.5_crit_edge: ; preds = %xilinx_dpdma_chan_remove.exit.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_remove.exit.5

if.end.i.5:                                       ; preds = %xilinx_dpdma_chan_remove.exit.4
  %err_task.i.5 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %63, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %err_task.i.5) #14
  %device_node.i.5 = getelementptr inbounds %struct.dma_chan, ptr %63, i32 0, i32 8
  %call.i.i.i.5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i.5) #14
  br i1 %call.i.i.i.5, label %if.end.i.i.i.5, label %if.end.i.5.list_del.exit.i.5_crit_edge

if.end.i.5.list_del.exit.i.5_crit_edge:           ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.5

if.end.i.i.i.5:                                   ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.5 = getelementptr inbounds %struct.dma_chan, ptr %63, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i.5, align 4
  %66 = ptrtoint ptr %device_node.i.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_node.i.5, align 4
  %prev1.i.i.i.i.5 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i.5, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i.5

list_del.exit.i.5:                                ; preds = %if.end.i.i.i.5, %if.end.i.5.list_del.exit.i.5_crit_edge
  %70 = ptrtoint ptr %device_node.i.5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i.5, align 4
  %prev.i.i.5 = getelementptr inbounds %struct.dma_chan, ptr %63, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %prev.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.5, align 4
  br label %xilinx_dpdma_chan_remove.exit.5

xilinx_dpdma_chan_remove.exit.5:                  ; preds = %list_del.exit.i.5, %xilinx_dpdma_chan_remove.exit.4.xilinx_dpdma_chan_remove.exit.5_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpdma_hw_init(ptr nocapture noundef readonly %xdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %xdev, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -241) #14, !srcloc !216
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1) #14, !srcloc !216
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 536
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #14, !srcloc !216
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i10.1 = getelementptr i8, ptr %9, i32 792
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.1) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.1, i32 %11) #14, !srcloc !216
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i10.2 = getelementptr i8, ptr %13, i32 1048
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.2) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.2, i32 %15) #14, !srcloc !216
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i10.3 = getelementptr i8, ptr %17, i32 1304
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.3) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.3, i32 %19) #14, !srcloc !216
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i10.4 = getelementptr i8, ptr %21, i32 1560
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.4) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %23 = and i32 %22, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.4, i32 %23) #14, !srcloc !216
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i10.5 = getelementptr i8, ptr %25, i32 1816
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.5) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %27 = and i32 %26, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.5, i32 %27) #14, !srcloc !216
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -241) #14, !srcloc !216
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 -1) #14, !srcloc !216
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #14
  %reg = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !217
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %add.ptr.i104 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #14, !srcloc !217
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %add.ptr.i105 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %2) #14, !srcloc !216
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %add.ptr.i106 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %6) #14, !srcloc !216
  %and = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.do.end24_crit_edge, label %for.body.preheader

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %for.body.preheader.if.end11_crit_edge, label %if.then10

for.body.preheader.if.end11_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_chan_vsync_irq(ptr noundef nonnull %13)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.body.preheader.if.end11_crit_edge
  %arrayidx.1 = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %tobool9.not.1 = icmp eq ptr %15, null
  br i1 %tobool9.not.1, label %if.end11.if.end11.1_crit_edge, label %if.then10.1

if.end11.if.end11.1_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.1

if.then10.1:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_chan_vsync_irq(ptr noundef nonnull %15)
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.then10.1, %if.end11.if.end11.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %tobool9.not.2 = icmp eq ptr %17, null
  br i1 %tobool9.not.2, label %if.end11.1.if.end11.2_crit_edge, label %if.then10.2

if.end11.1.if.end11.2_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.2

if.then10.2:                                      ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_chan_vsync_irq(ptr noundef nonnull %17)
  br label %if.end11.2

if.end11.2:                                       ; preds = %if.then10.2, %if.end11.1.if.end11.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool9.not.3 = icmp eq ptr %19, null
  br i1 %tobool9.not.3, label %if.end11.2.if.end11.3_crit_edge, label %if.then10.3

if.end11.2.if.end11.3_crit_edge:                  ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.3

if.then10.3:                                      ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_chan_vsync_irq(ptr noundef nonnull %19)
  br label %if.end11.3

if.end11.3:                                       ; preds = %if.then10.3, %if.end11.2.if.end11.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  %tobool9.not.4 = icmp eq ptr %21, null
  br i1 %tobool9.not.4, label %if.end11.3.if.end11.4_crit_edge, label %if.then10.4

if.end11.3.if.end11.4_crit_edge:                  ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.4

if.then10.4:                                      ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_chan_vsync_irq(ptr noundef nonnull %21)
  br label %if.end11.4

if.end11.4:                                       ; preds = %if.then10.4, %if.end11.3.if.end11.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.5, align 4
  %tobool9.not.5 = icmp eq ptr %23, null
  br i1 %tobool9.not.5, label %if.end11.4.do.end24_crit_edge, label %if.then10.5

if.end11.4.do.end24_crit_edge:                    ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

if.then10.5:                                      ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_chan_vsync_irq(ptr noundef nonnull %23)
  br label %do.end24

do.end24:                                         ; preds = %if.then10.5, %if.end11.4.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %and25 = and i32 %3, 63
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and25, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.end24.do.end52_crit_edge, label %if.then27

do.end24.do.end52_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

if.then27:                                        ; preds = %do.end24
  %call28 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 6, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call28)
  %cmp30108 = icmp ult i32 %call28, 6
  br i1 %cmp30108, label %if.then27.for.body31_crit_edge, label %if.then27.do.end52_crit_edge

if.then27.do.end52_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

if.then27.for.body31_crit_edge:                   ; preds = %if.then27
  br label %for.body31

for.body31:                                       ; preds = %xilinx_dpdma_chan_done_irq.exit.for.body31_crit_edge, %if.then27.for.body31_crit_edge
  %i.1109 = phi i32 [ %call35, %xilinx_dpdma_chan_done_irq.exit.for.body31_crit_edge ], [ %call28, %if.then27.for.body31_crit_edge ]
  %arrayidx33 = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 %i.1109
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx33, align 4
  %lock.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %26, i32 0, i32 7
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %id.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i.i, align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.xilinx_dpdma_debugfs, ptr @dpdma_debugfs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %29)
  %cmp.i.i = icmp eq i32 %28, %29
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body31.xilinx_dpdma_debugfs_desc_done_irq.exit.i_crit_edge

for.body31.xilinx_dpdma_debugfs_desc_done_irq.exit.i_crit_edge: ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_debugfs_desc_done_irq.exit.i

if.then.i.i:                                      ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #16
  %30 = load i16, ptr getelementptr inbounds (%struct.xilinx_dpdma_debugfs, ptr @dpdma_debugfs, i32 0, i32 1), align 4
  %inc.i.i = add i16 %30, 1
  store i16 %inc.i.i, ptr getelementptr inbounds (%struct.xilinx_dpdma_debugfs, ptr @dpdma_debugfs, i32 0, i32 1), align 4
  br label %xilinx_dpdma_debugfs_desc_done_irq.exit.i

xilinx_dpdma_debugfs_desc_done_irq.exit.i:        ; preds = %if.then.i.i, %for.body31.xilinx_dpdma_debugfs_desc_done_irq.exit.i_crit_edge
  %active5.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %26, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %active5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %active5.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %do.end8.i, label %if.then.i

if.then.i:                                        ; preds = %xilinx_dpdma_debugfs_desc_done_irq.exit.i
  %chan.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan.i.i, align 4
  %cyclic.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %cyclic.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %cyclic.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %34, i32 0, i32 1, i32 1
  %call.i.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.xilinx_dpdma_chan_done_irq.exit_crit_edge

if.then.i.xilinx_dpdma_chan_done_irq.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_done_irq.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %task.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %34, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %task.i.i) #14
  br label %xilinx_dpdma_chan_done_irq.exit

do.end8.i:                                        ; preds = %xilinx_dpdma_debugfs_desc_done_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %xdev.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %26, i32 0, i32 11
  %36 = ptrtoint ptr %xdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xdev.i, align 4
  %dev.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.32, i32 noundef %28) #17
  br label %xilinx_dpdma_chan_done_irq.exit

xilinx_dpdma_chan_done_irq.exit:                  ; preds = %do.end8.i, %if.then.i.i.i, %if.then.i.xilinx_dpdma_chan_done_irq.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %add = add nuw nsw i32 %i.1109, 1
  %call35 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 6, i32 noundef %add) #14
  %cmp30 = icmp ult i32 %call35, 6
  br i1 %cmp30, label %xilinx_dpdma_chan_done_irq.exit.for.body31_crit_edge, label %xilinx_dpdma_chan_done_irq.exit.do.end52_crit_edge

xilinx_dpdma_chan_done_irq.exit.do.end52_crit_edge: ; preds = %xilinx_dpdma_chan_done_irq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

xilinx_dpdma_chan_done_irq.exit.for.body31_crit_edge: ; preds = %xilinx_dpdma_chan_done_irq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body31

do.end52:                                         ; preds = %xilinx_dpdma_chan_done_irq.exit.do.end52_crit_edge, %if.then27.do.end52_crit_edge, %do.end24.do.end52_crit_edge
  %and54 = lshr i32 %3, 6
  %shr55 = and i32 %and54, 63
  %40 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr55, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr55)
  %tobool56.not = icmp eq i32 %shr55, 0
  br i1 %tobool56.not, label %do.end52.if.end69_crit_edge, label %if.then57

do.end52.if.end69_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then57:                                        ; preds = %do.end52
  %call58 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 6, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call58)
  %cmp60110 = icmp ult i32 %call58, 6
  br i1 %cmp60110, label %if.then57.for.body61_crit_edge, label %if.then57.if.end69_crit_edge

if.then57.if.end69_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then57.for.body61_crit_edge:                   ; preds = %if.then57
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %if.then57.for.body61_crit_edge
  %i.2111 = phi i32 [ %call67, %for.body61.for.body61_crit_edge ], [ %call58, %if.then57.for.body61_crit_edge ]
  %arrayidx63 = getelementptr %struct.xilinx_dpdma_device, ptr %data, i32 0, i32 5, i32 %i.2111
  %41 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx63, align 4
  call fastcc void @xilinx_dpdma_chan_notify_no_ostand(ptr noundef %42)
  %add66 = add nuw nsw i32 %i.2111, 1
  %call67 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 6, i32 noundef %add66) #14
  %cmp60 = icmp ult i32 %call67, 6
  br i1 %cmp60, label %for.body61.for.body61_crit_edge, label %for.body61.if.end69_crit_edge

for.body61.if.end69_crit_edge:                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body61

if.end69:                                         ; preds = %for.body61.if.end69_crit_edge, %if.then57.if.end69_crit_edge, %do.end52.if.end69_crit_edge
  %and70 = and i32 %3, 134213632
  %43 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and70, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %or.cond103 = select i1 %tobool71.not, i1 %tobool3.not, i1 false
  br i1 %or.cond103, label %if.end69.cleanup_crit_edge, label %if.then73

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @xilinx_dpdma_handle_err_irq(ptr noundef %data, i32 noundef %and70, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end69.cleanup_crit_edge ], [ 1, %if.then73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_alloc_chan_resources(ptr nocapture noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdev = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 11
  %0 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdev, align 4
  %dev = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i, ptr noundef %3, i32 noundef 512, i32 noundef 256, i32 noundef 0) #14
  %desc_pool = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 8
  %8 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdev, align 4
  %dev6 = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  %id = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 2
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.40, i32 noundef %14) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dpdma_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
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
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
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
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
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
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
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
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #14
  %desc_pool = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 8
  %57 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc_pool, align 4
  call void @dma_pool_destroy(ptr noundef %58) #14
  %59 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %desc_pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_dpdma_prep_interleaved_dma(ptr noundef %dchan, ptr nocapture noundef readonly %xt, i32 noundef %flags) #2 align 64 {
entry:
  %dma_addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 2
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %2 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %4 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp ne i32 %5, 0
  %6 = and i32 %flags, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %6)
  %.not = icmp eq i32 %6, 768
  %or.cond = and i1 %.not, %tobool1.not
  br i1 %or.cond, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %7 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icg.i, align 4
  %add.i = add i32 %8, %5
  %9 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xt, align 4
  %and.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %xdev.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 11
  %11 = ptrtoint ptr %xdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xdev.i, align 4
  %dev.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %id.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 2
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef %16, i32 noundef 256) #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2304, i32 noundef 132) #18
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %descriptors.i.i = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %call7.i.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %descriptors.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %descriptors.i.i, ptr %descriptors.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %descriptors.i.i, ptr %prev.i.i.i, align 4
  %chan1.i.i = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %call7.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %chan1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dchan, ptr %chan1.i.i, align 4
  %error.i.i = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %call7.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %error.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i.i) #14
  %22 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %dma_addr.i.i, align 4, !annotation !219
  %desc_pool.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 8
  %23 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc_pool.i.i, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %24, i32 noundef 2848, ptr noundef nonnull %dma_addr.i.i) #14
  %tobool.not.i100.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i100.i, label %if.end.i104.i, label %xilinx_dpdma_sw_desc_set_dma_addrs.exit.i

if.end.i104.i:                                    ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #14
  %25 = ptrtoint ptr %descriptors.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %descriptors.i.i, align 8
  %cmp.not28.i.i = icmp eq ptr %26, %descriptors.i.i
  br i1 %cmp.not28.i.i, label %if.end.i104.i.xilinx_dpdma_chan_free_tx_desc.exit.i_crit_edge, label %if.end.i104.i.for.body.i.i_crit_edge

if.end.i104.i.for.body.i.i_crit_edge:             ; preds = %if.end.i104.i
  br label %for.body.i.i

if.end.i104.i.xilinx_dpdma_chan_free_tx_desc.exit.i_crit_edge: ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_free_tx_desc.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.i104.i.for.body.i.i_crit_edge
  %.pn.in29.i.i = phi ptr [ %.pn.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %26, %if.end.i104.i.for.body.i.i_crit_edge ]
  %sw_desc.0.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -256
  %27 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i.i = load ptr, ptr %.pn.in29.i.i, align 256
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in29.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %34 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i.i, align 4
  %prev.i.i105.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i105.i, align 4
  %36 = ptrtoint ptr %chan1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan1.i.i, align 4
  %desc_pool.i.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %desc_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc_pool.i.i.i, align 4
  %dma_addr.i.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 8
  %40 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.i.i.i, align 8
  call void @dma_pool_free(ptr noundef %39, ptr noundef %sw_desc.0.i.i, i32 noundef %41) #14
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %descriptors.i.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.xilinx_dpdma_chan_free_tx_desc.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

list_del.exit.i.i.xilinx_dpdma_chan_free_tx_desc.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_free_tx_desc.exit.i

xilinx_dpdma_chan_free_tx_desc.exit.i:            ; preds = %list_del.exit.i.i.xilinx_dpdma_chan_free_tx_desc.exit.i_crit_edge, %if.end.i104.i.xilinx_dpdma_chan_free_tx_desc.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %cleanup

xilinx_dpdma_sw_desc_set_dma_addrs.exit.i:        ; preds = %if.end4.i
  %42 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_addr.i.i, align 4
  %dma_addr1.i.i = getelementptr inbounds %struct.xilinx_dpdma_sw_desc, ptr %call.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %dma_addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dma_addr1.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #14
  %45 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xt, align 4
  %src_addr.i.i = getelementptr inbounds %struct.xilinx_dpdma_hw_desc, ptr %call.i.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %src_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %src_addr.i.i, align 32
  %next_desc.i.i = getelementptr inbounds %struct.xilinx_dpdma_hw_desc, ptr %call.i.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %next_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %next_desc.i.i, align 4
  %add11.i = add i32 %5, 15
  %and12.i = and i32 %add11.i, -16
  %49 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %numf, align 4
  %mul.i = mul i32 %50, %and12.i
  %xfer_size.i = getelementptr inbounds %struct.xilinx_dpdma_hw_desc, ptr %call.i.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %xfer_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul.i, ptr %xfer_size.i, align 8
  %and32.i = and i32 %add11.i, 262128
  %52 = shl i32 %add.i, 14
  %shl57.i = and i32 %52, -262144
  %or.i = or i32 %shl57.i, %and32.i
  %hsize_stride.i = getelementptr inbounds %struct.xilinx_dpdma_hw_desc, ptr %call.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %hsize_stride.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %hsize_stride.i, align 4
  %54 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call.i.i.i, align 256
  %or65.i = or i32 %55, 2098597
  store i32 %or65.i, ptr %call.i.i.i, align 256
  %node.i = getelementptr inbounds %struct.xilinx_dpdma_sw_desc, ptr %call.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i106.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %57, ptr noundef %descriptors.i.i) #14
  br i1 %call.i.i106.i, label %if.end.i.i.i, label %xilinx_dpdma_sw_desc_set_dma_addrs.exit.i.if.end12_crit_edge

xilinx_dpdma_sw_desc_set_dma_addrs.exit.i.if.end12_crit_edge: ; preds = %xilinx_dpdma_sw_desc_set_dma_addrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end.i.i.i:                                     ; preds = %xilinx_dpdma_sw_desc_set_dma_addrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %node.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %descriptors.i.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.xilinx_dpdma_sw_desc, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %node.i, ptr %57, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.i.i, %xilinx_dpdma_sw_desc_set_dma_addrs.exit.i.if.end12_crit_edge
  %or = or i32 %flags, 2
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %dchan) #14
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %node.i24 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i25 = call zeroext i1 @__list_add_valid(ptr noundef %node.i24, ptr noundef %68, ptr noundef %desc_allocated.i) #14
  br i1 %call.i.i.i25, label %if.end.i.i.i27, label %if.end12.vchan_tx_prep.exit_crit_edge

if.end12.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_tx_prep.exit

if.end.i.i.i27:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %node.i24, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %node.i24 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %desc_allocated.i, ptr %node.i24, align 4
  %prev3.i.i.i26 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i26, align 8
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %node.i24, ptr %68, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i27, %if.end12.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %xilinx_dpdma_chan_free_tx_desc.exit.i, %if.end.i.cleanup_crit_edge, %do.end.i, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %xilinx_dpdma_chan_free_tx_desc.exit.i ], [ null, %do.end.i ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !220
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dpdma_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @xilinx_dpdma_chan_queue_transfer(ptr noundef %dchan)
  br label %if.end

if.end:                                           ; preds = %if.then, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_config(ptr noundef %dchan, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 10
  %0 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peripheral_config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body25_crit_edge, label %land.rhs

entry.do.body25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

land.rhs:                                         ; preds = %entry
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 11
  %2 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peripheral_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %land.rhs.do.body25_crit_edge, label %do.end, !prof !221

land.rhs.do.body25_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1293, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

do.body25:                                        ; preds = %land.rhs.do.body25_crit_edge, %entry.do.body25_crit_edge
  %lock = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %id = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp33 = icmp ugt i32 %5, 2
  %brmerge = select i1 %cmp33, i1 true, i1 %tobool.not
  br i1 %brmerge, label %do.body25.if.end39_crit_edge, label %if.then36

do.body25.if.end39_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1, !range !222
  %video_group38 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 6
  %8 = ptrtoint ptr %video_group38 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %video_group38, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %do.body25.if.end39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_pause(ptr nocapture noundef readonly %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %3) #14, !srcloc !216
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_resume(ptr nocapture noundef readonly %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %3 = and i32 %2, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %3) #14, !srcloc !216
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  %descriptors = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdev1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 11
  %0 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %descriptors) #14
  %2 = getelementptr inbounds %struct.list_head, ptr %descriptors, i32 0, i32 1
  %3 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %descriptors, ptr %descriptors, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %descriptors, ptr %2, align 4
  %video_group = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 6
  %5 = ptrtoint ptr %video_group to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %video_group, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %video_group3 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %video_group3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %video_group3, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %running = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %running, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 24
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %16 = or i32 %15, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %16) #14, !srcloc !216
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %video_group13 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %video_group13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %video_group13, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  %video_group3.1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %video_group3.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %video_group3.1, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not.1 = icmp eq i8 %23, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %running.1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %running.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %running.1, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not.1 = icmp eq i8 %25, 0
  br i1 %tobool7.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then8.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then8.1:                                       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  %reg.i.1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %reg.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i.1, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %27, i32 24
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #14, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %29 = or i32 %28, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.1, i32 %29) #14, !srcloc !216
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.1, align 4
  %video_group13.1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %video_group13.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %video_group13.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.2, align 4
  %video_group3.2 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %video_group3.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %video_group3.2, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool4.not.2 = icmp eq i8 %36, 0
  br i1 %tobool4.not.2, label %for.inc.1.do.body15_crit_edge, label %land.lhs.true.2

for.inc.1.do.body15_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15

land.lhs.true.2:                                  ; preds = %for.inc.1
  %running.2 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %34, i32 0, i32 4
  %37 = ptrtoint ptr %running.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %running.2, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not.2 = icmp eq i8 %38, 0
  br i1 %tobool7.not.2, label %land.lhs.true.2.do.body15_crit_edge, label %if.then8.2

land.lhs.true.2.do.body15_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15

if.then8.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  %reg.i.2 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %reg.i.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.2, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %40, i32 24
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #14, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %42 = or i32 %41, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.2, i32 %42) #14, !srcloc !216
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2, align 4
  %video_group13.2 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %video_group13.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %video_group13.2, align 2
  br label %do.body15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %reg.i39 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 1
  %46 = ptrtoint ptr %reg.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i39, align 4
  %add.ptr.i.i.i40 = getelementptr i8, ptr %47, i32 24
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i40) #14, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %49 = or i32 %48, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i40, i32 %49) #14, !srcloc !216
  br label %do.body15

do.body15:                                        ; preds = %if.else, %if.then8.2, %land.lhs.true.2.do.body15_crit_edge, %for.inc.1.do.body15_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %50 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %51, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %do.body15.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

do.body15.list_splice_tail_init.exit.i_crit_edge: ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %51, ptr %53, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %descriptors, ptr %55, align 4
  store ptr %55, ptr %2, align 4
  %59 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %do.body15.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %60 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %61, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i12.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %61, ptr %63, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %descriptors, ptr %65, align 4
  store ptr %65, ptr %2, align 4
  %69 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %70 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %71, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %74 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev3.i.i18.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %71, ptr %73, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %descriptors, ptr %75, align 4
  store ptr %75, ptr %2, align 4
  %79 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
  %80 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %81, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %86 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev3.i.i24.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %81, ptr %83, align 4
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %descriptors, ptr %85, align 4
  store ptr %85, ptr %2, align 4
  %89 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %90 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %91, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %94 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %96 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i30.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %91, ptr %93, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %descriptors, ptr %95, align 4
  store ptr %95, ptr %2, align 4
  %99 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #14
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %descriptors) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %descriptors) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dpdma_synchronize(ptr noundef %dchan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 959) #14
  %reg.i.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %3 = and i32 %2, 57345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %entry.do.body1.i_crit_edge, label %if.then11.i.i

entry.do.body1.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i

if.then11.i.i:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #14
  %4 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #14
  %wait_to_stop.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %cleanup.i.i, %if.then11.i.i
  %__ret12.0.i.i = phi i32 [ 5, %if.then11.i.i ], [ %call38.i.i, %cleanup.i.i ]
  %call14.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait_to_stop.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #14
  %5 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i75.i.i = getelementptr i8, ptr %6, i32 28
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.i.i) #14, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %8 = and i32 %7, 57345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not.i.i = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.0.i.i)
  %tobool22.not.i.i = icmp eq i32 %__ret12.0.i.i, 0
  %9 = select i1 %tobool17.not.i.i, i1 %tobool22.not.i.i, i1 false
  %__ret12.1.i.i = select i1 %9, i32 1, i32 %__ret12.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i.i)
  %tobool28.not.i.i = icmp eq i32 %__ret12.1.i.i, 0
  %10 = select i1 %tobool17.not.i.i, i1 true, i1 %tobool28.not.i.i
  br i1 %10, label %for.end.i.i, label %if.end34.i.i

if.end34.i.i:                                     ; preds = %for.cond.i.i
  %tobool35.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool35.not.i.i, label %cleanup.i.i, label %if.end34.i.i.if.end41.i.i_crit_edge

if.end34.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i.i

cleanup.i.i:                                      ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call38.i.i = call i32 @schedule_timeout(i32 noundef %__ret12.1.i.i) #14
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef %wait_to_stop.i.i, ptr noundef nonnull %__wq_entry.i.i) #14
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %for.end.i.i, %if.end34.i.i.if.end41.i.i_crit_edge
  %__ret12.284.i.i = phi i32 [ %__ret12.1.i.i, %for.end.i.i ], [ %call14.i.i, %if.end34.i.i.if.end41.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.284.i.i)
  %cmp.i.i = icmp sgt i32 %__ret12.284.i.i, 0
  br i1 %cmp.i.i, label %if.end41.i.i.do.body1.i_crit_edge, label %do.end47.i.i

if.end41.i.i.do.body1.i_crit_edge:                ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i

do.end47.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %xdev48.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 11
  %11 = ptrtoint ptr %xdev48.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xdev48.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %id49.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 2
  %15 = ptrtoint ptr %id49.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id49.i.i, align 4
  %17 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i79.i.i = getelementptr i8, ptr %18, i32 28
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.i.i) #14, !srcloc !217
  %20 = call i32 @llvm.bswap.i32(i32 %19) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %and.i80.i.i = lshr i32 %20, 21
  %shr.i81.i.i = and i32 %and.i80.i.i, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.44, i32 noundef %16, i32 noundef %shr.i81.i.i) #17
  br label %xilinx_dpdma_chan_stop.exit

do.body1.i:                                       ; preds = %if.end41.i.i.do.body1.i_crit_edge, %entry.do.body1.i_crit_edge
  %xdev.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 11
  %21 = ptrtoint ptr %xdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xdev.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 2
  %25 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i.i, align 4
  %add.i.i = add i32 %26, 6
  %shl.i.i = shl nuw i32 1, %add.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  %27 = call i32 @llvm.bswap.i32(i32 %shl.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %27) #14, !srcloc !216
  %lock.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 7
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %28 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i.i, align 4
  %shl.i2.i = shl i32 266305, %29
  %30 = ptrtoint ptr %xdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xdev.i.i, align 4
  %reg1.i.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %33, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  %34 = call i32 @llvm.bswap.i32(i32 %shl.i2.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 %34) #14, !srcloc !216
  %35 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i.i, align 4
  %shl3.i.i = shl i32 34087042, %36
  %37 = ptrtoint ptr %xdev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xdev.i.i, align 4
  %reg5.i.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %reg5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg5.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %40, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  %41 = call i32 @llvm.bswap.i32(i32 %shl3.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %41) #14, !srcloc !216
  %42 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i5.i = getelementptr i8, ptr %43, i32 24
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i5.i) #14, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %45 = and i32 %44, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i5.i, i32 %45) #14, !srcloc !216
  %running.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 4
  %46 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %running.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #14
  br label %xilinx_dpdma_chan_stop.exit

xilinx_dpdma_chan_stop.exit:                      ; preds = %do.body1.i, %do.end47.i.i
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %desc = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 10
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %48, null
  br i1 %tobool.not, label %xilinx_dpdma_chan_stop.exit.if.end_crit_edge, label %if.then

xilinx_dpdma_chan_stop.exit.if.end_crit_edge:     ; preds = %xilinx_dpdma_chan_stop.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %xilinx_dpdma_chan_stop.exit
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %48, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %52, ptr noundef %desc_terminated.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %node.i, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %48, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %node.i, ptr %52, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 9
  %57 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %58, %48
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %60 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %vchan_terminate_vdesc.exit, %xilinx_dpdma_chan_stop.exit.if.end_crit_edge
  %active = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %dchan, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %active, align 4
  %tobool12.not = icmp eq ptr %62, null
  br i1 %tobool12.not, label %if.end.if.end19_crit_edge, label %if.then13

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then13:                                        ; preds = %if.end
  %chan.i33 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %chan.i33 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chan.i33, align 4
  %node.i34 = getelementptr inbounds %struct.virt_dma_desc, ptr %62, i32 0, i32 2
  %desc_terminated.i35 = getelementptr inbounds %struct.virt_dma_chan, ptr %64, i32 0, i32 8
  %prev.i.i36 = getelementptr inbounds %struct.virt_dma_chan, ptr %64, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i36, align 4
  %call.i.i.i37 = call zeroext i1 @__list_add_valid(ptr noundef %node.i34, ptr noundef %66, ptr noundef %desc_terminated.i35) #14
  br i1 %call.i.i.i37, label %if.end.i.i.i39, label %if.then13.list_add_tail.exit.i42_crit_edge

if.then13.list_add_tail.exit.i42_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i42

if.end.i.i.i39:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %node.i34, ptr %prev.i.i36, align 4
  %68 = ptrtoint ptr %node.i34 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %desc_terminated.i35, ptr %node.i34, align 4
  %prev3.i.i.i38 = getelementptr inbounds %struct.virt_dma_desc, ptr %62, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i38, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %node.i34, ptr %66, align 4
  br label %list_add_tail.exit.i42

list_add_tail.exit.i42:                           ; preds = %if.end.i.i.i39, %if.then13.list_add_tail.exit.i42_crit_edge
  %cyclic.i40 = getelementptr inbounds %struct.virt_dma_chan, ptr %64, i32 0, i32 9
  %71 = ptrtoint ptr %cyclic.i40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cyclic.i40, align 4
  %cmp.i41 = icmp eq ptr %72, %62
  br i1 %cmp.i41, label %if.then.i43, label %list_add_tail.exit.i42.vchan_terminate_vdesc.exit44_crit_edge

list_add_tail.exit.i42.vchan_terminate_vdesc.exit44_crit_edge: ; preds = %list_add_tail.exit.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_terminate_vdesc.exit44

if.then.i43:                                      ; preds = %list_add_tail.exit.i42
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %cyclic.i40 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %cyclic.i40, align 4
  br label %vchan_terminate_vdesc.exit44

vchan_terminate_vdesc.exit44:                     ; preds = %if.then.i43, %list_add_tail.exit.i42.vchan_terminate_vdesc.exit44_crit_edge
  %74 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %active, align 4
  br label %if.end19

if.end19:                                         ; preds = %vchan_terminate_vdesc.exit44, %if.end.if.end19_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #14
  %75 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %76 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %head.i, ptr %head.i, align 4
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %head.i, ptr %75, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #14
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %desc_terminated.i46 = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %78 = ptrtoint ptr %desc_terminated.i46 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %desc_terminated.i46, align 4
  %cmp.i.not.i.i = icmp eq ptr %79, %desc_terminated.i46
  br i1 %cmp.i.not.i.i, label %if.end19.vchan_synchronize.exit_crit_edge, label %if.then.i.i

if.end19.vchan_synchronize.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %75, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i47 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev3.i.i.i47, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %79, ptr %81, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %head.i, ptr %83, align 4
  store ptr %83, ptr %75, align 4
  %87 = ptrtoint ptr %desc_terminated.i46 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %desc_terminated.i46, ptr %desc_terminated.i46, align 4
  store ptr %desc_terminated.i46, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %if.end19.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #14
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %clk) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_dma_xilinx_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %2 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_dma_data, align 4
  %arrayidx1 = getelementptr %struct.xilinx_dpdma_device, ptr %3, i32 0, i32 5, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @dma_get_slave_channel(ptr noundef nonnull %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_enable_irq(ptr nocapture noundef readonly %xdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %xdev, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -241) #14, !srcloc !216
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 -1) #14, !srcloc !216
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_debugfs_init(ptr nocapture noundef readonly %xdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @dpdma_debugfs, align 4
  %dbg_dev_root = getelementptr inbounds %struct.dma_device, ptr %xdev, i32 0, i32 53
  %0 = ptrtoint ptr %dbg_dev_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg_dev_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 292, ptr noundef %1, ptr noundef null, ptr noundef nonnull @fops_xilinx_dpdma_dbgfs) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %xdev, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.77) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_chan_vsync_irq(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %desc = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 10
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %running = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %tobool6.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %descriptors = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %descriptors, align 4
  %desc_id9 = getelementptr i8, ptr %10, i32 -252
  %11 = ptrtoint ptr %desc_id9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_id9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp10.not = icmp eq i32 %12, %8
  br i1 %cmp10.not, label %if.end26, label %do.body13

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_vsync_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_vsync_irq, %out)) #14
          to label %if.then20 [label %out], !srcloc !223

if.then20:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  %xdev = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 11
  %13 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdev, align 4
  %dev = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = ptrtoint ptr %desc_id9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_id9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_vsync_irq.__UNIQUE_ID_ddebug308, ptr noundef %16, ptr noundef nonnull @.str.28, i32 noundef %18, i32 noundef %20, i32 noundef %8) #14
  br label %out

if.end26:                                         ; preds = %if.end
  %active = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active, align 4
  %tobool28.not = icmp eq ptr %22, null
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i.i = icmp slt i32 %26, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !224

do.body2.i.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/xilinx/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #14, !srcloc !225
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then29
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %completed_cookie.i.i, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_vsync_irq, %do.end.i)) #14
          to label %if.then.i [label %do.end.i], !srcloc !223

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %32, ptr noundef nonnull @.str.31, ptr noundef nonnull %22, i32 noundef %26) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %34, ptr noundef %desc_completed.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %node.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %node.i, ptr %34, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.if.end32_crit_edge

list_add_tail.exit.i.if.end32_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then.i.i, %list_add_tail.exit.i.if.end32_crit_edge, %if.end26.if.end32_crit_edge
  %39 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %active, align 4
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %desc, align 4
  tail call fastcc void @xilinx_dpdma_chan_queue_transfer(ptr noundef %chan)
  br label %out

out:                                              ; preds = %if.end32, %if.then20, %do.body13, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_chan_notify_no_ostand(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !217
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %and.i = lshr i32 %3, 21
  %shr.i = and i32 %and.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not = icmp eq i32 %shr.i, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_notify_no_ostand.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_notify_no_ostand, %cleanup)) #14
          to label %if.then6 [label %cleanup], !srcloc !223

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %xdev = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 11
  %4 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdev, align 4
  %dev = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_notify_no_ostand.__UNIQUE_ID_ddebug307, ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef %9, i32 noundef %shr.i) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %xdev8 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 11
  %10 = ptrtoint ptr %xdev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xdev8, align 4
  %reg = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %id9 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %14 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id9, align 4
  %add = add i32 %15, 6
  %shl = shl nuw i32 1, %add
  %add.ptr.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #14, !srcloc !216
  %wait_to_stop = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_to_stop, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_handle_err_irq(ptr nocapture noundef readonly %xdev, i32 noundef %isr, i32 noundef %eisr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %isr, 117440512
  %and1.i = and i32 %eisr, -2147483647
  %0 = or i32 %and1.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not = icmp eq i32 %0, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_handle_err_irq.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_handle_err_irq, %do.end)) #14
          to label %land.lhs.true [label %do.end], !srcloc !223

land.lhs.true:                                    ; preds = %entry
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @xilinx_dpdma_handle_err_irq._rs, ptr noundef nonnull @.str.38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %xdev, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_handle_err_irq.descriptor, ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %isr, i32 noundef %eisr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %reg = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %xdev, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %and = and i32 %isr, -117440513
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #14, !srcloc !216
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %and9 = and i32 %eisr, 2147483646
  %add.ptr.i29 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %8 = tail call i32 @llvm.bswap.i32(i32 %and9) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %8) #14, !srcloc !216
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.036 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %.not, label %lor.lhs.false, label %for.body.if.then12_crit_edge

for.body.if.then12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.xilinx_dpdma_device, ptr %xdev, i32 0, i32 5, i32 %i.036
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.lhs.false.for.inc_crit_edge, label %if.end.i

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false
  %running.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %running.i, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %if.end.i.for.inc_crit_edge, label %land.lhs.true.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 266240, %14
  %and.i30 = and i32 %shl.i, %isr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool2.not.i = icmp eq i32 %and.i30, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then12_crit_edge

land.lhs.true.i.if.then12_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %shl4.i = shl i32 34087042, %14
  %and5.i = and i32 %shl4.i, %eisr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.if.then12_crit_edge

lor.lhs.false.i.if.then12_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then12:                                        ; preds = %lor.lhs.false.i.if.then12_crit_edge, %land.lhs.true.i.if.then12_crit_edge, %for.body.if.then12_crit_edge
  %arrayidx14 = getelementptr %struct.xilinx_dpdma_device, ptr %xdev, i32 0, i32 5, i32 %i.036
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14, align 4
  %state.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %16, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i32 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i32, label %if.then.i, label %if.then12.for.inc_crit_edge

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %err_task = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %16, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %err_task) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then12.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_chan_queue_transfer(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdev1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 11
  %0 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 7, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !224

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 834, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %desc25 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 10
  %3 = ptrtoint ptr %desc25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc25, align 4
  %tobool26.not = icmp eq ptr %4, null
  br i1 %tobool26.not, label %if.end28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %running = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %running, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool29.not = icmp eq i8 %6, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %10 = and i32 %9, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %10) #14, !srcloc !216
  %id.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 266305, %12
  %or.i = or i32 %shl.i, 251658240
  %13 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdev1, align 4
  %reg1.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #14, !srcloc !216
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %shl3.i = shl i32 34087042, %19
  %or4.i = or i32 %shl3.i, 117440512
  %20 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xdev1, align 4
  %reg6.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %reg6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg6.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %24) #14, !srcloc !216
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i152 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i152) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %28 = or i32 %27, -315752448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i152, i32 %28) #14, !srcloc !216
  %first_frame31 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 5
  %29 = ptrtoint ptr %first_frame31 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %first_frame31, align 1
  %30 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %running, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %31 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %32, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %32, i32 -108
  %tobool35.not158 = icmp eq ptr %add.ptr.i, null
  %tobool35.not = or i1 %cmp.not.i, %tobool35.not158
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %33 = ptrtoint ptr %desc25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %desc25, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.list_del.exit_crit_edge

if.end37.list_del.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end37.list_del.exit_crit_edge
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %descriptors = getelementptr i8, ptr %32, i32 12
  %42 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn159 = load ptr, ptr %descriptors, align 4
  %cmp47.not160 = icmp eq ptr %.pn159, %descriptors
  br i1 %cmp47.not160, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %.pn161 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn159, %list_del.exit.for.body_crit_edge ]
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %and = and i32 %44, 65535
  %desc_id = getelementptr i8, ptr %.pn161, i32 -252
  %45 = ptrtoint ptr %desc_id to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and, ptr %desc_id, align 4
  %46 = ptrtoint ptr %.pn161 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn161, align 4
  %cmp47.not = icmp eq ptr %.pn, %descriptors
  br i1 %cmp47.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %47 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %descriptors, align 4
  %reg61 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 1
  %49 = ptrtoint ptr %reg61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg61, align 4
  %dma_addr = getelementptr i8, ptr %48, i32 8
  %51 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_addr, align 8
  %add.ptr.i153 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %53) #14, !srcloc !216
  %ext_addr = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ext_addr, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool63.not = icmp eq i8 %55, 0
  br i1 %tobool63.not, label %for.end.if.end95_crit_edge, label %if.then64

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %reg61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #14, !srcloc !216
  br label %if.end95

if.end95:                                         ; preds = %if.then64, %for.end.if.end95_crit_edge
  %first_frame96 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 5
  %58 = ptrtoint ptr %first_frame96 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %first_frame96, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool97.not = icmp eq i8 %59, 0
  %60 = ptrtoint ptr %first_frame96 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %first_frame96, align 1
  %video_group = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 6
  %61 = ptrtoint ptr %video_group to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %video_group, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool99.not = icmp eq i8 %62, 0
  br i1 %tobool99.not, label %if.else, label %if.then100

if.then100:                                       ; preds = %if.end95
  %63 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xdev1, align 4
  %arrayidx.i = getelementptr %struct.xilinx_dpdma_device, ptr %64, i32 0, i32 5, i32 0
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 4
  %video_group.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %video_group.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %video_group.i, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i, label %if.then100.if.end.i_crit_edge, label %land.lhs.true.i

if.then100.if.end.i_crit_edge:                    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then100
  %running.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %66, i32 0, i32 4
  %69 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %running.i, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool5.not.i = icmp eq i8 %70, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then100.if.end.i_crit_edge
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %or.i154 = zext i1 %not.tobool.not.i to i32
  %arrayidx.1.i = getelementptr %struct.xilinx_dpdma_device, ptr %64, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.1.i, align 4
  %video_group.1.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %video_group.1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %video_group.1.i, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.1.i = icmp eq i8 %74, 0
  br i1 %tobool.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %land.lhs.true.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.i

land.lhs.true.1.i:                                ; preds = %if.end.i
  %running.1.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %72, i32 0, i32 4
  %75 = ptrtoint ptr %running.1.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %running.1.i, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool5.not.1.i = icmp eq i8 %76, 0
  br i1 %tobool5.not.1.i, label %land.lhs.true.1.i.cleanup_crit_edge, label %land.lhs.true.1.i.if.end.1.i_crit_edge

land.lhs.true.1.i.if.end.1.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.i

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1.i:                                       ; preds = %land.lhs.true.1.i.if.end.1.i_crit_edge, %if.end.i.if.end.1.i_crit_edge
  %or.1.i = phi i32 [ 2, %land.lhs.true.1.i.if.end.1.i_crit_edge ], [ 0, %if.end.i.if.end.1.i_crit_edge ]
  %channels.1.1.i = or i32 %or.1.i, %or.i154
  %arrayidx.2.i = getelementptr %struct.xilinx_dpdma_device, ptr %64, i32 0, i32 5, i32 2
  %77 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.2.i, align 4
  %video_group.2.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %video_group.2.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %video_group.2.i, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.2.i = icmp eq i8 %80, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge, label %land.lhs.true.2.i

if.end.1.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_video_group_ready.exit

land.lhs.true.2.i:                                ; preds = %if.end.1.i
  %running.2.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %78, i32 0, i32 4
  %81 = ptrtoint ptr %running.2.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %running.2.i, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool5.not.2.i = icmp eq i8 %82, 0
  br i1 %tobool5.not.2.i, label %land.lhs.true.2.i.cleanup_crit_edge, label %land.lhs.true.2.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge

land.lhs.true.2.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_video_group_ready.exit

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

xilinx_dpdma_chan_video_group_ready.exit:         ; preds = %land.lhs.true.2.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge, %if.end.1.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge
  %or.2.i = phi i32 [ 4, %land.lhs.true.2.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge ], [ 0, %if.end.1.i.xilinx_dpdma_chan_video_group_ready.exit_crit_edge ]
  %channels.1.2.i = or i32 %channels.1.1.i, %or.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels.1.2.i)
  %tobool102.not = icmp eq i32 %channels.1.2.i, 0
  br i1 %tobool102.not, label %xilinx_dpdma_chan_video_group_ready.exit.cleanup_crit_edge, label %xilinx_dpdma_chan_video_group_ready.exit.if.end106_crit_edge

xilinx_dpdma_chan_video_group_ready.exit.if.end106_crit_edge: ; preds = %xilinx_dpdma_chan_video_group_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

xilinx_dpdma_chan_video_group_ready.exit.cleanup_crit_edge: ; preds = %xilinx_dpdma_chan_video_group_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  %id = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id, align 4
  %shl105 = shl nuw i32 1, %84
  br label %if.end106

if.end106:                                        ; preds = %if.else, %xilinx_dpdma_chan_video_group_ready.exit.if.end106_crit_edge
  %channels.0 = phi i32 [ %channels.1.2.i, %xilinx_dpdma_chan_video_group_ready.exit.if.end106_crit_edge ], [ %shl105, %if.else ]
  %shl111 = shl i32 %channels.0, 6
  %reg.0 = select i1 %tobool97.not, i32 %shl111, i32 %channels.0
  %reg113 = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %reg113 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg113, align 4
  %add.ptr.i155 = getelementptr i8, ptr %86, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %87 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %87) #14, !srcloc !216
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %xilinx_dpdma_chan_video_group_ready.exit.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dpdma_chan_free_tx_desc(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdesc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %descriptors = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %vdesc, i32 0, i32 2
  %0 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descriptors, align 4
  %cmp.not28 = icmp eq ptr %1, %descriptors
  br i1 %cmp.not28, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %chan = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %vdesc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in29 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %sw_desc.0 = getelementptr i8, ptr %.pn.in29, i32 -256
  %2 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in29, align 256
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %desc_pool.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc_pool.i, align 4
  %dma_addr.i = getelementptr i8, ptr %.pn.in29, i32 8
  %15 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr.i, align 8
  tail call void @dma_pool_free(ptr noundef %14, ptr noundef %sw_desc.0, i32 noundef %16) #14
  %cmp.not = icmp eq ptr %.pn, %descriptors
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %vdesc) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dpdma_chan_err_task(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdev1 = getelementptr i8, ptr %t, i32 32
  %0 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdev1, align 4
  %reg.i.i = getelementptr i8, ptr %t, i32 -112
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %loop.0.i = phi i32 [ 50000, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #14
  %dec.i = add nsw i32 %loop.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loop.0.i)
  %cmp.not.i = icmp eq i32 %loop.0.i, 0
  %6 = and i32 %4, 57345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %7 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xdev1, align 4
  br i1 %tobool1.not.i, label %do.end4.i, label %if.then.i

if.then.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %reg.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 4
  %id.i = getelementptr i8, ptr %t, i32 -108
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %add.i = add i32 %12, 6
  %shl.i = shl nuw i32 1, %add.i
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #14, !srcloc !216
  br label %xilinx_dpdma_chan_poll_no_ostand.exit

do.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %id6.i = getelementptr i8, ptr %t, i32 -108
  %16 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id6.i, align 4
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #14, !srcloc !217
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %and.i3.i = lshr i32 %21, 21
  %shr.i4.i = and i32 %and.i3.i, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.44, i32 noundef %17, i32 noundef %shr.i4.i) #17
  br label %xilinx_dpdma_chan_poll_no_ostand.exit

xilinx_dpdma_chan_poll_no_ostand.exit:            ; preds = %do.end4.i, %if.then.i
  %add.ptr = getelementptr i8, ptr %t, i32 -292
  tail call fastcc void @xilinx_dpdma_chan_handle_err(ptr noundef %add.ptr)
  %reg = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 4
  %id = getelementptr i8, ptr %t, i32 -108
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %shl = shl i32 266240, %25
  %add.ptr.i = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #14, !srcloc !216
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %shl4 = shl i32 34087042, %30
  %add.ptr.i20 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %shl4) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %31) #14, !srcloc !216
  %lock = getelementptr i8, ptr %t, i32 -48
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  tail call fastcc void @xilinx_dpdma_chan_queue_transfer(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_chan_handle_err(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdev1 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 11
  %0 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdev1, align 4
  %lock = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_handle_err, %do.body17)) #14
          to label %if.then [label %do.body17], !srcloc !223

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %reg = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !217
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !217
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug309, ptr noundef %3, ptr noundef nonnull @.str.51, i32 noundef %5, i32 noundef %9, i32 noundef %13) #14
  br label %do.body17

do.body17:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_handle_err, %do.end40)) #14
          to label %if.then31 [label %do.end40], !srcloc !223

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %dev32 = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev32, align 4
  %id33 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %16 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id33, align 4
  %reg34 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 1
  %18 = ptrtoint ptr %reg34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg34, align 4
  %add.ptr.i113 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #14, !srcloc !217
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %22 = ptrtoint ptr %reg34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg34, align 4
  %add.ptr.i114 = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #14, !srcloc !217
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug310, ptr noundef %15, ptr noundef nonnull @.str.52, i32 noundef %17, i32 noundef %21, i32 noundef %25) #14
  br label %do.end40

do.end40:                                         ; preds = %if.then31, %do.body17
  %id.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 266305, %27
  %28 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xdev1, align 4
  %reg1.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %32) #14, !srcloc !216
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i, align 4
  %shl3.i = shl i32 34087042, %34
  %35 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xdev1, align 4
  %reg5.i = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %reg5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg5.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %38, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl3.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %39) #14, !srcloc !216
  %reg6.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 1
  %40 = ptrtoint ptr %reg6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg6.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 24
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  %43 = and i32 %42, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %43) #14, !srcloc !216
  %running = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 4
  %44 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %running, align 4
  %desc = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 10
  %active41 = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %active41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %active41, align 4
  %tobool42.not = icmp eq ptr %46, null
  br i1 %tobool42.not, label %do.end40.out_unlock_crit_edge, label %if.end44

do.end40.out_unlock_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end44:                                         ; preds = %do.end40
  %47 = ptrtoint ptr %active41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %active41, align 4
  tail call fastcc void @xilinx_dpdma_chan_dump_tx_desc(ptr noundef %chan, ptr noundef nonnull %46)
  %error = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %46, i32 0, i32 3
  %48 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %error, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool49.not = icmp eq i8 %49, 0
  br i1 %tobool49.not, label %if.end44.if.end71_crit_edge, label %do.body51

if.end44.if.end71_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

do.body51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_handle_err, %if.end71)) #14
          to label %if.then65 [label %if.end71], !srcloc !223

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  %dev66 = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev66, align 4
  %52 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug311, ptr noundef %51, ptr noundef nonnull @.str.53, i32 noundef %53) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %do.body51, %if.end44.if.end71_crit_edge
  %54 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc, align 4
  %tobool73.not = icmp eq ptr %55, null
  br i1 %tobool73.not, label %land.lhs.true, label %if.end71.if.end.i_crit_edge

if.end71.if.end.i_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true:                                    ; preds = %if.end71
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %56 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i.not = icmp eq ptr %57, %desc_issued
  br i1 %cmp.i.not, label %if.then76, label %land.lhs.true.if.end.i_crit_edge

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then76:                                        ; preds = %land.lhs.true
  %58 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %error, align 4
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %60, ptr noundef %desc_issued) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then76.out_unlock_crit_edge

if.then76.out_unlock_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end.i.i:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %node, ptr %prev.i, align 4
  %62 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %desc_issued, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %node, ptr %60, align 4
  br label %out_unlock

if.end.i:                                         ; preds = %land.lhs.true.if.end.i_crit_edge, %if.end71.if.end.i_crit_edge
  %descriptors.i = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %46, i32 0, i32 2
  %65 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %descriptors.i, align 4
  %cmp.not28.i = icmp eq ptr %66, %descriptors.i
  br i1 %cmp.not28.i, label %if.end.i.xilinx_dpdma_chan_free_tx_desc.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.xilinx_dpdma_chan_free_tx_desc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_free_tx_desc.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %chan.i = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %46, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in29.i = phi ptr [ %66, %for.body.lr.ph.i ], [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ]
  %sw_desc.0.i = getelementptr i8, ptr %.pn.in29.i, i32 -256
  %67 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i = load ptr, ptr %.pn.in29.i, align 256
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %.pn.in29.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %74 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chan.i, align 4
  %desc_pool.i.i = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %desc_pool.i.i, align 4
  %dma_addr.i.i = getelementptr i8, ptr %.pn.in29.i, i32 8
  %80 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_addr.i.i, align 8
  tail call void @dma_pool_free(ptr noundef %79, ptr noundef %sw_desc.0.i, i32 noundef %81) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %descriptors.i
  br i1 %cmp.not.i, label %list_del.exit.i.xilinx_dpdma_chan_free_tx_desc.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.xilinx_dpdma_chan_free_tx_desc.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %xilinx_dpdma_chan_free_tx_desc.exit

xilinx_dpdma_chan_free_tx_desc.exit:              ; preds = %list_del.exit.i.xilinx_dpdma_chan_free_tx_desc.exit_crit_edge, %if.end.i.xilinx_dpdma_chan_free_tx_desc.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %46) #14
  br label %out_unlock

out_unlock:                                       ; preds = %xilinx_dpdma_chan_free_tx_desc.exit, %if.end.i.i, %if.then76.out_unlock_crit_edge, %do.end40.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dpdma_chan_dump_tx_desc(ptr nocapture noundef readonly %chan, ptr noundef readonly %tx_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdev = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 11
  %0 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdev, align 4
  %dev1 = getelementptr inbounds %struct.xilinx_dpdma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body5)) #14
          to label %if.then [label %do.body5], !srcloc !223

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.55) #14
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.end22)) #14
          to label %if.then19 [label %do.end22], !srcloc !223

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  %id = getelementptr inbounds %struct.xilinx_dpdma_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug252, ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %5) #14
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %descriptors = getelementptr inbounds %struct.xilinx_dpdma_tx_desc, ptr %tx_desc, i32 0, i32 2
  %6 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn495 = load ptr, ptr %descriptors, align 4
  %cmp.not497 = icmp eq ptr %.pn495, %descriptors
  br i1 %cmp.not497, label %do.end22.do.body356_crit_edge, label %do.end22.for.body_crit_edge

do.end22.for.body_crit_edge:                      ; preds = %do.end22
  br label %for.body

do.end22.do.body356_crit_edge:                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body356

for.body:                                         ; preds = %do.end350.for.body_crit_edge, %do.end22.for.body_crit_edge
  %.pn499 = phi ptr [ %.pn, %do.end350.for.body_crit_edge ], [ %.pn495, %do.end22.for.body_crit_edge ]
  %i.0498 = phi i32 [ %i.1, %do.end350.for.body_crit_edge ], [ 0, %do.end22.for.body_crit_edge ]
  %sw_desc.0500 = getelementptr i8, ptr %.pn499, i32 -256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body45)) #14
          to label %if.then41 [label %do.body45], !srcloc !223

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %i.0498, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug253, ptr noundef %3, ptr noundef nonnull @.str.57, i32 noundef %i.0498) #14
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %for.body
  %i.1 = phi i32 [ %inc, %if.then41 ], [ %i.0498, %for.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body63)) #14
          to label %if.then59 [label %do.body63], !srcloc !223

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #16
  %dma_addr = getelementptr i8, ptr %.pn499, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug254, ptr noundef %3, ptr noundef nonnull @.str.58, ptr noundef %dma_addr) #14
  br label %do.body63

do.body63:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body81)) #14
          to label %if.then77 [label %do.body81], !srcloc !223

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %sw_desc.0500 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sw_desc.0500, align 256
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %8) #14
  br label %do.body81

do.body81:                                        ; preds = %if.then77, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body99)) #14
          to label %if.then95 [label %do.body99], !srcloc !223

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #16
  %desc_id = getelementptr i8, ptr %.pn499, i32 -252
  %9 = ptrtoint ptr %desc_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug256, ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %10) #14
  br label %do.body99

do.body99:                                        ; preds = %if.then95, %do.body81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body117)) #14
          to label %if.then113 [label %do.body117], !srcloc !223

if.then113:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #16
  %xfer_size = getelementptr i8, ptr %.pn499, i32 -248
  %11 = ptrtoint ptr %xfer_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xfer_size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %12) #14
  br label %do.body117

do.body117:                                       ; preds = %if.then113, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body135)) #14
          to label %if.then131 [label %do.body135], !srcloc !223

if.then131:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #16
  %hsize_stride = getelementptr i8, ptr %.pn499, i32 -244
  %13 = ptrtoint ptr %hsize_stride to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hsize_stride, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug258, ptr noundef %3, ptr noundef nonnull @.str.62, i32 noundef %14) #14
  br label %do.body135

do.body135:                                       ; preds = %if.then131, %do.body117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body153)) #14
          to label %if.then149 [label %do.body153], !srcloc !223

if.then149:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp_lsb = getelementptr i8, ptr %.pn499, i32 -240
  %15 = ptrtoint ptr %timestamp_lsb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timestamp_lsb, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug259, ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %16) #14
  br label %do.body153

do.body153:                                       ; preds = %if.then149, %do.body135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body171)) #14
          to label %if.then167 [label %do.body171], !srcloc !223

if.then167:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp_msb = getelementptr i8, ptr %.pn499, i32 -236
  %17 = ptrtoint ptr %timestamp_msb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timestamp_msb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug260, ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %18) #14
  br label %do.body171

do.body171:                                       ; preds = %if.then167, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body189)) #14
          to label %if.then185 [label %do.body189], !srcloc !223

if.then185:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #16
  %addr_ext = getelementptr i8, ptr %.pn499, i32 -232
  %19 = ptrtoint ptr %addr_ext to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr_ext, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug261, ptr noundef %3, ptr noundef nonnull @.str.65, i32 noundef %20) #14
  br label %do.body189

do.body189:                                       ; preds = %if.then185, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body207)) #14
          to label %if.then203 [label %do.body207], !srcloc !223

if.then203:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #16
  %next_desc = getelementptr i8, ptr %.pn499, i32 -228
  %21 = ptrtoint ptr %next_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next_desc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug262, ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef %22) #14
  br label %do.body207

do.body207:                                       ; preds = %if.then203, %do.body189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body225)) #14
          to label %if.then221 [label %do.body225], !srcloc !223

if.then221:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #16
  %src_addr = getelementptr i8, ptr %.pn499, i32 -224
  %23 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_addr, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug263, ptr noundef %3, ptr noundef nonnull @.str.67, i32 noundef %24) #14
  br label %do.body225

do.body225:                                       ; preds = %if.then221, %do.body207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body243)) #14
          to label %if.then239 [label %do.body243], !srcloc !223

if.then239:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #16
  %addr_ext_23 = getelementptr i8, ptr %.pn499, i32 -220
  %25 = ptrtoint ptr %addr_ext_23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr_ext_23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug264, ptr noundef %3, ptr noundef nonnull @.str.68, i32 noundef %26) #14
  br label %do.body243

do.body243:                                       ; preds = %if.then239, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body261)) #14
          to label %if.then257 [label %do.body261], !srcloc !223

if.then257:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #16
  %addr_ext_45 = getelementptr i8, ptr %.pn499, i32 -216
  %27 = ptrtoint ptr %addr_ext_45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr_ext_45, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug265, ptr noundef %3, ptr noundef nonnull @.str.69, i32 noundef %28) #14
  br label %do.body261

do.body261:                                       ; preds = %if.then257, %do.body243
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body279)) #14
          to label %if.then275 [label %do.body279], !srcloc !223

if.then275:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #16
  %src_addr2 = getelementptr i8, ptr %.pn499, i32 -212
  %29 = ptrtoint ptr %src_addr2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_addr2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug266, ptr noundef %3, ptr noundef nonnull @.str.70, i32 noundef %30) #14
  br label %do.body279

do.body279:                                       ; preds = %if.then275, %do.body261
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body297)) #14
          to label %if.then293 [label %do.body297], !srcloc !223

if.then293:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #16
  %src_addr3 = getelementptr i8, ptr %.pn499, i32 -208
  %31 = ptrtoint ptr %src_addr3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_addr3, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug267, ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %32) #14
  br label %do.body297

do.body297:                                       ; preds = %if.then293, %do.body279
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body315)) #14
          to label %if.then311 [label %do.body315], !srcloc !223

if.then311:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #16
  %src_addr4 = getelementptr i8, ptr %.pn499, i32 -204
  %33 = ptrtoint ptr %src_addr4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src_addr4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug268, ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef %34) #14
  br label %do.body315

do.body315:                                       ; preds = %if.then311, %do.body297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.body333)) #14
          to label %if.then329 [label %do.body333], !srcloc !223

if.then329:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #16
  %src_addr5 = getelementptr i8, ptr %.pn499, i32 -200
  %35 = ptrtoint ptr %src_addr5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_addr5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug269, ptr noundef %3, ptr noundef nonnull @.str.73, i32 noundef %36) #14
  br label %do.body333

do.body333:                                       ; preds = %if.then329, %do.body315
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.end350)) #14
          to label %if.then347 [label %do.end350], !srcloc !223

if.then347:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #16
  %crc = getelementptr i8, ptr %.pn499, i32 -196
  %37 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug270, ptr noundef %3, ptr noundef nonnull @.str.74, i32 noundef %38) #14
  br label %do.end350

do.end350:                                        ; preds = %if.then347, %do.body333
  %39 = ptrtoint ptr %.pn499 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn499, align 4
  %cmp.not = icmp eq ptr %.pn, %descriptors
  br i1 %cmp.not, label %do.end350.do.body356_crit_edge, label %do.end350.for.body_crit_edge

do.end350.for.body_crit_edge:                     ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end350.do.body356_crit_edge:                   ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body356

do.body356:                                       ; preds = %do.end350.do.body356_crit_edge, %do.end22.do.body356_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dpdma_chan_dump_tx_desc, %do.end373)) #14
          to label %if.then370 [label %do.end373], !srcloc !223

if.then370:                                       ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug271, ptr noundef %3, ptr noundef nonnull @.str.75) #14
  br label %do.end373

do.end373:                                        ; preds = %if.then370, %do.body356
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_debugfs_read(ptr nocapture noundef readnone %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp ne i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store i32 1, ptr @dpdma_debugfs, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  %3 = load volatile i32, ptr @dpdma_debugfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4.not = icmp eq i32 %3, 1
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %read = getelementptr [1 x %struct.xilinx_dpdma_debugfs_request], ptr @dpdma_debugfs_reqs, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %call6 = tail call i32 %5(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then5.done.thread_crit_edge, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then5.done.thread_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.thread

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.79, i32 noundef 32) #14
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5.if.end11_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5.if.end11_crit_edge ], [ 0, %if.else ]
  %call12 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i) #19
  %6 = tail call i32 @llvm.umin.i32(i32 %call12, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp1.i.i = icmp ugt i32 %6, 32
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !224

if.then3.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.85, i32 noundef 32, i32 noundef %6) #14
  br label %done.thread

if.then.i.i.i:                                    ; preds = %if.end11
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %6, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.86, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %6, i32 -1226833920) #20, !srcloc !226
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef %6) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call7.i.i, i32 noundef %6) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %6, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %6, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool16.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool16.not, label %done, label %copy_to_user.exit.done.thread_crit_edge

copy_to_user.exit.done.thread_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.thread

done.thread:                                      ; preds = %copy_to_user.exit.done.thread_crit_edge, %if.then3.i.i, %if.then5.done.thread_crit_edge
  %ret.1.ph = phi i32 [ -14, %copy_to_user.exit.done.thread_crit_edge ], [ %call6, %if.then5.done.thread_crit_edge ], [ -14, %if.then3.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

done:                                             ; preds = %copy_to_user.exit
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.end21, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  %add = add nuw nsw i32 %6, 1
  %conv = zext i32 %add to i64
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %done.cleanup_crit_edge, %done.thread, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end21 ], [ -12, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %done.cleanup_crit_edge ], [ %ret.1.ph, %done.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_debugfs_write(ptr nocapture noundef readnone %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  %kern_buff = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kern_buff) #14
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp ne i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @dpdma_debugfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2.not = icmp eq i32 %2, 1
  br i1 %cmp2.not, label %if.end8.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #21
  %3 = ptrtoint ptr %kern_buff to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %kern_buff, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end6

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i.i
  %call7 = tail call i32 @strncpy_from_user(ptr noundef nonnull %call9.i.i, ptr noundef %buf, i32 noundef %size) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.done_crit_edge, label %if.end10

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end10:                                         ; preds = %if.end6
  %call11 = call ptr @strsep(ptr noundef nonnull %kern_buff, ptr noundef nonnull @.str.82) #14
  %call13 = call i32 @strcasecmp(ptr noundef %call11, ptr noundef nonnull @.str.80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not.not, label %if.end19, label %if.end10.done_crit_edge

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %kern_buff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kern_buff, align 4
  %call21 = call i32 @xilinx_dpdma_debugfs_desc_done_irq_write(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  %spec.select = select i1 %cmp22, i32 %call21, i32 %size
  br label %done

done:                                             ; preds = %if.end19, %if.end10.done_crit_edge, %if.end6.done_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.done_crit_edge ], [ -22, %if.end10.done_crit_edge ], [ %spec.select, %if.end19 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end8.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kern_buff) #14
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_debugfs_desc_done_irq_read(ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @dpdma_debugfs, align 4
  %0 = load i16, ptr getelementptr inbounds (%struct.xilinx_dpdma_debugfs, ptr @dpdma_debugfs, i32 0, i32 1), align 4
  %conv = zext i16 %0 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 5, ptr noundef nonnull @.str.81, i32 noundef %conv)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dpdma_debugfs_desc_done_irq_write(ptr noundef %args) #2 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #14
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !219
  %call = call ptr @strsep(ptr noundef nonnull %args.addr, ptr noundef nonnull @.str.82) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @strncasecmp(ptr noundef nonnull %call, ptr noundef nonnull @.str.83, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call ptr @strsep(ptr noundef nonnull %args.addr, ptr noundef nonnull @.str.82) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef nonnull %id) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %lor.lhs.false11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp12 = icmp ugt i32 %3, 5
  br i1 %cmp12, label %lor.lhs.false11.cleanup_crit_edge, label %if.end14

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #16
  store i32 0, ptr @dpdma_debugfs, align 4
  store i16 0, ptr getelementptr inbounds (%struct.xilinx_dpdma_debugfs, ptr @dpdma_debugfs, i32 0, i32 1), align 4
  store i32 %3, ptr getelementptr inbounds (%struct.xilinx_dpdma_debugfs, ptr @dpdma_debugfs, i32 0, i32 2), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !180, !181, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !202, !204}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__initcall__kmod_xilinx_dpdma__322_1775_xilinx_dpdma_driver_init6, !1, !"__initcall__kmod_xilinx_dpdma__322_1775_xilinx_dpdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1775, i32 1}
!2 = !{ptr @__exitcall_xilinx_dpdma_driver_exit, !1, !"__exitcall_xilinx_dpdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author323, !4, !"__UNIQUE_ID_author323", i1 false, i1 false}
!4 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1777, i32 1}
!5 = !{ptr @__UNIQUE_ID_description324, !6, !"__UNIQUE_ID_description324", i1 false, i1 false}
!6 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1778, i32 1}
!7 = !{ptr @__UNIQUE_ID_file325, !8, !"__UNIQUE_ID_file325", i1 false, i1 false}
!8 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1779, i32 1}
!9 = !{ptr @__UNIQUE_ID_license326, !8, !"__UNIQUE_ID_license326", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1770, i32 12}
!12 = !{ptr @xilinx_dpdma_driver, !13, !"xilinx_dpdma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1766, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1644, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1656, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xilinx_dpdma_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @xilinx_dpdma_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1663, i32 3}
!26 = !{ptr @xilinx_dpdma_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xilinx_dpdma_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1695, i32 4}
!30 = !{ptr @xilinx_dpdma_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @xilinx_dpdma_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1703, i32 3}
!34 = !{ptr @xilinx_dpdma_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @xilinx_dpdma_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1709, i32 3}
!38 = !{ptr @xilinx_dpdma_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @xilinx_dpdma_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1716, i32 3}
!42 = !{ptr @xilinx_dpdma_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @xilinx_dpdma_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1724, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @xilinx_dpdma_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @xilinx_dpdma_probe._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1090, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xilinx_dpdma_chan_vsync_irq.__UNIQUE_ID_ddebug308, !50, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/xilinx/../virt-dma.h", i32 101, i32 2}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !55, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1055, i32 3}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @xilinx_dpdma_chan_done_irq._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @xilinx_dpdma_chan_done_irq._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @dpdma_debugfs, !66, !"dpdma_debugfs", i1 false, i1 false}
!66 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 290, i32 36}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 928, i32 3}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @xilinx_dpdma_chan_notify_no_ostand.__UNIQUE_ID_ddebug307, !68, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1434, i32 2}
!73 = !{ptr @xilinx_dpdma_handle_err_irq._rs, !72, !"_rs", i1 false, i1 false}
!74 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @xilinx_dpdma_handle_err_irq.descriptor, !72, !"descriptor", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1236, i32 3}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @xilinx_dpdma_alloc_chan_resources._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @xilinx_dpdma_alloc_chan_resources._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 694, i32 3}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @xilinx_dpdma_chan_prep_interleaved_dma._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @xilinx_dpdma_chan_prep_interleaved_dma._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 966, i32 2}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @xilinx_dpdma_chan_wait_no_ostand._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @xilinx_dpdma_chan_wait_no_ostand._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @xilinx_dpdma_chan_init.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1569, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @xilinx_dpdma_chan_init.__key.47, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1570, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1001, i32 2}
!100 = !{ptr @xilinx_dpdma_chan_poll_no_ostand._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @xilinx_dpdma_chan_poll_no_ostand._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1150, i32 2}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug309, !103, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1154, i32 2}
!108 = !{ptr @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug310, !107, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1171, i32 3}
!111 = !{ptr @xilinx_dpdma_chan_handle_err.__UNIQUE_ID_ddebug311, !110, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 595, i32 2}
!114 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug251, !113, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 596, i32 2}
!118 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug252, !117, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 601, i32 3}
!121 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug253, !120, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 602, i32 3}
!124 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug254, !123, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 603, i32 3}
!127 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug255, !126, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 604, i32 3}
!130 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug256, !129, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 605, i32 3}
!133 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug257, !132, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 606, i32 3}
!136 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug258, !135, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 607, i32 3}
!139 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug259, !138, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 608, i32 3}
!142 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug260, !141, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 609, i32 3}
!145 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug261, !144, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 610, i32 3}
!148 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug262, !147, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 611, i32 3}
!151 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug263, !150, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 612, i32 3}
!154 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug264, !153, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 613, i32 3}
!157 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug265, !156, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 614, i32 3}
!160 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug266, !159, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 615, i32 3}
!163 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug267, !162, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 616, i32 3}
!166 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug268, !165, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 617, i32 3}
!169 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug269, !168, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 618, i32 3}
!172 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug270, !171, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 621, i32 2}
!175 = !{ptr @xilinx_dpdma_chan_dump_tx_desc.__UNIQUE_ID_ddebug271, !174, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 457, i32 29}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 460, i32 3}
!180 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @xilinx_dpdma_debugfs_init._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @xilinx_dpdma_debugfs_init._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @fops_xilinx_dpdma_dbgfs, !184, !"fops_xilinx_dpdma_dbgfs", i1 false, i1 false}
!184 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 445, i32 37}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 379, i32 22}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 350, i32 11}
!189 = !{ptr @dpdma_debugfs_reqs, !190, !"dpdma_debugfs_reqs", i1 false, i1 false}
!190 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 348, i32 44}
!191 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 313, i32 29}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 325, i32 22}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 326, i32 31}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!199 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!204 = !{ptr @xilinx_dpdma_of_match, !205, !"xilinx_dpdma_of_match", i1 false, i1 false}
!205 = !{!"../drivers/dma/xilinx/xilinx_dpdma.c", i32 1760, i32 34}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{i64 2153963400}
!216 = !{i64 6421278}
!217 = !{i64 6421696}
!218 = !{i64 2153962045}
!219 = !{!"auto-init"}
!220 = !{i64 2154410229}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i8 0, i8 2}
!223 = !{i64 2148802023, i64 2148802028, i64 2148802041, i64 2148802085, i64 2148802119, i64 2148802140}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{i64 2154408719, i64 2154409216, i64 2154408756, i64 2154408812, i64 2154408846, i64 2154408870, i64 2154408911, i64 2154408932, i64 2154408960, i64 2154408994}
!226 = !{i64 2152284539, i64 2152284564}
