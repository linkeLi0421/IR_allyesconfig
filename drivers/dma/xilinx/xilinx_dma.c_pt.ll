; ModuleID = '/llk/IR_all_yes/drivers/dma/xilinx/xilinx_dma.c_pt.bc'
source_filename = "../drivers/dma/xilinx/xilinx_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xilinx_vdma_channel_set_config\22, \22a\22\09"
module asm "\09.weak\09__crc_xilinx_vdma_channel_set_config\09\09\09\09"
module asm "\09.long\09__crc_xilinx_vdma_channel_set_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xilinx_vdma_channel_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22xilinx_vdma_channel_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_xilinx_vdma_channel_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xilinx_dma_config = type { i32, ptr, ptr, i32 }
%struct.xilinx_vdma_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.xilinx_dma_chan = type { ptr, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.dma_chan, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.tasklet_struct, %struct.xilinx_vdma_config, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xilinx_dma_device = type { ptr, ptr, %struct.dma_device, [32 x ptr], i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xilinx_axidma_tx_segment = type { %struct.xilinx_axidma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_axidma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [12 x i8] }
%struct.xilinx_aximcdma_tx_segment = type { %struct.xilinx_aximcdma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_aximcdma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [12 x i8] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.xilinx_dma_tx_descriptor = type { %struct.dma_async_tx_descriptor, %struct.list_head, %struct.list_head, i8, i8, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.xilinx_cdma_tx_segment = type { %struct.xilinx_cdma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_cdma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.xilinx_vdma_tx_segment = type { %struct.xilinx_vdma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_vdma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, [36 x i8] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dmaengine_result = type { i32, i32 }

@__kstrtab_xilinx_vdma_channel_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_xilinx_vdma_channel_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_xilinx_vdma_channel_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xilinx_vdma_channel_set_config to i32), ptr @__kstrtab_xilinx_vdma_channel_set_config, ptr @__kstrtabns_xilinx_vdma_channel_set_config }, section "___ksymtab+xilinx_vdma_channel_set_config", align 4
@__initcall__kmod_xilinx_dma__250_3340_xilinx_vdma_driver_init6 = internal global ptr @xilinx_vdma_driver_init, section ".initcall6.init", align 4
@xilinx_vdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xilinx_dma_probe, ptr @xilinx_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xilinx_dma_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xilinx_vdma_driver_exit = internal global ptr @xilinx_vdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author251 = internal constant [31 x i8] c"xilinx_dma.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [42 x i8] c"xilinx_dma.description=Xilinx VDMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [46 x i8] c"xilinx_dma.file=drivers/dma/xilinx/xilinx_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [26 x i8] c"xilinx_dma.license=GPL v2\00", section ".modinfo", align 1
@xilinx_dma_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1719, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reset timeout, cr %x, sr %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xilinx_dma_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/dma/xilinx/xilinx_dma.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xilinx_dma_reset._entry_ptr = internal global ptr @xilinx_dma_reset._entry, section ".printk_index", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xilinx-vdma\00", [20 x i8] zeroinitializer }, align 32
@xilinx_dma_of_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-dma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axidma_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-cdma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axicdma_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-vdma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axivdma_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-mcdma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aximcdma_config }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xlnx,sg-length-width\00", [43 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 3177, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"invalid xlnx,sg-length-width property value. Using default width\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xilinx_dma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr = internal global ptr @xilinx_dma_probe._entry, section ".printk_index", align 4
@xilinx_dma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 3180, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Please ensure that IP supports buffer length > 23 bits\0A\00", [40 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.12 = internal global ptr @xilinx_dma_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,num-fstores\00", [47 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 3192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing xlnx,num-fstores property\0A\00", [61 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.16 = internal global ptr @xilinx_dma_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,flush-fsync\00", [47 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 3200, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing xlnx,flush-fsync property\0A\00", [61 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.20 = internal global ptr @xilinx_dma_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xlnx,addrwidth\00", [17 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.2, i32 3205, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing xlnx,addrwidth property\0A\00", [63 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.24 = internal global ptr @xilinx_dma_probe._entry.22, section ".printk_index", align 4
@xilinx_dma_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.2, i32 3274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register the dma device\0A\00", [61 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.27 = internal global ptr @xilinx_dma_probe._entry.25, section ".printk_index", align 4
@xilinx_dma_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str.2, i32 3281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to register DMA to DT\0A\00", [34 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.30 = internal global ptr @xilinx_dma_probe._entry.28, section ".printk_index", align 4
@xilinx_dma_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.2, i32 3287, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Xilinx AXI DMA Engine Driver Probed!!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.34 = internal global ptr @xilinx_dma_probe._entry.31, section ".printk_index", align 4
@xilinx_dma_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.8, ptr @.str.2, i32 3289, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Xilinx AXI CDMA Engine Driver Probed!!\0A\00", [56 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.37 = internal global ptr @xilinx_dma_probe._entry.35, section ".printk_index", align 4
@xilinx_dma_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.8, ptr @.str.2, i32 3291, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Xilinx AXI MCDMA Engine Driver Probed!!\0A\00", [55 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.40 = internal global ptr @xilinx_dma_probe._entry.38, section ".printk_index", align 4
@xilinx_dma_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.8, ptr @.str.2, i32 3293, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Xilinx AXI VDMA Engine Driver Probed!!\0A\00", [56 x i8] zeroinitializer }, align 32
@xilinx_dma_probe._entry_ptr.43 = internal global ptr @xilinx_dma_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s_axi_lite_aclk\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get axi_aclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m_axi_mm2s_aclk\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m_axis_mm2s_aclk\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m_axi_s2mm_aclk\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s_axis_s2mm_aclk\00", [47 x i8] zeroinitializer }, align 32
@axivdma_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 2823, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable axi_clk (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axivdma_clk_init\00", [47 x i8] zeroinitializer }, align 32
@axivdma_clk_init._entry_ptr = internal global ptr @axivdma_clk_init._entry, section ".printk_index", align 4
@axivdma_clk_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 2829, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable tx_clk (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@axivdma_clk_init._entry_ptr.54 = internal global ptr @axivdma_clk_init._entry.52, section ".printk_index", align 4
@axivdma_clk_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 2835, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable txs_clk (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@axivdma_clk_init._entry_ptr.57 = internal global ptr @axivdma_clk_init._entry.55, section ".printk_index", align 4
@axivdma_clk_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 2841, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable rx_clk (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@axivdma_clk_init._entry_ptr.60 = internal global ptr @axivdma_clk_init._entry.58, section ".printk_index", align 4
@axivdma_clk_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 2847, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable rxs_clk (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@axivdma_clk_init._entry_ptr.63 = internal global ptr @axivdma_clk_init._entry.61, section ".printk_index", align 4
@xilinx_dma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to allocate channel %d descriptors\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xilinx_dma_alloc_chan_resources\00", [32 x i8] zeroinitializer }, align 32
@xilinx_dma_alloc_chan_resources._entry_ptr = internal global ptr @xilinx_dma_alloc_chan_resources._entry, section ".printk_index", align 4
@xilinx_dma_alloc_chan_resources._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 1117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to allocate desc segment for cyclic DMA\0A\00", [48 x i8] zeroinitializer }, align 32
@xilinx_dma_alloc_chan_resources._entry_ptr.68 = internal global ptr @xilinx_dma_alloc_chan_resources._entry.66, section ".printk_index", align 4
@xilinx_dma_alloc_chan_resources._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@xilinx_dma_alloc_chan_resources._entry_ptr.70 = internal global ptr @xilinx_dma_alloc_chan_resources._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilinx_cdma_desc_pool\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilinx_vdma_desc_pool\00", [42 x i8] zeroinitializer }, align 32
@xilinx_dma_alloc_chan_resources._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.65, ptr @.str.2, i32 1180, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to allocate channel %d descriptor pool\0A\00", [49 x i8] zeroinitializer }, align 32
@xilinx_dma_alloc_chan_resources._entry_ptr.75 = internal global ptr @xilinx_dma_alloc_chan_resources._entry.73, section ".printk_index", align 4
@xilinx_dma_free_chan_resources.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.76, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 -31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx_dma\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xilinx_dma_free_chan_resources\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Free all channel resources.\0A\00", [35 x i8] zeroinitializer }, align 32
@xilinx_dma_terminate_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 2571, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot stop channel %p: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xilinx_dma_terminate_all\00", [39 x i8] zeroinitializer }, align 32
@xilinx_dma_terminate_all._entry_ptr = internal global ptr @xilinx_dma_terminate_all._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@append_desc_queue.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.76, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 1, i8 -27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"append_desc_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"desc pendingcount is too high\0A\00", [33 x i8] zeroinitializer }, align 32
@xilinx_axidma_alloc_tx_segment.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.76, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xilinx_axidma_alloc_tx_segment\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not find free tx segment\0A\00", [32 x i8] zeroinitializer }, align 32
@xilinx_cdma_prep_memcpy_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 2233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Zero-size SG transfer requested\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xilinx_cdma_prep_memcpy_sg\00", [37 x i8] zeroinitializer }, align 32
@xilinx_cdma_prep_memcpy_sg._entry_ptr = internal global ptr @xilinx_cdma_prep_memcpy_sg._entry, section ".printk_index", align 4
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@xilinx_dma_child_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 3057, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing dma-channels property\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xilinx_dma_child_probe\00", [41 x i8] zeroinitializer }, align 32
@xilinx_dma_child_probe._entry_ptr = internal global ptr @xilinx_dma_child_probe._entry, section ".printk_index", align 4
@xilinx_dma_chan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,include-dre\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,genlock-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xlnx,datawidth\00", [17 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 2921, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing xlnx,datawidth property\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilinx_dma_chan_probe\00", [42 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry_ptr = internal global ptr @xilinx_dma_chan_probe._entry, section ".printk_index", align 4
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xlnx,axi-vdma-mm2s-channel\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xlnx,axi-dma-mm2s-channel\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlnx,axi-cdma-channel\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xlnx,axi-vdma-s2mm-channel\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xlnx,axi-dma-s2mm-channel\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlnx,enable-vert-flip\00", [42 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.2, i32 2978, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid channel compatible node\0A\00", [63 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry_ptr.104 = internal global ptr @xilinx_dma_chan_probe._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilinx-dma-controller\00", [42 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.95, ptr @.str.2, i32 2989, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry_ptr.109 = internal global ptr @xilinx_dma_chan_probe._entry.107, section ".printk_index", align 4
@xilinx_dma_chan_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.76, ptr @.str.95, ptr @.str.2, ptr @.str.110, i8 2, i8 -15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ch %d: SG %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.95, ptr @.str.2, i32 3032, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reset channel failed\0A\00", [42 x i8] zeroinitializer }, align 32
@xilinx_dma_chan_probe._entry_ptr.115 = internal global ptr @xilinx_dma_chan_probe._entry.113, section ".printk_index", align 4
@xilinx_dma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1320, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot start channel %p: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xilinx_dma_start\00", [47 x i8] zeroinitializer }, align 32
@xilinx_dma_start._entry_ptr = internal global ptr @xilinx_dma_start._entry, section ".printk_index", align 4
@axidma_config = internal constant { %struct.xilinx_dma_config, [16 x i8] } { %struct.xilinx_dma_config { i32 0, ptr @axidma_clk_init, ptr @xilinx_dma_irq_handler, i32 2 }, [16 x i8] zeroinitializer }, align 32
@axicdma_config = internal constant { %struct.xilinx_dma_config, [16 x i8] } { %struct.xilinx_dma_config { i32 1, ptr @axicdma_clk_init, ptr @xilinx_dma_irq_handler, i32 1 }, [16 x i8] zeroinitializer }, align 32
@axivdma_config = internal constant { %struct.xilinx_dma_config, [16 x i8] } { %struct.xilinx_dma_config { i32 2, ptr @axivdma_clk_init, ptr @xilinx_dma_irq_handler, i32 2 }, [16 x i8] zeroinitializer }, align 32
@aximcdma_config = internal constant { %struct.xilinx_dma_config, [16 x i8] } { %struct.xilinx_dma_config { i32 3, ptr @axidma_clk_init, ptr @xilinx_mcdma_irq_handler, i32 32 }, [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"m_axi_sg_aclk\00", [18 x i8] zeroinitializer }, align 32
@axidma_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.119, ptr @.str.2, i32 2722, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axidma_clk_init\00", [16 x i8] zeroinitializer }, align 32
@axidma_clk_init._entry_ptr = internal global ptr @axidma_clk_init._entry, section ".printk_index", align 4
@axidma_clk_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.119, ptr @.str.2, i32 2728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@axidma_clk_init._entry_ptr.121 = internal global ptr @axidma_clk_init._entry.120, section ".printk_index", align 4
@axidma_clk_init._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.119, ptr @.str.2, i32 2734, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@axidma_clk_init._entry_ptr.123 = internal global ptr @axidma_clk_init._entry.122, section ".printk_index", align 4
@axidma_clk_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.119, ptr @.str.2, i32 2740, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable sg_clk (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@axidma_clk_init._entry_ptr.126 = internal global ptr @axidma_clk_init._entry.124, section ".printk_index", align 4
@xilinx_dma_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 1860, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Channel %p has errors %x, cdr %x tdr %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xilinx_dma_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@xilinx_dma_irq_handler._entry_ptr = internal global ptr @xilinx_dma_irq_handler._entry, section ".printk_index", align 4
@xilinx_dma_irq_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.76, ptr @.str.128, ptr @.str.2, ptr @.str.129, i8 1, i8 -45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Inter-packet latency too long\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m_axi_aclk\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get dev_clk\0A\00", [41 x i8] zeroinitializer }, align 32
@axicdma_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.132, ptr @.str.2, i32 2776, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axicdma_clk_init\00", [47 x i8] zeroinitializer }, align 32
@axicdma_clk_init._entry_ptr = internal global ptr @axicdma_clk_init._entry, section ".printk_index", align 4
@axicdma_clk_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 2782, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable dev_clk (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@axicdma_clk_init._entry_ptr.135 = internal global ptr @axicdma_clk_init._entry.133, section ".printk_index", align 4
@xilinx_mcdma_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 1797, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Channel %p has errors %x cdr %x tdr %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xilinx_mcdma_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@xilinx_mcdma_irq_handler._entry_ptr = internal global ptr @xilinx_mcdma_irq_handler._entry, section ".printk_index", align 4
@xilinx_mcdma_irq_handler.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.76, ptr @.str.137, ptr @.str.2, ptr @.str.129, i8 1, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@switch.table.xilinx_dma_chan_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @xilinx_dma_start_transfer, ptr @xilinx_cdma_start_transfer, ptr @xilinx_vdma_start_transfer, ptr @xilinx_mcdma_start_transfer], [16 x i8] zeroinitializer }, align 32
@switch.table.xilinx_dma_chan_probe.138 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @xilinx_dma_stop_transfer, ptr @xilinx_cdma_stop_transfer, ptr @xilinx_dma_stop_transfer, ptr @xilinx_dma_stop_transfer], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"xilinx_vdma_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3331, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1717, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3333, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"xilinx_dma_of_ids\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3114, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3172, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3176, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3180, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3188, i32 36 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3191, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3196, i32 36 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3199, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3203, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3205, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3274, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3281, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3287, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3289, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3291, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3293, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2800, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2802, i32 55 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2804, i32 37 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2808, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2812, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2816, i32 38 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2822, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2829, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2835, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2841, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2847, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1100, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1116, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1144, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1162, i32 37 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1168, i32 37 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1178, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 903, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2569, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1941, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 694, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2232, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3055, i32 35 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3057, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2908, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2915, i32 40 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2917, i32 46 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2919, i32 35 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2921, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2933, i32 36 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2934, i32 36 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2935, i32 36 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2950, i32 9 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2952, i32 9 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2957, i32 6 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2978, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2985, i32 46 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2987, i32 19 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2989, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3013, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3032, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1319, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant [14 x i8] c"axidma_config\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3087, i32 39 }
@___asan_gen_.482 = private unnamed_addr constant [15 x i8] c"axicdma_config\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3100, i32 39 }
@___asan_gen_.485 = private unnamed_addr constant [15 x i8] c"axivdma_config\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3107, i32 39 }
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"aximcdma_config\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 3094, i32 39 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2716, i32 37 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2722, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2728, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2734, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2740, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1856, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1870, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2770, i32 38 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2772, i32 55 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2776, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2782, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.549 = private constant [35 x i8] c"../drivers/dma/xilinx/xilinx_dma.c\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1791, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant [35 x i8] c"switch.table.xilinx_dma_chan_probe\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [39 x i8] c"switch.table.xilinx_dma_chan_probe.138\00", align 1
@llvm.compiler.used = appending global [181 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_xilinx_vdma_driver_exit, ptr @__initcall__kmod_xilinx_dma__250_3340_xilinx_vdma_driver_init6, ptr @__ksymtab_xilinx_vdma_channel_set_config, ptr @axicdma_clk_init._entry, ptr @axicdma_clk_init._entry.133, ptr @axicdma_clk_init._entry_ptr, ptr @axicdma_clk_init._entry_ptr.135, ptr @axidma_clk_init._entry, ptr @axidma_clk_init._entry.120, ptr @axidma_clk_init._entry.122, ptr @axidma_clk_init._entry.124, ptr @axidma_clk_init._entry_ptr, ptr @axidma_clk_init._entry_ptr.121, ptr @axidma_clk_init._entry_ptr.123, ptr @axidma_clk_init._entry_ptr.126, ptr @axivdma_clk_init._entry, ptr @axivdma_clk_init._entry.52, ptr @axivdma_clk_init._entry.55, ptr @axivdma_clk_init._entry.58, ptr @axivdma_clk_init._entry.61, ptr @axivdma_clk_init._entry_ptr, ptr @axivdma_clk_init._entry_ptr.54, ptr @axivdma_clk_init._entry_ptr.57, ptr @axivdma_clk_init._entry_ptr.60, ptr @axivdma_clk_init._entry_ptr.63, ptr @xilinx_cdma_prep_memcpy_sg._entry, ptr @xilinx_cdma_prep_memcpy_sg._entry_ptr, ptr @xilinx_dma_alloc_chan_resources._entry, ptr @xilinx_dma_alloc_chan_resources._entry.66, ptr @xilinx_dma_alloc_chan_resources._entry.69, ptr @xilinx_dma_alloc_chan_resources._entry.73, ptr @xilinx_dma_alloc_chan_resources._entry_ptr, ptr @xilinx_dma_alloc_chan_resources._entry_ptr.68, ptr @xilinx_dma_alloc_chan_resources._entry_ptr.70, ptr @xilinx_dma_alloc_chan_resources._entry_ptr.75, ptr @xilinx_dma_chan_probe._entry, ptr @xilinx_dma_chan_probe._entry.102, ptr @xilinx_dma_chan_probe._entry.107, ptr @xilinx_dma_chan_probe._entry.113, ptr @xilinx_dma_chan_probe._entry_ptr, ptr @xilinx_dma_chan_probe._entry_ptr.104, ptr @xilinx_dma_chan_probe._entry_ptr.109, ptr @xilinx_dma_chan_probe._entry_ptr.115, ptr @xilinx_dma_child_probe._entry, ptr @xilinx_dma_child_probe._entry_ptr, ptr @xilinx_dma_irq_handler._entry, ptr @xilinx_dma_irq_handler._entry_ptr, ptr @xilinx_dma_probe._entry, ptr @xilinx_dma_probe._entry.10, ptr @xilinx_dma_probe._entry.14, ptr @xilinx_dma_probe._entry.18, ptr @xilinx_dma_probe._entry.22, ptr @xilinx_dma_probe._entry.25, ptr @xilinx_dma_probe._entry.28, ptr @xilinx_dma_probe._entry.31, ptr @xilinx_dma_probe._entry.35, ptr @xilinx_dma_probe._entry.38, ptr @xilinx_dma_probe._entry.41, ptr @xilinx_dma_probe._entry_ptr, ptr @xilinx_dma_probe._entry_ptr.12, ptr @xilinx_dma_probe._entry_ptr.16, ptr @xilinx_dma_probe._entry_ptr.20, ptr @xilinx_dma_probe._entry_ptr.24, ptr @xilinx_dma_probe._entry_ptr.27, ptr @xilinx_dma_probe._entry_ptr.30, ptr @xilinx_dma_probe._entry_ptr.34, ptr @xilinx_dma_probe._entry_ptr.37, ptr @xilinx_dma_probe._entry_ptr.40, ptr @xilinx_dma_probe._entry_ptr.43, ptr @xilinx_dma_reset._entry, ptr @xilinx_dma_reset._entry_ptr, ptr @xilinx_dma_start._entry, ptr @xilinx_dma_start._entry_ptr, ptr @xilinx_dma_terminate_all._entry, ptr @xilinx_dma_terminate_all._entry_ptr, ptr @xilinx_mcdma_irq_handler._entry, ptr @xilinx_mcdma_irq_handler._entry_ptr, ptr @xilinx_vdma_driver_exit, ptr @xilinx_vdma_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xilinx_dma_of_ids, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @xilinx_dma_chan_probe.__key, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @axidma_config, ptr @axicdma_config, ptr @axivdma_config, ptr @aximcdma_config, ptr @.str.118, ptr @.str.119, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @switch.table.xilinx_dma_chan_probe, ptr @switch.table.xilinx_dma_chan_probe.138], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_vdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_of_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axivdma_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axivdma_clk_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axivdma_clk_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axivdma_clk_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axivdma_clk_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_alloc_chan_resources._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_alloc_chan_resources._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_alloc_chan_resources._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_terminate_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cdma_prep_memcpy_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_child_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_chan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_chan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_chan_probe._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_chan_probe._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_chan_probe._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axidma_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axicdma_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axivdma_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aximcdma_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axidma_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axidma_clk_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axidma_clk_init._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axidma_clk_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_dma_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axicdma_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axicdma_clk_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_mcdma_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xilinx_dma_chan_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xilinx_dma_chan_probe.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xilinx_vdma_channel_set_config(ptr nocapture noundef %dchan, ptr nocapture noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %reset = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 8
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @xilinx_dma_chan_reset(ptr noundef %add.ptr)
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_offset.i = getelementptr i8, ptr %dchan, i32 -84
  %2 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_offset.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg, align 4
  %config = getelementptr i8, ptr %dchan, i32 120
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %config, align 4
  %park = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 4
  %13 = ptrtoint ptr %park to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %park, align 4
  %park4 = getelementptr i8, ptr %dchan, i32 136
  %15 = ptrtoint ptr %park4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %park4, align 4
  %gen_lock = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 1
  %16 = ptrtoint ptr %gen_lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gen_lock, align 4
  %gen_lock6 = getelementptr i8, ptr %dchan, i32 124
  %18 = ptrtoint ptr %gen_lock6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gen_lock6, align 4
  %master = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 2
  %19 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %master, align 4
  %master8 = getelementptr i8, ptr %dchan, i32 128
  %21 = ptrtoint ptr %master8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %master8, align 4
  %and = and i32 %9, -9
  %22 = load i32, ptr %gen_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %genlock = getelementptr i8, ptr %dchan, i32 90
  %23 = ptrtoint ptr %genlock to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %genlock, align 2, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not = icmp eq i8 %24, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end16_crit_edge, label %if.then12

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or = and i32 %9, -3849
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %master, align 4
  %shl = shl i32 %26, 8
  %and13 = or i32 %or, %shl
  %or15 = or i32 %and13, 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %dmacr.0 = phi i32 [ %or15, %if.then12 ], [ %and, %land.lhs.true.if.end16_crit_edge ], [ %and, %if.end.if.end16_crit_edge ]
  %frm_cnt_en = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 3
  %27 = ptrtoint ptr %frm_cnt_en to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frm_cnt_en, align 4
  %frm_cnt_en18 = getelementptr i8, ptr %dchan, i32 132
  %29 = ptrtoint ptr %frm_cnt_en18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %frm_cnt_en18, align 4
  %vflip_en = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 10
  %30 = ptrtoint ptr %vflip_en to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vflip_en, align 4, !range !278
  %vflip_en21 = getelementptr i8, ptr %dchan, i32 160
  %32 = ptrtoint ptr %vflip_en21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %vflip_en21, align 4
  %33 = ptrtoint ptr %park to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %park, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool23.not = icmp eq i32 %34, 0
  br i1 %tobool23.not, label %if.end16.if.end29_crit_edge, label %if.then24

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %park_frm = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 5
  %35 = ptrtoint ptr %park_frm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %park_frm, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end16.if.end29_crit_edge
  %.sink = phi i32 [ %36, %if.then24 ], [ -1, %if.end16.if.end29_crit_edge ]
  %37 = getelementptr i8, ptr %dchan, i32 140
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %37, align 4
  %coalesc = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 6
  %39 = ptrtoint ptr %coalesc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %coalesc, align 4
  %coalesc31 = getelementptr i8, ptr %dchan, i32 144
  %41 = ptrtoint ptr %coalesc31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %coalesc31, align 4
  %delay = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 7
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  %delay33 = getelementptr i8, ptr %dchan, i32 148
  %44 = ptrtoint ptr %delay33 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %delay33, align 4
  %45 = load i32, ptr %coalesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %45)
  %cmp = icmp slt i32 %45, 256
  br i1 %cmp, label %if.then35, label %if.end29.if.end43_crit_edge

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %and36 = and i32 %dmacr.0, -16711681
  %shl38 = shl i32 %45, 16
  %or39 = or i32 %shl38, %and36
  %46 = ptrtoint ptr %coalesc31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %coalesc31, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end29.if.end43_crit_edge
  %dmacr.1 = phi i32 [ %or39, %if.then35 ], [ %dmacr.0, %if.end29.if.end43_crit_edge ]
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %48)
  %cmp45 = icmp slt i32 %48, 256
  br i1 %cmp45, label %if.then46, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %and47 = and i32 %dmacr.1, 16777215
  %shl49 = shl i32 %48, 24
  %or50 = or i32 %shl49, %and47
  %49 = ptrtoint ptr %delay33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %delay33, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.end43.if.end54_crit_edge
  %dmacr.2 = phi i32 [ %or50, %if.then46 ], [ %dmacr.1, %if.end43.if.end54_crit_edge ]
  %and55 = and i32 %dmacr.2, -97
  %ext_fsync = getelementptr inbounds %struct.xilinx_vdma_config, ptr %cfg, i32 0, i32 9
  %50 = ptrtoint ptr %ext_fsync to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ext_fsync, align 4
  %shl56 = shl i32 %51, 5
  %or57 = or i32 %shl56, %and55
  %52 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctrl_offset.i, align 4
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %add.ptr.i.i105 = getelementptr i8, ptr %57, i32 %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %or57) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i105, i32 %58) #9, !srcloc !280
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xilinx_dma_chan_reset(ptr nocapture noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_offset.i.i.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %7 = or i32 %6, 67108864
  %8 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i.i, i32 %7) #9, !srcloc !280
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 1000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !276
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %and.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i.for.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call7.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call7.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then9.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #9, !srcloc !276
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  br label %for.end.i

for.end.i:                                        ; preds = %if.then9.i, %for.cond.i.for.end.i_crit_edge
  %tmp.0.i = phi i32 [ %29, %if.then9.i ], [ %21, %for.cond.i.for.end.i_crit_edge ]
  %and29.i = and i32 %tmp.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end, label %xilinx_dma_reset.exit

xilinx_dma_reset.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 10
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %34 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 %33
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !276
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %40 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %add.i57.i = add i32 %41, 4
  %42 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chan, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr.i.i58.i = getelementptr i8, ptr %45, i32 %add.i57.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58.i) #9, !srcloc !276
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str, i32 noundef %39, i32 noundef %47) #12
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %err36.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 18
  %48 = ptrtoint ptr %err36.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %err36.i, align 1
  %idle.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 19
  %49 = ptrtoint ptr %idle.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %idle.i, align 4
  %desc_pendingcount.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 24
  %50 = ptrtoint ptr %desc_pendingcount.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %desc_pendingcount.i, align 4
  %desc_submitcount.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 26
  %51 = ptrtoint ptr %desc_submitcount.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %desc_submitcount.i, align 4
  %52 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %54 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chan, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %add.ptr.i.i.i3 = getelementptr i8, ptr %57, i32 %53
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i3) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %59 = or i32 %58, 7340032
  %60 = ptrtoint ptr %ctrl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ctrl_offset.i.i.i, align 4
  %62 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chan, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %65, i32 %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %59) #9, !srcloc !280
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xilinx_dma_reset.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %xilinx_dma_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_vdma_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinx_vdma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_vdma_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @xilinx_vdma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %nr_channels.i = alloca i32, align 4
  %num_frames = alloca i32, align 4
  %addr_width = alloca i32, align 4
  %len_width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_frames) #9
  %2 = ptrtoint ptr %num_frames to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_frames, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_width) #9
  %3 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %addr_width, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len_width) #9
  %4 = ptrtoint ptr %len_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len_width, align 4, !annotation !283
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 548, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev5 = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev5, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @of_match_node(ptr noundef nonnull @xilinx_dma_of_ids, ptr noundef nonnull %1) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.if.end16_crit_edge, label %land.lhs.true

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.if.end16_crit_edge, label %if.then11

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %dma_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dma_config, align 4
  %clk_init14 = getelementptr inbounds %struct.xilinx_dma_config, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %clk_init14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_init14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true.if.end16_crit_edge, %if.then7.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %clk_init.1 = phi ptr [ @axivdma_clk_init, %if.end.if.end16_crit_edge ], [ %10, %if.then11 ], [ @axivdma_clk_init, %land.lhs.true.if.end16_crit_edge ], [ @axivdma_clk_init, %if.then7.if.end16_crit_edge ]
  %axi_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 8
  %tx_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 9
  %txs_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 10
  %rx_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 11
  %rxs_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 12
  %call17 = tail call i32 %clk_init.1(ptr noundef %pdev, ptr noundef %axi_clk, ptr noundef %tx_clk, ptr noundef %txs_clk, ptr noundef %rx_clk, ptr noundef %rxs_clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %max_buffer_len = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 15
  %13 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8388607, ptr %max_buffer_len, align 4
  %dma_config28 = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_config28, align 4
  %max_channels = getelementptr inbounds %struct.xilinx_dma_config, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_channels, align 4
  %div = sdiv i32 %17, 2
  %s2mm_chan_id = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %s2mm_chan_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %s2mm_chan_id, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %15, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end27.if.end53_crit_edge [
    i32 0, label %if.end27.if.then33_crit_edge
    i32 3, label %if.end27.if.then33_crit_edge386
  ]

if.end27.if.then33_crit_edge386:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end27.if.then33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end27.if.end53_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then33:                                        ; preds = %if.end27.if.then33_crit_edge, %if.end27.if.then33_crit_edge386
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %len_width, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool35.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool35.not, label %if.then36, label %if.then33.if.end53_crit_edge

if.then33.if.end53_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then36:                                        ; preds = %if.then33
  %22 = ptrtoint ptr %len_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len_width, align 4
  %24 = add i32 %23, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %24)
  %25 = icmp ult i32 %24, -19
  br i1 %25, label %do.end, label %if.else

do.end:                                           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.7) #12
  br label %if.end53

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %23)
  %cmp42 = icmp ugt i32 %23, 23
  br i1 %cmp42, label %do.end46, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.11) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end46, %if.else.if.end48_crit_edge
  %30 = ptrtoint ptr %len_width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len_width, align 4
  %sub49 = sub i32 32, %31
  %shr = lshr i32 -1, %sub49
  %32 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr, ptr %max_buffer_len, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end48, %do.end, %if.then33.if.end53_crit_edge, %if.end27.if.end53_crit_edge
  %33 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_config28, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp56 = icmp eq i32 %36, 2
  br i1 %cmp56, label %if.then57, label %if.end53.if.end74_crit_edge

if.end53.if.end74_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then57:                                        ; preds = %if.end53
  %call.i.i361 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %num_frames, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i361)
  %cmp59 = icmp slt i32 %call.i.i361, 0
  br i1 %cmp59, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end65:                                         ; preds = %if.then57
  %flush_on_fsync = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 4
  %call.i.i362 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %flush_on_fsync, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i362)
  %cmp67 = icmp slt i32 %call.i.i362, 0
  br i1 %cmp67, label %do.end71, label %if.end65.if.end74_crit_edge

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.19) #12
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %if.end65.if.end74_crit_edge, %if.end53.if.end74_crit_edge
  %call.i.i363 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %addr_width, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i363)
  %cmp76 = icmp slt i32 %call.i.i363, 0
  br i1 %cmp76, label %do.end80, label %if.end74.if.end82_crit_edge

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.23) #12
  br label %if.end82

if.end82:                                         ; preds = %do.end80, %if.end74.if.end82_crit_edge
  %43 = ptrtoint ptr %addr_width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %44)
  %cmp83 = icmp ugt i32 %44, 32
  %ext_addr = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 5
  br i1 %cmp83, label %if.end87, label %if.end87.thread

if.end87.thread:                                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ext_addr to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %ext_addr, align 4
  %46 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev5, align 4
  br label %cond.false

if.end87:                                         ; preds = %if.end82
  %48 = ptrtoint ptr %ext_addr to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %ext_addr, align 4
  %49 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %44)
  %cmp89 = icmp eq i32 %44, 64
  br i1 %cmp89, label %if.end87.cond.end_crit_edge, label %if.end87.cond.false_crit_edge

if.end87.cond.false_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

if.end87.cond.end_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end87.cond.false_crit_edge, %if.end87.thread
  %51 = phi ptr [ %47, %if.end87.thread ], [ %50, %if.end87.cond.false_crit_edge ]
  %sh_prom = zext i32 %44 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub90 = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end87.cond.end_crit_edge
  %52 = phi ptr [ %51, %cond.false ], [ %50, %if.end87.cond.end_crit_edge ]
  %cond = phi i64 [ %sub90, %cond.false ], [ -1, %if.end87.cond.end_crit_edge ]
  %call.i364 = call i32 @dma_set_mask(ptr noundef %52, i64 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %cmp.i365 = icmp eq i32 %call.i364, 0
  br i1 %cmp.i365, label %if.then.i, label %cond.end.dma_set_mask_and_coherent.exit_crit_edge

cond.end.dma_set_mask_and_coherent.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %52, i64 noundef %cond) #9
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %cond.end.dma_set_mask_and_coherent.exit_crit_edge
  %common = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2
  %dev93 = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 15
  %53 = ptrtoint ptr %dev93 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %dev93, align 4
  %channels = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %channels, ptr %prev.i, align 4
  %56 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_config28, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp97 = icmp eq i32 %59, 1
  br i1 %cmp97, label %dma_set_mask_and_coherent.exit.if.end102_crit_edge, label %if.then98

dma_set_mask_and_coherent.exit.if.end102_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then98:                                        ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cap_mask = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #9
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %dma_set_mask_and_coherent.exit.if.end102_crit_edge
  %device_alloc_chan_resources = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 27
  %60 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @xilinx_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 29
  %61 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @xilinx_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_terminate_all = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 47
  %62 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @xilinx_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 48
  %63 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @xilinx_dma_synchronize, ptr %device_synchronize, align 4
  %device_tx_status = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 49
  %64 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @xilinx_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 50
  %65 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @xilinx_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 44
  %66 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @xilinx_dma_device_config, ptr %device_config, align 4
  %67 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_config28, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %70, label %if.else139 [
    i32 0, label %if.then113
    i32 1, label %if.then123
    i32 3, label %if.then136
  ]

if.then113:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %cap_mask115 = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 6
  call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask115) #9
  %device_prep_slave_sg = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 39
  %72 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @xilinx_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 40
  %73 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @xilinx_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %residue_granularity = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 26
  %74 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %residue_granularity, align 4
  br label %if.end143

if.then123:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %cap_mask125 = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask125) #9
  call void @_set_bit(i32 noundef 1, ptr noundef %cap_mask125) #9
  %device_prep_dma_memcpy = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 30
  %75 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @xilinx_cdma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_dma_memcpy_sg = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 31
  %76 = ptrtoint ptr %device_prep_dma_memcpy_sg to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @xilinx_cdma_prep_memcpy_sg, ptr %device_prep_dma_memcpy_sg, align 4
  %residue_granularity131 = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 26
  %77 = ptrtoint ptr %residue_granularity131 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %residue_granularity131, align 4
  br label %if.end143

if.then136:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %device_prep_slave_sg138 = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 39
  %78 = ptrtoint ptr %device_prep_slave_sg138 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @xilinx_mcdma_prep_slave_sg, ptr %device_prep_slave_sg138, align 4
  br label %if.end143

if.else139:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %device_prep_interleaved_dma = getelementptr inbounds %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 2, i32 41
  %79 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @xilinx_vdma_dma_prep_interleaved, ptr %device_prep_interleaved_dma, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.else139, %if.then136, %if.then123, %if.then113
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call144 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %cmp145.not371 = icmp eq ptr %call144, null
  br i1 %cmp145.not371, label %if.end143.for.end_crit_edge, label %if.end143.for.body_crit_edge

if.end143.for.body_crit_edge:                     ; preds = %if.end143
  br label %for.body

if.end143.for.end_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end143.for.body_crit_edge
  %child.0372 = phi ptr [ %call150, %for.inc.for.body_crit_edge ], [ %call144, %if.end143.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_channels.i) #9
  %81 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %nr_channels.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0372, ptr noundef nonnull @.str.87, ptr noundef nonnull %nr_channels.i, i32 noundef 1, i32 noundef 0) #9
  %82 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_config28, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp.i366 = icmp eq i32 %85, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i = icmp slt i32 %call.i.i.i, 0
  %or.cond.i = select i1 %cmp.i366, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %do.end.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.88) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.if.end.i_crit_edge
  %88 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp214.not.i = icmp eq i32 %89, 0
  br i1 %cmp214.not.i, label %if.end.i.xilinx_dma_child_probe.exit.thread_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.xilinx_dma_child_probe.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_child_probe.exit.thread

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.015.i, 1
  %90 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr_channels.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %91
  br i1 %cmp2.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.xilinx_dma_child_probe.exit.thread_crit_edge

for.cond.i.xilinx_dma_child_probe.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_child_probe.exit.thread

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call3.i = call fastcc i32 @xilinx_dma_chan_probe(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0372) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %xilinx_dma_child_probe.exit

xilinx_dma_child_probe.exit.thread:               ; preds = %for.cond.i.xilinx_dma_child_probe.exit.thread_crit_edge, %if.end.i.xilinx_dma_child_probe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_channels.i) #9
  br label %for.inc

xilinx_dma_child_probe.exit:                      ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_channels.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp147 = icmp slt i32 %call3.i, 0
  br i1 %cmp147, label %disable_clks, label %xilinx_dma_child_probe.exit.for.inc_crit_edge

xilinx_dma_child_probe.exit.for.inc_crit_edge:    ; preds = %xilinx_dma_child_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %xilinx_dma_child_probe.exit.for.inc_crit_edge, %xilinx_dma_child_probe.exit.thread
  %call150 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0372) #9
  %cmp145.not = icmp eq ptr %call150, null
  br i1 %cmp145.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end143.for.end_crit_edge
  %92 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dma_config28, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp153 = icmp eq i32 %95, 2
  br i1 %cmp153, label %for.cond155.preheader, label %for.end.if.end167_crit_edge

for.end.if.end167_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

for.cond155.preheader:                            ; preds = %for.end
  %96 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma_config28, align 4
  %max_channels157375 = getelementptr inbounds %struct.xilinx_dma_config, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %max_channels157375 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_channels157375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp158376 = icmp sgt i32 %99, 0
  br i1 %cmp158376, label %for.cond155.preheader.for.body159_crit_edge, label %for.cond155.preheader.if.end167_crit_edge

for.cond155.preheader.if.end167_crit_edge:        ; preds = %for.cond155.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

for.cond155.preheader.for.body159_crit_edge:      ; preds = %for.cond155.preheader
  br label %for.body159

for.body159:                                      ; preds = %for.inc165.for.body159_crit_edge, %for.cond155.preheader.for.body159_crit_edge
  %i.0377 = phi i32 [ %inc, %for.inc165.for.body159_crit_edge ], [ 0, %for.cond155.preheader.for.body159_crit_edge ]
  %arrayidx = getelementptr %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 3, i32 %i.0377
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx, align 4
  %tobool160.not = icmp eq ptr %101, null
  br i1 %tobool160.not, label %for.body159.for.inc165_crit_edge, label %if.then161

for.body159.for.inc165_crit_edge:                 ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc165

if.then161:                                       ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_frames, align 4
  %num_frms = getelementptr inbounds %struct.xilinx_dma_chan, ptr %101, i32 0, i32 14
  %104 = ptrtoint ptr %num_frms to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %num_frms, align 4
  br label %for.inc165

for.inc165:                                       ; preds = %if.then161, %for.body159.for.inc165_crit_edge
  %inc = add nuw nsw i32 %i.0377, 1
  %105 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_config28, align 4
  %max_channels157 = getelementptr inbounds %struct.xilinx_dma_config, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %max_channels157 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_channels157, align 4
  %cmp158 = icmp slt i32 %inc, %108
  br i1 %cmp158, label %for.inc165.for.body159_crit_edge, label %for.inc165.if.end167_crit_edge

for.inc165.if.end167_crit_edge:                   ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

for.inc165.for.body159_crit_edge:                 ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body159

if.end167:                                        ; preds = %for.inc165.if.end167_crit_edge, %for.cond155.preheader.if.end167_crit_edge, %for.end.if.end167_crit_edge
  %call169 = call i32 @dma_async_device_register(ptr noundef %common) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end176, label %do.end174

do.end174:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.26) #12
  br label %error

if.end176:                                        ; preds = %if.end167
  %call177 = call i32 @of_dma_controller_register(ptr noundef %1, ptr noundef nonnull @of_dma_xilinx_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %do.end182, label %if.end185

do.end182:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  call void @dma_async_device_unregister(ptr noundef %common) #9
  br label %error

if.end185:                                        ; preds = %if.end176
  %111 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dma_config28, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %114, label %do.end215 [
    i32 0, label %do.end192
    i32 1, label %do.end201
    i32 3, label %do.end210
  ]

do.end192:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %cleanup

do.end201:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  br label %cleanup

do.end210:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  br label %cleanup

do.end215:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.42) #12
  br label %cleanup

disable_clks:                                     ; preds = %xilinx_dma_child_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @xdma_disable_allclks(ptr noundef nonnull %call.i)
  br label %error

error:                                            ; preds = %disable_clks, %do.end182, %do.end174
  %err.0 = phi i32 [ %call3.i, %disable_clks ], [ %call169, %do.end174 ], [ %call177, %do.end182 ]
  %116 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dma_config28, align 4
  %max_channels222378 = getelementptr inbounds %struct.xilinx_dma_config, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %max_channels222378 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %max_channels222378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp223379 = icmp sgt i32 %119, 0
  br i1 %cmp223379, label %error.for.body224_crit_edge, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error.for.body224_crit_edge:                      ; preds = %error
  br label %for.body224

for.body224:                                      ; preds = %for.inc232.for.body224_crit_edge, %error.for.body224_crit_edge
  %i.1380 = phi i32 [ %inc233, %for.inc232.for.body224_crit_edge ], [ 0, %error.for.body224_crit_edge ]
  %arrayidx226 = getelementptr %struct.xilinx_dma_device, ptr %call.i, i32 0, i32 3, i32 %i.1380
  %120 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx226, align 4
  %tobool227.not = icmp eq ptr %121, null
  br i1 %tobool227.not, label %for.body224.for.inc232_crit_edge, label %if.then228

for.body224.for.inc232_crit_edge:                 ; preds = %for.body224
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc232

if.then228:                                       ; preds = %for.body224
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @xilinx_dma_chan_remove(ptr noundef nonnull %121)
  br label %for.inc232

for.inc232:                                       ; preds = %if.then228, %for.body224.for.inc232_crit_edge
  %inc233 = add nuw nsw i32 %i.1380, 1
  %122 = ptrtoint ptr %dma_config28 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dma_config28, align 4
  %max_channels222 = getelementptr inbounds %struct.xilinx_dma_config, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %max_channels222 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %max_channels222, align 4
  %cmp223 = icmp slt i32 %inc233, %125
  br i1 %cmp223, label %for.inc232.for.body224_crit_edge, label %for.inc232.cleanup_crit_edge

for.inc232.cleanup_crit_edge:                     ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc232.for.body224_crit_edge:                 ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body224

cleanup:                                          ; preds = %for.inc232.cleanup_crit_edge, %error.cleanup_crit_edge, %do.end215, %do.end210, %do.end201, %do.end192, %do.end63, %if.then24, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then24 ], [ %call.i.i361, %do.end63 ], [ -12, %entry.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ 0, %do.end201 ], [ 0, %do.end215 ], [ 0, %do.end210 ], [ 0, %do.end192 ], [ %err.0, %error.cleanup_crit_edge ], [ %err.0, %for.inc232.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len_width) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_width) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_frames) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #9
  %common = getelementptr inbounds %struct.xilinx_dma_device, ptr %1, i32 0, i32 2
  tail call void @dma_async_device_unregister(ptr noundef %common) #9
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_config, align 4
  %max_channels11 = getelementptr inbounds %struct.xilinx_dma_config, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_channels11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_channels11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xilinx_dma_device, ptr %1, i32 0, i32 3, i32 %i.013
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xilinx_dma_chan_remove(ptr noundef nonnull %9)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %10 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_config, align 4
  %max_channels = getelementptr inbounds %struct.xilinx_dma_config, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_channels, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @xdma_disable_allclks(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axivdma_clk_init(ptr noundef %pdev, ptr nocapture noundef %axi_clk, ptr nocapture noundef %tx_clk, ptr nocapture noundef %txs_clk, ptr nocapture noundef %rx_clk, ptr nocapture noundef %rxs_clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  %0 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %axi_clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.46) #9
  %cmp.i101 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i101, ptr null, ptr %call6
  %2 = ptrtoint ptr %tx_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.store.select, ptr %tx_clk, align 4
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  %cmp.i102 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %spec.store.select153 = select i1 %cmp.i102, ptr null, ptr %call11
  %3 = ptrtoint ptr %txs_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.store.select153, ptr %txs_clk, align 4
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.48) #9
  %cmp.i103 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %spec.store.select152 = select i1 %cmp.i103, ptr null, ptr %call16
  %4 = ptrtoint ptr %rx_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.store.select152, ptr %rx_clk, align 4
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  %cmp.i104 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %spec.store.select154 = select i1 %cmp.i104, ptr null, ptr %call21
  %5 = ptrtoint ptr %rxs_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.store.select154, ptr %rxs_clk, align 4
  %6 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_clk, align 4
  %call.i105 = tail call i32 @clk_prepare(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i109, label %if.end28.do.end34_crit_edge

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

if.end.i109:                                      ; preds = %if.end28
  %call1.i107 = tail call i32 @clk_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool2.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool2.not.i108, label %if.end36, label %if.then3.i110

if.then3.i110:                                    ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i110, %if.end28.do.end34_crit_edge
  %retval.0.i111.ph = phi i32 [ %call1.i107, %if.then3.i110 ], [ %call.i105, %if.end28.do.end34_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i111.ph) #12
  br label %err_disable_axiclk

if.end36:                                         ; preds = %if.end.i109
  %10 = ptrtoint ptr %txs_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txs_clk, align 4
  %call.i113 = tail call i32 @clk_prepare(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.end.i117, label %if.end36.do.end42_crit_edge

if.end36.do.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

if.end.i117:                                      ; preds = %if.end36
  %call1.i115 = tail call i32 @clk_enable(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool2.not.i116 = icmp eq i32 %call1.i115, 0
  br i1 %tobool2.not.i116, label %if.end44, label %if.then3.i118

if.then3.i118:                                    ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %11) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then3.i118, %if.end36.do.end42_crit_edge
  %retval.0.i119.ph = phi i32 [ %call1.i115, %if.then3.i118 ], [ %call.i113, %if.end36.do.end42_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i119.ph) #12
  br label %err_disable_txclk

if.end44:                                         ; preds = %if.end.i117
  %12 = ptrtoint ptr %rx_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_clk, align 4
  %call.i121 = tail call i32 @clk_prepare(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i122, label %if.end.i125, label %if.end44.do.end50_crit_edge

if.end44.do.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.end.i125:                                      ; preds = %if.end44
  %call1.i123 = tail call i32 @clk_enable(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool2.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool2.not.i124, label %if.end52, label %if.then3.i126

if.then3.i126:                                    ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then3.i126, %if.end44.do.end50_crit_edge
  %retval.0.i127.ph = phi i32 [ %call1.i123, %if.then3.i126 ], [ %call.i121, %if.end44.do.end50_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i127.ph) #12
  br label %err_disable_txsclk

if.end52:                                         ; preds = %if.end.i125
  %14 = ptrtoint ptr %rxs_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rxs_clk, align 4
  %call.i129 = tail call i32 @clk_prepare(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i130, label %if.end.i133, label %if.end52.do.end58_crit_edge

if.end52.do.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

if.end.i133:                                      ; preds = %if.end52
  %call1.i131 = tail call i32 @clk_enable(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool2.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool2.not.i132, label %if.end.i133.cleanup_crit_edge, label %if.then3.i134

if.end.i133.cleanup_crit_edge:                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i134:                                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then3.i134, %if.end52.do.end58_crit_edge
  %retval.0.i135.ph = phi i32 [ %call1.i131, %if.then3.i134 ], [ %call.i129, %if.end52.do.end58_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i135.ph) #12
  %16 = ptrtoint ptr %rx_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #9
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %err_disable_txsclk

err_disable_txsclk:                               ; preds = %do.end58, %do.end50
  %err.0 = phi i32 [ %retval.0.i127.ph, %do.end50 ], [ %retval.0.i135.ph, %do.end58 ]
  %18 = ptrtoint ptr %txs_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %txs_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %err_disable_txclk

err_disable_txclk:                                ; preds = %err_disable_txsclk, %do.end42
  %err.1 = phi i32 [ %retval.0.i119.ph, %do.end42 ], [ %err.0, %err_disable_txsclk ]
  %20 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #9
  tail call void @clk_unprepare(ptr noundef %21) #9
  br label %err_disable_axiclk

err_disable_axiclk:                               ; preds = %err_disable_txclk, %do.end34
  %err.2 = phi i32 [ %retval.0.i111.ph, %do.end34 ], [ %err.1, %err_disable_txclk ]
  %22 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_axiclk, %if.end.i133.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %retval.0.i.ph, %do.end ], [ %err.2, %err_disable_axiclk ], [ 0, %if.end.i133.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_alloc_chan_resources(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %desc_pool = getelementptr i8, ptr %dchan, i32 64
  %0 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %7, label %if.else106 [
    i32 0, label %if.then1
    i32 3, label %if.then47
    i32 1, label %if.then102
  ]

if.then1:                                         ; preds = %if.end
  %dev = getelementptr i8, ptr %dchan, i32 68
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %seg_p = getelementptr i8, ptr %dchan, i32 188
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef 32640, ptr noundef %seg_p, i32 noundef 3264, i32 noundef 0) #9
  %seg_v = getelementptr i8, ptr %dchan, i32 180
  %11 = ptrtoint ptr %seg_v to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %seg_v, align 4
  %tobool3.not = icmp eq ptr %call.i, null
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr i8, ptr %dchan, i32 76
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.64, i32 noundef %15) #12
  br label %cleanup

if.end6:                                          ; preds = %if.then1
  %cyclic_seg_p = getelementptr i8, ptr %dchan, i32 196
  %call.i220 = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef 128, ptr noundef %cyclic_seg_p, i32 noundef 3264, i32 noundef 0) #9
  %cyclic_seg_v = getelementptr i8, ptr %dchan, i32 192
  %16 = ptrtoint ptr %cyclic_seg_v to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i220, ptr %cyclic_seg_v, align 4
  %tobool10.not = icmp eq ptr %call.i220, null
  br i1 %tobool10.not, label %do.end14, label %if.end19

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.67) #12
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %seg_v to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %seg_v, align 4
  %23 = ptrtoint ptr %seg_p to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seg_p, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef 32640, ptr noundef %22, i32 noundef %24, i32 noundef 0) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %25 = ptrtoint ptr %cyclic_seg_p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cyclic_seg_p, align 4
  %phys = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %call.i220, i32 0, i32 2
  %27 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %phys, align 8
  %free_seg_list = getelementptr i8, ptr %dchan, i32 -8
  %prev.i = getelementptr i8, ptr %dchan, i32 -4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end19
  %i.0233 = phi i32 [ 0, %if.end19 ], [ %add, %list_add_tail.exit.for.body_crit_edge ]
  %28 = ptrtoint ptr %seg_p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seg_p, align 4
  %add = add nuw nsw i32 %i.0233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %30 = icmp eq i32 %add, 255
  %add.op = shl nuw nsw i32 %add, 7
  %mul = select i1 %30, i32 0, i32 %add.op
  %add24 = add i32 %29, %mul
  %31 = ptrtoint ptr %seg_v to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seg_v, align 4
  %arrayidx = getelementptr %struct.xilinx_axidma_tx_segment, ptr %32, i32 %i.0233
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add24, ptr %arrayidx, align 64
  %34 = load ptr, ptr %seg_v, align 4
  %next_desc_msb = getelementptr %struct.xilinx_axidma_tx_segment, ptr %34, i32 %i.0233, i32 0, i32 1
  %35 = ptrtoint ptr %next_desc_msb to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %next_desc_msb, align 4
  %36 = ptrtoint ptr %seg_p to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seg_p, align 4
  %mul36 = shl i32 %i.0233, 7
  %add37 = add i32 %37, %mul36
  %38 = load ptr, ptr %seg_v, align 4
  %phys40 = getelementptr %struct.xilinx_axidma_tx_segment, ptr %38, i32 %i.0233, i32 2
  %39 = ptrtoint ptr %phys40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add37, ptr %phys40, align 8
  %40 = load ptr, ptr %seg_v, align 4
  %node = getelementptr %struct.xilinx_axidma_tx_segment, ptr %40, i32 %i.0233, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %42, ptr noundef %free_seg_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node, ptr %prev.i, align 4
  %44 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %free_seg_list, ptr %node, align 4
  %prev3.i.i = getelementptr %struct.xilinx_axidma_tx_segment, ptr %40, i32 %i.0233, i32 1, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %exitcond236.not = icmp eq i32 %add, 255
  br i1 %exitcond236.not, label %list_add_tail.exit.if.end112thread-pre-split_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_add_tail.exit.if.end112thread-pre-split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112thread-pre-split

if.then47:                                        ; preds = %if.end
  %dev48 = getelementptr i8, ptr %dchan, i32 68
  %47 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev48, align 4
  %seg_p49 = getelementptr i8, ptr %dchan, i32 188
  %call.i221 = tail call ptr @dma_alloc_attrs(ptr noundef %48, i32 noundef 32640, ptr noundef %seg_p49, i32 noundef 3264, i32 noundef 0) #9
  %seg_mv = getelementptr i8, ptr %dchan, i32 184
  %49 = ptrtoint ptr %seg_mv to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i221, ptr %seg_mv, align 4
  %tobool52.not = icmp eq ptr %call.i221, null
  br i1 %tobool52.not, label %do.end56, label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %if.then47
  %free_seg_list93 = getelementptr i8, ptr %dchan, i32 -8
  %prev.i222 = getelementptr i8, ptr %dchan, i32 -4
  br label %for.body62

do.end56:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev48, align 4
  %id58 = getelementptr i8, ptr %dchan, i32 76
  %52 = ptrtoint ptr %id58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.64, i32 noundef %53) #12
  br label %cleanup

for.body62:                                       ; preds = %list_add_tail.exit226.for.body62_crit_edge, %for.cond60.preheader
  %i.1232 = phi i32 [ 0, %for.cond60.preheader ], [ %add64, %list_add_tail.exit226.for.body62_crit_edge ]
  %54 = ptrtoint ptr %seg_p49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seg_p49, align 4
  %add64 = add nuw nsw i32 %i.1232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add64)
  %56 = icmp eq i32 %add64, 255
  %add64.op = shl nuw nsw i32 %add64, 7
  %mul66 = select i1 %56, i32 0, i32 %add64.op
  %add67 = add i32 %55, %mul66
  %57 = ptrtoint ptr %seg_mv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seg_mv, align 4
  %arrayidx70 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %58, i32 %i.1232
  %59 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add67, ptr %arrayidx70, align 64
  %60 = load ptr, ptr %seg_mv, align 4
  %next_desc_msb83 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %60, i32 %i.1232, i32 0, i32 1
  %61 = ptrtoint ptr %next_desc_msb83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %next_desc_msb83, align 4
  %62 = ptrtoint ptr %seg_p49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %seg_p49, align 4
  %mul85 = shl i32 %i.1232, 7
  %add86 = add i32 %63, %mul85
  %64 = load ptr, ptr %seg_mv, align 4
  %phys89 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %64, i32 %i.1232, i32 2
  %65 = ptrtoint ptr %phys89 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add86, ptr %phys89, align 8
  %66 = load ptr, ptr %seg_mv, align 4
  %node92 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %66, i32 %i.1232, i32 1
  %67 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i222, align 4
  %call.i.i223 = tail call zeroext i1 @__list_add_valid(ptr noundef %node92, ptr noundef %68, ptr noundef %free_seg_list93) #9
  br i1 %call.i.i223, label %if.end.i.i225, label %for.body62.list_add_tail.exit226_crit_edge

for.body62.list_add_tail.exit226_crit_edge:       ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit226

if.end.i.i225:                                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %node92, ptr %prev.i222, align 4
  %70 = ptrtoint ptr %node92 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %free_seg_list93, ptr %node92, align 4
  %prev3.i.i224 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %66, i32 %i.1232, i32 1, i32 1
  %71 = ptrtoint ptr %prev3.i.i224 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i224, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %node92, ptr %68, align 4
  br label %list_add_tail.exit226

list_add_tail.exit226:                            ; preds = %if.end.i.i225, %for.body62.list_add_tail.exit226_crit_edge
  %exitcond.not = icmp eq i32 %add64, 255
  br i1 %exitcond.not, label %list_add_tail.exit226.if.end112thread-pre-split_crit_edge, label %list_add_tail.exit226.for.body62_crit_edge

list_add_tail.exit226.for.body62_crit_edge:       ; preds = %list_add_tail.exit226
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body62

list_add_tail.exit226.if.end112thread-pre-split_crit_edge: ; preds = %list_add_tail.exit226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112thread-pre-split

if.then102:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev103 = getelementptr i8, ptr %dchan, i32 68
  %73 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev103, align 4
  %call104 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.71, ptr noundef %74, i32 noundef 128, i32 noundef 64, i32 noundef 0) #9
  %75 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call104, ptr %desc_pool, align 4
  br label %if.end112

if.else106:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev107 = getelementptr i8, ptr %dchan, i32 68
  %76 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev107, align 4
  %call108 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.72, ptr noundef %77, i32 noundef 128, i32 noundef 64, i32 noundef 0) #9
  %78 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call108, ptr %desc_pool, align 4
  br label %if.end112

if.end112thread-pre-split:                        ; preds = %list_add_tail.exit226.if.end112thread-pre-split_crit_edge, %list_add_tail.exit.if.end112thread-pre-split_crit_edge
  %79 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr = load ptr, ptr %desc_pool, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112thread-pre-split, %if.else106, %if.then102
  %80 = phi ptr [ %.pr, %if.end112thread-pre-split ], [ %call108, %if.else106 ], [ %call104, %if.then102 ]
  %tobool114.not = icmp eq ptr %80, null
  br i1 %tobool114.not, label %land.lhs.true, label %if.end112.if.end130_crit_edge

if.end112.if.end130_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

land.lhs.true:                                    ; preds = %if.end112
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 4
  %dma_config116 = getelementptr inbounds %struct.xilinx_dma_device, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %dma_config116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_config116, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %86, label %do.end127 [
    i32 0, label %land.lhs.true.if.end130_crit_edge
    i32 3, label %land.lhs.true.if.end130_crit_edge240
  ]

land.lhs.true.if.end130_crit_edge240:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

land.lhs.true.if.end130_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

do.end127:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev128 = getelementptr i8, ptr %dchan, i32 68
  %88 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev128, align 4
  %id129 = getelementptr i8, ptr %dchan, i32 76
  %90 = ptrtoint ptr %id129 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id129, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.74, i32 noundef %91) #12
  br label %cleanup

if.end130:                                        ; preds = %land.lhs.true.if.end130_crit_edge, %land.lhs.true.if.end130_crit_edge240, %if.end112.if.end130_crit_edge
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %92 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %93 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %completed_cookie.i, align 4
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr, align 4
  %dma_config132 = getelementptr inbounds %struct.xilinx_dma_device, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %dma_config132 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma_config132, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp134 = icmp eq i32 %99, 0
  br i1 %cmp134, label %if.then135, label %if.end130.if.end136_crit_edge

if.end130.if.end136_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then135:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_offset.i.i = getelementptr i8, ptr %dchan, i32 -84
  %100 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ctrl_offset.i.i, align 4
  %102 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %95, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %103, i32 %101
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %105 = or i32 %104, 7340032
  %106 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ctrl_offset.i.i, align 4
  %108 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %111, i32 %107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %105) #9, !srcloc !280
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end130.if.end136_crit_edge
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr, align 4
  %dma_config138 = getelementptr inbounds %struct.xilinx_dma_device, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %dma_config138 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dma_config138, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp140 = icmp eq i32 %117, 1
  br i1 %cmp140, label %land.lhs.true141, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true141:                                 ; preds = %if.end136
  %has_sg = getelementptr i8, ptr %dchan, i32 88
  %118 = ptrtoint ptr %has_sg to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %has_sg, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool142.not = icmp eq i8 %119, 0
  br i1 %tobool142.not, label %land.lhs.true141.cleanup_crit_edge, label %if.then143

land.lhs.true141.cleanup_crit_edge:               ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then143:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_offset.i.i227 = getelementptr i8, ptr %dchan, i32 -84
  %120 = ptrtoint ptr %ctrl_offset.i.i227 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ctrl_offset.i.i227, align 4
  %122 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %113, align 4
  %add.ptr.i.i.i228 = getelementptr i8, ptr %123, i32 %121
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i228) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %125 = or i32 %124, 134217728
  %126 = ptrtoint ptr %ctrl_offset.i.i227 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ctrl_offset.i.i227, align 4
  %128 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %add.ptr.i.i2.i230 = getelementptr i8, ptr %131, i32 %127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i230, i32 %125) #9, !srcloc !280
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %land.lhs.true141.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %do.end127, %do.end56, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end127 ], [ -12, %do.end14 ], [ -12, %do.end ], [ -12, %do.end56 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then143 ], [ 0, %land.lhs.true141.cleanup_crit_edge ], [ 0, %if.end136.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dma_free_chan_resources(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dma_free_chan_resources.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dma_free_chan_resources, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %dchan, i32 68
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dma_free_chan_resources.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.78) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @xilinx_dma_free_descriptors(ptr noundef %add.ptr)
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body7, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr i8, ptr %dchan, i32 -76
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %free_seg_list = getelementptr i8, ptr %dchan, i32 -8
  %8 = ptrtoint ptr %free_seg_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %free_seg_list, ptr %free_seg_list, align 4
  %prev.i = getelementptr i8, ptr %dchan, i32 -4
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %free_seg_list, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  %dev17 = getelementptr i8, ptr %dchan, i32 68
  %10 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev17, align 4
  %seg_v = getelementptr i8, ptr %dchan, i32 180
  %12 = ptrtoint ptr %seg_v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %seg_v, align 4
  %seg_p = getelementptr i8, ptr %dchan, i32 188
  %14 = ptrtoint ptr %seg_p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seg_p, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 32640, ptr noundef %13, i32 noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev17, align 4
  %cyclic_seg_v = getelementptr i8, ptr %dchan, i32 192
  %18 = ptrtoint ptr %cyclic_seg_v to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cyclic_seg_v, align 4
  %cyclic_seg_p = getelementptr i8, ptr %dchan, i32 196
  %20 = ptrtoint ptr %cyclic_seg_p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cyclic_seg_p, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef 128, ptr noundef %19, i32 noundef %21, i32 noundef 0) #9
  br label %if.end19

if.end19:                                         ; preds = %do.body7, %do.end.if.end19_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %dma_config21 = getelementptr inbounds %struct.xilinx_dma_device, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %dma_config21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_config21, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp23 = icmp eq i32 %27, 3
  br i1 %cmp23, label %do.body27, label %if.end19.if.end44_crit_edge

if.end19.if.end44_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.body27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %lock33 = getelementptr i8, ptr %dchan, i32 -76
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock33) #9
  %free_seg_list40 = getelementptr i8, ptr %dchan, i32 -8
  %28 = ptrtoint ptr %free_seg_list40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %free_seg_list40, ptr %free_seg_list40, align 4
  %prev.i81 = getelementptr i8, ptr %dchan, i32 -4
  %29 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_seg_list40, ptr %prev.i81, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock33, i32 noundef %call35) #9
  %dev42 = getelementptr i8, ptr %dchan, i32 68
  %30 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev42, align 4
  %seg_mv = getelementptr i8, ptr %dchan, i32 184
  %32 = ptrtoint ptr %seg_mv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %seg_mv, align 4
  %seg_p43 = getelementptr i8, ptr %dchan, i32 188
  %34 = ptrtoint ptr %seg_p43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %seg_p43, align 4
  tail call void @dma_free_attrs(ptr noundef %31, i32 noundef 32640, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  br label %if.end44

if.end44:                                         ; preds = %do.body27, %if.end19.if.end44_crit_edge
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  %dma_config46 = getelementptr inbounds %struct.xilinx_dma_device, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %dma_config46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_config46, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %41, label %if.then55 [
    i32 0, label %if.end44.if.end57_crit_edge
    i32 3, label %if.end44.if.end57_crit_edge83
  ]

if.end44.if.end57_crit_edge83:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then55:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %desc_pool = getelementptr i8, ptr %dchan, i32 64
  %43 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %44) #9
  %45 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %desc_pool, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end44.if.end57_crit_edge, %if.end44.if.end57_crit_edge83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_terminate_all(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %cyclic = getelementptr i8, ptr %dchan, i32 89
  %0 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cyclic, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %stop_transfer = getelementptr i8, ptr %dchan, i32 204
  %2 = ptrtoint ptr %stop_transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_transfer, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %dchan, i32 68
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ctrl_offset.i = getelementptr i8, ptr %dchan, i32 -84
  %6 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_offset.i, align 4
  %add.i = add i32 %7, 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.79, ptr noundef %add.ptr, i32 noundef %13) #12
  %err4 = getelementptr i8, ptr %dchan, i32 91
  %14 = ptrtoint ptr %err4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %err4, align 1
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc i32 @xilinx_dma_chan_reset(ptr noundef %add.ptr)
  %terminating = getelementptr i8, ptr %dchan, i32 93
  %15 = ptrtoint ptr %terminating to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %terminating, align 1
  tail call fastcc void @xilinx_dma_free_descriptors(ptr noundef %add.ptr)
  %idle = getelementptr i8, ptr %dchan, i32 92
  %16 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %idle, align 4
  %17 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cyclic, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  br i1 %tobool8.not, label %if.end5.if.end12_crit_edge, label %if.then9

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_offset.i34 = getelementptr i8, ptr %dchan, i32 -84
  %19 = ptrtoint ptr %ctrl_offset.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_offset.i34, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %24, i32 %20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %26 = and i32 %25, -268435457
  %27 = ptrtoint ptr %ctrl_offset.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrl_offset.i34, align 4
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %32, i32 %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %26) #9, !srcloc !280
  %33 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %cyclic, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_config, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp = icmp eq i32 %39, 1
  br i1 %cmp, label %land.lhs.true, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end12
  %has_sg = getelementptr i8, ptr %dchan, i32 88
  %40 = ptrtoint ptr %has_sg to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_sg, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool13.not = icmp eq i8 %41, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_offset.i.i = getelementptr i8, ptr %dchan, i32 -84
  %42 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctrl_offset.i.i, align 4
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %35, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 %43
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %47 = and i32 %46, -134217729
  %48 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctrl_offset.i.i, align 4
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %53, i32 %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %47) #9, !srcloc !280
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %if.end12.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dma_synchronize(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet = getelementptr i8, ptr %dchan, i32 96
  tail call void @tasklet_kill(ptr noundef %tasklet) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_tx_status(ptr noundef %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !285
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body1_crit_edge

if.then.i.i.do.body1_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge47 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge47, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body1_crit_edge

if.else.i.i.do.body1_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %if.else.i.i.do.body1_crit_edge, %if.then.i.i.do.body1_crit_edge
  %lock = getelementptr i8, ptr %dchan, i32 -76
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %active_list = getelementptr i8, ptr %dchan, i32 -24
  %8 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %9, %active_list
  br i1 %cmp.i.not, label %do.body1.dma_set_residue.exit_crit_edge, label %if.then10

do.body1.dma_set_residue.exit_crit_edge:          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.then10:                                        ; preds = %do.body1
  %prev = getelementptr i8, ptr %dchan, i32 -20
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev, align 4
  %has_sg = getelementptr i8, ptr %dchan, i32 88
  %12 = ptrtoint ptr %has_sg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_sg, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.then10.dma_set_residue.exit_crit_edge, label %land.lhs.true

if.then10.dma_set_residue.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

land.lhs.true:                                    ; preds = %if.then10
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_config, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp17.not = icmp eq i32 %19, 2
  br i1 %cmp17.not, label %land.lhs.true.dma_set_residue.exit_crit_edge, label %if.then19

land.lhs.true.dma_set_residue.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.then19:                                        ; preds = %land.lhs.true
  %segments.i = getelementptr i8, ptr %11, i32 -8
  %20 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %entry1.049.i = load ptr, ptr %segments.i, align 4
  %cmp.i.not50.i = icmp eq ptr %entry1.049.i, %segments.i
  br i1 %cmp.i.not50.i, label %if.then19.dma_set_residue.exit_crit_edge, label %for.body.lr.ph.i

if.then19.dma_set_residue.exit_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

for.body.lr.ph.i:                                 ; preds = %if.then19
  %max_buffer_len17.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %15, i32 0, i32 15
  %21 = ptrtoint ptr %max_buffer_len17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_buffer_len17.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.052.i = phi ptr [ %entry1.049.i, %for.body.lr.ph.i ], [ %entry1.0.i, %for.inc.i.for.body.i_crit_edge ]
  %residue.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %residue.1.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %19, label %if.else20.i [
    i32 1, label %if.then.i39
    i32 0, label %if.then8.i
  ]

if.then.i39:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %control.i = getelementptr i8, ptr %entry1.052.i, i32 -40
  %24 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %control.i, align 8
  %status.i = getelementptr i8, ptr %entry1.052.i, i32 -36
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status.i, align 4
  %sub.i = sub i32 %25, %27
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %control13.i = getelementptr i8, ptr %entry1.052.i, i32 -40
  %28 = ptrtoint ptr %control13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %control13.i, align 8
  %status14.i = getelementptr i8, ptr %entry1.052.i, i32 -36
  %30 = ptrtoint ptr %status14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status14.i, align 4
  %sub15.i = sub i32 %29, %31
  br label %for.inc.i

if.else20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %control25.i = getelementptr i8, ptr %entry1.052.i, i32 -44
  %32 = ptrtoint ptr %control25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %control25.i, align 4
  %status26.i = getelementptr i8, ptr %entry1.052.i, i32 -40
  %34 = ptrtoint ptr %status26.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status26.i, align 8
  %sub27.i = sub i32 %33, %35
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else20.i, %if.then8.i, %if.then.i39
  %sub.sink.i = phi i32 [ %sub.i, %if.then.i39 ], [ %sub27.i, %if.else20.i ], [ %sub15.i, %if.then8.i ]
  %and.i = and i32 %22, %sub.sink.i
  %residue.1.i = add i32 %and.i, %residue.051.i
  %36 = ptrtoint ptr %entry1.052.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %entry1.0.i = load ptr, ptr %entry1.052.i, align 4
  %cmp.i.not.i = icmp eq ptr %entry1.0.i, %segments.i
  br i1 %cmp.i.not.i, label %for.inc.i.dma_set_residue.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.dma_set_residue.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %for.inc.i.dma_set_residue.exit_crit_edge, %if.then19.dma_set_residue.exit_crit_edge, %land.lhs.true.dma_set_residue.exit_crit_edge, %if.then10.dma_set_residue.exit_crit_edge, %do.body1.dma_set_residue.exit_crit_edge
  %residue.0 = phi i32 [ 0, %do.body1.dma_set_residue.exit_crit_edge ], [ 0, %land.lhs.true.dma_set_residue.exit_crit_edge ], [ 0, %if.then10.dma_set_residue.exit_crit_edge ], [ 0, %if.then19.dma_set_residue.exit_crit_edge ], [ %residue.1.i, %for.inc.i.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %37 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %residue.0, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i46.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i46 = zext i1 %retval.0.i.i46.shrunk to i32
  ret i32 %retval.0.i.i46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dma_issue_pending(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %lock = getelementptr i8, ptr %dchan, i32 -76
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %start_transfer = getelementptr i8, ptr %dchan, i32 200
  %0 = ptrtoint ptr %start_transfer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start_transfer, align 4
  tail call void %1(ptr noundef %add.ptr) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xilinx_dma_device_config(ptr nocapture noundef readnone %dchan, ptr nocapture noundef readnone %config) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_dma_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %entry.cleanup41_crit_edge

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 124) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup41_crit_edge, label %if.end3

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end3:                                          ; preds = %if.end
  %segments.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %segments.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %segments.i, ptr %segments.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %segments.i, ptr %prev.i.i, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %dchan) #9
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xilinx_dma_tx_submit, ptr %tx_submit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp89.not = icmp eq i32 %sg_len, 0
  br i1 %cmp89.not, label %if.end3.for.end_crit_edge, label %while.cond.preheader.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %if.end3
  %ext_addr.i = getelementptr i8, ptr %dchan, i32 172
  %direction13 = getelementptr i8, ptr %dchan, i32 80
  %tobool16.not = icmp eq ptr %context, null
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.091 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %sg.090 = phi ptr [ %sgl, %while.cond.preheader.lr.ph ], [ %call20, %for.inc.while.cond.preheader_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.090, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp587.not = icmp eq i32 %7, 0
  br i1 %cmp587.not, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.090, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sg_used.088 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %call6 = tail call fastcc ptr @xilinx_axidma_alloc_tx_segment(ptr noundef %add.ptr)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %error, label %if.end9

if.end9:                                          ; preds = %while.body
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length, align 4
  %sub.i = sub i32 %9, %sg_used.088
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %max_buffer_len.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %max_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_buffer_len.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %13) #9
  %add.i = add i32 %14, %sg_used.088
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp1.i = icmp ult i32 %add.i, %9
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end9.xilinx_dma_calc_copysize.exit_crit_edge

if.end9.xilinx_dma_calc_copysize.exit_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_calc_copysize.exit

land.lhs.true.i:                                  ; preds = %if.end9
  %copy_align.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %11, i32 0, i32 2, i32 10
  %15 = ptrtoint ptr %copy_align.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %copy_align.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i80 = icmp eq i32 %16, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge, label %if.then.i

land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_calc_copysize.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %notmask.i = shl nsw i32 -1, %16
  %sub7.i = and i32 %notmask.i, %14
  br label %xilinx_dma_calc_copysize.exit

xilinx_dma_calc_copysize.exit:                    ; preds = %if.then.i, %land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge, %if.end9.xilinx_dma_calc_copysize.exit_crit_edge
  %copy.0.i = phi i32 [ %sub7.i, %if.then.i ], [ %14, %land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge ], [ %14, %if.end9.xilinx_dma_calc_copysize.exit_crit_edge ]
  %17 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_address, align 4
  %19 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i82 = icmp eq i8 %20, 0
  br i1 %tobool.not.i82, label %xilinx_dma_calc_copysize.exit.xilinx_axidma_buf.exit_crit_edge, label %if.then.i83

xilinx_dma_calc_copysize.exit.xilinx_axidma_buf.exit_crit_edge: ; preds = %xilinx_dma_calc_copysize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_axidma_buf.exit

if.then.i83:                                      ; preds = %xilinx_dma_calc_copysize.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buf_addr_msb.i = getelementptr inbounds %struct.xilinx_axidma_desc_hw, ptr %call6, i32 0, i32 3
  %21 = ptrtoint ptr %buf_addr_msb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %buf_addr_msb.i, align 4
  br label %xilinx_axidma_buf.exit

xilinx_axidma_buf.exit:                           ; preds = %if.then.i83, %xilinx_dma_calc_copysize.exit.xilinx_axidma_buf.exit_crit_edge
  %add6.pn.i = add i32 %18, %sg_used.088
  %22 = getelementptr inbounds %struct.xilinx_axidma_desc_hw, ptr %call6, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add6.pn.i, ptr %22, align 8
  %control = getelementptr inbounds %struct.xilinx_axidma_desc_hw, ptr %call6, i32 0, i32 6
  %24 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %copy.0.i, ptr %control, align 8
  %25 = ptrtoint ptr %direction13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %direction13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp14 = icmp ne i32 %26, 1
  %or.cond = or i1 %tobool16.not, %cmp14
  br i1 %or.cond, label %xilinx_axidma_buf.exit.if.end19_crit_edge, label %if.then17

xilinx_axidma_buf.exit.if.end19_crit_edge:        ; preds = %xilinx_axidma_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %xilinx_axidma_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %app = getelementptr inbounds %struct.xilinx_axidma_desc_hw, ptr %call6, i32 0, i32 8
  %27 = call ptr @memcpy(ptr %app, ptr %context, i32 20)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %xilinx_axidma_buf.exit.if.end19_crit_edge
  %add = add i32 %copy.0.i, %sg_used.088
  %node = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %call6, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %29, ptr noundef %segments.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %node, ptr %prev.i.i, align 8
  %31 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %segments.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %call6, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %node, ptr %29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end19.cleanup_crit_edge
  %34 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_length, align 4
  %cmp5 = icmp ult i32 %add, %35
  br i1 %cmp5, label %cleanup.while.body_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw i32 %i.091, 1
  %call20 = tail call ptr @sg_next(ptr noundef %sg.090) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %36 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %segments.i, align 4
  %phys = getelementptr i8, ptr %37, i32 8
  %38 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys, align 8
  %phys26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %phys26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %phys26, align 8
  %direction27 = getelementptr i8, ptr %dchan, i32 80
  %41 = ptrtoint ptr %direction27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %direction27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp28 = icmp eq i32 %42, 1
  br i1 %cmp28, label %if.then29, label %for.end.cleanup41_crit_edge

for.end.cleanup41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %control31 = getelementptr i8, ptr %37, i32 -40
  %43 = ptrtoint ptr %control31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %control31, align 8
  %or = or i32 %44, 134217728
  store i32 %or, ptr %control31, align 8
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 8
  %control37 = getelementptr i8, ptr %46, i32 -40
  %47 = ptrtoint ptr %control37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %control37, align 8
  %or38 = or i32 %48, 67108864
  store i32 %or38, ptr %control37, align 8
  br label %cleanup41

error:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup41

cleanup41:                                        ; preds = %error, %if.then29, %for.end.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ null, %entry.cleanup41_crit_edge ], [ %call7.i.i.i, %if.then29 ], [ %call7.i.i.i, %for.end.cleanup41_crit_edge ], [ null, %if.end.cleanup41_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_dma_prep_dma_cyclic(ptr noundef %dchan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool.not = icmp eq i32 %period_len, 0
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end:                                           ; preds = %entry
  %div = udiv i32 %buf_len, %period_len
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %tobool1.not = icmp ule i32 %period_len, %buf_len
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  %or.cond = and i1 %tobool1.not, %1
  br i1 %or.cond, label %if.end5, label %if.end.cleanup49_crit_edge

if.end.cleanup49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 124) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup49_crit_edge, label %while.cond.preheader.lr.ph

if.end5.cleanup49_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

while.cond.preheader.lr.ph:                       ; preds = %if.end5
  %segments.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %segments.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %segments.i, ptr %segments.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %segments.i, ptr %prev.i.i, align 8
  %direction10 = getelementptr i8, ptr %dchan, i32 80
  %5 = ptrtoint ptr %direction10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %direction, ptr %direction10, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %dchan) #9
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xilinx_dma_tx_submit, ptr %tx_submit, align 8
  %ext_addr.i = getelementptr i8, ptr %dchan, i32 172
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.for.inc_crit_edge.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.0117 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %while.cond.for.inc_crit_edge.while.cond.preheader_crit_edge ]
  %prev.0116 = phi ptr [ null, %while.cond.preheader.lr.ph ], [ %call13, %while.cond.for.inc_crit_edge.while.cond.preheader_crit_edge ]
  %mul = mul i32 %i.0117, %period_len
  %add6.pn.i = add i32 %mul, %buf_addr
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader
  %sg_used.0114 = phi i32 [ 0, %while.cond.preheader ], [ %add, %cleanup.while.body_crit_edge ]
  %prev.1113 = phi ptr [ %prev.0116, %while.cond.preheader ], [ %call13, %cleanup.while.body_crit_edge ]
  %call13 = tail call fastcc ptr @xilinx_axidma_alloc_tx_segment(ptr noundef %add.ptr)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %error, label %if.end16

if.end16:                                         ; preds = %while.body
  %sub.i = sub i32 %period_len, %sg_used.0114
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %max_buffer_len.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %max_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_buffer_len.i, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %10) #9
  %add.i = add i32 %11, %sg_used.0114
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %period_len)
  %cmp1.i = icmp ult i32 %add.i, %period_len
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end16.xilinx_dma_calc_copysize.exit_crit_edge

if.end16.xilinx_dma_calc_copysize.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_calc_copysize.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %copy_align.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %8, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %copy_align.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %copy_align.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i100 = icmp eq i32 %13, 0
  br i1 %tobool.not.i100, label %land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge, label %if.then.i

land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_calc_copysize.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %notmask.i = shl nsw i32 -1, %13
  %sub7.i = and i32 %notmask.i, %11
  br label %xilinx_dma_calc_copysize.exit

xilinx_dma_calc_copysize.exit:                    ; preds = %if.then.i, %land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge, %if.end16.xilinx_dma_calc_copysize.exit_crit_edge
  %copy.0.i = phi i32 [ %sub7.i, %if.then.i ], [ %11, %land.lhs.true.i.xilinx_dma_calc_copysize.exit_crit_edge ], [ %11, %if.end16.xilinx_dma_calc_copysize.exit_crit_edge ]
  %14 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i102 = icmp eq i8 %15, 0
  br i1 %tobool.not.i102, label %xilinx_dma_calc_copysize.exit.xilinx_axidma_buf.exit_crit_edge, label %if.then.i103

xilinx_dma_calc_copysize.exit.xilinx_axidma_buf.exit_crit_edge: ; preds = %xilinx_dma_calc_copysize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_axidma_buf.exit

if.then.i103:                                     ; preds = %xilinx_dma_calc_copysize.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buf_addr_msb.i = getelementptr inbounds %struct.xilinx_axidma_desc_hw, ptr %call13, i32 0, i32 3
  %16 = ptrtoint ptr %buf_addr_msb.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buf_addr_msb.i, align 4
  br label %xilinx_axidma_buf.exit

xilinx_axidma_buf.exit:                           ; preds = %if.then.i103, %xilinx_dma_calc_copysize.exit.xilinx_axidma_buf.exit_crit_edge
  %add1.sink.i = add i32 %add6.pn.i, %sg_used.0114
  %17 = getelementptr inbounds %struct.xilinx_axidma_desc_hw, ptr %call13, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add1.sink.i, ptr %17, align 8
  %control = getelementptr inbounds %struct.xilinx_axidma_desc_hw, ptr %call13, i32 0, i32 6
  %19 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %copy.0.i, ptr %control, align 8
  %tobool19.not = icmp eq ptr %prev.1113, null
  br i1 %tobool19.not, label %xilinx_axidma_buf.exit.if.end22_crit_edge, label %if.then20

xilinx_axidma_buf.exit.if.end22_crit_edge:        ; preds = %xilinx_axidma_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %xilinx_axidma_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %phys = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %call13, i32 0, i32 2
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys, align 8
  %22 = ptrtoint ptr %prev.1113 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %prev.1113, align 64
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %xilinx_axidma_buf.exit.if.end22_crit_edge
  %add = add i32 %copy.0.i, %sg_used.0114
  %node = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %call13, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %24, ptr noundef %segments.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %node, ptr %prev.i.i, align 8
  %26 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %segments.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %call13, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %node, ptr %24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end22.cleanup_crit_edge
  %cmp12 = icmp ult i32 %add, %period_len
  br i1 %cmp12, label %cleanup.while.body_crit_edge, label %while.cond.for.inc_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.for.inc_crit_edge:                     ; preds = %cleanup
  %inc = add nuw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %while.cond.for.inc_crit_edge.while.cond.preheader_crit_edge

while.cond.for.inc_crit_edge.while.cond.preheader_crit_edge: ; preds = %while.cond.for.inc_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.end:                                          ; preds = %while.cond.for.inc_crit_edge
  %29 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %segments.i, align 4
  %phys27 = getelementptr i8, ptr %30, i32 8
  %31 = ptrtoint ptr %phys27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys27, align 8
  %phys29 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %phys29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %phys29, align 8
  %cyclic = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %cyclic, align 4
  %ctrl_offset.i = getelementptr i8, ptr %dchan, i32 -84
  %35 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctrl_offset.i, align 4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %42 = or i32 %41, 268435456
  %43 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl_offset.i, align 4
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %48, i32 %44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106, i32 %42) #9, !srcloc !280
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 8
  %add.ptr35 = getelementptr i8, ptr %50, i32 -64
  %51 = ptrtoint ptr %phys27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phys27, align 8
  %53 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %add.ptr35, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp39 = icmp eq i32 %direction, 1
  br i1 %cmp39, label %if.then40, label %for.end.cleanup49_crit_edge

for.end.cleanup49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %control42 = getelementptr i8, ptr %30, i32 -40
  %54 = ptrtoint ptr %control42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %control42, align 8
  %or43 = or i32 %55, 134217728
  store i32 %or43, ptr %control42, align 8
  %control45 = getelementptr i8, ptr %50, i32 -40
  %56 = ptrtoint ptr %control45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %control45, align 8
  %or46 = or i32 %57, 67108864
  store i32 %or46, ptr %control45, align 8
  br label %cleanup49

error:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup49

cleanup49:                                        ; preds = %error, %if.then40, %for.end.cleanup49_crit_edge, %if.end5.cleanup49_crit_edge, %if.end.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ null, %entry.cleanup49_crit_edge ], [ null, %if.end.cleanup49_crit_edge ], [ %call7.i.i.i, %if.then40 ], [ %call7.i.i.i, %for.end.cleanup49_crit_edge ], [ null, %if.end5.cleanup49_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_cdma_prep_memcpy(ptr noundef %dchan, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %max_buffer_len = getelementptr inbounds %struct.xilinx_dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_buffer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp = icmp ult i32 %3, %len
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2304, i32 noundef 124) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %segments.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %segments.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %segments.i, ptr %segments.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %segments.i, ptr %prev.i.i, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %dchan) #9
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xilinx_dma_tx_submit, ptr %tx_submit, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #9
  %8 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %phys.i, align 4, !annotation !283
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 64
  %9 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef 2848, ptr noundef nonnull %phys.i) #9
  %tobool.not.i47 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i47, label %error, label %if.end8

if.end8:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys.i, align 4
  %phys1.i = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %phys1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %phys1.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  %control = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %control, align 8
  %src_addr = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dma_src, ptr %src_addr, align 8
  %dest_addr = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %dest_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dma_dst, ptr %dest_addr, align 16
  %ext_addr = getelementptr i8, ptr %dchan, i32 172
  %17 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ext_addr, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  br i1 %tobool10.not, label %if.end8.if.end15_crit_edge, label %if.then11

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %src_addr_msb = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %src_addr_msb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %src_addr_msb, align 4
  %dest_addr_msb = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %dest_addr_msb to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dest_addr_msb, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end8.if.end15_crit_edge
  %node = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 8
  %call.i.i49 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %22, ptr noundef %segments.i) #9
  br i1 %call.i.i49, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %node, ptr %prev.i.i, align 8
  %24 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %segments.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %call.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  %27 = ptrtoint ptr %phys1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys1.i, align 8
  %phys17 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %phys17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %phys17, align 8
  %30 = load i32, ptr %phys1.i, align 8
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call.i.i, align 64
  br label %cleanup

error:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %list_add_tail.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %list_add_tail.exit ], [ null, %error ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_cdma_prep_memcpy_sg(ptr noundef %dchan, ptr noundef %dst_sg, i32 noundef %dst_sg_len, ptr noundef %src_sg, i32 noundef %src_sg_len, i32 noundef %flags) #0 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_sg_len)
  %cmp = icmp eq i32 %dst_sg_len, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_sg_len)
  %cmp1 = icmp eq i32 %src_sg_len, 0
  %spec.select = or i1 %cmp, %cmp1
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !286

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %dst_sg, null
  %tobool5.not = icmp eq ptr %src_sg, null
  %spec.select173 = or i1 %tobool3.not, %tobool5.not
  br i1 %spec.select173, label %if.end.cleanup_crit_edge, label %if.end16, !prof !286

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2304, i32 noundef 124) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %segments.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %segments.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %segments.i, ptr %segments.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %segments.i, ptr %prev.i.i, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %dchan) #9
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xilinx_dma_tx_submit, ptr %tx_submit, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %dst_sg, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 64
  %ext_addr = getelementptr i8, ptr %dchan, i32 172
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end82, %if.end19
  %src_sg_len.addr.0.ph = phi i32 [ %dec83, %if.end82 ], [ %src_sg_len, %if.end19 ]
  %prev.0.ph = phi ptr [ %prev.1, %if.end82 ], [ null, %if.end19 ]
  %dst_avail.0.ph = phi i32 [ %dst_avail.2, %if.end82 ], [ %5, %if.end19 ]
  %src_sg.addr.0.ph = phi ptr [ %call79, %if.end82 ], [ %src_sg, %if.end19 ]
  %dst_sg_len.addr.0.ph = phi i32 [ %dst_sg_len.addr.1, %if.end82 ], [ %dst_sg_len, %if.end19 ]
  %dst_sg.addr.0.ph = phi ptr [ %dst_sg.addr.1, %if.end82 ], [ %dst_sg, %if.end19 ]
  %src_avail.0.ph.in = getelementptr inbounds %struct.scatterlist, ptr %src_sg.addr.0.ph, i32 0, i32 4
  %6 = ptrtoint ptr %src_avail.0.ph.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %src_avail.0.ph = load i32, ptr %src_avail.0.ph.in, align 4
  %dma_address38 = getelementptr inbounds %struct.scatterlist, ptr %src_sg.addr.0.ph, i32 0, i32 3
  %dma_length39 = getelementptr inbounds %struct.scatterlist, ptr %src_sg.addr.0.ph, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end73.while.cond_crit_edge, %while.cond.outer
  %prev.0 = phi ptr [ %prev.1, %if.end73.while.cond_crit_edge ], [ %prev.0.ph, %while.cond.outer ]
  %dst_avail.0 = phi i32 [ %dst_avail.2, %if.end73.while.cond_crit_edge ], [ %dst_avail.0.ph, %while.cond.outer ]
  %src_avail.0 = phi i32 [ %src_avail.1, %if.end73.while.cond_crit_edge ], [ %src_avail.0.ph, %while.cond.outer ]
  %dst_sg_len.addr.0 = phi i32 [ %dst_sg_len.addr.1, %if.end73.while.cond_crit_edge ], [ %dst_sg_len.addr.0.ph, %while.cond.outer ]
  %dst_sg.addr.0 = phi ptr [ %dst_sg.addr.1, %if.end73.while.cond_crit_edge ], [ %dst_sg.addr.0.ph, %while.cond.outer ]
  %7 = call i32 @llvm.umin.i32(i32 %src_avail.0, i32 %dst_avail.0)
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %max_buffer_len = getelementptr inbounds %struct.xilinx_dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_buffer_len, align 4
  %12 = call i32 @llvm.umin.i32(i32 %7, i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp30 = icmp eq i32 %12, 0
  br i1 %cmp30, label %while.cond.fetch_crit_edge, label %if.end32

while.cond.fetch_crit_edge:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %fetch

if.end32:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #9
  %13 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %phys.i, align 4, !annotation !283
  %14 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %15, i32 noundef 2848, ptr noundef nonnull %phys.i) #9
  %tobool.not.i174 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i174, label %xilinx_cdma_alloc_tx_segment.exit.thread, label %if.end36

xilinx_cdma_alloc_tx_segment.exit.thread:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  br label %error

if.end36:                                         ; preds = %if.end32
  %16 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys.i, align 4
  %phys1.i = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %phys1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %phys1.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %dst_sg.addr.0, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address, align 4
  %dma_length37 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg.addr.0, i32 0, i32 4
  %21 = ptrtoint ptr %dma_length37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_length37, align 4
  %add = sub i32 %20, %dst_avail.0
  %sub = add i32 %add, %22
  %23 = ptrtoint ptr %dma_address38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address38, align 4
  %25 = ptrtoint ptr %dma_length39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length39, align 4
  %add40 = sub i32 %24, %src_avail.0
  %sub41 = add i32 %add40, %26
  %control = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %12, ptr %control, align 8
  %src_addr = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub41, ptr %src_addr, align 8
  %dest_addr = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %dest_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %dest_addr, align 16
  %30 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ext_addr, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool43.not = icmp eq i8 %31, 0
  br i1 %tobool43.not, label %if.end36.if.end48_crit_edge, label %if.then44

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %src_addr_msb = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %src_addr_msb to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %src_addr_msb, align 4
  %dest_addr_msb = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %call.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %dest_addr_msb to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dest_addr_msb, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end36.if.end48_crit_edge
  %tobool49.not = icmp eq ptr %prev.0, null
  br i1 %tobool49.not, label %if.end48.if.end60_crit_edge, label %if.then50

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then50:                                        ; preds = %if.end48
  %34 = ptrtoint ptr %phys1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phys1.i, align 8
  %36 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %prev.0, align 64
  %37 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ext_addr, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool53.not = icmp eq i8 %38, 0
  br i1 %tobool53.not, label %if.then50.if.end60_crit_edge, label %if.then54

if.then50.if.end60_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %next_desc_msb = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %prev.0, i32 0, i32 1
  %39 = ptrtoint ptr %next_desc_msb to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %next_desc_msb, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.then50.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  %sub61 = sub i32 %dst_avail.0, %12
  %sub62 = sub i32 %src_avail.0, %12
  %node = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %call.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 8
  %call.i.i176 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %41, ptr noundef %segments.i) #9
  br i1 %call.i.i176, label %if.end.i.i, label %if.end60.fetch_crit_edge

if.end60.fetch_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %fetch

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node, ptr %prev.i.i, align 8
  %43 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %segments.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %call.i.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %node, ptr %41, align 4
  br label %fetch

fetch:                                            ; preds = %if.end.i.i, %if.end60.fetch_crit_edge, %while.cond.fetch_crit_edge
  %prev.1 = phi ptr [ %prev.0, %while.cond.fetch_crit_edge ], [ %call.i.i, %if.end60.fetch_crit_edge ], [ %call.i.i, %if.end.i.i ]
  %dst_avail.1 = phi i32 [ %dst_avail.0, %while.cond.fetch_crit_edge ], [ %sub61, %if.end60.fetch_crit_edge ], [ %sub61, %if.end.i.i ]
  %src_avail.1 = phi i32 [ %src_avail.0, %while.cond.fetch_crit_edge ], [ %sub62, %if.end60.fetch_crit_edge ], [ %sub62, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_avail.1)
  %cmp63 = icmp eq i32 %dst_avail.1, 0
  br i1 %cmp63, label %if.then64, label %fetch.if.end73_crit_edge

fetch.if.end73_crit_edge:                         ; preds = %fetch
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then64:                                        ; preds = %fetch
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_sg_len.addr.0)
  %cmp65 = icmp eq i32 %dst_sg_len.addr.0, 0
  br i1 %cmp65, label %if.then64.while.end_crit_edge, label %if.end67

if.then64.while.end_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end67:                                         ; preds = %if.then64
  %call68 = call ptr @sg_next(ptr noundef %dst_sg.addr.0) #9
  %cmp69 = icmp eq ptr %call68, null
  br i1 %cmp69, label %if.end67.while.end_crit_edge, label %if.end71

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end71:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %dst_sg_len.addr.0, -1
  %dma_length72 = getelementptr inbounds %struct.scatterlist, ptr %call68, i32 0, i32 4
  %46 = ptrtoint ptr %dma_length72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_length72, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %fetch.if.end73_crit_edge
  %dst_avail.2 = phi i32 [ %47, %if.end71 ], [ %dst_avail.1, %fetch.if.end73_crit_edge ]
  %dst_sg_len.addr.1 = phi i32 [ %dec, %if.end71 ], [ %dst_sg_len.addr.0, %fetch.if.end73_crit_edge ]
  %dst_sg.addr.1 = phi ptr [ %call68, %if.end71 ], [ %dst_sg.addr.0, %fetch.if.end73_crit_edge ]
  %cmp74 = icmp eq i32 %src_avail.1, 0
  br i1 %cmp74, label %if.then75, label %if.end73.while.cond_crit_edge

if.end73.while.cond_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_sg_len.addr.0.ph)
  %cmp76 = icmp eq i32 %src_sg_len.addr.0.ph, 0
  br i1 %cmp76, label %if.then75.while.end_crit_edge, label %if.end78

if.then75.while.end_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end78:                                         ; preds = %if.then75
  %call79 = call ptr @sg_next(ptr noundef %src_sg.addr.0.ph) #9
  %cmp80 = icmp eq ptr %call79, null
  br i1 %cmp80, label %if.end78.while.end_crit_edge, label %if.end82

if.end78.while.end_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %dec83 = add i32 %src_sg_len.addr.0.ph, -1
  br label %while.cond.outer

while.end:                                        ; preds = %if.end78.while.end_crit_edge, %if.then75.while.end_crit_edge, %if.end67.while.end_crit_edge, %if.then64.while.end_crit_edge
  %48 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %segments.i, align 4
  %cmp.i.not = icmp eq ptr %49, %segments.i
  br i1 %cmp.i.not, label %do.end, label %if.end91

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.xilinx_dma_device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #12
  br label %error

if.end91:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %phys96 = getelementptr i8, ptr %49, i32 8
  %54 = ptrtoint ptr %phys96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys96, align 8
  %phys98 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %phys98 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %phys98, align 8
  %57 = load i32, ptr %phys96, align 8
  %58 = ptrtoint ptr %prev.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %prev.1, align 64
  br label %cleanup

error:                                            ; preds = %do.end, %xilinx_cdma_alloc_tx_segment.exit.thread
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end91, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ %call7.i.i.i, %if.end91 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_mcdma_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 124) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup40_crit_edge, label %if.end3

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end3:                                          ; preds = %if.end
  %segments.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %segments.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %segments.i, ptr %segments.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %segments.i, ptr %prev.i.i, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %dchan) #9
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xilinx_dma_tx_submit, ptr %tx_submit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp95.not = icmp eq i32 %sg_len, 0
  br i1 %cmp95.not, label %if.end3.for.end_crit_edge, label %while.cond.preheader.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %if.end3
  %lock.i = getelementptr i8, ptr %dchan, i32 -76
  %free_seg_list.i = getelementptr i8, ptr %dchan, i32 -8
  %ext_addr.i = getelementptr i8, ptr %dchan, i32 172
  %direction14 = getelementptr i8, ptr %dchan, i32 80
  %tobool16.not = icmp eq ptr %context, null
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.097 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %sg.096 = phi ptr [ %sgl, %while.cond.preheader.lr.ph ], [ %call19, %for.inc.while.cond.preheader_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.096, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp593.not = icmp eq i32 %7, 0
  br i1 %cmp593.not, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.096, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sg_used.094 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %8 = ptrtoint ptr %free_seg_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %free_seg_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %free_seg_list.i
  br i1 %cmp.i.not.i, label %xilinx_aximcdma_alloc_tx_segment.exit.thread, label %if.then.i

xilinx_aximcdma_alloc_tx_segment.exit.thread:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %error

if.then.i:                                        ; preds = %while.body
  %add.ptr.i = getelementptr i8, ptr %9, i32 -64
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.xilinx_aximcdma_alloc_tx_segment.exit_crit_edge

if.then.i.xilinx_aximcdma_alloc_tx_segment.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_aximcdma_alloc_tx_segment.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %xilinx_aximcdma_alloc_tx_segment.exit

xilinx_aximcdma_alloc_tx_segment.exit:            ; preds = %if.end.i.i.i, %if.then.i.xilinx_aximcdma_alloc_tx_segment.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i.i81 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i81, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %tobool7.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool7.not, label %xilinx_aximcdma_alloc_tx_segment.exit.error_crit_edge, label %if.end9

xilinx_aximcdma_alloc_tx_segment.exit.error_crit_edge: ; preds = %xilinx_aximcdma_alloc_tx_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end9:                                          ; preds = %xilinx_aximcdma_alloc_tx_segment.exit
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  %sub = sub i32 %19, %sg_used.094
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %max_buffer_len = getelementptr inbounds %struct.xilinx_dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_buffer_len, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %23)
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  %27 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i83 = icmp eq i8 %28, 0
  br i1 %tobool.not.i83, label %if.end9.xilinx_aximcdma_buf.exit_crit_edge, label %if.then.i84

if.end9.xilinx_aximcdma_buf.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_aximcdma_buf.exit

if.then.i84:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %buf_addr_msb.i = getelementptr i8, ptr %9, i32 -52
  %29 = ptrtoint ptr %buf_addr_msb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %buf_addr_msb.i, align 4
  br label %xilinx_aximcdma_buf.exit

xilinx_aximcdma_buf.exit:                         ; preds = %if.then.i84, %if.end9.xilinx_aximcdma_buf.exit_crit_edge
  %add.sink.i = add i32 %26, %sg_used.094
  %30 = getelementptr i8, ptr %9, i32 -56
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.sink.i, ptr %30, align 8
  %control = getelementptr i8, ptr %9, i32 -44
  %32 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %24, ptr %control, align 4
  %33 = ptrtoint ptr %direction14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %direction14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp15 = icmp ne i32 %34, 1
  %or.cond = or i1 %tobool16.not, %cmp15
  br i1 %or.cond, label %xilinx_aximcdma_buf.exit.if.end18_crit_edge, label %if.then17

xilinx_aximcdma_buf.exit.if.end18_crit_edge:      ; preds = %xilinx_aximcdma_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %xilinx_aximcdma_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %app = getelementptr i8, ptr %9, i32 -32
  %35 = call ptr @memcpy(ptr %app, ptr %context, i32 20)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %xilinx_aximcdma_buf.exit.if.end18_crit_edge
  %add = add i32 %24, %sg_used.094
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %37, ptr noundef %segments.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %9, ptr %prev.i.i, align 8
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %segments.i, ptr %9, align 4
  %40 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i.i81, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %9, ptr %37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end18.cleanup_crit_edge
  %42 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_length, align 4
  %cmp5 = icmp ult i32 %add, %43
  br i1 %cmp5, label %cleanup.while.body_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw i32 %i.097, 1
  %call19 = tail call ptr @sg_next(ptr noundef %sg.096) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %44 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %segments.i, align 4
  %phys = getelementptr i8, ptr %45, i32 8
  %46 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phys, align 8
  %phys25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %phys25 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %phys25, align 8
  %direction26 = getelementptr i8, ptr %dchan, i32 80
  %49 = ptrtoint ptr %direction26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %direction26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp27 = icmp eq i32 %50, 1
  br i1 %cmp27, label %if.then28, label %for.end.cleanup40_crit_edge

for.end.cleanup40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %control30 = getelementptr i8, ptr %45, i32 -44
  %51 = ptrtoint ptr %control30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %control30, align 4
  %or = or i32 %52, -2147483648
  store i32 %or, ptr %control30, align 4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 8
  %control36 = getelementptr i8, ptr %54, i32 -44
  %55 = ptrtoint ptr %control36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %control36, align 4
  %or37 = or i32 %56, 1073741824
  store i32 %or37, ptr %control36, align 4
  br label %cleanup40

error:                                            ; preds = %xilinx_aximcdma_alloc_tx_segment.exit.error_crit_edge, %xilinx_aximcdma_alloc_tx_segment.exit.thread
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup40

cleanup40:                                        ; preds = %error, %if.then28, %for.end.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ null, %entry.cleanup40_crit_edge ], [ %call7.i.i.i, %if.then28 ], [ %call7.i.i.i, %for.end.cleanup40_crit_edge ], [ null, %if.end.cleanup40_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_vdma_dma_prep_interleaved(ptr noundef %dchan, ptr nocapture noundef readonly %xt, i32 noundef %flags) #0 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 2
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %4 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %6 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %8 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2304, i32 noundef 124) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %segments.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %segments.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %segments.i, ptr %segments.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %segments.i, ptr %prev.i.i, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %dchan) #9
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xilinx_dma_tx_submit, ptr %tx_submit, align 8
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %15, 2
  store i32 %or.i, ptr %flags.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #9
  %16 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %phys.i, align 4, !annotation !283
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 64
  %17 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %18, i32 noundef 2848, ptr noundef nonnull %phys.i) #9
  %tobool.not.i103 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i103, label %error, label %if.end15

if.end15:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  %phys1.i = getelementptr inbounds %struct.xilinx_vdma_tx_segment, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %phys1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %phys1.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  %22 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numf, align 4
  %vsize = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %call.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %vsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vsize, align 16
  %25 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sgl, align 4
  %hsize = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %call.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %hsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %hsize, align 4
  %icg = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %28 = ptrtoint ptr %icg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %icg, align 4
  %30 = load i32, ptr %sgl, align 4
  %add = add i32 %30, %29
  %stride = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %call.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %stride, align 8
  %config = getelementptr i8, ptr %dchan, i32 120
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %config, align 4
  %shl26 = shl i32 %33, 24
  %or = or i32 %shl26, %add
  store i32 %or, ptr %stride, align 8
  %34 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp29.not = icmp eq i32 %35, 1
  %ext_addr39 = getelementptr i8, ptr %dchan, i32 172
  %36 = ptrtoint ptr %ext_addr39 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ext_addr39, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool40.not = icmp eq i8 %37, 0
  br i1 %cmp29.not, label %if.else38, label %if.then30

if.then30:                                        ; preds = %if.end15
  %dst_start35 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %38 = ptrtoint ptr %dst_start35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dst_start35, align 4
  %buf_addr36 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %call.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %buf_addr36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %buf_addr36, align 8
  br i1 %tobool40.not, label %if.then30.if.end52_crit_edge, label %if.then30.if.end52.sink.split_crit_edge

if.then30.if.end52.sink.split_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split

if.then30.if.end52_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else38:                                        ; preds = %if.end15
  %41 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xt, align 4
  %buf_addr50 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %call.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %buf_addr50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %buf_addr50, align 8
  br i1 %tobool40.not, label %if.else38.if.end52_crit_edge, label %if.else38.if.end52.sink.split_crit_edge

if.else38.if.end52.sink.split_crit_edge:          ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split

if.else38.if.end52_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end52.sink.split:                              ; preds = %if.else38.if.end52.sink.split_crit_edge, %if.then30.if.end52.sink.split_crit_edge
  %buf_addr_msb47 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf_addr_msb47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %buf_addr_msb47, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else38.if.end52_crit_edge, %if.then30.if.end52_crit_edge
  %node = getelementptr inbounds %struct.xilinx_vdma_tx_segment, ptr %call.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 8
  %call.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %46, ptr noundef %segments.i) #9
  br i1 %call.i.i105, label %if.end.i.i, label %if.end52.list_add_tail.exit_crit_edge

if.end52.list_add_tail.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %node, ptr %prev.i.i, align 8
  %48 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %segments.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xilinx_vdma_tx_segment, ptr %call.i.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %node, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end52.list_add_tail.exit_crit_edge
  %51 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %segments.i, align 4
  %phys = getelementptr i8, ptr %52, i32 8
  %53 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phys, align 8
  %phys58 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %phys58 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %phys58, align 8
  br label %cleanup

error:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %list_add_tail.exit, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %list_add_tail.exit ], [ null, %error ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_dma_xilinx_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
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
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_config, align 4
  %max_channels = getelementptr inbounds %struct.xilinx_dma_config, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp slt i32 %3, %7
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr %struct.xilinx_dma_device, ptr %1, i32 0, i32 3, i32 %3
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %common = getelementptr inbounds %struct.xilinx_dma_chan, ptr %9, i32 0, i32 8
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %common) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xdma_disable_allclks(ptr nocapture noundef readonly %xdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rxs_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 12
  %0 = ptrtoint ptr %rxs_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxs_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #9
  tail call void @clk_unprepare(ptr noundef %1) #9
  %rx_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 11
  %2 = ptrtoint ptr %rx_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %txs_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 10
  %4 = ptrtoint ptr %txs_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txs_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %tx_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 9
  %6 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %axi_clk = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 8
  %8 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_chan_remove(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_offset.i.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_offset.i.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %7 = and i32 %6, -7340033
  %8 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_offset.i.i, align 4
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %7) #9, !srcloc !280
  %irq = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 11
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @free_irq(i32 noundef %15, ptr noundef %chan) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tasklet = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %tasklet) #9
  %device_node = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 8, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 8, i32 8, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %22 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node, align 4
  %prev.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 8, i32 8, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_free_descriptors(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pending_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_list, align 4
  %cmp.not19.i = icmp eq ptr %1, %pending_list
  br i1 %cmp.not19.i, label %entry.xilinx_dma_free_desc_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.xilinx_dma_free_desc_list.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_free_desc_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -108
  %2 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %chan, ptr noundef %desc.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %pending_list
  br i1 %cmp.not.i, label %list_del.exit.i.xilinx_dma_free_desc_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.xilinx_dma_free_desc_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_free_desc_list.exit

xilinx_dma_free_desc_list.exit:                   ; preds = %list_del.exit.i.xilinx_dma_free_desc_list.exit_crit_edge, %entry.xilinx_dma_free_desc_list.exit_crit_edge
  %done_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 6
  %11 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %done_list, align 4
  %cmp.not19.i13 = icmp eq ptr %12, %done_list
  br i1 %cmp.not19.i13, label %xilinx_dma_free_desc_list.exit.xilinx_dma_free_desc_list.exit25_crit_edge, label %xilinx_dma_free_desc_list.exit.for.body.i18_crit_edge

xilinx_dma_free_desc_list.exit.for.body.i18_crit_edge: ; preds = %xilinx_dma_free_desc_list.exit
  br label %for.body.i18

xilinx_dma_free_desc_list.exit.xilinx_dma_free_desc_list.exit25_crit_edge: ; preds = %xilinx_dma_free_desc_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_free_desc_list.exit25

for.body.i18:                                     ; preds = %list_del.exit.i24.for.body.i18_crit_edge, %xilinx_dma_free_desc_list.exit.for.body.i18_crit_edge
  %.pn.in20.i14 = phi ptr [ %.pn.i16, %list_del.exit.i24.for.body.i18_crit_edge ], [ %12, %xilinx_dma_free_desc_list.exit.for.body.i18_crit_edge ]
  %desc.0.i15 = getelementptr i8, ptr %.pn.in20.i14, i32 -108
  %13 = ptrtoint ptr %.pn.in20.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i16 = load ptr, ptr %.pn.in20.i14, align 4
  %call.i.i.i17 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i14) #9
  br i1 %call.i.i.i17, label %if.end.i.i.i21, label %for.body.i18.list_del.exit.i24_crit_edge

for.body.i18.list_del.exit.i24_crit_edge:         ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i24

if.end.i.i.i21:                                   ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i19 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i14, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i19, align 4
  %16 = ptrtoint ptr %.pn.in20.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in20.i14, align 4
  %prev1.i.i.i.i20 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i20, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i24

list_del.exit.i24:                                ; preds = %if.end.i.i.i21, %for.body.i18.list_del.exit.i24_crit_edge
  %20 = ptrtoint ptr %.pn.in20.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i14, align 4
  %prev.i.i22 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i14, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i22, align 4
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %chan, ptr noundef %desc.0.i15) #9
  %cmp.not.i23 = icmp eq ptr %.pn.i16, %done_list
  br i1 %cmp.not.i23, label %list_del.exit.i24.xilinx_dma_free_desc_list.exit25_crit_edge, label %list_del.exit.i24.for.body.i18_crit_edge

list_del.exit.i24.for.body.i18_crit_edge:         ; preds = %list_del.exit.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i18

list_del.exit.i24.xilinx_dma_free_desc_list.exit25_crit_edge: ; preds = %list_del.exit.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_free_desc_list.exit25

xilinx_dma_free_desc_list.exit25:                 ; preds = %list_del.exit.i24.xilinx_dma_free_desc_list.exit25_crit_edge, %xilinx_dma_free_desc_list.exit.xilinx_dma_free_desc_list.exit25_crit_edge
  %active_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5
  %22 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_list, align 4
  %cmp.not19.i26 = icmp eq ptr %23, %active_list
  br i1 %cmp.not19.i26, label %xilinx_dma_free_desc_list.exit25.xilinx_dma_free_desc_list.exit38_crit_edge, label %xilinx_dma_free_desc_list.exit25.for.body.i31_crit_edge

xilinx_dma_free_desc_list.exit25.for.body.i31_crit_edge: ; preds = %xilinx_dma_free_desc_list.exit25
  br label %for.body.i31

xilinx_dma_free_desc_list.exit25.xilinx_dma_free_desc_list.exit38_crit_edge: ; preds = %xilinx_dma_free_desc_list.exit25
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_free_desc_list.exit38

for.body.i31:                                     ; preds = %list_del.exit.i37.for.body.i31_crit_edge, %xilinx_dma_free_desc_list.exit25.for.body.i31_crit_edge
  %.pn.in20.i27 = phi ptr [ %.pn.i29, %list_del.exit.i37.for.body.i31_crit_edge ], [ %23, %xilinx_dma_free_desc_list.exit25.for.body.i31_crit_edge ]
  %desc.0.i28 = getelementptr i8, ptr %.pn.in20.i27, i32 -108
  %24 = ptrtoint ptr %.pn.in20.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i29 = load ptr, ptr %.pn.in20.i27, align 4
  %call.i.i.i30 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i27) #9
  br i1 %call.i.i.i30, label %if.end.i.i.i34, label %for.body.i31.list_del.exit.i37_crit_edge

for.body.i31.list_del.exit.i37_crit_edge:         ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i37

if.end.i.i.i34:                                   ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i32 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i27, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i32, align 4
  %27 = ptrtoint ptr %.pn.in20.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in20.i27, align 4
  %prev1.i.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i33, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i37

list_del.exit.i37:                                ; preds = %if.end.i.i.i34, %for.body.i31.list_del.exit.i37_crit_edge
  %31 = ptrtoint ptr %.pn.in20.i27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i27, align 4
  %prev.i.i35 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i27, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i35, align 4
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %chan, ptr noundef %desc.0.i28) #9
  %cmp.not.i36 = icmp eq ptr %.pn.i29, %active_list
  br i1 %cmp.not.i36, label %list_del.exit.i37.xilinx_dma_free_desc_list.exit38_crit_edge, label %list_del.exit.i37.for.body.i31_crit_edge

list_del.exit.i37.for.body.i31_crit_edge:         ; preds = %list_del.exit.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i31

list_del.exit.i37.xilinx_dma_free_desc_list.exit38_crit_edge: ; preds = %list_del.exit.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_free_desc_list.exit38

xilinx_dma_free_desc_list.exit38:                 ; preds = %list_del.exit.i37.xilinx_dma_free_desc_list.exit38_crit_edge, %xilinx_dma_free_desc_list.exit25.xilinx_dma_free_desc_list.exit38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %chan, ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %5, label %if.else75 [
    i32 2, label %if.then1
    i32 1, label %if.then20
    i32 0, label %if.then50
  ]

if.then1:                                         ; preds = %if.end
  %segments = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %desc, i32 0, i32 1
  %7 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %segments, align 4
  %cmp9.not183 = icmp eq ptr %8, %segments
  br i1 %cmp9.not183, label %if.then1.if.end102_crit_edge, label %for.body.lr.ph

if.then1.if.end102_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

for.body.lr.ph:                                   ; preds = %if.then1
  %desc_pool.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn143.in184 = phi ptr [ %8, %for.body.lr.ph ], [ %.pn143, %list_del.exit.for.body_crit_edge ]
  %segment.0 = getelementptr i8, ptr %.pn143.in184, i32 -64
  %9 = ptrtoint ptr %.pn143.in184 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn143 = load ptr, ptr %.pn143.in184, align 64
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn143.in184) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn143.in184, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn143.in184 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn143.in184, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn143.in184 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn143.in184, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn143.in184, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc_pool.i, align 4
  %phys.i = getelementptr i8, ptr %.pn143.in184, i32 8
  %20 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys.i, align 8
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %segment.0, i32 noundef %21) #9
  %cmp9.not = icmp eq ptr %.pn143, %segments
  br i1 %cmp9.not, label %list_del.exit.if.end102_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.if.end102_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then20:                                        ; preds = %if.end
  %segments22 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %desc, i32 0, i32 1
  %22 = ptrtoint ptr %segments22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %segments22, align 4
  %cmp34.not181 = icmp eq ptr %23, %segments22
  br i1 %cmp34.not181, label %if.then20.if.end102_crit_edge, label %for.body36.lr.ph

if.then20.if.end102_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

for.body36.lr.ph:                                 ; preds = %if.then20
  %desc_pool.i154 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 9
  br label %for.body36

for.body36:                                       ; preds = %list_del.exit153.for.body36_crit_edge, %for.body36.lr.ph
  %.pn142.in182 = phi ptr [ %23, %for.body36.lr.ph ], [ %.pn142, %list_del.exit153.for.body36_crit_edge ]
  %cdma_segment.0 = getelementptr i8, ptr %.pn142.in182, i32 -64
  %24 = ptrtoint ptr %.pn142.in182 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn142 = load ptr, ptr %.pn142.in182, align 64
  %call.i.i148 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn142.in182) #9
  br i1 %call.i.i148, label %if.end.i.i151, label %for.body36.list_del.exit153_crit_edge

for.body36.list_del.exit153_crit_edge:            ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit153

if.end.i.i151:                                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i149 = getelementptr inbounds %struct.list_head, ptr %.pn142.in182, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i149 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i149, align 4
  %27 = ptrtoint ptr %.pn142.in182 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn142.in182, align 4
  %prev1.i.i.i150 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i150, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit153

list_del.exit153:                                 ; preds = %if.end.i.i151, %for.body36.list_del.exit153_crit_edge
  %31 = ptrtoint ptr %.pn142.in182 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn142.in182, align 4
  %prev.i152 = getelementptr inbounds %struct.list_head, ptr %.pn142.in182, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i152, align 4
  %33 = ptrtoint ptr %desc_pool.i154 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc_pool.i154, align 4
  %phys.i155 = getelementptr i8, ptr %.pn142.in182, i32 8
  %35 = ptrtoint ptr %phys.i155 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys.i155, align 8
  tail call void @dma_pool_free(ptr noundef %34, ptr noundef %cdma_segment.0, i32 noundef %36) #9
  %cmp34.not = icmp eq ptr %.pn142, %segments22
  br i1 %cmp34.not, label %list_del.exit153.if.end102_crit_edge, label %list_del.exit153.for.body36_crit_edge

list_del.exit153.for.body36_crit_edge:            ; preds = %list_del.exit153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36

list_del.exit153.if.end102_crit_edge:             ; preds = %list_del.exit153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then50:                                        ; preds = %if.end
  %segments52 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %desc, i32 0, i32 1
  %37 = ptrtoint ptr %segments52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %segments52, align 4
  %cmp64.not179 = icmp eq ptr %38, %segments52
  br i1 %cmp64.not179, label %if.then50.if.end102_crit_edge, label %for.body66.lr.ph

if.then50.if.end102_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

for.body66.lr.ph:                                 ; preds = %if.then50
  %free_seg_list.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 7
  %prev.i.i162 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  br label %for.body66

for.body66:                                       ; preds = %xilinx_dma_free_tx_segment.exit.for.body66_crit_edge, %for.body66.lr.ph
  %.pn141.in180 = phi ptr [ %38, %for.body66.lr.ph ], [ %.pn141, %xilinx_dma_free_tx_segment.exit.for.body66_crit_edge ]
  %axidma_segment.0 = getelementptr i8, ptr %.pn141.in180, i32 -64
  %39 = ptrtoint ptr %.pn141.in180 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn141 = load ptr, ptr %.pn141.in180, align 64
  %call.i.i156 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn141.in180) #9
  br i1 %call.i.i156, label %if.end.i.i159, label %for.body66.list_del.exit161_crit_edge

for.body66.list_del.exit161_crit_edge:            ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit161

if.end.i.i159:                                    ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i157 = getelementptr inbounds %struct.list_head, ptr %.pn141.in180, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i157 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i157, align 4
  %42 = ptrtoint ptr %.pn141.in180 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn141.in180, align 4
  %prev1.i.i.i158 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i158, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit161

list_del.exit161:                                 ; preds = %if.end.i.i159, %for.body66.list_del.exit161_crit_edge
  %46 = ptrtoint ptr %.pn141.in180 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn141.in180, align 4
  %prev.i160 = getelementptr %struct.list_head, ptr %.pn141.in180, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i160 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i160, align 4
  %48 = ptrtoint ptr %axidma_segment.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %axidma_segment.0, align 64
  %next_desc_msb2.i.i = getelementptr i8, ptr %.pn141.in180, i32 -60
  %50 = ptrtoint ptr %next_desc_msb2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %next_desc_msb2.i.i, align 4
  %52 = call ptr @memset(ptr %axidma_segment.0, i32 0, i32 64)
  store i32 %49, ptr %axidma_segment.0, align 64
  store i32 %51, ptr %next_desc_msb2.i.i, align 4
  %53 = ptrtoint ptr %prev.i.i162 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i162, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn141.in180, ptr noundef %54, ptr noundef %free_seg_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit161.xilinx_dma_free_tx_segment.exit_crit_edge

list_del.exit161.xilinx_dma_free_tx_segment.exit_crit_edge: ; preds = %list_del.exit161
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_free_tx_segment.exit

if.end.i.i.i:                                     ; preds = %list_del.exit161
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %prev.i.i162 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.pn141.in180, ptr %prev.i.i162, align 4
  %56 = ptrtoint ptr %.pn141.in180 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %free_seg_list.i, ptr %.pn141.in180, align 4
  %57 = ptrtoint ptr %prev.i160 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev.i160, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %.pn141.in180, ptr %54, align 4
  br label %xilinx_dma_free_tx_segment.exit

xilinx_dma_free_tx_segment.exit:                  ; preds = %if.end.i.i.i, %list_del.exit161.xilinx_dma_free_tx_segment.exit_crit_edge
  %cmp64.not = icmp eq ptr %.pn141, %segments52
  br i1 %cmp64.not, label %xilinx_dma_free_tx_segment.exit.if.end102_crit_edge, label %xilinx_dma_free_tx_segment.exit.for.body66_crit_edge

xilinx_dma_free_tx_segment.exit.for.body66_crit_edge: ; preds = %xilinx_dma_free_tx_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66

xilinx_dma_free_tx_segment.exit.if.end102_crit_edge: ; preds = %xilinx_dma_free_tx_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.else75:                                        ; preds = %if.end
  %segments77 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %desc, i32 0, i32 1
  %59 = ptrtoint ptr %segments77 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %segments77, align 4
  %cmp89.not185 = icmp eq ptr %60, %segments77
  br i1 %cmp89.not185, label %if.else75.if.end102_crit_edge, label %for.body91.lr.ph

if.else75.if.end102_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

for.body91.lr.ph:                                 ; preds = %if.else75
  %free_seg_list.i171 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 7
  %prev.i.i172 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  br label %for.body91

for.body91:                                       ; preds = %xilinx_mcdma_free_tx_segment.exit.for.body91_crit_edge, %for.body91.lr.ph
  %.pn.in186 = phi ptr [ %60, %for.body91.lr.ph ], [ %.pn, %xilinx_mcdma_free_tx_segment.exit.for.body91_crit_edge ]
  %aximcdma_segment.0 = getelementptr i8, ptr %.pn.in186, i32 -64
  %61 = ptrtoint ptr %.pn.in186 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load ptr, ptr %.pn.in186, align 64
  %call.i.i163 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in186) #9
  br i1 %call.i.i163, label %if.end.i.i166, label %for.body91.list_del.exit168_crit_edge

for.body91.list_del.exit168_crit_edge:            ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit168

if.end.i.i166:                                    ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i164 = getelementptr inbounds %struct.list_head, ptr %.pn.in186, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i164 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i164, align 4
  %64 = ptrtoint ptr %.pn.in186 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pn.in186, align 4
  %prev1.i.i.i165 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i165, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit168

list_del.exit168:                                 ; preds = %if.end.i.i166, %for.body91.list_del.exit168_crit_edge
  %68 = ptrtoint ptr %.pn.in186 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in186, align 4
  %prev.i167 = getelementptr %struct.list_head, ptr %.pn.in186, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i167, align 4
  %70 = ptrtoint ptr %aximcdma_segment.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %aximcdma_segment.0, align 64
  %next_desc_msb2.i.i169 = getelementptr i8, ptr %.pn.in186, i32 -60
  %72 = ptrtoint ptr %next_desc_msb2.i.i169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %next_desc_msb2.i.i169, align 4
  %74 = call ptr @memset(ptr %aximcdma_segment.0, i32 0, i32 64)
  store i32 %71, ptr %aximcdma_segment.0, align 64
  store i32 %73, ptr %next_desc_msb2.i.i169, align 4
  %75 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i172, align 4
  %call.i.i.i173 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in186, ptr noundef %76, ptr noundef %free_seg_list.i171) #9
  br i1 %call.i.i.i173, label %if.end.i.i.i175, label %list_del.exit168.xilinx_mcdma_free_tx_segment.exit_crit_edge

list_del.exit168.xilinx_mcdma_free_tx_segment.exit_crit_edge: ; preds = %list_del.exit168
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_mcdma_free_tx_segment.exit

if.end.i.i.i175:                                  ; preds = %list_del.exit168
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %.pn.in186, ptr %prev.i.i172, align 4
  %78 = ptrtoint ptr %.pn.in186 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %free_seg_list.i171, ptr %.pn.in186, align 4
  %79 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev.i167, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %.pn.in186, ptr %76, align 4
  br label %xilinx_mcdma_free_tx_segment.exit

xilinx_mcdma_free_tx_segment.exit:                ; preds = %if.end.i.i.i175, %list_del.exit168.xilinx_mcdma_free_tx_segment.exit_crit_edge
  %cmp89.not = icmp eq ptr %.pn, %segments77
  br i1 %cmp89.not, label %xilinx_mcdma_free_tx_segment.exit.if.end102_crit_edge, label %xilinx_mcdma_free_tx_segment.exit.for.body91_crit_edge

xilinx_mcdma_free_tx_segment.exit.for.body91_crit_edge: ; preds = %xilinx_mcdma_free_tx_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body91

xilinx_mcdma_free_tx_segment.exit.if.end102_crit_edge: ; preds = %xilinx_mcdma_free_tx_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.end102:                                        ; preds = %xilinx_mcdma_free_tx_segment.exit.if.end102_crit_edge, %if.else75.if.end102_crit_edge, %xilinx_dma_free_tx_segment.exit.if.end102_crit_edge, %if.then50.if.end102_crit_edge, %list_del.exit153.if.end102_crit_edge, %if.then20.if.end102_crit_edge, %list_del.exit.if.end102_crit_edge, %if.then1.if.end102_crit_edge
  tail call void @kfree(ptr noundef nonnull %desc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_tx_submit(ptr noundef %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan2, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 -88
  %cyclic = getelementptr i8, ptr %1, i32 89
  %2 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cyclic, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr4, ptr noundef %tx)
  br label %cleanup

if.end:                                           ; preds = %entry
  %err5 = getelementptr i8, ptr %1, i32 91
  %4 = ptrtoint ptr %err5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %err5, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end.do.body11_crit_edge, label %if.then7

if.end.do.body11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

if.then7:                                         ; preds = %if.end
  %call = tail call fastcc i32 @xilinx_dma_chan_reset(ptr noundef %add.ptr4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.then7.do.body11_crit_edge

if.then7.do.body11_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body11:                                        ; preds = %if.then7.do.body11_crit_edge, %if.end.do.body11_crit_edge
  %lock = getelementptr i8, ptr %1, i32 -76
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %6 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan2, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %9, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #9
  %11 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cookie2.i, align 4
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %tx, align 4
  %pending_list.i = getelementptr i8, ptr %1, i32 -32
  %13 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %pending_list.i
  br i1 %cmp.i.not.i, label %do.body11.append.i_crit_edge, label %if.end.i

do.body11.append.i_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %append.i

if.end.i:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i = getelementptr i8, ptr %1, i32 -28
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %prev4.i = getelementptr i8, ptr %16, i32 -4
  %17 = ptrtoint ptr %prev4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev4.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %18, i32 -64
  %phys.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  %21 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr6.i, align 64
  br label %append.i

append.i:                                         ; preds = %if.end.i, %do.body11.append.i_crit_edge
  %node.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %tx, i32 0, i32 2
  %prev.i.i = getelementptr i8, ptr %1, i32 -28
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %23, ptr noundef %pending_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %append.i.list_add_tail.exit.i_crit_edge

append.i.list_add_tail.exit.i_crit_edge:          ; preds = %append.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %append.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pending_list.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %tx, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %node.i, ptr %23, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %append.i.list_add_tail.exit.i_crit_edge
  %desc_pendingcount.i = getelementptr i8, ptr %1, i32 168
  %28 = ptrtoint ptr %desc_pendingcount.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_pendingcount.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %desc_pendingcount.i, align 4
  %has_sg.i = getelementptr i8, ptr %1, i32 88
  %30 = ptrtoint ptr %has_sg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_sg.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool50.not.i = icmp eq i8 %31, 0
  br i1 %tobool50.not.i, label %list_add_tail.exit.i.append_desc_queue.exit_crit_edge, label %land.lhs.true.i

list_add_tail.exit.i.append_desc_queue.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_desc_queue.exit

land.lhs.true.i:                                  ; preds = %list_add_tail.exit.i
  %32 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr4, align 4
  %dma_config52.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %dma_config52.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma_config52.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp54.i = icmp eq i32 %37, 2
  br i1 %cmp54.i, label %land.lhs.true55.i, label %land.lhs.true.i.append_desc_queue.exit_crit_edge

land.lhs.true.i.append_desc_queue.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_desc_queue.exit

land.lhs.true55.i:                                ; preds = %land.lhs.true.i
  %num_frms.i = getelementptr i8, ptr %1, i32 84
  %38 = ptrtoint ptr %num_frms.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_frms.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %39)
  %cmp57.i = icmp ugt i32 %inc.i, %39
  br i1 %cmp57.i, label %do.body.i, label %land.lhs.true55.i.append_desc_queue.exit_crit_edge, !prof !286

land.lhs.true55.i.append_desc_queue.exit_crit_edge: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_desc_queue.exit

do.body.i:                                        ; preds = %land.lhs.true55.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @append_desc_queue.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dma_tx_submit, %do.end.i)) #9
          to label %if.then72.i [label %do.end.i], !srcloc !284

if.then72.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %1, i32 68
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @append_desc_queue.__UNIQUE_ID_ddebug242, ptr noundef %41, ptr noundef nonnull @.str.82) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then72.i, %do.body.i
  %42 = ptrtoint ptr %num_frms.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_frms.i, align 4
  %44 = ptrtoint ptr %desc_pendingcount.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %desc_pendingcount.i, align 4
  br label %append_desc_queue.exit

append_desc_queue.exit:                           ; preds = %do.end.i, %land.lhs.true55.i.append_desc_queue.exit_crit_edge, %land.lhs.true.i.append_desc_queue.exit_crit_edge, %list_add_tail.exit.i.append_desc_queue.exit_crit_edge
  %cyclic19 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %tx, i32 0, i32 3
  %45 = ptrtoint ptr %cyclic19 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cyclic19, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool20.not = icmp eq i8 %46, 0
  br i1 %tobool20.not, label %append_desc_queue.exit.if.end23_crit_edge, label %if.then21

append_desc_queue.exit.if.end23_crit_edge:        ; preds = %append_desc_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %append_desc_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %cyclic, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %append_desc_queue.exit.if.end23_crit_edge
  %terminating = getelementptr i8, ptr %1, i32 93
  %48 = ptrtoint ptr %terminating to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %terminating, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %10, %if.end23 ], [ %call, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xilinx_axidma_alloc_tx_segment(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %free_seg_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 7
  %0 = ptrtoint ptr %free_seg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_seg_list, align 4
  %cmp.i.not = icmp eq ptr %1, %free_seg_list
  br i1 %cmp.i.not, label %if.end.thread, label %if.then

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %do.body11

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %tobool9.not = icmp eq ptr %add.ptr, null
  br i1 %tobool9.not, label %if.end.do.body11_crit_edge, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.do.body11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.body11:                                        ; preds = %if.end.do.body11_crit_edge, %if.end.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_axidma_alloc_tx_segment.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_axidma_alloc_tx_segment, %if.end22)) #9
          to label %if.then18 [label %if.end22], !srcloc !284

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_axidma_alloc_tx_segment.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.84) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %do.body11, %if.end.if.end22_crit_edge
  %segment.031 = phi ptr [ null, %if.then18 ], [ %add.ptr, %if.end.if.end22_crit_edge ], [ null, %do.body11 ]
  ret ptr %segment.031
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xilinx_dma_chan_probe(ptr noundef %xdev, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !283
  %dev = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 300, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dev2, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %xdev, ptr %call.i, align 4
  %desc_pendingcount = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 24
  %7 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %desc_pendingcount, align 4
  %ext_addr = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 5
  %8 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ext_addr, align 4, !range !278
  %ext_addr5 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 25
  %10 = ptrtoint ptr %ext_addr5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ext_addr5, align 4
  %idle = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %idle, align 4
  %lock = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.90, ptr noundef nonnull @xilinx_dma_chan_probe.__key, i16 noundef signext 3) #9
  %pending_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  %prev.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pending_list, ptr %prev.i, align 4
  %done_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %done_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %done_list, ptr %done_list, align 4
  %prev.i310 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev.i310 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %done_list, ptr %prev.i310, align 4
  %active_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i311 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i311 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %active_list, ptr %prev.i311, align 4
  %free_seg_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %free_seg_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %free_seg_list, ptr %free_seg_list, align 4
  %prev.i312 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %prev.i312 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %free_seg_list, ptr %prev.i312, align 4
  %call.i313 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.91, ptr noundef null) #9
  %call.i314 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.92, ptr noundef null) #9
  %tobool.i315 = icmp ne ptr %call.i314, null
  %genlock = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 17
  %frombool10 = zext i1 %tobool.i315 to i8
  %20 = ptrtoint ptr %genlock to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool10, ptr %genlock, align 2
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.93, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool12.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.94) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %tobool.i = icmp ne ptr %call.i313, null
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %24)
  %cmp = icmp ult i32 %24, 72
  %spec.select = select i1 %cmp, i1 %tobool.i, i1 false
  br i1 %spec.select, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %24, 3
  %sub = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i = icmp eq i32 %sub, 0
  %25 = call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #9, !range !287
  %sub.i = sub nuw nsw i32 32, %25
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %copy_align = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i, ptr %copy_align, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %call25 = call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end24.if.then32_crit_edge

if.end24.if.then32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end24
  %call27 = call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %call30 = call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else, label %lor.lhs.false29.if.then32_crit_edge

lor.lhs.false29.if.then32_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false29.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %if.end24.if.then32_crit_edge
  %direction = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 13
  %27 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %direction, align 4
  %mm2s_chan_id = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 14
  %28 = ptrtoint ptr %mm2s_chan_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mm2s_chan_id, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %mm2s_chan_id, align 4
  %id = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 12
  %30 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %id, align 4
  %conv = trunc i32 %29 to i16
  %tdest = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 34
  %31 = ptrtoint ptr %tdest to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %tdest, align 4
  %ctrl_offset = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %ctrl_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ctrl_offset, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 7
  %33 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_config, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp34 = icmp eq i32 %36, 2
  br i1 %cmp34, label %if.then36, label %if.then32.if.end105_crit_edge

if.then32.if.end105_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then36:                                        ; preds = %if.then32
  %desc_offset = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %desc_offset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 80, ptr %desc_offset, align 4
  %park = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 22, i32 4
  %38 = ptrtoint ptr %park to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %park, align 4
  %flush_on_fsync = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 4
  %39 = ptrtoint ptr %flush_on_fsync to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flush_on_fsync, align 4
  %.off = add i32 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then36.if.end105.sink.split_crit_edge, label %if.then36.if.end105_crit_edge

if.then36.if.end105_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then36.if.end105.sink.split_crit_edge:         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.sink.split

if.else:                                          ; preds = %lor.lhs.false29
  %call47 = call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.99) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %if.else.if.then52_crit_edge

if.else.if.then52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

lor.lhs.false49:                                  ; preds = %if.else
  %call50 = call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end102, label %lor.lhs.false49.if.then52_crit_edge

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %if.else.if.then52_crit_edge
  %direction53 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 13
  %41 = ptrtoint ptr %direction53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %direction53, align 4
  %s2mm_chan_id = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 13
  %42 = ptrtoint ptr %s2mm_chan_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s2mm_chan_id, align 4
  %inc54 = add i32 %43, 1
  store i32 %inc54, ptr %s2mm_chan_id, align 4
  %id55 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 12
  %44 = ptrtoint ptr %id55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %id55, align 4
  %dma_config57 = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 7
  %45 = ptrtoint ptr %dma_config57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_config57, align 4
  %max_channels = getelementptr inbounds %struct.xilinx_dma_config, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_channels, align 4
  %div.neg = sdiv i32 %48, -2
  %sub58 = add i32 %div.neg, %43
  %conv59 = trunc i32 %sub58 to i16
  %tdest60 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 34
  %49 = ptrtoint ptr %tdest60 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv59, ptr %tdest60, align 4
  %call.i316 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.101, ptr noundef null) #9
  %tobool.i317 = icmp ne ptr %call.i316, null
  %has_vflip = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 35
  %frombool62 = zext i1 %tobool.i317 to i8
  %50 = ptrtoint ptr %has_vflip to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool62, ptr %has_vflip, align 2
  br i1 %tobool.i317, label %if.then65, label %if.then52.if.end70_crit_edge

if.then52.if.end70_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then65:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 236
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !276
  %56 = lshr i32 %55, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %vflip_en = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 22, i32 10
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = ptrtoint ptr %vflip_en to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %vflip_en, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.then52.if.end70_crit_edge
  %60 = ptrtoint ptr %dma_config57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_config57, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp73 = icmp eq i32 %63, 3
  %spec.select322 = select i1 %cmp73, i32 1280, i32 48
  %64 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.select322, ptr %64, align 4
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp82 = icmp eq i32 %67, 2
  br i1 %cmp82, label %if.then84, label %if.end70.if.end105_crit_edge

if.end70.if.end105_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then84:                                        ; preds = %if.end70
  %desc_offset85 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 2
  %68 = ptrtoint ptr %desc_offset85 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 160, ptr %desc_offset85, align 4
  %park87 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 22, i32 4
  %69 = ptrtoint ptr %park87 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %park87, align 4
  %flush_on_fsync88 = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 4
  %70 = ptrtoint ptr %flush_on_fsync88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flush_on_fsync88, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %71, label %if.then84.if.end105_crit_edge [
    i32 1, label %if.then84.if.end105.sink.split_crit_edge
    i32 3, label %if.then84.if.end105.sink.split_crit_edge325
  ]

if.then84.if.end105.sink.split_crit_edge325:      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.sink.split

if.then84.if.end105.sink.split_crit_edge:         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.sink.split

if.then84.if.end105_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

do.end102:                                        ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.103) #12
  br label %cleanup

if.end105.sink.split:                             ; preds = %if.then84.if.end105.sink.split_crit_edge, %if.then84.if.end105.sink.split_crit_edge325, %if.then36.if.end105.sink.split_crit_edge
  %flush_on_fsync96 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 23
  %75 = ptrtoint ptr %flush_on_fsync96 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %flush_on_fsync96, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.then84.if.end105_crit_edge, %if.end70.if.end105_crit_edge, %if.then36.if.end105_crit_edge, %if.then32.if.end105_crit_edge
  %tdest106 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 34
  %76 = ptrtoint ptr %tdest106 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tdest106, align 4
  %conv107 = zext i16 %77 to i32
  %call108 = call i32 @of_irq_get(ptr noundef %node, i32 noundef %conv107) #9
  %irq = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 11
  %78 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call108, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp110 = icmp slt i32 %call108, 0
  br i1 %cmp110, label %if.then112, label %if.end116

if.then112:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %call115 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %80, i32 noundef %call108, ptr noundef nonnull @.str.105) #9
  br label %cleanup

if.end116:                                        ; preds = %if.end105
  %dma_config118 = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 7
  %81 = ptrtoint ptr %dma_config118 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_config118, align 4
  %irq_handler = getelementptr inbounds %struct.xilinx_dma_config, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %irq_handler, align 4
  %call.i318 = call i32 @request_threaded_irq(i32 noundef %call108, ptr noundef %84, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.106, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool120.not = icmp eq i32 %call.i318, 0
  br i1 %tobool120.not, label %if.end127, label %do.end124

do.end124:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.108, i32 noundef %88) #12
  br label %cleanup

if.end127:                                        ; preds = %if.end116
  %89 = ptrtoint ptr %dma_config118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_config118, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %92)
  %93 = icmp ult i32 %92, 4
  br i1 %93, label %switch.lookup, label %if.end127.if.end154_crit_edge

if.end127.if.end154_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

switch.lookup:                                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.xilinx_dma_chan_probe, i32 0, i32 %92
  %94 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %94)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep323 = getelementptr inbounds [4 x ptr], ptr @switch.table.xilinx_dma_chan_probe.138, i32 0, i32 %92
  %95 = ptrtoint ptr %switch.gep323 to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load324 = load ptr, ptr %switch.gep323, align 4
  br label %if.end154

if.end154:                                        ; preds = %switch.lookup, %if.end127.if.end154_crit_edge
  %xilinx_mcdma_start_transfer.sink = phi ptr [ %switch.load, %switch.lookup ], [ @xilinx_vdma_start_transfer, %if.end127.if.end154_crit_edge ]
  %xilinx_dma_stop_transfer.sink = phi ptr [ %switch.load324, %switch.lookup ], [ @xilinx_dma_stop_transfer, %if.end127.if.end154_crit_edge ]
  %start_transfer139 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 32
  %96 = ptrtoint ptr %start_transfer139 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %xilinx_mcdma_start_transfer.sink, ptr %start_transfer139, align 4
  %stop_transfer140 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 33
  %97 = ptrtoint ptr %stop_transfer140 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %xilinx_dma_stop_transfer.sink, ptr %stop_transfer140, align 4
  %98 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %90, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %99, label %lor.lhs.false164 [
    i32 2, label %if.end154.if.end186_crit_edge
    i32 3, label %if.end154.if.then168_crit_edge
  ]

if.end154.if.then168_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then168

if.end154.if.end186_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

lor.lhs.false164:                                 ; preds = %if.end154
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 1
  %101 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ctrl_offset.i, align 4
  %add.i = add i32 %102, 4
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %add.ptr.i.i = getelementptr i8, ptr %106, i32 %add.i
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %108 = and i32 %107, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool167.not = icmp eq i32 %108, 0
  br i1 %tobool167.not, label %lor.lhs.false164.do.body170_crit_edge, label %lor.lhs.false164.if.then168_crit_edge

lor.lhs.false164.if.then168_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then168

lor.lhs.false164.do.body170_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body170

if.then168:                                       ; preds = %lor.lhs.false164.if.then168_crit_edge, %if.end154.if.then168_crit_edge
  %has_sg = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 15
  %109 = ptrtoint ptr %has_sg to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %has_sg, align 4
  br label %do.body170

do.body170:                                       ; preds = %if.then168, %lor.lhs.false164.do.body170_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dma_chan_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dma_chan_probe, %if.end186)) #9
          to label %if.then177 [label %if.end186], !srcloc !284

if.then177:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev2, align 4
  %id179 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 12
  %112 = ptrtoint ptr %id179 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id179, align 4
  %has_sg180 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 15
  %114 = ptrtoint ptr %has_sg180 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %has_sg180, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool181.not = icmp eq i8 %115, 0
  %cond = select i1 %tobool181.not, ptr @.str.112, ptr @.str.111
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dma_chan_probe.__UNIQUE_ID_ddebug249, ptr noundef %111, ptr noundef nonnull @.str.110, i32 noundef %113, ptr noundef nonnull %cond) #9
  br label %if.end186

if.end186:                                        ; preds = %if.then177, %do.body170, %if.end154.if.end186_crit_edge
  %tasklet = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 21
  call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @xilinx_dma_do_tasklet) #9
  %common187 = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 2
  %common188 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 8
  %116 = ptrtoint ptr %common188 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %common187, ptr %common188, align 4
  %device_node = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 8, i32 8
  %channels = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 2, i32 3
  %prev.i319 = getelementptr inbounds %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 2, i32 3, i32 1
  %117 = ptrtoint ptr %prev.i319 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i319, align 4
  %call.i.i320 = call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %118, ptr noundef %channels) #9
  br i1 %call.i.i320, label %if.end.i.i, label %if.end186.list_add_tail.exit_crit_edge

if.end186.list_add_tail.exit_crit_edge:           ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %prev.i319 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %device_node, ptr %prev.i319, align 4
  %120 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 8, i32 8, i32 1
  %121 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %device_node, ptr %118, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end186.list_add_tail.exit_crit_edge
  %id192 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %call.i, i32 0, i32 12
  %123 = ptrtoint ptr %id192 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %id192, align 4
  %arrayidx = getelementptr %struct.xilinx_dma_device, ptr %xdev, i32 0, i32 3, i32 %124
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i, ptr %arrayidx, align 4
  %call193 = call fastcc i32 @xilinx_dma_chan_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %do.end199, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end199:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.114) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end199, %list_add_tail.exit.cleanup_crit_edge, %do.end124, %if.then112, %do.end102, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end16 ], [ %call115, %if.then112 ], [ %call.i318, %do.end124 ], [ %call193, %do.end199 ], [ -22, %do.end102 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dma_start_transfer(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %err = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 18
  %0 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %err, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %3, %pending_list
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %idle = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 19
  %4 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idle, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %prev = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev, align 4
  %prev13 = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %prev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev13, align 4
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl_offset.i, align 4
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %desc_pendingcount = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 24
  %17 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc_pendingcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %cmp = icmp ult i32 %18, 256
  br i1 %cmp, label %if.then17, label %if.end6.if.end19_crit_edge

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %19 = and i32 %16, -65281
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %shl = shl nuw nsw i32 %18, 16
  %or = or i32 %shl, %20
  %21 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl_offset.i, align 4
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %26, i32 %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 %27) #9, !srcloc !280
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end6.if.end19_crit_edge
  %has_sg = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 15
  %28 = ptrtoint ptr %has_sg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_sg, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not = icmp eq i8 %29, 0
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  %phys = getelementptr i8, ptr %3, i32 -100
  %30 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phys, align 4
  %ext_addr.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 25
  %32 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrl_offset.i, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %37, i32 %39
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i85, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %40) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !280
  br label %if.end22

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl_offset.i, align 4
  %add.i.i = add i32 %42, 8
  %43 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %46, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %47) #9, !srcloc !280
  br label %if.end22

if.end22:                                         ; preds = %if.else.i, %if.then.i, %if.end19.if.end22_crit_edge
  tail call fastcc void @xilinx_dma_start(ptr noundef %chan)
  %48 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %err, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool24.not = icmp eq i8 %49, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %50 = ptrtoint ptr %has_sg to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_sg, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool28.not = icmp eq i8 %51, 0
  br i1 %tobool28.not, label %if.else35, label %if.then29

if.then29:                                        ; preds = %if.end26
  %cyclic = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 16
  %52 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cyclic, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool30.not = icmp eq i8 %53, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %cyclic_seg_v = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 30
  %54 = ptrtoint ptr %cyclic_seg_v to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cyclic_seg_v, align 4
  %phys32 = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %phys32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phys32, align 8
  tail call fastcc void @xilinx_write(ptr noundef %chan, i32 noundef 16, i32 noundef %57)
  br label %if.end47

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %phys33 = getelementptr i8, ptr %9, i32 8
  %58 = ptrtoint ptr %phys33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %phys33, align 8
  tail call fastcc void @xilinx_write(ptr noundef %chan, i32 noundef 16, i32 noundef %59)
  br label %if.end47

if.else35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %segments37 = getelementptr i8, ptr %3, i32 -8
  %60 = ptrtoint ptr %segments37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %segments37, align 4
  %buf_addr = getelementptr i8, ptr %61, i32 -56
  %62 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_addr, align 8
  tail call fastcc void @xilinx_write(ptr noundef %chan, i32 noundef 24, i32 noundef %63)
  %control = getelementptr i8, ptr %61, i32 -40
  %64 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %control, align 8
  %66 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chan, align 4
  %max_buffer_len = getelementptr inbounds %struct.xilinx_dma_device, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_buffer_len, align 4
  %and46 = and i32 %69, %65
  %70 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ctrl_offset.i, align 4
  %add.i = add i32 %71, 40
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %67, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %73, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %74 = tail call i32 @llvm.bswap.i32(i32 %and46) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87, i32 %74) #9, !srcloc !280
  br label %if.end47

if.end47:                                         ; preds = %if.else35, %if.else, %if.then31
  %75 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %76, %pending_list
  br i1 %cmp.i.not.i, label %if.end47.list_splice_tail_init.exit_crit_edge, label %if.then.i88

if.end47.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i88:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %active_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i, align 4
  %79 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %76, ptr %78, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %active_list, ptr %80, align 4
  store ptr %80, ptr %prev.i, align 4
  %84 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  store ptr %pending_list, ptr %prev, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i88, %if.end47.list_splice_tail_init.exit_crit_edge
  %85 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %desc_pendingcount, align 4
  %86 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail_init.exit, %if.end22.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_stop_transfer(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_offset.i.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_offset.i.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_offset.i.i, align 4
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %7) #9, !srcloc !280
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 1000000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call6 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call6, %add.i
  br i1 %cmp3.i, label %if.then8, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.ptr14 = getelementptr i8, ptr %25, i32 %27
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %phi.cmp = icmp eq i32 %29, 0
  %phi.sel = select i1 %phi.cmp, i32 -110, i32 0
  br label %for.end

for.end:                                          ; preds = %if.then8, %for.cond.for.end_crit_edge
  %and28.pre-phi = phi i32 [ %phi.sel, %if.then8 ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %and28.pre-phi
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_mcdma_start_transfer(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %err = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 18
  %0 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %err, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %idle = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 19
  %2 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idle, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pending_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %5, %pending_list
  br i1 %cmp.i.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %prev = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev, align 4
  %prev13 = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %prev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev13, align 4
  %tdest = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 34
  %10 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tdest, align 4
  %conv = zext i16 %11 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl_offset.i, align 4
  %add = add i32 %13, 64
  %add.i = add i32 %add, %mul
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %add.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %desc_pendingcount = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 24
  %20 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc_pendingcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %21)
  %cmp = icmp ult i32 %21, 25
  %and = and i32 %19, -16711905
  %shl = shl i32 %21, 16
  %or = or i32 %shl, %and
  %reg.0 = select i1 %cmp, i32 %or, i32 %19
  %or21 = or i32 %reg.0, 224
  %22 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tdest, align 4
  %conv23 = zext i16 %23 to i32
  %mul24 = shl nuw nsw i32 %conv23, 6
  %24 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrl_offset.i, align 4
  %add25 = add i32 %25, 64
  %add.i95 = add i32 %add25, %mul24
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %29, i32 %add.i95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or21) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96, i32 %30) #9, !srcloc !280
  %31 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tdest, align 4
  %conv27 = zext i16 %32 to i32
  %mul28 = shl nuw nsw i32 %conv27, 6
  %add29 = add nuw nsw i32 %mul28, 72
  %phys = getelementptr i8, ptr %5, i32 -100
  %33 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys, align 4
  %ext_addr.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 25
  %35 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl_offset.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %40, i32 %42
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i97, i32 %add29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %43) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !280
  br label %xilinx_write.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrl_offset.i, align 4
  %add.i.i = add i32 %45, %add29
  %46 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chan, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %49, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %50) #9, !srcloc !280
  br label %xilinx_write.exit

xilinx_write.exit:                                ; preds = %if.else.i, %if.then.i
  %51 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ctrl_offset.i, align 4
  %add.i99 = add i32 %52, 8
  %53 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chan, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %56, i32 %add.i99
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i100) #9, !srcloc !276
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %59 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tdest, align 4
  %conv32 = zext i16 %60 to i32
  %shl33 = shl nuw i32 1, %conv32
  %or34 = or i32 %shl33, %58
  %61 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctrl_offset.i, align 4
  %add.i102 = add i32 %62, 8
  %63 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chan, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %66, i32 %add.i102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %67 = tail call i32 @llvm.bswap.i32(i32 %or34) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103, i32 %67) #9, !srcloc !280
  %68 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tdest, align 4
  %conv36 = zext i16 %69 to i32
  %mul37 = shl nuw nsw i32 %conv36, 6
  %70 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ctrl_offset.i, align 4
  %add38 = add i32 %71, 64
  %add.i105 = add i32 %add38, %mul37
  %72 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chan, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %75, i32 %add.i105
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i106) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %77 = or i32 %76, 16777216
  %78 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %tdest, align 4
  %conv42 = zext i16 %79 to i32
  %mul43 = shl nuw nsw i32 %conv42, 6
  %80 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ctrl_offset.i, align 4
  %add44 = add i32 %81, 64
  %add.i108 = add i32 %add44, %mul43
  %82 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chan, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %85, i32 %add.i108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109, i32 %77) #9, !srcloc !280
  tail call fastcc void @xilinx_dma_start(ptr noundef %chan)
  %86 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %err, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool46.not = icmp eq i8 %87, 0
  br i1 %tobool46.not, label %if.end48, label %xilinx_write.exit.cleanup_crit_edge

xilinx_write.exit.cleanup_crit_edge:              ; preds = %xilinx_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %xilinx_write.exit
  %88 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %tdest, align 4
  %conv50 = zext i16 %89 to i32
  %mul51 = shl nuw nsw i32 %conv50, 6
  %add52 = add nuw nsw i32 %mul51, 80
  %phys53 = getelementptr i8, ptr %9, i32 8
  %90 = ptrtoint ptr %phys53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %phys53, align 8
  %92 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i111 = icmp eq i8 %93, 0
  br i1 %tobool.not.i111, label %if.else.i120, label %if.then.i116

if.then.i116:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chan, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %98 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ctrl_offset.i, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %97, i32 %99
  %add.ptr1.i.i114 = getelementptr i8, ptr %add.ptr.i.i113, i32 %add52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %100 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i114, i32 %100) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i115 = getelementptr i8, ptr %add.ptr1.i.i114, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i115, i32 0) #9, !srcloc !280
  br label %xilinx_write.exit121

if.else.i120:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ctrl_offset.i, align 4
  %add.i.i118 = add i32 %102, %add52
  %103 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %chan, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %add.ptr.i.i6.i119 = getelementptr i8, ptr %106, i32 %add.i.i118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %107 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i119, i32 %107) #9, !srcloc !280
  br label %xilinx_write.exit121

xilinx_write.exit121:                             ; preds = %if.else.i120, %if.then.i116
  %108 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %109, %pending_list
  br i1 %cmp.i.not.i, label %xilinx_write.exit121.list_splice_tail_init.exit_crit_edge, label %if.then.i122

xilinx_write.exit121.list_splice_tail_init.exit_crit_edge: ; preds = %xilinx_write.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i122:                                     ; preds = %xilinx_write.exit121
  call void @__sanitizer_cov_trace_pc() #11
  %active_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %110 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i, align 4
  %112 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %114 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev3.i.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %109, ptr %111, align 4
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %active_list, ptr %113, align 4
  store ptr %113, ptr %prev.i, align 4
  %117 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  store ptr %pending_list, ptr %prev, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i122, %xilinx_write.exit121.list_splice_tail_init.exit_crit_edge
  %118 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %desc_pendingcount, align 4
  %119 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail_init.exit, %xilinx_write.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_cdma_start_transfer(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %err = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 18
  %5 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %err, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %idle = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 19
  %7 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %idle, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pending_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4
  %9 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %10, %pending_list
  br i1 %cmp.i.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %prev = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev, align 4
  %prev14 = getelementptr i8, ptr %12, i32 -4
  %13 = ptrtoint ptr %prev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev14, align 4
  %desc_pendingcount = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 24
  %15 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %desc_pendingcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %cmp = icmp ult i32 %16, 256
  br i1 %cmp, label %if.then17, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %17 = and i32 %4, -65281
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shl = shl nuw nsw i32 %16, 16
  %or = or i32 %shl, %18
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %19 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_offset.i, align 4
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #9, !srcloc !280
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end7.if.end19_crit_edge
  %has_sg = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 15
  %26 = ptrtoint ptr %has_sg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_sg, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not = icmp eq i8 %27, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  %ctrl_offset.i.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %28 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctrl_offset.i.i, align 4
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %29
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %35 = and i32 %34, -134217729
  %36 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrl_offset.i.i, align 4
  %38 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %41, i32 %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %35) #9, !srcloc !280
  %42 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctrl_offset.i.i, align 4
  %44 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %add.ptr.i.i.i75 = getelementptr i8, ptr %47, i32 %43
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %49 = or i32 %48, 134217728
  %50 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctrl_offset.i.i, align 4
  %52 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %add.ptr.i.i2.i76 = getelementptr i8, ptr %55, i32 %51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i76, i32 %49) #9, !srcloc !280
  %phys = getelementptr i8, ptr %10, i32 -100
  %56 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phys, align 4
  %ext_addr.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 25
  %58 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chan, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %63, i32 %65
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i78, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %66) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i79 = getelementptr i8, ptr %add.ptr1.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i79, i32 0) #9, !srcloc !280
  br label %xilinx_write.exit

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.i.i = add i32 %68, 8
  %69 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chan, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %72, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %73) #9, !srcloc !280
  br label %xilinx_write.exit

xilinx_write.exit:                                ; preds = %if.else.i, %if.then.i
  %phys22 = getelementptr i8, ptr %14, i32 8
  %74 = ptrtoint ptr %phys22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %phys22, align 8
  %76 = ptrtoint ptr %ext_addr.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ext_addr.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i81 = icmp eq i8 %77, 0
  br i1 %tobool.not.i81, label %if.else.i90, label %if.then.i86

if.then.i86:                                      ; preds = %xilinx_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chan, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %81, i32 %83
  %add.ptr1.i.i84 = getelementptr i8, ptr %add.ptr.i.i83, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %84 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i84, i32 %84) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i85 = getelementptr i8, ptr %add.ptr1.i.i84, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i85, i32 0) #9, !srcloc !280
  br label %if.end39

if.else.i90:                                      ; preds = %xilinx_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.i.i88 = add i32 %86, 16
  %87 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chan, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %add.ptr.i.i6.i89 = getelementptr i8, ptr %90, i32 %add.i.i88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i89, i32 %91) #9, !srcloc !280
  br label %if.end39

if.else:                                          ; preds = %if.end19
  %segments24 = getelementptr i8, ptr %10, i32 -8
  %92 = ptrtoint ptr %segments24 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %segments24, align 4
  %src_addr = getelementptr i8, ptr %93, i32 -56
  %94 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %src_addr, align 8
  %ext_addr.i92 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 25
  %96 = ptrtoint ptr %ext_addr.i92 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ext_addr.i92, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i93 = icmp eq i8 %97, 0
  br i1 %tobool.not.i93, label %if.else.i102, label %if.then.i98

if.then.i98:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chan, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %ctrl_offset.i.i94 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %102 = ptrtoint ptr %ctrl_offset.i.i94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ctrl_offset.i.i94, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %101, i32 %103
  %add.ptr1.i.i96 = getelementptr i8, ptr %add.ptr.i.i95, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %104 = tail call i32 @llvm.bswap.i32(i32 %95) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i96, i32 %104) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i97 = getelementptr i8, ptr %add.ptr1.i.i96, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i97, i32 0) #9, !srcloc !280
  br label %xilinx_write.exit103

if.else.i102:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_offset.i5.i99 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %105 = ptrtoint ptr %ctrl_offset.i5.i99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ctrl_offset.i5.i99, align 4
  %add.i.i100 = add i32 %106, 24
  %107 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chan, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %add.ptr.i.i6.i101 = getelementptr i8, ptr %110, i32 %add.i.i100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %111 = tail call i32 @llvm.bswap.i32(i32 %95) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i101, i32 %111) #9, !srcloc !280
  br label %xilinx_write.exit103

xilinx_write.exit103:                             ; preds = %if.else.i102, %if.then.i98
  %dest_addr = getelementptr i8, ptr %93, i32 -48
  %112 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dest_addr, align 16
  %114 = ptrtoint ptr %ext_addr.i92 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ext_addr.i92, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i105 = icmp eq i8 %115, 0
  br i1 %tobool.not.i105, label %if.else.i114, label %if.then.i110

if.then.i110:                                     ; preds = %xilinx_write.exit103
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chan, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %ctrl_offset.i.i106 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %120 = ptrtoint ptr %ctrl_offset.i.i106 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ctrl_offset.i.i106, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %119, i32 %121
  %add.ptr1.i.i108 = getelementptr i8, ptr %add.ptr.i.i107, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %122 = tail call i32 @llvm.bswap.i32(i32 %113) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i108, i32 %122) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i109 = getelementptr i8, ptr %add.ptr1.i.i108, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i109, i32 0) #9, !srcloc !280
  br label %xilinx_write.exit115

if.else.i114:                                     ; preds = %xilinx_write.exit103
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_offset.i5.i111 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %123 = ptrtoint ptr %ctrl_offset.i5.i111 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ctrl_offset.i5.i111, align 4
  %add.i.i112 = add i32 %124, 32
  %125 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chan, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %add.ptr.i.i6.i113 = getelementptr i8, ptr %128, i32 %add.i.i112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %129 = tail call i32 @llvm.bswap.i32(i32 %113) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i113, i32 %129) #9, !srcloc !280
  br label %xilinx_write.exit115

xilinx_write.exit115:                             ; preds = %if.else.i114, %if.then.i110
  %control = getelementptr i8, ptr %93, i32 -40
  %130 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %control, align 8
  %132 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chan, align 4
  %max_buffer_len = getelementptr inbounds %struct.xilinx_dma_device, ptr %133, i32 0, i32 15
  %134 = ptrtoint ptr %max_buffer_len to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %max_buffer_len, align 4
  %and38 = and i32 %135, %131
  %ctrl_offset.i116 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %136 = ptrtoint ptr %ctrl_offset.i116 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ctrl_offset.i116, align 4
  %add.i = add i32 %137, 40
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %133, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %139, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %140 = tail call i32 @llvm.bswap.i32(i32 %and38) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i117, i32 %140) #9, !srcloc !280
  br label %if.end39

if.end39:                                         ; preds = %xilinx_write.exit115, %if.else.i90, %if.then.i86
  %141 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %142, %pending_list
  br i1 %cmp.i.not.i, label %if.end39.list_splice_tail_init.exit_crit_edge, label %if.then.i118

if.end39.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i118:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %active_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %143 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %prev.i, align 4
  %145 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %147 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %144, ptr %prev3.i.i, align 4
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %142, ptr %144, align 4
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %active_list, ptr %146, align 4
  store ptr %146, ptr %prev.i, align 4
  %150 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  store ptr %pending_list, ptr %prev, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i118, %if.end39.list_splice_tail_init.exit_crit_edge
  %151 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %desc_pendingcount, align 4
  %152 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail_init.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_cdma_stop_transfer(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 1000000000
  %ctrl_offset = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %ctrl_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call6 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call6, %add.i
  br i1 %cmp3.i, label %if.then8, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %ctrl_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl_offset, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 %13
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %phi.cmp = icmp eq i32 %15, 0
  %phi.sel = select i1 %phi.cmp, i32 -110, i32 0
  br label %for.end

for.end:                                          ; preds = %if.then8, %for.cond.for.end_crit_edge
  %and28.pre-phi = phi i32 [ %phi.sel, %if.then8 ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %and28.pre-phi
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_vdma_start_transfer(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %err = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 18
  %0 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %err, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %idle = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 19
  %2 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idle, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pending_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %5, %pending_list
  br i1 %cmp.i.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %has_vflip = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 35
  %6 = ptrtoint ptr %has_vflip to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_vflip, align 2, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 236
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %13 = and i32 %12, -16777217
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %vflip_en = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 22, i32 10
  %15 = ptrtoint ptr %vflip_en to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vflip_en, align 4, !range !278
  %17 = zext i8 %16 to i32
  %or = or i32 %14, %17
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr.i148 = getelementptr i8, ptr %21, i32 236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %22) #9, !srcloc !280
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %23 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl_offset.i, align 4
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %frm_cnt_en = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 22, i32 3
  %30 = ptrtoint ptr %frm_cnt_en to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frm_cnt_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  %masksel = select i1 %tobool15.not, i32 0, i32 16
  %park = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 22, i32 4
  %32 = ptrtoint ptr %park to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %park, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not = icmp eq i32 %33, 0
  %34 = and i32 %29, -301989889
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %and22 = or i32 %masksel, %35
  %masksel164 = select i1 %tobool20.not, i32 2, i32 0
  %reg.1 = or i32 %and22, %masksel164
  %36 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrl_offset.i, align 4
  %38 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %add.ptr.i.i150 = getelementptr i8, ptr %41, i32 %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150, i32 %42) #9, !srcloc !280
  %desc_submitcount = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 26
  %43 = ptrtoint ptr %desc_submitcount to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %desc_submitcount, align 4
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %add.ptr.i151 = getelementptr i8, ptr %48, i32 40
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #9, !srcloc !276
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %direction = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 13
  %51 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp = icmp eq i32 %52, 1
  %and29 = and i32 %50, -32
  %or30 = or i32 %and29, %44
  %and32 = and i32 %50, -7937
  %shl33 = shl i32 %44, 8
  %or34 = or i32 %and32, %shl33
  %reg.2 = select i1 %cmp, i32 %or30, i32 %or34
  %53 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chan, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %add.ptr.i152 = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %57) #9, !srcloc !280
  tail call fastcc void @xilinx_dma_start(ptr noundef %chan)
  %58 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %err, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool37.not = icmp eq i8 %59, 0
  br i1 %tobool37.not, label %if.end39, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end13
  %num_frms = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 14
  %segments = getelementptr i8, ptr %5, i32 -8
  %60 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn165 = load ptr, ptr %segments, align 4
  %cmp51.not167 = icmp eq ptr %.pn165, %segments
  br i1 %cmp51.not167, label %if.end39.cleanup_crit_edge, label %for.body.lr.ph

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end39
  %61 = ptrtoint ptr %desc_submitcount to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %desc_submitcount, align 4
  %63 = ptrtoint ptr %num_frms to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_frms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp41 = icmp ult i32 %62, %64
  %spec.select = select i1 %cmp41, i32 %62, i32 0
  %ext_addr = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 25
  %desc_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.body.lr.ph
  %.pn170 = phi ptr [ %.pn165, %for.body.lr.ph ], [ %.pn, %if.end62.for.body_crit_edge ]
  %i.1168 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %i.2, %if.end62.for.body_crit_edge ]
  %65 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ext_addr, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool53.not = icmp eq i8 %66, 0
  br i1 %tobool53.not, label %if.else56, label %if.then54

if.then54:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %i.1168, 3
  %add = add i32 %mul, 12
  %buf_addr = getelementptr i8, ptr %.pn170, i32 -56
  %67 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buf_addr, align 8
  %buf_addr_msb = getelementptr i8, ptr %.pn170, i32 -52
  %69 = ptrtoint ptr %buf_addr_msb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buf_addr_msb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  tail call void @arm_heavy_mb() #9
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %72 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chan, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %desc_offset.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %desc_offset.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %75, i32 %77
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i153, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %71) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !295
  tail call void @arm_heavy_mb() #9
  %78 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  %79 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chan, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %desc_offset.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %desc_offset.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %82, i32 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 %84
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %78) #9, !srcloc !280
  br label %if.end62

if.else56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mul58 = shl i32 %i.1168, 2
  %add59 = add i32 %mul58, 12
  %buf_addr61 = getelementptr i8, ptr %.pn170, i32 -56
  %85 = ptrtoint ptr %buf_addr61 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_addr61, align 8
  %87 = ptrtoint ptr %desc_offset.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %desc_offset.i, align 4
  %add.i = add i32 %add59, %88
  %89 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chan, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %92, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %93 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155, i32 %93) #9, !srcloc !280
  br label %if.end62

if.end62:                                         ; preds = %if.else56, %if.then54
  %i.2 = add i32 %i.1168, 1
  %94 = ptrtoint ptr %.pn170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn = load ptr, ptr %.pn170, align 4
  %cmp51.not = icmp eq ptr %.pn, %segments
  br i1 %cmp51.not, label %for.end, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end62
  %segment.0171.le = getelementptr i8, ptr %.pn170, i32 -64
  %tobool68.not = icmp eq ptr %segment.0171.le, null
  br i1 %tobool68.not, label %for.end.cleanup_crit_edge, label %if.end70

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end70:                                         ; preds = %for.end
  %hsize = getelementptr i8, ptr %.pn170, i32 -44
  %95 = ptrtoint ptr %hsize to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hsize, align 4
  %desc_offset.i156 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 2
  %97 = ptrtoint ptr %desc_offset.i156 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %desc_offset.i156, align 4
  %add.i157 = add i32 %98, 4
  %99 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chan, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %102, i32 %add.i157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %103 = tail call i32 @llvm.bswap.i32(i32 %96) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158, i32 %103) #9, !srcloc !280
  %stride = getelementptr i8, ptr %.pn170, i32 -40
  %104 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stride, align 8
  %106 = ptrtoint ptr %desc_offset.i156 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %desc_offset.i156, align 4
  %add.i160 = add i32 %107, 8
  %108 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %chan, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %add.ptr.i.i161 = getelementptr i8, ptr %111, i32 %add.i160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %112 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i161, i32 %112) #9, !srcloc !280
  %vsize = getelementptr i8, ptr %.pn170, i32 -48
  %113 = ptrtoint ptr %vsize to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vsize, align 16
  %115 = ptrtoint ptr %desc_offset.i156 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %desc_offset.i156, align 4
  %117 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %chan, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %add.ptr.i.i163 = getelementptr i8, ptr %120, i32 %116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %121 = tail call i32 @llvm.bswap.i32(i32 %114) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i163, i32 %121) #9, !srcloc !280
  %122 = ptrtoint ptr %desc_submitcount to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %desc_submitcount, align 4
  %inc75 = add i32 %123, 1
  store i32 %inc75, ptr %desc_submitcount, align 4
  %desc_pendingcount = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 24
  %124 = ptrtoint ptr %desc_pendingcount to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %desc_pendingcount, align 4
  %dec = add i32 %125, -1
  store i32 %dec, ptr %desc_pendingcount, align 4
  %active_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end70.__list_del_entry.exit.i_crit_edge

if.end70.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i, align 4
  %128 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end70.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %132 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %133, ptr noundef %active_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %5, ptr %prev.i2.i, align 4
  %135 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %active_list, ptr %5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %136 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev3.i.i.i, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %5, ptr %133, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %138 = ptrtoint ptr %desc_submitcount to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %desc_submitcount, align 4
  %140 = ptrtoint ptr %num_frms to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_frms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp79 = icmp eq i32 %139, %141
  br i1 %cmp79, label %if.then81, label %list_move_tail.exit.if.end83_crit_edge

list_move_tail.exit.if.end83_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then81:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %desc_submitcount to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %desc_submitcount, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %list_move_tail.exit.if.end83_crit_edge
  %143 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %for.end.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_dma_do_tasklet(ptr noundef %t) #0 align 64 {
entry:
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  %result.i = alloca %struct.dmaengine_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -184
  %lock.i = getelementptr i8, ptr %t, i32 -172
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %done_list.i = getelementptr i8, ptr %t, i32 -112
  %0 = ptrtoint ptr %done_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %done_list.i, align 4
  %cmp13.not96.i = icmp eq ptr %1, %done_list.i
  br i1 %cmp13.not96.i, label %entry.xilinx_dma_chan_desc_cleanup.exit_crit_edge, label %for.body.lr.ph.i

entry.xilinx_dma_chan_desc_cleanup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_chan_desc_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %2 = getelementptr inbounds %struct.dmaengine_result, ptr %result.i, i32 0, i32 1
  %direction.i = getelementptr i8, ptr %t, i32 -16
  %terminating.i = getelementptr i8, ptr %t, i32 -3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in98.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %.pn100.i, %cleanup.i.for.body.i_crit_edge ]
  %flags.097.i = phi i32 [ %call2.i, %for.body.lr.ph.i ], [ %call41.i, %cleanup.i.for.body.i_crit_edge ]
  %desc.099.i = getelementptr i8, ptr %.pn.in98.i, i32 -108
  %3 = ptrtoint ptr %.pn.in98.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn100.i = load ptr, ptr %.pn.in98.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i) #9
  %4 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %result.i, align 4, !annotation !283
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %2, align 4, !annotation !283
  %cyclic.i = getelementptr i8, ptr %.pn.in98.i, i32 8
  %6 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cyclic.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %callback.i.i.i = getelementptr i8, ptr %.pn.in98.i, i32 -84
  %8 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr i8, ptr %.pn.in98.i, i32 -80
  %10 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr i8, ptr %.pn.in98.i, i32 -76
  %12 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %callback_param.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  %tobool.not.i.not.i.i = xor i1 %tobool.not.i.i.i, true
  %tobool1.i.i.i = icmp ne ptr %11, null
  %or.cond.i.i = select i1 %tobool.not.i.not.i.i, i1 true, i1 %tobool1.i.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.then.i.cleanup.thread.i_crit_edge

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.097.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #9
  %14 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i11.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i11.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %11(ptr noundef %13, ptr noundef nonnull %dummy_result.i.i.i) #9
  br label %dmaengine_desc_callback_invoke.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i.dmaengine_desc_callback_invoke.exit.i.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.dmaengine_desc_callback_invoke.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_callback_invoke.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %9(ptr noundef %13) #9
  br label %dmaengine_desc_callback_invoke.exit.i.i

dmaengine_desc_callback_invoke.exit.i.i:          ; preds = %if.then5.i.i.i, %if.else.i.i.i.dmaengine_desc_callback_invoke.exit.i.i_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #9
  %call4.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in98.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in98.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in98.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in98.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %.pn.in98.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in98.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in98.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %err.i = getelementptr i8, ptr %.pn.in98.i, i32 9
  %23 = ptrtoint ptr %err.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %err.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not.i = icmp eq i8 %24, 0
  br i1 %tobool16.not.i, label %if.else27.i, label %if.then20.i, !prof !296

if.then20.i:                                      ; preds = %list_del.exit.i
  %25 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp21.i = icmp eq i32 %26, 2
  br i1 %cmp21.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %result.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %result.i, align 4
  br label %if.end29.i

if.else27.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %result.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else27.i, %if.else.i, %if.then23.i
  %residue.i = getelementptr i8, ptr %.pn.in98.i, i32 12
  %30 = ptrtoint ptr %residue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %residue.i, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.097.i) #9
  %callback.i.i77.i = getelementptr i8, ptr %.pn.in98.i, i32 -84
  %33 = ptrtoint ptr %callback.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %callback.i.i77.i, align 4
  %callback_result.i.i78.i = getelementptr i8, ptr %.pn.in98.i, i32 -80
  %35 = ptrtoint ptr %callback_result.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %callback_result.i.i78.i, align 4
  %callback_param.i.i79.i = getelementptr i8, ptr %.pn.in98.i, i32 -76
  %37 = ptrtoint ptr %callback_param.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %callback_param.i.i79.i, align 4
  %tobool.not.i.i80.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i80.i, label %if.else.i.i82.i, label %if.then.i.i81.i

if.then.i.i81.i:                                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %36(ptr noundef %38, ptr noundef nonnull %result.i) #9
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.else.i.i82.i:                                  ; preds = %if.end29.i
  %tobool4.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i82.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, label %if.then5.i.i83.i

if.else.i.i82.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge: ; preds = %if.else.i.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.then5.i.i83.i:                                 ; preds = %if.else.i.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %34(ptr noundef %38) #9
  br label %dmaengine_desc_get_callback_invoke.exit.i

dmaengine_desc_get_callback_invoke.exit.i:        ; preds = %if.then5.i.i83.i, %if.else.i.i82.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, %if.then.i.i81.i
  %call41.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call void @dma_run_dependencies(ptr noundef %desc.099.i) #9
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %add.ptr, ptr noundef %desc.099.i) #9
  %39 = ptrtoint ptr %terminating.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %terminating.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool47.not.i = icmp eq i8 %40, 0
  br i1 %tobool47.not.i, label %cleanup.i, label %dmaengine_desc_get_callback_invoke.exit.i.cleanup.thread.i_crit_edge

dmaengine_desc_get_callback_invoke.exit.i.cleanup.thread.i_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %dmaengine_desc_get_callback_invoke.exit.i.cleanup.thread.i_crit_edge, %dmaengine_desc_callback_invoke.exit.i.i, %if.then.i.cleanup.thread.i_crit_edge
  %flags.2.ph.i = phi i32 [ %flags.097.i, %if.then.i.cleanup.thread.i_crit_edge ], [ %call4.i.i, %dmaengine_desc_callback_invoke.exit.i.i ], [ %call41.i, %dmaengine_desc_get_callback_invoke.exit.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i) #9
  br label %xilinx_dma_chan_desc_cleanup.exit

cleanup.i:                                        ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i) #9
  %cmp13.not.i = icmp eq ptr %.pn100.i, %done_list.i
  br i1 %cmp13.not.i, label %cleanup.i.xilinx_dma_chan_desc_cleanup.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.xilinx_dma_chan_desc_cleanup.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xilinx_dma_chan_desc_cleanup.exit

xilinx_dma_chan_desc_cleanup.exit:                ; preds = %cleanup.i.xilinx_dma_chan_desc_cleanup.exit_crit_edge, %cleanup.thread.i, %entry.xilinx_dma_chan_desc_cleanup.exit_crit_edge
  %flags.3.i = phi i32 [ %flags.2.ph.i, %cleanup.thread.i ], [ %call2.i, %entry.xilinx_dma_chan_desc_cleanup.exit_crit_edge ], [ %call41.i, %cleanup.i.xilinx_dma_chan_desc_cleanup.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.3.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_write(ptr nocapture noundef readonly %chan, i32 noundef %reg, i32 noundef %addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ext_addr = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 25
  %0 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext_addr, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %addr) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #9, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !280
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_offset.i5 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %ctrl_offset.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl_offset.i5, align 4
  %add.i = add i32 %10, %reg
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %14, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %addr) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 %15) #9, !srcloc !280
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_start(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_offset.i.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_offset.i.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_offset.i.i, align 4
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %7) #9, !srcloc !280
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 1000000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !297
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %for.cond.if.end34_crit_edge, label %land.lhs.true

for.cond.if.end34_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %for.cond
  %call6 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call6, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.ptr14 = getelementptr i8, ptr %25, i32 %27
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %phi.cmp = icmp eq i32 %29, 0
  br i1 %phi.cmp, label %for.end.if.end34_crit_edge, label %do.end

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 10
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %ctrl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl_offset.i.i, align 4
  %add.i49 = add i32 %33, 4
  %34 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add.i49
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.116, ptr noundef %chan, i32 noundef %39) #12
  %err33 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 18
  %40 = ptrtoint ptr %err33 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %err33, align 1
  br label %if.end34

if.end34:                                         ; preds = %do.end, %for.end.if.end34_crit_edge, %for.cond.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axidma_clk_init(ptr noundef %pdev, ptr nocapture noundef %axi_clk, ptr nocapture noundef %tx_clk, ptr nocapture noundef %rx_clk, ptr nocapture noundef %sg_clk, ptr nocapture noundef writeonly %tmp_clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tmp_clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tmp_clk, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  %1 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %axi_clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %2, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.46) #9
  %cmp.i80 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i80, ptr null, ptr %call6
  %3 = ptrtoint ptr %tx_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.store.select, ptr %tx_clk, align 4
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.48) #9
  %cmp.i81 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %spec.store.select120 = select i1 %cmp.i81, ptr null, ptr %call11
  %4 = ptrtoint ptr %rx_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.store.select120, ptr %rx_clk, align 4
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.118) #9
  %cmp.i82 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %spec.store.select119 = select i1 %cmp.i82, ptr null, ptr %call16
  %5 = ptrtoint ptr %sg_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.store.select119, ptr %sg_clk, align 4
  %6 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_clk, align 4
  %call.i83 = tail call i32 @clk_prepare(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i87, label %if.end23.do.end29_crit_edge

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

if.end.i87:                                       ; preds = %if.end23
  %call1.i85 = tail call i32 @clk_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool2.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool2.not.i86, label %if.end31, label %if.then3.i88

if.then3.i88:                                     ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then3.i88, %if.end23.do.end29_crit_edge
  %retval.0.i89.ph = phi i32 [ %call1.i85, %if.then3.i88 ], [ %call.i83, %if.end23.do.end29_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i89.ph) #12
  br label %err_disable_axiclk

if.end31:                                         ; preds = %if.end.i87
  %10 = ptrtoint ptr %rx_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_clk, align 4
  %call.i91 = tail call i32 @clk_prepare(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end.i95, label %if.end31.do.end37_crit_edge

if.end31.do.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

if.end.i95:                                       ; preds = %if.end31
  %call1.i93 = tail call i32 @clk_enable(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool2.not.i94 = icmp eq i32 %call1.i93, 0
  br i1 %tobool2.not.i94, label %if.end39, label %if.then3.i96

if.then3.i96:                                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %11) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i96, %if.end31.do.end37_crit_edge
  %retval.0.i97.ph = phi i32 [ %call1.i93, %if.then3.i96 ], [ %call.i91, %if.end31.do.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i97.ph) #12
  br label %err_disable_txclk

if.end39:                                         ; preds = %if.end.i95
  %12 = ptrtoint ptr %sg_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_clk, align 4
  %call.i99 = tail call i32 @clk_prepare(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end.i103, label %if.end39.do.end45_crit_edge

if.end39.do.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.end.i103:                                      ; preds = %if.end39
  %call1.i101 = tail call i32 @clk_enable(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool2.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool2.not.i102, label %if.end.i103.cleanup_crit_edge, label %if.then3.i104

if.end.i103.cleanup_crit_edge:                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i104:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i104, %if.end39.do.end45_crit_edge
  %retval.0.i105.ph = phi i32 [ %call1.i101, %if.then3.i104 ], [ %call.i99, %if.end39.do.end45_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %retval.0.i105.ph) #12
  %14 = ptrtoint ptr %rx_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %err_disable_txclk

err_disable_txclk:                                ; preds = %do.end45, %do.end37
  %err.0 = phi i32 [ %retval.0.i97.ph, %do.end37 ], [ %retval.0.i105.ph, %do.end45 ]
  %16 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #9
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %err_disable_axiclk

err_disable_axiclk:                               ; preds = %err_disable_txclk, %do.end29
  %err.1 = phi i32 [ %retval.0.i89.ph, %do.end29 ], [ %err.0, %err_disable_txclk ]
  %18 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_axiclk, %if.end.i103.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %retval.0.i.ph, %do.end ], [ %err.1, %err_disable_axiclk ], [ 0, %if.end.i103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_dma_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_offset.i, align 4
  %add.i = add i32 %1, 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %and = and i32 %7, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_offset.i, align 4
  %add.i60 = add i32 %9, 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %13, i32 %add.i60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %14 = shl nuw nsw i32 %and, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 %14) #9, !srcloc !280
  %and2 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %and6 = and i32 %7, 2448
  %15 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl_offset.i, align 4
  %add.i63 = add i32 %16, 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %20, i32 %add.i63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %and6) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 %21) #9, !srcloc !280
  %flush_on_fsync = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 23
  %22 = ptrtoint ptr %flush_on_fsync to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flush_on_fsync, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool7.not = icmp ne i8 %23, 0
  %and8 = and i32 %7, 34400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.then4.if.end14_crit_edge, label %do.end

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %and5 = and i32 %7, 36848
  %dev = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl_offset.i, align 4
  %add.i66 = add i32 %27, 8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %31, i32 %add.i66
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #9, !srcloc !276
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %34 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrl_offset.i, align 4
  %add.i69 = add i32 %35, 16
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %39, i32 %add.i69
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i70) #9, !srcloc !276
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.127, ptr noundef %data, i32 noundef %and5, i32 noundef %33, i32 noundef %41) #12
  %err = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 18
  %42 = ptrtoint ptr %err to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %err, align 1
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then4.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %and15 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end29_crit_edge, label %do.body18

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_dma_irq_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_dma_irq_handler, %if.end29)) #9
          to label %if.then24 [label %if.end29], !srcloc !284

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %dev25 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 10
  %43 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_dma_irq_handler.__UNIQUE_ID_ddebug241, ptr noundef %44, ptr noundef nonnull @.str.129) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %do.body18, %if.end14.if.end29_crit_edge
  %and30 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  tail call fastcc void @xilinx_dma_complete_descriptor(ptr noundef %data)
  %idle = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 19
  %45 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %idle, align 4
  %start_transfer = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 32
  %46 = ptrtoint ptr %start_transfer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %start_transfer, align 4
  tail call void %47(ptr noundef %data) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %state.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 21, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %tasklet = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end34.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_complete_descriptor(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %1, %active_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %has_sg = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 15
  %err = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 18
  %done_list = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 6
  %prev.i47 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader
  %.pn.in53 = phi ptr [ %1, %for.cond.preheader ], [ %.pn56, %list_add_tail.exit.for.body_crit_edge ]
  %desc.055 = getelementptr i8, ptr %.pn.in53, i32 -108
  %2 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn56 = load ptr, ptr %.pn.in53, align 4
  %3 = ptrtoint ptr %has_sg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_sg, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool9.not = icmp eq i8 %4, 0
  br i1 %tobool9.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_config, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp10.not = icmp eq i32 %10, 2
  br i1 %cmp10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  %segments.i = getelementptr i8, ptr %.pn.in53, i32 -8
  %11 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %entry1.049.i = load ptr, ptr %segments.i, align 4
  %cmp.i.not50.i = icmp eq ptr %entry1.049.i, %segments.i
  br i1 %cmp.i.not50.i, label %if.then11.if.end14_crit_edge, label %for.body.lr.ph.i

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %if.then11
  %max_buffer_len17.i = getelementptr inbounds %struct.xilinx_dma_device, ptr %6, i32 0, i32 15
  %12 = ptrtoint ptr %max_buffer_len17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_buffer_len17.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.052.i = phi ptr [ %entry1.049.i, %for.body.lr.ph.i ], [ %entry1.0.i, %for.inc.i.for.body.i_crit_edge ]
  %residue.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %residue.1.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %10, label %if.else20.i [
    i32 1, label %if.then.i
    i32 0, label %if.then8.i
  ]

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %control.i = getelementptr i8, ptr %entry1.052.i, i32 -40
  %15 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %control.i, align 8
  %status.i = getelementptr i8, ptr %entry1.052.i, i32 -36
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 4
  %sub.i = sub i32 %16, %18
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %control13.i = getelementptr i8, ptr %entry1.052.i, i32 -40
  %19 = ptrtoint ptr %control13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control13.i, align 8
  %status14.i = getelementptr i8, ptr %entry1.052.i, i32 -36
  %21 = ptrtoint ptr %status14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status14.i, align 4
  %sub15.i = sub i32 %20, %22
  br label %for.inc.i

if.else20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %control25.i = getelementptr i8, ptr %entry1.052.i, i32 -44
  %23 = ptrtoint ptr %control25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control25.i, align 4
  %status26.i = getelementptr i8, ptr %entry1.052.i, i32 -40
  %25 = ptrtoint ptr %status26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status26.i, align 8
  %sub27.i = sub i32 %24, %26
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else20.i, %if.then8.i, %if.then.i
  %sub.sink.i = phi i32 [ %sub.i, %if.then.i ], [ %sub27.i, %if.else20.i ], [ %sub15.i, %if.then8.i ]
  %and.i = and i32 %13, %sub.sink.i
  %residue.1.i = add i32 %and.i, %residue.051.i
  %27 = ptrtoint ptr %entry1.052.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %entry1.0.i = load ptr, ptr %entry1.052.i, align 4
  %cmp.i.not.i = icmp eq ptr %entry1.0.i, %segments.i
  br i1 %cmp.i.not.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %if.then11.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %.sink = phi i32 [ 0, %if.then11.if.end14_crit_edge ], [ 0, %land.lhs.true.if.end14_crit_edge ], [ 0, %for.body.if.end14_crit_edge ], [ %residue.1.i, %for.inc.i.if.end14_crit_edge ]
  %residue13 = getelementptr i8, ptr %.pn.in53, i32 12
  %28 = ptrtoint ptr %residue13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %residue13, align 4
  %29 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %err, align 1, !range !278
  %err16 = getelementptr i8, ptr %.pn.in53, i32 9
  %31 = ptrtoint ptr %err16 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %err16, align 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in53) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in53, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cyclic = getelementptr i8, ptr %.pn.in53, i32 8
  %40 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cyclic, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool18.not = icmp eq i8 %41, 0
  br i1 %tobool18.not, label %if.then19, label %list_del.exit.if.end20_crit_edge

list_del.exit.if.end20_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %list_del.exit
  %42 = ptrtoint ptr %desc.055 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %desc.055, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i46 = icmp slt i32 %43, 1
  br i1 %cmp.i46, label %do.body2.i, label %dma_cookie_complete.exit, !prof !286

do.body2.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/xilinx/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !299
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %chan.i = getelementptr i8, ptr %.pn.in53, i32 -96
  %44 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %completed_cookie.i, align 4
  %47 = ptrtoint ptr %desc.055 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %desc.055, align 4
  br label %if.end20

if.end20:                                         ; preds = %dma_cookie_complete.exit, %list_del.exit.if.end20_crit_edge
  %48 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i47, align 4
  %call.i.i48 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in53, ptr noundef %49, ptr noundef %done_list) #9
  br i1 %call.i.i48, label %if.end.i.i49, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i49:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %.pn.in53, ptr %prev.i47, align 4
  %51 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %done_list, ptr %.pn.in53, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %.pn.in53, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i49, %if.end20.list_add_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn56, %active_list
  br i1 %cmp.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axicdma_clk_init(ptr noundef %pdev, ptr nocapture noundef %axi_clk, ptr nocapture noundef %dev_clk, ptr nocapture noundef writeonly %tmp_clk, ptr nocapture noundef writeonly %tmp1_clk, ptr nocapture noundef writeonly %tmp2_clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tmp_clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tmp_clk, align 4
  %1 = ptrtoint ptr %tmp1_clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tmp1_clk, align 4
  %2 = ptrtoint ptr %tmp2_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tmp2_clk, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  %3 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %axi_clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.130) #9
  %5 = ptrtoint ptr %dev_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %dev_clk, align 4
  %cmp.i42 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call6 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.131) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %7 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %axi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.do.end_crit_edge

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end16, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end12.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end12.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end.i
  %9 = ptrtoint ptr %dev_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_clk, align 4
  %call.i43 = tail call i32 @clk_prepare(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end.i47, label %if.end16.do.end22_crit_edge

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

if.end.i47:                                       ; preds = %if.end16
  %call1.i45 = tail call i32 @clk_enable(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool2.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool2.not.i46, label %if.end.i47.cleanup_crit_edge, label %if.then3.i48

if.end.i47.cleanup_crit_edge:                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i48:                                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i48, %if.end16.do.end22_crit_edge
  %retval.0.i49.ph = phi i32 [ %call1.i45, %if.then3.i48 ], [ %call.i43, %if.end16.do.end22_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %retval.0.i49.ph) #12
  %11 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %12) #9
  tail call void @clk_unprepare(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end.i47.cleanup_crit_edge, %do.end, %if.then8, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call11, %if.then8 ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i49.ph, %do.end22 ], [ 0, %if.end.i47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_mcdma_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %. = select i1 %cmp, i32 32, i32 40
  %ctrl_offset.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_offset.i, align 4
  %add.i = add i32 %., %3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !276
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true), !range !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %iszero = icmp eq i32 %8, 0
  br i1 %iszero, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %entry
  %11 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp4 = icmp eq i32 %12, 2
  br i1 %cmp4, label %if.then5, label %if.end2.if.end6_crit_edge

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %dma_config = getelementptr inbounds %struct.xilinx_dma_device, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %dma_config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_config, align 4
  %max_channels = getelementptr inbounds %struct.xilinx_dma_config, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_channels, align 4
  %div = sdiv i32 %18, 2
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2.if.end6_crit_edge
  %chan_offset.0 = phi i32 [ %div, %if.then5 ], [ 0, %if.end2.if.end6_crit_edge ]
  %add = add nsw i32 %chan_offset.0, %10
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.xilinx_dma_device, ptr %20, i32 0, i32 3, i32 %add
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %tdest = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 34
  %23 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tdest, align 4
  %conv = zext i16 %24 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %ctrl_offset.i89 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ctrl_offset.i89 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl_offset.i89, align 4
  %add9 = add i32 %26, 68
  %add.i90 = add i32 %add9, %mul
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %30, i32 %add.i90
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i91) #9, !srcloc !276
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %and = and i32 %32, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %33 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tdest, align 4
  %conv15 = zext i16 %34 to i32
  %mul16 = shl nuw nsw i32 %conv15, 6
  %35 = ptrtoint ptr %ctrl_offset.i89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctrl_offset.i89, align 4
  %add17 = add i32 %36, 68
  %add.i93 = add i32 %add17, %mul16
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %22, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %40, i32 %add.i93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %41 = shl nuw i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i94, i32 %41) #9, !srcloc !280
  %and19 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end13.if.end33_crit_edge, label %do.end

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 10
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %ctrl_offset.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrl_offset.i89, align 4
  %add.i96 = add i32 %45, 16
  %46 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %22, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %49, i32 %add.i96
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #9, !srcloc !276
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %52 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tdest, align 4
  %conv24 = zext i16 %53 to i32
  %mul25 = shl nuw nsw i32 %conv24, 6
  %54 = ptrtoint ptr %ctrl_offset.i89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ctrl_offset.i89, align 4
  %add26 = add i32 %55, 72
  %add.i99 = add i32 %add26, %mul25
  %56 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %22, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %59, i32 %add.i99
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i100) #9, !srcloc !276
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %62 = ptrtoint ptr %tdest to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tdest, align 4
  %conv29 = zext i16 %63 to i32
  %mul30 = shl nuw nsw i32 %conv29, 6
  %64 = ptrtoint ptr %ctrl_offset.i89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ctrl_offset.i89, align 4
  %add31 = add i32 %65, 80
  %add.i102 = add i32 %add31, %mul30
  %66 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %22, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %69, i32 %add.i102
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103) #9, !srcloc !276
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.136, ptr noundef %22, i32 noundef %51, i32 noundef %61, i32 noundef %71) #12
  %err = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 18
  %72 = ptrtoint ptr %err to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %err, align 1
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end13.if.end33_crit_edge
  %and34 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end48_crit_edge, label %do.body37

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.body37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_mcdma_irq_handler.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_mcdma_irq_handler, %if.end48)) #9
          to label %if.then43 [label %if.end48], !srcloc !284

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 10
  %73 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_mcdma_irq_handler.__UNIQUE_ID_ddebug240, ptr noundef %74, ptr noundef nonnull @.str.129) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %do.body37, %if.end33.if.end48_crit_edge
  %and49 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end53_crit_edge, label %if.then51

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  tail call fastcc void @xilinx_dma_complete_descriptor(ptr noundef %22)
  %idle = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 19
  %75 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %idle, align 4
  %start_transfer = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 32
  %76 = ptrtoint ptr %start_transfer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %start_transfer, align 4
  tail call void %77(ptr noundef %22) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48.if.end53_crit_edge
  %state.i = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 21, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %tasklet = getelementptr inbounds %struct.xilinx_dma_chan, ptr %22, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end53.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 1, %if.end53.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !159, !160, !161, !162, !164, !165, !167, !169, !171, !173, !174, !175, !176, !178, !180, !182, !184, !186, !188, !190, !191, !192, !194, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !218, !220, !222, !223, !224, !226, !227, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !244, !246, !248, !250, !251, !252, !254, !255, !256, !258, !260, !262, !263, !264, !265}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !{ptr @__ksymtab_xilinx_vdma_channel_set_config, !1, !"__ksymtab_xilinx_vdma_channel_set_config", i1 false, i1 false}
!1 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2672, i32 1}
!2 = !{ptr @__initcall__kmod_xilinx_dma__250_3340_xilinx_vdma_driver_init6, !3, !"__initcall__kmod_xilinx_dma__250_3340_xilinx_vdma_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3340, i32 1}
!4 = !{ptr @__exitcall_xilinx_vdma_driver_exit, !3, !"__exitcall_xilinx_vdma_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author251, !6, !"__UNIQUE_ID_author251", i1 false, i1 false}
!6 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3342, i32 1}
!7 = !{ptr @__UNIQUE_ID_description252, !8, !"__UNIQUE_ID_description252", i1 false, i1 false}
!8 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3343, i32 1}
!9 = !{ptr @__UNIQUE_ID_file253, !10, !"__UNIQUE_ID_file253", i1 false, i1 false}
!10 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3344, i32 1}
!11 = !{ptr @__UNIQUE_ID_license254, !10, !"__UNIQUE_ID_license254", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1717, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xilinx_dma_reset._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @xilinx_dma_reset._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3333, i32 11}
!22 = !{ptr @xilinx_vdma_driver, !23, !"xilinx_vdma_driver", i1 false, i1 false}
!23 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3331, i32 31}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3172, i32 35}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3176, i32 5}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @xilinx_dma_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @xilinx_dma_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3180, i32 6}
!34 = !{ptr @xilinx_dma_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @xilinx_dma_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3188, i32 36}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3191, i32 4}
!40 = !{ptr @xilinx_dma_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @xilinx_dma_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3196, i32 36}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3199, i32 4}
!46 = !{ptr @xilinx_dma_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xilinx_dma_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3203, i32 35}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3205, i32 3}
!52 = !{ptr @xilinx_dma_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @xilinx_dma_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3274, i32 3}
!56 = !{ptr @xilinx_dma_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @xilinx_dma_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3281, i32 3}
!60 = !{ptr @xilinx_dma_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @xilinx_dma_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3287, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xilinx_dma_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @xilinx_dma_probe._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3289, i32 3}
!69 = !{ptr @xilinx_dma_probe._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @xilinx_dma_probe._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3291, i32 3}
!73 = !{ptr @xilinx_dma_probe._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @xilinx_dma_probe._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3293, i32 3}
!77 = !{ptr @xilinx_dma_probe._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @xilinx_dma_probe._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2800, i32 38}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2802, i32 55}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2804, i32 37}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2808, i32 38}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2812, i32 37}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2816, i32 38}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2822, i32 3}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @axivdma_clk_init._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @axivdma_clk_init._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2829, i32 3}
!98 = !{ptr @axivdma_clk_init._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @axivdma_clk_init._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2835, i32 3}
!102 = !{ptr @axivdma_clk_init._entry.55, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @axivdma_clk_init._entry_ptr.57, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2841, i32 3}
!106 = !{ptr @axivdma_clk_init._entry.58, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @axivdma_clk_init._entry_ptr.60, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2847, i32 3}
!110 = !{ptr @axivdma_clk_init._entry.61, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @axivdma_clk_init._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1100, i32 4}
!114 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @xilinx_dma_alloc_chan_resources._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @xilinx_dma_alloc_chan_resources._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1116, i32 4}
!119 = !{ptr @xilinx_dma_alloc_chan_resources._entry.66, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @xilinx_dma_alloc_chan_resources._entry_ptr.68, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @xilinx_dma_alloc_chan_resources._entry.69, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1144, i32 4}
!123 = !{ptr @xilinx_dma_alloc_chan_resources._entry_ptr.70, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1162, i32 37}
!126 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1168, i32 37}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1178, i32 3}
!130 = !{ptr @xilinx_dma_alloc_chan_resources._entry.73, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @xilinx_dma_alloc_chan_resources._entry_ptr.75, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 903, i32 2}
!134 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @xilinx_dma_free_chan_resources.__UNIQUE_ID_ddebug237, !133, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!137 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2569, i32 4}
!139 = !{ptr @.str.80, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @xilinx_dma_terminate_all._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @xilinx_dma_terminate_all._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1941, i32 3}
!144 = !{ptr @.str.82, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @append_desc_queue.__UNIQUE_ID_ddebug242, !143, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!146 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 694, i32 3}
!148 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @xilinx_axidma_alloc_tx_segment.__UNIQUE_ID_ddebug236, !147, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!150 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2232, i32 3}
!152 = !{ptr @.str.86, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @xilinx_cdma_prep_memcpy_sg._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @xilinx_cdma_prep_memcpy_sg._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.87, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3055, i32 35}
!157 = !{ptr @.str.88, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3057, i32 3}
!159 = !{ptr @.str.89, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @xilinx_dma_child_probe._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @xilinx_dma_child_probe._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @xilinx_dma_chan_probe.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2908, i32 2}
!164 = !{ptr @.str.90, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2915, i32 40}
!167 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2917, i32 46}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2919, i32 35}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2921, i32 3}
!173 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @xilinx_dma_chan_probe._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @xilinx_dma_chan_probe._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2933, i32 36}
!178 = !{ptr @.str.97, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2934, i32 36}
!180 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2935, i32 36}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2950, i32 9}
!184 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2952, i32 9}
!186 = !{ptr @.str.101, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2957, i32 6}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2978, i32 3}
!190 = !{ptr @xilinx_dma_chan_probe._entry.102, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @xilinx_dma_chan_probe._entry_ptr.104, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2985, i32 46}
!194 = !{ptr @.str.106, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2987, i32 19}
!196 = !{ptr @.str.108, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2989, i32 3}
!198 = !{ptr @xilinx_dma_chan_probe._entry.107, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @xilinx_dma_chan_probe._entry_ptr.109, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.110, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3013, i32 3}
!202 = !{ptr @xilinx_dma_chan_probe.__UNIQUE_ID_ddebug249, !201, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!203 = !{ptr @.str.111, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.112, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3032, i32 3}
!207 = !{ptr @xilinx_dma_chan_probe._entry.113, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @xilinx_dma_chan_probe._entry_ptr.115, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.116, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1319, i32 3}
!211 = !{ptr @.str.117, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @xilinx_dma_start._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @xilinx_dma_start._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @xilinx_dma_of_ids, !215, !"xilinx_dma_of_ids", i1 false, i1 false}
!215 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3114, i32 34}
!216 = !{ptr @axidma_config, !217, !"axidma_config", i1 false, i1 false}
!217 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3087, i32 39}
!218 = !{ptr @.str.118, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2716, i32 37}
!220 = !{ptr @.str.119, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2722, i32 3}
!222 = !{ptr @axidma_clk_init._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @axidma_clk_init._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @axidma_clk_init._entry.120, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2728, i32 3}
!226 = !{ptr @axidma_clk_init._entry_ptr.121, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @axidma_clk_init._entry.122, !228, !"_entry", i1 false, i1 false}
!228 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2734, i32 3}
!229 = !{ptr @axidma_clk_init._entry_ptr.123, !228, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2740, i32 3}
!232 = !{ptr @axidma_clk_init._entry.124, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @axidma_clk_init._entry_ptr.126, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.127, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1856, i32 4}
!236 = !{ptr @.str.128, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @xilinx_dma_irq_handler._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @xilinx_dma_irq_handler._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.129, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1870, i32 3}
!241 = !{ptr @xilinx_dma_irq_handler.__UNIQUE_ID_ddebug241, !240, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!242 = !{ptr @axicdma_config, !243, !"axicdma_config", i1 false, i1 false}
!243 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3100, i32 39}
!244 = !{ptr @.str.130, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2770, i32 38}
!246 = !{ptr @.str.131, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2772, i32 55}
!248 = !{ptr @.str.132, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2776, i32 3}
!250 = !{ptr @axicdma_clk_init._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @axicdma_clk_init._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.134, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 2782, i32 3}
!254 = !{ptr @axicdma_clk_init._entry.133, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @axicdma_clk_init._entry_ptr.135, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @axivdma_config, !257, !"axivdma_config", i1 false, i1 false}
!257 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3107, i32 39}
!258 = !{ptr @aximcdma_config, !259, !"aximcdma_config", i1 false, i1 false}
!259 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 3094, i32 39}
!260 = !{ptr @.str.136, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1791, i32 3}
!262 = !{ptr @.str.137, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @xilinx_mcdma_irq_handler._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @xilinx_mcdma_irq_handler._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @xilinx_mcdma_irq_handler.__UNIQUE_ID_ddebug240, !266, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!266 = !{!"../drivers/dma/xilinx/xilinx_dma.c", i32 1806, i32 3}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 1, !"min_enum_size", i32 4}
!269 = !{i32 8, !"branch-target-enforcement", i32 0}
!270 = !{i32 8, !"sign-return-address", i32 0}
!271 = !{i32 8, !"sign-return-address-all", i32 0}
!272 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!273 = !{i32 7, !"uwtable", i32 1}
!274 = !{i32 7, !"frame-pointer", i32 2}
!275 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!276 = !{i64 5879161}
!277 = !{i64 2153419510}
!278 = !{i8 0, i8 2}
!279 = !{i64 2153420865}
!280 = !{i64 5878743}
!281 = !{i64 2154686007}
!282 = !{i64 2154686613}
!283 = !{!"auto-init"}
!284 = !{i64 2148777561, i64 2148777566, i64 2148777579, i64 2148777623, i64 2148777657, i64 2148777678}
!285 = !{i64 2154522237}
!286 = !{!"branch_weights", i32 1, i32 2000}
!287 = !{i32 0, i32 33}
!288 = !{i64 2154510736}
!289 = !{i64 2154511109}
!290 = !{i64 2154632407}
!291 = !{i64 2154633013}
!292 = !{i64 2154636095}
!293 = !{i64 2154636701}
!294 = !{i64 2154559704}
!295 = !{i64 2154560171}
!296 = !{!"branch_weights", i32 2000, i32 1}
!297 = !{i64 2154639892}
!298 = !{i64 2154640498}
!299 = !{i64 2154520727, i64 2154521224, i64 2154520764, i64 2154520820, i64 2154520854, i64 2154520878, i64 2154520919, i64 2154520940, i64 2154520968, i64 2154521002}
