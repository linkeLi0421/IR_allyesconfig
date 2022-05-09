; ModuleID = '/llk/IR_all_yes/drivers/dma/qcom/bam_dma.c_pt.bc'
source_filename = "../drivers/dma/qcom/bam_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.reg_offset_data = type { i32, i32, i32, i32 }
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
%struct.bam_device = type { ptr, ptr, %struct.dma_device, ptr, i32, i32, i32, i8, i8, i32, ptr, ptr, i32, %struct.tasklet_struct }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.bam_chan = type { %struct.virt_dma_chan, ptr, i32, %struct.dma_slave_config, ptr, i32, i16, i16, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bam_async_desc = type { %struct.virt_dma_desc, i32, i32, i16, ptr, %struct.list_head, i32, i32, [0 x %struct.bam_desc_hw] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.bam_desc_hw = type { i32, i16, i16 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_bam_dma__239_1505_bam_dma_driver_init6 = internal global ptr @bam_dma_driver_init, section ".initcall6.init", align 4
@bam_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bam_dma_probe, ptr @bam_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bam_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bam_dma_driver_exit = internal global ptr @bam_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [50 x i8] c"bam_dma.author=Andy Gross <agross@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [47 x i8] c"bam_dma.description=QCOM BAM DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [38 x i8] c"bam_dma.file=drivers/dma/qcom/bam_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [23 x i8] c"bam_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bam-dma-engine\00", [17 x i8] zeroinitializer }, align 32
@bam_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bam-v1.3.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bam_v1_3_reg_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bam-v1.4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bam_v1_4_reg_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bam-v1.7.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bam_v1_7_reg_info }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bam_dma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dma_suspend, ptr @bam_dma_resume, ptr @bam_dma_suspend, ptr @bam_dma_resume, ptr @bam_dma_suspend, ptr @bam_dma_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dma_runtime_suspend, ptr @bam_dma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported BAM module\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bam_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/dma/qcom/bam_dma.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry_ptr = internal global ptr @bam_dma_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcom,ee\00", [24 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Execution environment unspecified\0A\00", [61 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry_ptr.9 = internal global ptr @bam_dma_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom,controlled-remotely\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,powered-remotely\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"num-channels\00", [19 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"num-channels unspecified in dt\0A\00", [32 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry_ptr.15 = internal global ptr @bam_dma_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,num-ees\00", [19 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"num-ees unspecified in dt\0A\00", [37 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry_ptr.19 = internal global ptr @bam_dma_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bam_clk\00", [24 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to prepare/enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry_ptr.23 = internal global ptr @bam_dma_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bam_dma\00", [24 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot set maximum segment size\0A\00", [63 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry_ptr.27 = internal global ptr @bam_dma_probe._entry.25, section ".printk_index", align 4
@bam_dma_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register dma async device\0A\00", [59 x i8] zeroinitializer }, align 32
@bam_dma_probe._entry_ptr.30 = internal global ptr @bam_dma_probe._entry.28, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.31, ptr @.str.32, ptr @.str.33, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/dma/qcom/../virt-dma.h\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@bam_alloc_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate desc fifo\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bam_alloc_chan\00", [17 x i8] zeroinitializer }, align 32
@bam_alloc_chan._entry_ptr = internal global ptr @bam_alloc_chan._entry, section ".printk_index", align 4
@bam_free_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 591, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot free busy channel\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bam_free_chan\00", [18 x i8] zeroinitializer }, align 32
@bam_free_chan._entry_ptr = internal global ptr @bam_free_chan._entry, section ".printk_index", align 4
@bam_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid dma direction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bam_prep_slave_sg\00", [46 x i8] zeroinitializer }, align 32
@bam_prep_slave_sg._entry_ptr = internal global ptr @bam_prep_slave_sg._entry, section ".printk_index", align 4
@bam_v1_3_reg_info = internal constant { [26 x %struct.reg_offset_data], [96 x i8] } { [26 x %struct.reg_offset_data] [%struct.reg_offset_data { i32 3968, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3972, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4028, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3976, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3980, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3984, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4016, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3988, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3992, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3996, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4092, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 6144, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 6148, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 0, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 4, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 8, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 16, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 20, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 24, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 4140, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4120, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4096, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4132, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4124, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4136, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4128, i32 0, i32 64, i32 0 }], [96 x i8] zeroinitializer }, align 32
@bam_v1_4_reg_info = internal constant { [26 x %struct.reg_offset_data], [96 x i8] } { [26 x %struct.reg_offset_data] [%struct.reg_offset_data zeroinitializer, %struct.reg_offset_data { i32 4, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 60, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 8, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 16, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 48, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 20, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 24, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 28, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 124, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 2048, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 2052, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 4096, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4100, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4104, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4112, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4116, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4120, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 6188, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6168, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6144, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6180, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6172, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6184, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6176, i32 0, i32 4096, i32 0 }], [96 x i8] zeroinitializer }, align 32
@bam_v1_7_reg_info = internal constant { [26 x %struct.reg_offset_data], [96 x i8] } { [26 x %struct.reg_offset_data] [%struct.reg_offset_data zeroinitializer, %struct.reg_offset_data { i32 4096, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4104, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 8, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12304, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12308, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12312, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 20, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 24, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 28, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 124, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12288, i32 0, i32 0, i32 4096 }, %struct.reg_offset_data { i32 12292, i32 0, i32 0, i32 4096 }, %struct.reg_offset_data { i32 77824, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77828, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77832, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77840, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77844, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77848, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 79916, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79896, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79872, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79908, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79900, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79912, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79904, i32 0, i32 4096, i32 0 }], [96 x i8] zeroinitializer }, align 32
@bam_dma_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_enable failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bam_dma_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@bam_dma_runtime_resume._entry_ptr = internal global ptr @bam_dma_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"bam_dma_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1495, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1499, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"bam_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1235, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"bam_dma_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1489, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1259, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1274, i32 48 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1276, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1281, i32 7 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1283, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1286, i32 49 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1289, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1291, i32 49 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1294, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1298, i32 51 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1307, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1332, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1340, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1368, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [34 x i8] c"../drivers/dma/qcom/../virt-dma.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 101, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 551, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 591, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 670, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"bam_v1_3_reg_info\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 114, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"bam_v1_4_reg_info\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 143, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"bam_v1_7_reg_info\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 172, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [30 x i8] c"../drivers/dma/qcom/bam_dma.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1454, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_bam_dma_driver_exit, ptr @__initcall__kmod_bam_dma__239_1505_bam_dma_driver_init6, ptr @bam_alloc_chan._entry, ptr @bam_alloc_chan._entry_ptr, ptr @bam_dma_driver_exit, ptr @bam_dma_probe._entry, ptr @bam_dma_probe._entry.13, ptr @bam_dma_probe._entry.17, ptr @bam_dma_probe._entry.21, ptr @bam_dma_probe._entry.25, ptr @bam_dma_probe._entry.28, ptr @bam_dma_probe._entry.7, ptr @bam_dma_probe._entry_ptr, ptr @bam_dma_probe._entry_ptr.15, ptr @bam_dma_probe._entry_ptr.19, ptr @bam_dma_probe._entry_ptr.23, ptr @bam_dma_probe._entry_ptr.27, ptr @bam_dma_probe._entry_ptr.30, ptr @bam_dma_probe._entry_ptr.9, ptr @bam_dma_runtime_resume._entry, ptr @bam_dma_runtime_resume._entry_ptr, ptr @bam_free_chan._entry, ptr @bam_free_chan._entry_ptr, ptr @bam_prep_slave_sg._entry, ptr @bam_prep_slave_sg._entry_ptr, ptr @bam_dma_driver, ptr @.str, ptr @bam_of_match, ptr @bam_dma_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @bam_v1_3_reg_info, ptr @bam_v1_4_reg_info, ptr @bam_v1_7_reg_info, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_alloc_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_free_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_v1_3_reg_info to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_v1_4_reg_info to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_v1_7_reg_info to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dma_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bam_dma_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bam_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bam_dma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 432, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_match_node(ptr noundef nonnull @bam_of_match, ptr noundef %2) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %layout = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %layout, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call9) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call18, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %ee = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %ee, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool26.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i301 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i301, null
  %controlled_remotely = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 7
  %frombool = zext i1 %tobool.i to i8
  %15 = ptrtoint ptr %controlled_remotely to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %controlled_remotely, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call.i302 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %tobool.i303 = icmp ne ptr %call.i302, null
  %powered_remotely = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 8
  %frombool39 = zext i1 %tobool.i303 to i8
  %18 = ptrtoint ptr %powered_remotely to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool39, ptr %powered_remotely, align 1
  %19 = ptrtoint ptr %controlled_remotely to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %controlled_remotely, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool41.not = icmp ne i8 %20, 0
  %brmerge = select i1 %tobool41.not, i1 true, i1 %tobool.i303
  br i1 %brmerge, label %if.then44, label %if.end32.lor.lhs.false68_crit_edge

if.end32.lor.lhs.false68_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false68

if.then44:                                        ; preds = %if.end32
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %num_channels = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 4
  %call.i.i304 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.12, ptr noundef %num_channels, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i304)
  %tobool48.not = icmp sgt i32 %call.i.i304, -1
  br i1 %tobool48.not, label %if.then44.if.end54_crit_edge, label %do.end52

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end52:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.14) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.then44.if.end54_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %num_ees = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 5
  %call.i.i305 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef %num_ees, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i305)
  %tobool58.not = icmp sgt i32 %call.i.i305, -1
  br i1 %tobool58.not, label %if.end54.if.end65_crit_edge, label %do.end62

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.18) #10
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end54.if.end65_crit_edge
  %29 = ptrtoint ptr %controlled_remotely to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %controlled_remotely, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool67.not = icmp eq i8 %.pr, 0
  br i1 %tobool67.not, label %lor.lhs.false68thread-pre-split, label %if.end65.if.then71_crit_edge

if.end65.if.then71_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

lor.lhs.false68thread-pre-split:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %powered_remotely to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr332 = load i8, ptr %powered_remotely, align 1
  br label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false68thread-pre-split, %if.end32.lor.lhs.false68_crit_edge
  %31 = phi i8 [ %.pr332, %lor.lhs.false68thread-pre-split ], [ %frombool39, %if.end32.lor.lhs.false68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool70.not = icmp eq i8 %31, 0
  br i1 %tobool70.not, label %if.else, label %lor.lhs.false68.if.then71_crit_edge

lor.lhs.false68.if.then71_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

if.then71:                                        ; preds = %lor.lhs.false68.if.then71_crit_edge, %if.end65.if.then71_crit_edge
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  %call73 = tail call ptr @devm_clk_get_optional(ptr noundef %33, ptr noundef nonnull @.str.20) #7
  br label %if.end77

if.else:                                          ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2, align 4
  %call75 = tail call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.20) #7
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then71
  %call75.sink = phi ptr [ %call75, %if.else ], [ %call73, %if.then71 ]
  %bamclk76 = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %bamclk76 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call75.sink, ptr %bamclk76, align 4
  %bamclk78 = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 11
  %cmp.i306 = icmp ugt ptr %call75.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call75.sink to i32
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %call.i307 = tail call i32 @clk_prepare(ptr noundef %call75.sink) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %tobool.not.i = icmp eq i32 %call.i307, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end83.do.end90_crit_edge

if.end83.do.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.end.i:                                         ; preds = %if.end83
  %call1.i = tail call i32 @clk_enable(ptr noundef %call75.sink) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end92, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call75.sink) #7
  br label %do.end90

do.end90:                                         ; preds = %if.then3.i, %if.end83.do.end90_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i307, %if.end83.do.end90_crit_edge ]
  %38 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end92:                                         ; preds = %if.end.i
  %num_ees.i = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %num_ees.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_ees.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i308 = icmp eq i32 %41, 0
  br i1 %tobool.not.i308, label %if.then.i, label %if.end92.if.end.i309_crit_edge

if.end92.if.end.i309_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i309

if.then.i:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %layout, align 4
  %arrayidx.i.i = getelementptr %struct.reg_offset_data, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %r.sroa.0.0.copyload.i.i = load i32, ptr %arrayidx.i.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i.i = getelementptr %struct.reg_offset_data, ptr %43, i32 1, i32 3
  %45 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %r.sroa.9.0.copyload.i.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i.i, align 4
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %r.sroa.0.0.copyload.i.i
  %48 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ee, align 4
  %mul4.i.i = mul i32 %49, %r.sroa.9.0.copyload.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul4.i.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #7, !srcloc !105
  %51 = lshr i32 %50, 16
  %and.i = and i32 %51, 15
  %52 = ptrtoint ptr %num_ees.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i, ptr %num_ees.i, align 4
  br label %if.end.i309

if.end.i309:                                      ; preds = %if.then.i, %if.end92.if.end.i309_crit_edge
  %53 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ee, align 4
  %55 = ptrtoint ptr %num_ees.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_ees.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.not.i = icmp ult i32 %54, %56
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i309.err_disable_clk_crit_edge

if.end.i309.err_disable_clk_crit_edge:            ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end5.i:                                        ; preds = %if.end.i309
  %num_channels.i = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool6.not.i = icmp eq i32 %58, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end5.i.if.end14.i_crit_edge

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %layout, align 4
  %arrayidx.i31.i = getelementptr %struct.reg_offset_data, ptr %60, i32 2
  %61 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %r.sroa.0.0.copyload.i32.i = load i32, ptr %arrayidx.i31.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i37.i = getelementptr %struct.reg_offset_data, ptr %60, i32 2, i32 3
  %62 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i37.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %r.sroa.9.0.copyload.i38.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i37.i, align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %64, i32 %r.sroa.0.0.copyload.i32.i
  %mul4.i41.i = mul i32 %r.sroa.9.0.copyload.i38.i, %54
  %add.ptr5.i42.i = getelementptr i8, ptr %add.ptr.i39.i, i32 %mul4.i41.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i42.i) #7, !srcloc !105
  %66 = lshr i32 %65, 24
  %67 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %num_channels.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end14.i_crit_edge
  %68 = ptrtoint ptr %controlled_remotely to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %controlled_remotely, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool15.not.i = icmp eq i8 %69, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i, label %if.end14.i.if.end96_crit_edge

if.end14.i.if.end96_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

land.lhs.true.i:                                  ; preds = %if.end14.i
  %70 = ptrtoint ptr %powered_remotely to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %powered_remotely, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool16.not.i = icmp eq i8 %71, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %land.lhs.true.i.if.end96_crit_edge

land.lhs.true.i.if.end96_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bam_reset(ptr noundef nonnull %call.i) #7
  br label %if.end96

if.end96:                                         ; preds = %if.then17.i, %land.lhs.true.i.if.end96_crit_edge, %if.end14.i.if.end96_crit_edge
  %task = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 13
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @dma_tasklet) #7
  %72 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_channels.i, align 4
  %74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %73, i32 276) #7
  %75 = extractvalue { i32, i1 } %74, 1
  br i1 %75, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !106

devm_kcalloc.exit.thread:                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %channels323 = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 3
  %76 = ptrtoint ptr %channels323 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %channels323, align 4
  br label %err_tasklet_kill

devm_kcalloc.exit:                                ; preds = %if.end96
  %77 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev2, align 4
  %79 = extractvalue { i32, i1 } %74, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %78, i32 noundef %79, i32 noundef 3520) #7
  %channels = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 3
  %80 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call5.i.i, ptr %channels, align 4
  %tobool101.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool101.not, label %devm_kcalloc.exit.err_tasklet_kill_crit_edge, label %if.end103

devm_kcalloc.exit.err_tasklet_kill_crit_edge:     ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_tasklet_kill

if.end103:                                        ; preds = %devm_kcalloc.exit
  %common = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2
  %channels104 = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 3
  %81 = ptrtoint ptr %channels104 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %channels104, ptr %channels104, align 4
  %prev.i = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %channels104, ptr %prev.i, align 4
  %83 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp106327.not = icmp eq i32 %84, 0
  br i1 %cmp106327.not, label %if.end103.for.end_crit_edge, label %if.end103.for.body_crit_edge

if.end103.for.body_crit_edge:                     ; preds = %if.end103
  br label %for.body

if.end103.for.end_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end103.for.body_crit_edge
  %i.0328 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end103.for.body_crit_edge ]
  %85 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.bam_chan, ptr %86, i32 %i.0328
  %id.i = getelementptr %struct.bam_chan, ptr %86, i32 %i.0328, i32 2
  %87 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %i.0328, ptr %id.i, align 4
  %bdev1.i = getelementptr %struct.bam_chan, ptr %86, i32 %i.0328, i32 1
  %88 = ptrtoint ptr %bdev1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i, ptr %bdev1.i, align 4
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef %common) #7
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %89 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @bam_dma_free_desc, ptr %desc_free.i, align 4
  %desc_list.i = getelementptr %struct.bam_chan, ptr %86, i32 %i.0328, i32 11
  %90 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %desc_list.i, ptr %desc_list.i, align 4
  %prev.i.i = getelementptr %struct.bam_chan, ptr %86, i32 %i.0328, i32 11, i32 1
  %91 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %desc_list.i, ptr %prev.i.i, align 4
  %inc = add nuw i32 %i.0328, 1
  %92 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_channels.i, align 4
  %cmp106 = icmp ult i32 %inc, %93
  br i1 %cmp106, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end103.for.end_crit_edge
  %94 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev2, align 4
  %96 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq, align 4
  %call.i311 = tail call i32 @devm_request_threaded_irq(ptr noundef %95, i32 noundef %97, ptr noundef nonnull @bam_dma_irq, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool111.not = icmp eq i32 %call.i311, 0
  br i1 %tobool111.not, label %if.end113, label %for.end.err_bam_channel_exit_crit_edge

for.end.err_bam_channel_exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bam_channel_exit

if.end113:                                        ; preds = %for.end
  %98 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev2, align 4
  %dev116 = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 15
  %100 = ptrtoint ptr %dev116 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %dev116, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 22
  %101 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i312 = icmp eq ptr %102, null
  br i1 %tobool.not.i312, label %do.end124, label %if.end126

do.end124:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.26) #10
  br label %err_bam_channel_exit

if.end126:                                        ; preds = %if.end113
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 32760, ptr %102, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %106 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %cap_mask = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 6
  %107 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #7
  %directions = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 21
  %108 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 26
  %109 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %residue_granularity, align 4
  %src_addr_widths = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 19
  %110 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 4, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 20
  %111 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %dst_addr_widths, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 27
  %112 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @bam_alloc_chan, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 29
  %113 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @bam_free_chan, ptr %device_free_chan_resources, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 39
  %114 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @bam_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 44
  %115 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @bam_slave_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 45
  %116 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @bam_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 46
  %117 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @bam_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 47
  %118 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @bam_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 50
  %119 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @bam_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.bam_device, ptr %call.i, i32 0, i32 2, i32 49
  %120 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @bam_tx_status, ptr %device_tx_status, align 4
  %121 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev2, align 4
  %123 = ptrtoint ptr %dev116 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %dev116, align 4
  %call147 = tail call i32 @dma_async_device_register(ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end154, label %do.end152

do.end152:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.29) #10
  br label %err_bam_channel_exit

if.end154:                                        ; preds = %if.end126
  %126 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %of_node, align 8
  %call158 = tail call i32 @of_dma_controller_register(ptr noundef %127, ptr noundef nonnull @bam_dma_xlate, ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %err_unregister_dma

if.end161:                                        ; preds = %if.end154
  %128 = ptrtoint ptr %bamclk78 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bamclk78, align 4
  %tobool163.not = icmp eq ptr %129, null
  br i1 %tobool163.not, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

if.end166:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_runtime_irq_safe(ptr noundef %dev) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i315 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %130 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store volatile i64 %call.i315, ptr %last_busy.i, align 8
  %call.i316 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %cleanup

err_unregister_dma:                               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_async_device_unregister(ptr noundef %common) #7
  br label %err_bam_channel_exit

err_bam_channel_exit:                             ; preds = %err_unregister_dma, %do.end152, %do.end124, %for.end.err_bam_channel_exit_crit_edge
  %ret.0 = phi i32 [ %call.i311, %for.end.err_bam_channel_exit_crit_edge ], [ -5, %do.end124 ], [ %call147, %do.end152 ], [ %call158, %err_unregister_dma ]
  %131 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp177329.not = icmp eq i32 %132, 0
  br i1 %cmp177329.not, label %err_bam_channel_exit.err_tasklet_kill_crit_edge, label %err_bam_channel_exit.for.body178_crit_edge

err_bam_channel_exit.for.body178_crit_edge:       ; preds = %err_bam_channel_exit
  br label %for.body178

err_bam_channel_exit.err_tasklet_kill_crit_edge:  ; preds = %err_bam_channel_exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_tasklet_kill

for.body178:                                      ; preds = %for.body178.for.body178_crit_edge, %err_bam_channel_exit.for.body178_crit_edge
  %i.1330 = phi i32 [ %inc183, %for.body178.for.body178_crit_edge ], [ 0, %err_bam_channel_exit.for.body178_crit_edge ]
  %133 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %channels, align 4
  %task181 = getelementptr %struct.bam_chan, ptr %134, i32 %i.1330, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task181) #7
  %inc183 = add nuw i32 %i.1330, 1
  %135 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_channels.i, align 4
  %cmp177 = icmp ult i32 %inc183, %136
  br i1 %cmp177, label %for.body178.for.body178_crit_edge, label %for.body178.err_tasklet_kill_crit_edge

for.body178.err_tasklet_kill_crit_edge:           ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_tasklet_kill

for.body178.for.body178_crit_edge:                ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body178

err_tasklet_kill:                                 ; preds = %for.body178.err_tasklet_kill_crit_edge, %err_bam_channel_exit.err_tasklet_kill_crit_edge, %devm_kcalloc.exit.err_tasklet_kill_crit_edge, %devm_kcalloc.exit.thread
  %ret.1 = phi i32 [ -12, %devm_kcalloc.exit.err_tasklet_kill_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %ret.0, %err_bam_channel_exit.err_tasklet_kill_crit_edge ], [ %ret.0, %for.body178.err_tasklet_kill_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %task) #7
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_tasklet_kill, %if.end.i309.err_disable_clk_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_tasklet_kill ], [ -22, %if.end.i309.err_disable_clk_crit_edge ]
  %137 = ptrtoint ptr %bamclk78 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bamclk78, align 4
  tail call void @clk_disable(ptr noundef %138) #7
  tail call void @clk_unprepare(ptr noundef %138) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end166, %if.then164, %do.end90, %if.then80, %do.end30, %if.end17.cleanup_crit_edge, %if.then14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then14 ], [ %call.i.i, %do.end30 ], [ %37, %if.then80 ], [ %retval.0.i.ph, %do.end90 ], [ %ret.2, %err_disable_clk ], [ 0, %if.end166 ], [ 0, %if.then164 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #7
  %common = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 2
  tail call void @dma_async_device_unregister(ptr noundef %common) #7
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %5, i32 12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %5, i32 12, i32 3
  %7 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %r.sroa.0.0.copyload.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %11, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #7, !srcloc !107
  %dev4 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  %irq = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %13, i32 noundef %15, ptr noundef %1) #7
  %num_channels = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp39.not = icmp eq i32 %17, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.bam_chan, ptr %19, i32 %i.040
  %call5 = tail call i32 @bam_dma_terminate_all(ptr noundef %arrayidx)
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channels, align 4
  %task = getelementptr %struct.bam_chan, ptr %21, i32 %i.040, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #7
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channels, align 4
  %fifo_virt = getelementptr %struct.bam_chan, ptr %23, i32 %i.040, i32 4
  %24 = ptrtoint ptr %fifo_virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fifo_virt, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev4, align 4
  %fifo_phys = getelementptr %struct.bam_chan, ptr %23, i32 %i.040, i32 5
  %28 = ptrtoint ptr %fifo_phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fifo_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %27, i32 noundef 32768, ptr noundef nonnull %25, i32 noundef %29, i32 noundef 4) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.040, 1
  %30 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %task17 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 13
  tail call void @tasklet_kill(ptr noundef %task17) #7
  %bamclk = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %bamclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bamclk, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  tail call void @clk_unprepare(ptr noundef %33) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_tasklet(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_channels = getelementptr i8, ptr %t, i32 -32
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr i8, ptr %t, i32 -36
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.bam_chan, ptr %3, i32 %i.024
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 6
  %4 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i.not = icmp eq ptr %5, %desc_issued
  br i1 %cmp.i.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %head = getelementptr %struct.bam_chan, ptr %3, i32 %i.024, i32 6
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %head, align 4
  %conv9 = zext i16 %7 to i32
  %tail = getelementptr %struct.bam_chan, ptr %3, i32 %i.024, i32 7
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tail, align 2
  %conv10 = zext i16 %9 to i32
  %add.neg = xor i32 %conv10, -1
  %sub = add nsw i32 %add.neg, %conv9
  %and = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bam_start_dma(ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %inc = add nuw i32 %i.024, 1
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @process_channel_irqs(ptr noundef %data)
  %and = and i32 %call, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.bam_device, ptr %data, i32 0, i32 13, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %task = getelementptr inbounds %struct.bam_device, ptr %data, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %task) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.bam_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %bam_pm_runtime_get_sync.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

bam_pm_runtime_get_sync.exit:                     ; preds = %if.end
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %bam_pm_runtime_get_sync.exit.cleanup_crit_edge, label %bam_pm_runtime_get_sync.exit.if.end3_crit_edge

bam_pm_runtime_get_sync.exit.if.end3_crit_edge:   ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

bam_pm_runtime_get_sync.exit.cleanup_crit_edge:   ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %bam_pm_runtime_get_sync.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool5.not = icmp sgt i32 %call, -1
  br i1 %tobool5.not, label %if.end3.if.end10_crit_edge, label %if.then6

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %4, i32 7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %4, i32 7, i32 3
  %6 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %r.sroa.0.0.copyload.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %10, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul4.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layout.i, align 4
  %arrayidx.i27 = getelementptr %struct.reg_offset_data, ptr %13, i32 8
  %14 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %r.sroa.0.0.copyload.i28 = load i32, ptr %arrayidx.i27, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i33 = getelementptr %struct.reg_offset_data, ptr %13, i32 8, i32 3
  %15 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %r.sroa.9.0.copyload.i34 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i33, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 %r.sroa.0.0.copyload.i28
  %18 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ee.i, align 4
  %mul4.i37 = mul i32 %19, %r.sroa.9.0.copyload.i34
  %add.ptr5.i38 = getelementptr i8, ptr %add.ptr.i35, i32 %mul4.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i38, i32 %11) #7, !srcloc !107
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end3.if.end10_crit_edge
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i39 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i39, ptr %last_busy.i, align 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.i40 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %bam_pm_runtime_get_sync.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %bam_pm_runtime_get_sync.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_alloc_chan(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev1, align 4
  %fifo_virt = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %fifo_virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo_virt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %fifo_phys = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 32768, ptr noundef %fifo_phys, i32 noundef 3264, i32 noundef 4) #7
  %6 = ptrtoint ptr %fifo_virt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %fifo_virt, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %active_channels = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_channels, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %active_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %powered_remotely = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %powered_remotely to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %powered_remotely, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bam_reset(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_free_chan(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev1, align 4
  %dev = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %bam_pm_runtime_get_sync.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

bam_pm_runtime_get_sync.exit:                     ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %bam_pm_runtime_get_sync.exit.cleanup_crit_edge, label %bam_pm_runtime_get_sync.exit.if.end_crit_edge

bam_pm_runtime_get_sync.exit.if.end_crit_edge:    ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

bam_pm_runtime_get_sync.exit.cleanup_crit_edge:   ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bam_pm_runtime_get_sync.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #7
  %5 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head.i, ptr %head.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head.i, ptr %5, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %8 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %9, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.list_splice_tail_init.exit.i.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %11, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %head.i, ptr %13, align 4
  store ptr %13, ptr %5, align 4
  %17 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %18 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %19, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i12.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %21, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %head.i, ptr %23, align 4
  store ptr %23, ptr %5, align 4
  %27 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %28 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %29, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i18.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %29, ptr %31, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head.i, ptr %33, align 4
  store ptr %33, ptr %5, align 4
  %37 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %38 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %39, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i24.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %41, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %head.i, ptr %43, align 4
  store ptr %43, ptr %5, align 4
  %47 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %48 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %49, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i30.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head.i, ptr %53, align 4
  store ptr %53, ptr %5, align 4
  %57 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %58 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %60, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %61 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #7
  %desc_list = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 11
  %62 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %desc_list, align 4
  %cmp.i.not = icmp eq ptr %63, %desc_list
  br i1 %cmp.i.not, label %do.body10, label %do.end

do.end:                                           ; preds = %vchan_free_chan_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bdev1, align 4
  %dev7 = getelementptr inbounds %struct.bam_device, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.36) #10
  br label %err

do.body10:                                        ; preds = %vchan_free_chan_resources.exit
  %call13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  call fastcc void @bam_reset_channel(ptr noundef %chan)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call13) #7
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %fifo_virt = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 4
  %70 = ptrtoint ptr %fifo_virt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fifo_virt, align 4
  %fifo_phys = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 5
  %72 = ptrtoint ptr %fifo_phys to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fifo_phys, align 4
  call void @dma_free_attrs(ptr noundef %69, i32 noundef 32768, ptr noundef %71, i32 noundef %73, i32 noundef 4) #7
  %74 = ptrtoint ptr %fifo_virt to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %fifo_virt, align 4
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 10
  %75 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %76, i32 12
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %76, i32 12, i32 3
  %78 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %80, i32 %r.sroa.0.0.copyload.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %82, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul4.i
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !105
  %84 = call i32 @llvm.bswap.i32(i32 %83)
  %id = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 2
  %85 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %86
  %neg = xor i32 %shl, -1
  %and = and i32 %84, %neg
  %87 = call i32 @llvm.bswap.i32(i32 %and)
  %88 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %layout.i, align 4
  %arrayidx.i71 = getelementptr %struct.reg_offset_data, ptr %89, i32 12
  %90 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %90)
  %r.sroa.0.0.copyload.i72 = load i32, ptr %arrayidx.i71, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i77 = getelementptr %struct.reg_offset_data, ptr %89, i32 12, i32 3
  %91 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i77 to i32
  call void @__asan_load4_noabort(i32 %91)
  %r.sroa.9.0.copyload.i78 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i77, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %add.ptr.i79 = getelementptr i8, ptr %93, i32 %r.sroa.0.0.copyload.i72
  %94 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ee.i, align 4
  %mul4.i81 = mul i32 %95, %r.sroa.9.0.copyload.i78
  %add.ptr5.i82 = getelementptr i8, ptr %add.ptr.i79, i32 %mul4.i81
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i82, i32 %87) #7, !srcloc !107
  %96 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %id, align 4
  %98 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %layout.i, align 4
  %arrayidx.i84 = getelementptr %struct.reg_offset_data, ptr %99, i32 18
  %100 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %100)
  %r.sroa.0.0.copyload.i85 = load i32, ptr %arrayidx.i84, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i86 = getelementptr %struct.reg_offset_data, ptr %99, i32 18, i32 1
  %101 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i86 to i32
  call void @__asan_load4_noabort(i32 %101)
  %r.sroa.5.0.copyload.i87 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i86, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i88 = getelementptr %struct.reg_offset_data, ptr %99, i32 18, i32 2
  %102 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i88 to i32
  call void @__asan_load4_noabort(i32 %102)
  %r.sroa.7.0.copyload.i89 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i88, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i90 = getelementptr %struct.reg_offset_data, ptr %99, i32 18, i32 3
  %103 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i90 to i32
  call void @__asan_load4_noabort(i32 %103)
  %r.sroa.9.0.copyload.i91 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i90, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %add.ptr.i92 = getelementptr i8, ptr %105, i32 %r.sroa.0.0.copyload.i85
  %mul.i = mul i32 %r.sroa.5.0.copyload.i87, %97
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i92, i32 %mul.i
  %mul2.i = mul i32 %r.sroa.7.0.copyload.i89, %97
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %106 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ee.i, align 4
  %mul4.i94 = mul i32 %107, %r.sroa.9.0.copyload.i91
  %add.ptr5.i95 = getelementptr i8, ptr %add.ptr3.i, i32 %mul4.i94
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i95, i32 0) #7, !srcloc !107
  %active_channels = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 9
  %108 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %active_channels, align 4
  %dec = add i32 %109, -1
  store i32 %dec, ptr %active_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp28 = icmp eq i32 %dec, 0
  br i1 %cmp28, label %land.lhs.true, label %do.body10.err_crit_edge

do.body10.err_crit_edge:                          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

land.lhs.true:                                    ; preds = %do.body10
  %powered_remotely = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 8
  %110 = ptrtoint ptr %powered_remotely to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %powered_remotely, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool30.not = icmp eq i8 %111, 0
  br i1 %tobool30.not, label %land.lhs.true.err_crit_edge, label %if.then32

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %layout.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %r.sroa.0.0.copyload.i97 = load i32, ptr %113, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i102 = getelementptr inbounds i8, ptr %113, i32 12
  %115 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i102 to i32
  call void @__asan_load4_noabort(i32 %115)
  %r.sroa.9.0.copyload.i103 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i102, align 4
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %add.ptr.i104 = getelementptr i8, ptr %117, i32 %r.sroa.0.0.copyload.i97
  %118 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ee.i, align 4
  %mul4.i106 = mul i32 %119, %r.sroa.9.0.copyload.i103
  %add.ptr5.i107 = getelementptr i8, ptr %add.ptr.i104, i32 %mul4.i106
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i107) #7, !srcloc !105
  %121 = or i32 %120, 16777216
  %122 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %layout.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %r.sroa.0.0.copyload.i109 = load i32, ptr %123, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i114 = getelementptr inbounds i8, ptr %123, i32 12
  %125 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i114 to i32
  call void @__asan_load4_noabort(i32 %125)
  %r.sroa.9.0.copyload.i115 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i114, align 4
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %add.ptr.i116 = getelementptr i8, ptr %127, i32 %r.sroa.0.0.copyload.i109
  %128 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ee.i, align 4
  %mul4.i118 = mul i32 %129, %r.sroa.9.0.copyload.i115
  %add.ptr5.i119 = getelementptr i8, ptr %add.ptr.i116, i32 %mul4.i118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i119, i32 %121) #7, !srcloc !107
  br label %err

err:                                              ; preds = %if.then32, %land.lhs.true.err_crit_edge, %do.body10.err_crit_edge, %do.end
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  %call.i = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %131, i32 0, i32 12, i32 22
  %132 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %call.i120 = call i32 @__pm_runtime_suspend(ptr noundef %134, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %bam_pm_runtime_get_sync.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bam_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp100.not = icmp eq i32 %sg_len, 0
  br i1 %cmp100.not, label %for.cond.preheader.if.end8.i.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8.i.i_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev1, align 4
  %dev = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %num_alloc.0103 = phi i32 [ %add3, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %sg.0101 = phi ptr [ %call4, %for.body.for.body_crit_edge ], [ %sgl, %for.cond.preheader.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0101, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  %sub = add i32 %7, 32759
  %div = udiv i32 %sub, 32760
  %add3 = add i32 %div, %num_alloc.0103
  %inc = add nuw i32 %i.0102, 1
  %call4 = tail call ptr @sg_next(ptr noundef %sg.0101) #7
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.body.if.end8.i.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end8.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body.if.end8.i.i_crit_edge, %for.cond.preheader.if.end8.i.i_crit_edge
  %num_alloc.0.lcssa = phi i32 [ 0, %for.cond.preheader.if.end8.i.i_crit_edge ], [ %add3, %for.body.if.end8.i.i_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_alloc.0.lcssa, i32 8) #7
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 148) #7
  %retval.0.i = select i1 %9, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i.i
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %flags11 = getelementptr inbounds %struct.bam_async_desc, ptr %call9.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags11, align 4
  %13 = or i16 %12, 4096
  store i16 %13, ptr %flags11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %and14 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end21_crit_edge, label %if.then16

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %flags17 = getelementptr inbounds %struct.bam_async_desc, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %flags17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags17, align 4
  %16 = or i16 %15, 16384
  store i16 %16, ptr %flags17, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end13.if.end21_crit_edge
  %num_desc = getelementptr inbounds %struct.bam_async_desc, ptr %call9.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %num_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %num_alloc.0.lcssa, ptr %num_desc, align 4
  %desc22 = getelementptr inbounds %struct.bam_async_desc, ptr %call9.i.i, i32 0, i32 8
  %curr_desc = getelementptr inbounds %struct.bam_async_desc, ptr %call9.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %curr_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %desc22, ptr %curr_desc, align 128
  %dir = getelementptr inbounds %struct.bam_async_desc, ptr %call9.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %direction, ptr %dir, align 4
  br i1 %cmp100.not, label %if.end21.for.end58_crit_edge, label %for.body28.lr.ph

if.end21.for.end58_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58

for.body28.lr.ph:                                 ; preds = %if.end21
  %and31 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %length = getelementptr inbounds %struct.bam_async_desc, ptr %call9.i.i, i32 0, i32 7
  br label %for.body28

for.body28:                                       ; preds = %do.end54.for.body28_crit_edge, %for.body28.lr.ph
  %desc.0107 = phi ptr [ %desc22, %for.body28.lr.ph ], [ %incdec.ptr, %do.end54.for.body28_crit_edge ]
  %i.1106 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc56, %do.end54.for.body28_crit_edge ]
  %sg.1105 = phi ptr [ %sgl, %for.body28.lr.ph ], [ %call57, %do.end54.for.body28_crit_edge ]
  %dma_length29 = getelementptr inbounds %struct.scatterlist, ptr %sg.1105, i32 0, i32 4
  %20 = ptrtoint ptr %dma_length29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length29, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1105, i32 0, i32 3
  br label %do.body30

do.body30:                                        ; preds = %if.end38.do.body30_crit_edge, %for.body28
  %desc.1 = phi ptr [ %desc.0107, %for.body28 ], [ %incdec.ptr, %if.end38.do.body30_crit_edge ]
  %remainder.0 = phi i32 [ %21, %for.body28 ], [ %30, %if.end38.do.body30_crit_edge ]
  %curr_offset.0 = phi i32 [ 0, %for.body28 ], [ %curr_offset.1, %if.end38.do.body30_crit_edge ]
  br i1 %tobool32.not, label %do.body30.if.end38_crit_edge, label %if.then33

do.body30.if.end38_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then33:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %flags34 = getelementptr inbounds %struct.bam_desc_hw, ptr %desc.1, i32 0, i32 2
  %22 = ptrtoint ptr %flags34 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags34, align 2
  %24 = or i16 %23, 8
  store i16 %24, ptr %flags34, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body30.if.end38_crit_edge
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  %add39 = add i32 %26, %curr_offset.0
  %27 = tail call i32 @llvm.bswap.i32(i32 %add39)
  %28 = ptrtoint ptr %desc.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %desc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32760, i32 %remainder.0)
  %cmp40 = icmp ugt i32 %remainder.0, 32760
  %add44 = add i32 %curr_offset.0, 32760
  %conv45 = trunc i32 %remainder.0 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv45)
  %.sink = select i1 %cmp40, i16 -1921, i16 %29
  %30 = call i32 @llvm.usub.sat.i32(i32 %remainder.0, i32 32760)
  %curr_offset.1 = select i1 %cmp40, i32 %add44, i32 %curr_offset.0
  %31 = getelementptr inbounds %struct.bam_desc_hw, ptr %desc.1, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %.sink, ptr %31, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %.sink)
  %conv49 = zext i16 %33 to i32
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 16
  %add50 = add i32 %35, %conv49
  store i32 %add50, ptr %length, align 16
  %incdec.ptr = getelementptr %struct.bam_desc_hw, ptr %desc.1, i32 1
  %cmp52.not = icmp ult i32 %remainder.0, 32761
  br i1 %cmp52.not, label %do.end54, label %if.end38.do.body30_crit_edge

if.end38.do.body30_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

do.end54:                                         ; preds = %if.end38
  %inc56 = add nuw i32 %i.1106, 1
  %call57 = tail call ptr @sg_next(ptr noundef %sg.1105) #7
  %exitcond108.not = icmp eq i32 %inc56, %sg_len
  br i1 %exitcond108.not, label %do.end54.for.end58_crit_edge, label %do.end54.for.body28_crit_edge

do.end54.for.body28_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

do.end54.for.end58_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58

for.end58:                                        ; preds = %do.end54.for.end58_crit_edge, %if.end21.for.end58_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #7
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %42, ptr noundef %desc_allocated.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end58.vchan_tx_prep.exit_crit_edge

for.end58.vchan_tx_prep.exit_crit_edge:           ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node.i, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 16
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node.i, ptr %42, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end58.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_slave_config(ptr noundef %chan, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %slave = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %slave, ptr %cfg, i32 48)
  %reconfigure = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 10
  %1 = ptrtoint ptr %reconfigure to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %reconfigure, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev1, align 4
  %dev = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %bam_pm_runtime_get_sync.exit, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

bam_pm_runtime_get_sync.exit:                     ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %bam_pm_runtime_get_sync.exit.cleanup_crit_edge, label %bam_pm_runtime_get_sync.exit.do.body3_crit_edge

bam_pm_runtime_get_sync.exit.do.body3_crit_edge:  ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

bam_pm_runtime_get_sync.exit.cleanup_crit_edge:   ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3:                                         ; preds = %bam_pm_runtime_get_sync.exit.do.body3_crit_edge, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %id = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15, i32 1
  %10 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %r.sroa.5.0.copyload.i = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15, i32 2
  %11 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %r.sroa.7.0.copyload.i = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15, i32 3
  %12 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %r.sroa.0.0.copyload.i
  %mul.i = mul i32 %r.sroa.5.0.copyload.i, %6
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %mul2.i = mul i32 %r.sroa.7.0.copyload.i, %6
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %16, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr3.i, i32 %mul4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16777216) #7, !srcloc !107
  %paused = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 9
  %17 = ptrtoint ptr %paused to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %paused, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i26 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %bam_pm_runtime_get_sync.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body3 ], [ %call.i.i, %bam_pm_runtime_get_sync.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev1, align 4
  %dev = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %bam_pm_runtime_get_sync.exit, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

bam_pm_runtime_get_sync.exit:                     ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %bam_pm_runtime_get_sync.exit.cleanup_crit_edge, label %bam_pm_runtime_get_sync.exit.do.body3_crit_edge

bam_pm_runtime_get_sync.exit.do.body3_crit_edge:  ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

bam_pm_runtime_get_sync.exit.cleanup_crit_edge:   ; preds = %bam_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3:                                         ; preds = %bam_pm_runtime_get_sync.exit.do.body3_crit_edge, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %id = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15, i32 1
  %10 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %r.sroa.5.0.copyload.i = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15, i32 2
  %11 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %r.sroa.7.0.copyload.i = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 15, i32 3
  %12 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %r.sroa.0.0.copyload.i
  %mul.i = mul i32 %r.sroa.5.0.copyload.i, %6
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %mul2.i = mul i32 %r.sroa.7.0.copyload.i, %6
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %16, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr3.i, i32 %mul4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #7, !srcloc !107
  %paused = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 9
  %17 = ptrtoint ptr %paused to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %paused, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i26 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %bam_pm_runtime_get_sync.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body3 ], [ %call.i.i, %bam_pm_runtime_get_sync.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %desc_list = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 11
  %3 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_list, align 4
  %cmp.i.not = icmp eq ptr %4, %desc_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dir = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dir, align 4
  call fastcc void @bam_chan_init_hw(ptr noundef %chan, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc_list, align 4
  %cmp22.not53 = icmp eq ptr %8, %desc_list
  br i1 %cmp22.not53, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in54 = phi ptr [ %8, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in54, align 4
  %node = getelementptr i8, ptr %.pn.in54, i32 -24
  %10 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_issued, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %desc_issued, ptr noundef %11) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %node, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn.in54, i32 -20
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %desc_issued, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %desc_issued to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node, ptr %desc_issued, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.body.list_add.exit_crit_edge
  %call.i.i50 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in54) #7
  br i1 %call.i.i50, label %if.end.i.i51, label %list_add.exit.list_del.exit_crit_edge

list_add.exit.list_del.exit_crit_edge:            ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i51:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in54, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i51, %list_add.exit.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in54, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp22.not = icmp eq ptr %.pn, %desc_list
  br i1 %cmp22.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %24 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %25, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %for.end.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

for.end.list_splice_tail_init.exit.i_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %27, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %head, ptr %29, align 4
  store ptr %29, ptr %0, align 4
  %33 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %for.end.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %34 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %35, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i12.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %35, ptr %37, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %head, ptr %39, align 4
  store ptr %39, ptr %0, align 4
  %43 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %44 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %45, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i18.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %47, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %head, ptr %49, align 4
  store ptr %49, ptr %0, align 4
  %53 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %54 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %55, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i24.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %55, ptr %57, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %head, ptr %59, align 4
  store ptr %59, ptr %0, align 4
  %63 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %64 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %65, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i30.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %65, ptr %67, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %head, ptr %69, align 4
  store ptr %69, ptr %0, align 4
  %73 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %head = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 6
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head, align 4
  %conv9 = zext i16 %13 to i32
  %tail = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 7
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tail, align 2
  %conv10 = zext i16 %15 to i32
  %add.neg = xor i32 %conv10, -1
  %sub = add nsw i32 %add.neg, %conv9
  %and = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bam_start_dma(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !109
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  br i1 %tobool.not.i, label %if.end.cleanup.sink.split_crit_edge, label %do.body5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call12 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.bam_async_desc, ptr %call12, i32 0, i32 7
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  br label %dma_set_residue.exit

if.else:                                          ; preds = %do.body5
  %desc_list = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 11
  %10 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn86 = load ptr, ptr %desc_list, align 4
  %cmp20.not87 = icmp eq ptr %.pn86, %desc_list
  br i1 %cmp20.not87, label %if.else.dma_set_residue.exit_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_residue.exit

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %if.else.for.body_crit_edge
  %.pn89 = phi ptr [ %.pn, %for.inc33.for.body_crit_edge ], [ %.pn86, %if.else.for.body_crit_edge ]
  %residue.088 = phi i32 [ %residue.2, %for.inc33.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %async_desc.0 = getelementptr i8, ptr %.pn89, i32 -132
  %11 = ptrtoint ptr %async_desc.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %async_desc.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cookie)
  %cmp24.not = icmp eq i32 %12, %cookie
  br i1 %cmp24.not, label %for.cond28.preheader, label %for.body.for.inc33_crit_edge

for.body.for.inc33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33

for.cond28.preheader:                             ; preds = %for.body
  %num_desc = getelementptr i8, ptr %.pn89, i32 -16
  %13 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2983.not = icmp eq i32 %14, 0
  br i1 %cmp2983.not, label %for.cond28.preheader.for.inc33_crit_edge, label %for.body31.lr.ph

for.cond28.preheader.for.inc33_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33

for.body31.lr.ph:                                 ; preds = %for.cond28.preheader
  %curr_desc = getelementptr i8, ptr %.pn89, i32 -4
  %15 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %curr_desc, align 4
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %residue.185 = phi i32 [ %residue.088, %for.body31.lr.ph ], [ %add, %for.body31.for.body31_crit_edge ]
  %i.084 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc, %for.body31.for.body31_crit_edge ]
  %size = getelementptr %struct.bam_desc_hw, ptr %16, i32 %i.084, i32 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %size, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv32 = zext i16 %19 to i32
  %add = add i32 %residue.185, %conv32
  %inc = add nuw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.body31.for.inc33_crit_edge, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

for.body31.for.inc33_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33

for.inc33:                                        ; preds = %for.body31.for.inc33_crit_edge, %for.cond28.preheader.for.inc33_crit_edge, %for.body.for.inc33_crit_edge
  %residue.2 = phi i32 [ %residue.088, %for.body.for.inc33_crit_edge ], [ %residue.088, %for.cond28.preheader.for.inc33_crit_edge ], [ %add, %for.body31.for.inc33_crit_edge ]
  %20 = ptrtoint ptr %.pn89 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn89, align 4
  %cmp20.not = icmp eq ptr %.pn, %desc_list
  br i1 %cmp20.not, label %for.inc33.dma_set_residue.exit_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc33.dma_set_residue.exit_crit_edge:         ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %for.inc33.dma_set_residue.exit_crit_edge, %if.else.dma_set_residue.exit_crit_edge, %if.then14
  %residue.3 = phi i32 [ %9, %if.then14 ], [ 0, %if.else.dma_set_residue.exit_crit_edge ], [ %residue.2, %for.inc33.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %21 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %residue.3, ptr %residue1.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %dma_set_residue.exit, %if.end.cleanup.sink.split_crit_edge
  %paused45 = getelementptr inbounds %struct.bam_chan, ptr %chan, i32 0, i32 9
  %22 = ptrtoint ptr %paused45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paused45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool46.not = icmp eq i32 %23, 0
  %ret.0 = select i1 %tobool46.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ], [ %ret.0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bam_dma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %of) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %of, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %num_channels = getelementptr i8, ptr %1, i32 368
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %channels = getelementptr i8, ptr %1, i32 364
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels, align 4
  %arrayidx4 = getelementptr %struct.bam_chan, ptr %9, i32 %5
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %arrayidx4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_reset(ptr noundef readonly %bdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %bdev, i32 0, i32 10
  %0 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %r.sroa.0.0.copyload.i = load i32, ptr %1, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %1, i32 12
  %3 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %r.sroa.0.0.copyload.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %bdev, i32 0, i32 6
  %6 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %7, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul4.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !105
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %layout.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %r.sroa.0.0.copyload.i23 = load i32, ptr %11, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i28 = getelementptr inbounds i8, ptr %11, i32 12
  %13 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %r.sroa.9.0.copyload.i29 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i28, align 4
  %14 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev, align 4
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 %r.sroa.0.0.copyload.i23
  %16 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ee.i, align 4
  %mul4.i32 = mul i32 %17, %r.sroa.9.0.copyload.i29
  %add.ptr5.i33 = getelementptr i8, ptr %add.ptr.i30, i32 %mul4.i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i33, i32 %9) #7, !srcloc !107
  %18 = and i32 %8, -16777217
  %19 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %layout.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %r.sroa.0.0.copyload.i35 = load i32, ptr %20, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i40 = getelementptr inbounds i8, ptr %20, i32 12
  %22 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %r.sroa.9.0.copyload.i41 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i40, align 4
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev, align 4
  %add.ptr.i42 = getelementptr i8, ptr %24, i32 %r.sroa.0.0.copyload.i35
  %25 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ee.i, align 4
  %mul4.i44 = mul i32 %26, %r.sroa.9.0.copyload.i41
  %add.ptr5.i45 = getelementptr i8, ptr %add.ptr.i42, i32 %mul4.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i45, i32 %18) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %27 = or i32 %18, 33554432
  %28 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %layout.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %r.sroa.0.0.copyload.i47 = load i32, ptr %29, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i52 = getelementptr inbounds i8, ptr %29, i32 12
  %31 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %r.sroa.9.0.copyload.i53 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i52, align 4
  %32 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdev, align 4
  %add.ptr.i54 = getelementptr i8, ptr %33, i32 %r.sroa.0.0.copyload.i47
  %34 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ee.i, align 4
  %mul4.i56 = mul i32 %35, %r.sroa.9.0.copyload.i53
  %add.ptr5.i57 = getelementptr i8, ptr %add.ptr.i54, i32 %mul4.i56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i57, i32 %27) #7, !srcloc !107
  %36 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %r.sroa.0.0.copyload.i59 = load i32, ptr %arrayidx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i64 = getelementptr %struct.reg_offset_data, ptr %37, i32 3, i32 3
  %39 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %r.sroa.9.0.copyload.i65 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i64, align 4
  %40 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev, align 4
  %add.ptr.i66 = getelementptr i8, ptr %41, i32 %r.sroa.0.0.copyload.i59
  %42 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ee.i, align 4
  %mul4.i68 = mul i32 %43, %r.sroa.9.0.copyload.i65
  %add.ptr5.i69 = getelementptr i8, ptr %add.ptr.i66, i32 %mul4.i68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i69, i32 67108864) #7, !srcloc !107
  %44 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %layout.i, align 4
  %arrayidx.i71 = getelementptr %struct.reg_offset_data, ptr %45, i32 10
  %46 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %r.sroa.0.0.copyload.i72 = load i32, ptr %arrayidx.i71, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i77 = getelementptr %struct.reg_offset_data, ptr %45, i32 10, i32 3
  %47 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %r.sroa.9.0.copyload.i78 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i77, align 4
  %48 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev, align 4
  %add.ptr.i79 = getelementptr i8, ptr %49, i32 %r.sroa.0.0.copyload.i72
  %50 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ee.i, align 4
  %mul4.i81 = mul i32 %51, %r.sroa.9.0.copyload.i78
  %add.ptr5.i82 = getelementptr i8, ptr %add.ptr.i79, i32 %mul4.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i82, i32 82902799) #7, !srcloc !107
  %52 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %layout.i, align 4
  %arrayidx.i84 = getelementptr %struct.reg_offset_data, ptr %53, i32 9
  %54 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %r.sroa.0.0.copyload.i85 = load i32, ptr %arrayidx.i84, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i90 = getelementptr %struct.reg_offset_data, ptr %53, i32 9, i32 3
  %55 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %r.sroa.9.0.copyload.i91 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i90, align 4
  %56 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev, align 4
  %add.ptr.i92 = getelementptr i8, ptr %57, i32 %r.sroa.0.0.copyload.i85
  %58 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ee.i, align 4
  %mul4.i94 = mul i32 %59, %r.sroa.9.0.copyload.i91
  %add.ptr5.i95 = getelementptr i8, ptr %add.ptr.i92, i32 %mul4.i94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i95, i32 100663296) #7, !srcloc !107
  %60 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %layout.i, align 4
  %arrayidx.i97 = getelementptr %struct.reg_offset_data, ptr %61, i32 12
  %62 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %r.sroa.0.0.copyload.i98 = load i32, ptr %arrayidx.i97, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i103 = getelementptr %struct.reg_offset_data, ptr %61, i32 12, i32 3
  %63 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %r.sroa.9.0.copyload.i104 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i103, align 4
  %64 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bdev, align 4
  %add.ptr.i105 = getelementptr i8, ptr %65, i32 %r.sroa.0.0.copyload.i98
  %66 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ee.i, align 4
  %mul4.i107 = mul i32 %67, %r.sroa.9.0.copyload.i104
  %add.ptr5.i108 = getelementptr i8, ptr %add.ptr.i105, i32 %mul4.i107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i108, i32 128) #7, !srcloc !107
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_start_dma(ptr noundef %bchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %bchan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 1
  %2 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev1, align 4
  %fifo_virt = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 4
  %4 = ptrtoint ptr %fifo_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo_virt, align 4
  %6 = ptrtoint ptr %5 to i32
  %add = add i32 %6, 7
  %and = and i32 %add, -8
  %7 = inttoptr i32 %and to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.virt_dma_chan, ptr %bchan, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !106

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1035, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool27.not224 = icmp eq ptr %add.ptr.i, null
  %tobool27.not = or i1 %cmp.not.i, %tobool27.not224
  br i1 %tobool27.not, label %if.end.cleanup_crit_edge, label %if.end29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end29.land.rhs35.lr.ph_crit_edge

if.end29.land.rhs35.lr.ph_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs35.lr.ph

if.then.i:                                        ; preds = %if.end29
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp = icmp slt i32 %call.i.i, 0
  br i1 %phi.cmp, label %if.then.i.cleanup_crit_edge, label %if.then.i.land.rhs35.lr.ph_crit_edge

if.then.i.land.rhs35.lr.ph_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs35.lr.ph

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs35.lr.ph:                                 ; preds = %if.then.i.land.rhs35.lr.ph_crit_edge, %if.end29.land.rhs35.lr.ph_crit_edge
  %head = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 6
  %tail = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 7
  %initialized = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 8
  %reconfigure = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 10
  %src_maxburst.i = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 3, i32 5
  %dst_maxburst.i = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 3, i32 6
  %desc_list = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 11
  %prev.i216 = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 11, i32 1
  br label %land.rhs35

land.rhs35:                                       ; preds = %list_add_tail.exit.land.rhs35_crit_edge, %land.rhs35.lr.ph
  %vd.0226 = phi ptr [ %add.ptr.i, %land.rhs35.lr.ph ], [ %add.ptr.i212, %list_add_tail.exit.land.rhs35_crit_edge ]
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head, align 4
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tail, align 2
  %conv36 = zext i16 %15 to i32
  %add37.neg = xor i32 %conv36, -1
  %sub = add nsw i32 %add37.neg, %conv
  %and38 = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %cmp39.not = icmp eq i32 %and38, 0
  br i1 %cmp39.not, label %land.rhs35.do.body131_crit_edge, label %while.body

land.rhs35.do.body131_crit_edge:                  ; preds = %land.rhs35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

while.body:                                       ; preds = %land.rhs35
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %vd.0226, i32 0, i32 2
  %call.i.i208 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i208, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %vd.0226, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %vd.0226, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %24 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool45.not = icmp eq i32 %25, 0
  br i1 %tobool45.not, label %if.then46, label %list_del.exit.if.end47_crit_edge

list_del.exit.if.end47_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then46:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dir = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 6
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir, align 4
  tail call fastcc void @bam_chan_init_hw(ptr noundef %bchan, i32 noundef %27)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %list_del.exit.if.end47_crit_edge
  %28 = ptrtoint ptr %reconfigure to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reconfigure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool48.not = icmp eq i32 %29, 0
  br i1 %tobool48.not, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  %30 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev1, align 4
  %controlled_remotely.i = getelementptr inbounds %struct.bam_device, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %controlled_remotely.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %controlled_remotely.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.then.i209, label %if.then49.bam_apply_new_config.exit_crit_edge

if.then49.bam_apply_new_config.exit_crit_edge:    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %bam_apply_new_config.exit

if.then.i209:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %dir50 = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 6
  %34 = ptrtoint ptr %dir50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dir50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i = icmp eq i32 %35, 2
  %maxburst.0.in.i = select i1 %cmp.i, ptr %src_maxburst.i, ptr %dst_maxburst.i
  %36 = ptrtoint ptr %maxburst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %maxburst.0.i = load i32, ptr %maxburst.0.in.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %maxburst.0.i) #7
  %layout.i.i = getelementptr inbounds %struct.bam_device, ptr %31, i32 0, i32 10
  %38 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %layout.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.reg_offset_data, ptr %39, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %r.sroa.0.0.copyload.i.i = load i32, ptr %arrayidx.i.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i.i = getelementptr %struct.reg_offset_data, ptr %39, i32 3, i32 3
  %41 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %r.sroa.9.0.copyload.i.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i.i, align 4
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %31, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %r.sroa.0.0.copyload.i.i
  %ee.i.i = getelementptr inbounds %struct.bam_device, ptr %31, i32 0, i32 6
  %44 = ptrtoint ptr %ee.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ee.i.i, align 4
  %mul4.i.i = mul i32 %45, %r.sroa.9.0.copyload.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %37) #7, !srcloc !107
  br label %bam_apply_new_config.exit

bam_apply_new_config.exit:                        ; preds = %if.then.i209, %if.then49.bam_apply_new_config.exit_crit_edge
  %46 = ptrtoint ptr %reconfigure to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %reconfigure, align 4
  br label %if.end51

if.end51:                                         ; preds = %bam_apply_new_config.exit, %if.end47.if.end51_crit_edge
  %curr_desc = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 4
  %47 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curr_desc, align 4
  %49 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %head, align 4
  %conv53 = zext i16 %50 to i32
  %51 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tail, align 2
  %conv55 = zext i16 %52 to i32
  %add56.neg = xor i32 %conv55, -1
  %sub57 = add nsw i32 %add56.neg, %conv53
  %and58 = and i32 %sub57, 4095
  %num_desc = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 1
  %53 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_desc, align 4
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 %and58)
  %56 = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %and58)
  %cmp67.not = icmp ugt i32 %54, %and58
  br i1 %cmp67.not, label %if.end51.if.end76_crit_edge, label %if.then69

if.end51.if.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then69:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 3
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flags, align 4
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %sub72 = add nsw i32 %55, -1
  %flags73 = getelementptr %struct.bam_desc_hw, ptr %48, i32 %sub72, i32 2
  %61 = ptrtoint ptr %flags73 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags73, align 2
  %or207 = or i16 %62, %60
  store i16 %or207, ptr %flags73, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %if.end51.if.end76_crit_edge
  %63 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i211 = icmp eq ptr %64, %desc_issued.i
  %add.ptr.i212 = getelementptr i8, ptr %64, i32 -108
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd.0226, i32 0, i32 6
  %65 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd.0226, i32 0, i32 7
  %67 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %callback_result.i, align 4
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and58, i32 %70)
  %cmp81.not = icmp ule i32 %and58, %70
  %tobool83.not228 = icmp eq ptr %add.ptr.i212, null
  %tobool83.not = or i1 %cmp.not.i211, %tobool83.not228
  %or.cond = select i1 %cmp81.not, i1 true, i1 %tobool83.not
  %tobool.not.i214 = icmp ne ptr %66, null
  %or.cond222 = select i1 %or.cond, i1 true, i1 %tobool.not.i214
  %tobool1.i = icmp ne ptr %68, null
  %or.cond223 = select i1 %or.cond222, i1 true, i1 %tobool1.i
  br i1 %or.cond223, label %land.lhs.true, label %if.end76.if.end99_crit_edge

if.end76.if.end99_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end76
  %flags87 = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 3
  %71 = ptrtoint ptr %flags87 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %flags87, align 4
  %73 = and i16 %72, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool90.not = icmp eq i16 %73, 0
  br i1 %tobool90.not, label %if.then91, label %land.lhs.true.if.end99_crit_edge

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then91:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub93 = add i32 %70, -1
  %flags95 = getelementptr %struct.bam_desc_hw, ptr %48, i32 %sub93, i32 2
  %74 = ptrtoint ptr %flags95 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flags95, align 2
  %76 = or i16 %75, 128
  store i16 %76, ptr %flags95, align 2
  br label %if.end99

if.end99:                                         ; preds = %if.then91, %land.lhs.true.if.end99_crit_edge, %if.end76.if.end99_crit_edge
  %77 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tail, align 2
  %conv101 = zext i16 %78 to i32
  %79 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %56, align 4
  %add103 = add i32 %80, %conv101
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add103)
  %cmp104 = icmp ugt i32 %add103, 4095
  br i1 %cmp104, label %if.then106, label %if.else116

if.then106:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %sub109 = sub nsw i32 4095, %conv101
  %arrayidx111 = getelementptr %struct.bam_desc_hw, ptr %7, i32 %conv101
  %mul = shl nsw i32 %sub109, 3
  %81 = call ptr @memcpy(ptr %arrayidx111, ptr %48, i32 %mul)
  %arrayidx112 = getelementptr %struct.bam_desc_hw, ptr %48, i32 %sub109
  %82 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %56, align 4
  %sub114 = sub i32 %83, %sub109
  %mul115 = shl i32 %sub114, 3
  %84 = call ptr @memcpy(ptr %7, ptr %arrayidx112, i32 %mul115)
  br label %if.end122

if.else116:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx119 = getelementptr %struct.bam_desc_hw, ptr %7, i32 %conv101
  %mul121 = shl i32 %80, 3
  %85 = call ptr @memcpy(ptr %arrayidx119, ptr %48, i32 %mul121)
  br label %if.end122

if.end122:                                        ; preds = %if.else116, %if.then106
  %86 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %56, align 4
  %88 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %tail, align 2
  %90 = trunc i32 %87 to i16
  %conv127 = add i16 %89, %90
  %91 = urem i16 %conv127, 4095
  store i16 %91, ptr %tail, align 2
  %desc_node = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 5
  %92 = ptrtoint ptr %prev.i216 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i216, align 4
  %call.i.i217 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %93, ptr noundef %desc_list) #7
  br i1 %call.i.i217, label %if.end.i.i218, label %if.end122.list_add_tail.exit_crit_edge

if.end122.list_add_tail.exit_crit_edge:           ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i218:                                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %prev.i216 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %desc_node, ptr %prev.i216, align 4
  %95 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %desc_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.bam_async_desc, ptr %vd.0226, i32 0, i32 5, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %desc_node, ptr %93, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i218, %if.end122.list_add_tail.exit_crit_edge
  br i1 %tobool83.not, label %list_add_tail.exit.do.body131_crit_edge, label %list_add_tail.exit.land.rhs35_crit_edge

list_add_tail.exit.land.rhs35_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs35

list_add_tail.exit.do.body131_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

do.body131:                                       ; preds = %list_add_tail.exit.do.body131_crit_edge, %land.rhs35.do.body131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %tail134 = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 7
  %98 = ptrtoint ptr %tail134 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %tail134, align 2
  %conv135 = zext i16 %99 to i32
  %mul136 = shl nuw nsw i32 %conv135, 3
  %100 = tail call i32 @llvm.bswap.i32(i32 %mul136)
  %id = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 2
  %101 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id, align 4
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 10
  %103 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %104, i32 20
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %104, i32 20, i32 1
  %106 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %r.sroa.5.0.copyload.i = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %104, i32 20, i32 2
  %107 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %r.sroa.7.0.copyload.i = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %104, i32 20, i32 3
  %108 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %3, align 4
  %add.ptr.i219 = getelementptr i8, ptr %110, i32 %r.sroa.0.0.copyload.i
  %mul.i = mul i32 %r.sroa.5.0.copyload.i, %102
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i219, i32 %mul.i
  %mul2.i = mul i32 %r.sroa.7.0.copyload.i, %102
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 6
  %111 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %112, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr3.i, i32 %mul4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %100) #7, !srcloc !107
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %call.i220 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 12, i32 22
  %115 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store volatile i64 %call.i220, ptr %last_busy.i, align 8
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %call.i221 = tail call i32 @__pm_runtime_suspend(ptr noundef %117, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body131, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_chan_init_hw(ptr noundef %bchan, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 1
  %0 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev1, align 4
  tail call fastcc void @bam_reset_channel(ptr noundef %bchan)
  %fifo_phys = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 5
  %2 = ptrtoint ptr %fifo_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_phys, align 4
  %add = add i32 %3, 7
  %and = and i32 %add, -8
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %id = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 23
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 23, i32 1
  %10 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %r.sroa.5.0.copyload.i = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 23, i32 2
  %11 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %r.sroa.7.0.copyload.i = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %8, i32 23, i32 3
  %12 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %r.sroa.0.0.copyload.i
  %mul.i = mul i32 %r.sroa.5.0.copyload.i, %6
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %mul2.i = mul i32 %r.sroa.7.0.copyload.i, %6
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %16, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr3.i, i32 %mul4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %4) #7, !srcloc !107
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %layout.i, align 4
  %arrayidx.i32 = getelementptr %struct.reg_offset_data, ptr %20, i32 25
  %21 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %r.sroa.0.0.copyload.i33 = load i32, ptr %arrayidx.i32, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i34 = getelementptr %struct.reg_offset_data, ptr %20, i32 25, i32 1
  %22 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %r.sroa.5.0.copyload.i35 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i34, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i36 = getelementptr %struct.reg_offset_data, ptr %20, i32 25, i32 2
  %23 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %r.sroa.7.0.copyload.i37 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i36, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i38 = getelementptr %struct.reg_offset_data, ptr %20, i32 25, i32 3
  %24 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %r.sroa.9.0.copyload.i39 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i38, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i40 = getelementptr i8, ptr %26, i32 %r.sroa.0.0.copyload.i33
  %mul.i41 = mul i32 %r.sroa.5.0.copyload.i35, %18
  %add.ptr1.i42 = getelementptr i8, ptr %add.ptr.i40, i32 %mul.i41
  %mul2.i43 = mul i32 %r.sroa.7.0.copyload.i37, %18
  %add.ptr3.i44 = getelementptr i8, ptr %add.ptr1.i42, i32 %mul2.i43
  %27 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ee.i, align 4
  %mul4.i46 = mul i32 %28, %r.sroa.9.0.copyload.i39
  %add.ptr5.i47 = getelementptr i8, ptr %add.ptr3.i44, i32 %mul4.i46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i47, i32 -125894656) #7, !srcloc !107
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %31 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %layout.i, align 4
  %arrayidx.i49 = getelementptr %struct.reg_offset_data, ptr %32, i32 18
  %33 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %r.sroa.0.0.copyload.i50 = load i32, ptr %arrayidx.i49, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i51 = getelementptr %struct.reg_offset_data, ptr %32, i32 18, i32 1
  %34 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %r.sroa.5.0.copyload.i52 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i51, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i53 = getelementptr %struct.reg_offset_data, ptr %32, i32 18, i32 2
  %35 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %r.sroa.7.0.copyload.i54 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i53, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i55 = getelementptr %struct.reg_offset_data, ptr %32, i32 18, i32 3
  %36 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %r.sroa.9.0.copyload.i56 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i55, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i57 = getelementptr i8, ptr %38, i32 %r.sroa.0.0.copyload.i50
  %mul.i58 = mul i32 %r.sroa.5.0.copyload.i52, %30
  %add.ptr1.i59 = getelementptr i8, ptr %add.ptr.i57, i32 %mul.i58
  %mul2.i60 = mul i32 %r.sroa.7.0.copyload.i54, %30
  %add.ptr3.i61 = getelementptr i8, ptr %add.ptr1.i59, i32 %mul2.i60
  %39 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ee.i, align 4
  %mul4.i63 = mul i32 %40, %r.sroa.9.0.copyload.i56
  %add.ptr5.i64 = getelementptr i8, ptr %add.ptr3.i61, i32 %mul4.i63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i64, i32 822083584) #7, !srcloc !107
  %41 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %layout.i, align 4
  %arrayidx.i66 = getelementptr %struct.reg_offset_data, ptr %42, i32 12
  %43 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %r.sroa.0.0.copyload.i67 = load i32, ptr %arrayidx.i66, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i72 = getelementptr %struct.reg_offset_data, ptr %42, i32 12, i32 3
  %44 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %r.sroa.9.0.copyload.i73 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i72, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i74 = getelementptr i8, ptr %46, i32 %r.sroa.0.0.copyload.i67
  %47 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ee.i, align 4
  %mul4.i76 = mul i32 %48, %r.sroa.9.0.copyload.i73
  %add.ptr5.i77 = getelementptr i8, ptr %add.ptr.i74, i32 %mul4.i76
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i77) #7, !srcloc !105
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %52
  %or = or i32 %shl, %50
  %53 = tail call i32 @llvm.bswap.i32(i32 %or)
  %54 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %layout.i, align 4
  %arrayidx.i79 = getelementptr %struct.reg_offset_data, ptr %55, i32 12
  %56 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %r.sroa.0.0.copyload.i80 = load i32, ptr %arrayidx.i79, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i85 = getelementptr %struct.reg_offset_data, ptr %55, i32 12, i32 3
  %57 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %r.sroa.9.0.copyload.i86 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i85, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %add.ptr.i87 = getelementptr i8, ptr %59, i32 %r.sroa.0.0.copyload.i80
  %60 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ee.i, align 4
  %mul4.i89 = mul i32 %61, %r.sroa.9.0.copyload.i86
  %add.ptr5.i90 = getelementptr i8, ptr %add.ptr.i87, i32 %mul4.i89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i90, i32 %53) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %spec.select = select i1 %cmp, i32 704643072, i32 570425344
  %62 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id, align 4
  %64 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %layout.i, align 4
  %arrayidx.i92 = getelementptr %struct.reg_offset_data, ptr %65, i32 13
  %66 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %r.sroa.0.0.copyload.i93 = load i32, ptr %arrayidx.i92, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i94 = getelementptr %struct.reg_offset_data, ptr %65, i32 13, i32 1
  %67 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i94 to i32
  call void @__asan_load4_noabort(i32 %67)
  %r.sroa.5.0.copyload.i95 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i94, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i96 = getelementptr %struct.reg_offset_data, ptr %65, i32 13, i32 2
  %68 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %r.sroa.7.0.copyload.i97 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i96, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i98 = getelementptr %struct.reg_offset_data, ptr %65, i32 13, i32 3
  %69 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i98 to i32
  call void @__asan_load4_noabort(i32 %69)
  %r.sroa.9.0.copyload.i99 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i98, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %add.ptr.i100 = getelementptr i8, ptr %71, i32 %r.sroa.0.0.copyload.i93
  %mul.i101 = mul i32 %r.sroa.5.0.copyload.i95, %63
  %add.ptr1.i102 = getelementptr i8, ptr %add.ptr.i100, i32 %mul.i101
  %mul2.i103 = mul i32 %r.sroa.7.0.copyload.i97, %63
  %add.ptr3.i104 = getelementptr i8, ptr %add.ptr1.i102, i32 %mul2.i103
  %72 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ee.i, align 4
  %mul4.i106 = mul i32 %73, %r.sroa.9.0.copyload.i99
  %add.ptr5.i107 = getelementptr i8, ptr %add.ptr3.i104, i32 %mul4.i106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i107, i32 %spec.select) #7, !srcloc !107
  %initialized = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 8
  %74 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %initialized, align 4
  %head = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 6
  %75 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 7
  %76 = ptrtoint ptr %tail to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %tail, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_reset_channel(ptr noundef %bchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev1 = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 1
  %0 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.virt_dma_chan, ptr %bchan, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !106

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 468, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %id = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %6, i32 14
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %6, i32 14, i32 1
  %8 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %r.sroa.5.0.copyload.i = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %6, i32 14, i32 2
  %9 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %r.sroa.7.0.copyload.i = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %6, i32 14, i32 3
  %10 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %r.sroa.0.0.copyload.i
  %mul.i = mul i32 %r.sroa.5.0.copyload.i, %4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %mul2.i = mul i32 %r.sroa.7.0.copyload.i, %4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %14, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr3.i, i32 %mul4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16777216) #7, !srcloc !107
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %17 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layout.i, align 4
  %arrayidx.i38 = getelementptr %struct.reg_offset_data, ptr %18, i32 14
  %19 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %r.sroa.0.0.copyload.i39 = load i32, ptr %arrayidx.i38, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i40 = getelementptr %struct.reg_offset_data, ptr %18, i32 14, i32 1
  %20 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %r.sroa.5.0.copyload.i41 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i40, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i42 = getelementptr %struct.reg_offset_data, ptr %18, i32 14, i32 2
  %21 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %r.sroa.7.0.copyload.i43 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i42, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i44 = getelementptr %struct.reg_offset_data, ptr %18, i32 14, i32 3
  %22 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %r.sroa.9.0.copyload.i45 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i44, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i46 = getelementptr i8, ptr %24, i32 %r.sroa.0.0.copyload.i39
  %mul.i47 = mul i32 %r.sroa.5.0.copyload.i41, %16
  %add.ptr1.i48 = getelementptr i8, ptr %add.ptr.i46, i32 %mul.i47
  %mul2.i49 = mul i32 %r.sroa.7.0.copyload.i43, %16
  %add.ptr3.i50 = getelementptr i8, ptr %add.ptr1.i48, i32 %mul2.i49
  %25 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ee.i, align 4
  %mul4.i52 = mul i32 %26, %r.sroa.9.0.copyload.i45
  %add.ptr5.i53 = getelementptr i8, ptr %add.ptr3.i50, i32 %mul4.i52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i53, i32 0) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %initialized = getelementptr inbounds %struct.bam_chan, ptr %bchan, i32 0, i32 8
  %27 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %initialized, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_dma_free_desc(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_channel_irqs(ptr nocapture noundef readonly %bdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %layout.i = getelementptr inbounds %struct.bam_device, ptr %bdev, i32 0, i32 10
  %0 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout.i, align 4
  %arrayidx.i = getelementptr %struct.reg_offset_data, ptr %1, i32 11
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %r.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.reg_offset_data, ptr %1, i32 11, i32 3
  %3 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %r.sroa.9.0.copyload.i = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %r.sroa.0.0.copyload.i
  %ee.i = getelementptr inbounds %struct.bam_device, ptr %bdev, i32 0, i32 6
  %6 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ee.i, align 4
  %mul4.i = mul i32 %7, %r.sroa.9.0.copyload.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul4.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !105
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = and i32 %9, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %for.cond.preheader

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

for.cond.preheader:                               ; preds = %entry
  %num_channels = getelementptr inbounds %struct.bam_device, ptr %bdev, i32 0, i32 4
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp186.not = icmp eq i32 %11, 0
  br i1 %cmp186.not, label %for.cond.preheader.cleanup76_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup76_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channels = getelementptr inbounds %struct.bam_device, ptr %bdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.bam_chan, ptr %13, i32 %i.0187
  %shl = shl nuw i32 1, %i.0187
  %and3 = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %14 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %layout.i, align 4
  %arrayidx.i126 = getelementptr %struct.reg_offset_data, ptr %15, i32 16
  %16 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %16)
  %r.sroa.0.0.copyload.i127 = load i32, ptr %arrayidx.i126, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i128 = getelementptr %struct.reg_offset_data, ptr %15, i32 16, i32 1
  %17 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i128 to i32
  call void @__asan_load4_noabort(i32 %17)
  %r.sroa.5.0.copyload.i129 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i128, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i130 = getelementptr %struct.reg_offset_data, ptr %15, i32 16, i32 2
  %18 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %r.sroa.7.0.copyload.i131 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i130, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i132 = getelementptr %struct.reg_offset_data, ptr %15, i32 16, i32 3
  %19 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i132 to i32
  call void @__asan_load4_noabort(i32 %19)
  %r.sroa.9.0.copyload.i133 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i132, align 4
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 4
  %add.ptr.i134 = getelementptr i8, ptr %21, i32 %r.sroa.0.0.copyload.i127
  %mul.i = mul i32 %r.sroa.5.0.copyload.i129, %i.0187
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i134, i32 %mul.i
  %mul2.i = mul i32 %r.sroa.7.0.copyload.i131, %i.0187
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %22 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ee.i, align 4
  %mul4.i136 = mul i32 %23, %r.sroa.9.0.copyload.i133
  %add.ptr5.i137 = getelementptr i8, ptr %add.ptr3.i, i32 %mul4.i136
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i137) #7, !srcloc !105
  %25 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %layout.i, align 4
  %arrayidx.i139 = getelementptr %struct.reg_offset_data, ptr %26, i32 17
  %27 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load4_noabort(i32 %27)
  %r.sroa.0.0.copyload.i140 = load i32, ptr %arrayidx.i139, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i141 = getelementptr %struct.reg_offset_data, ptr %26, i32 17, i32 1
  %28 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i141 to i32
  call void @__asan_load4_noabort(i32 %28)
  %r.sroa.5.0.copyload.i142 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i141, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i143 = getelementptr %struct.reg_offset_data, ptr %26, i32 17, i32 2
  %29 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i143 to i32
  call void @__asan_load4_noabort(i32 %29)
  %r.sroa.7.0.copyload.i144 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i143, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i145 = getelementptr %struct.reg_offset_data, ptr %26, i32 17, i32 3
  %30 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i145 to i32
  call void @__asan_load4_noabort(i32 %30)
  %r.sroa.9.0.copyload.i146 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i145, align 4
  %31 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev, align 4
  %add.ptr.i147 = getelementptr i8, ptr %32, i32 %r.sroa.0.0.copyload.i140
  %mul.i148 = mul i32 %r.sroa.5.0.copyload.i142, %i.0187
  %add.ptr1.i149 = getelementptr i8, ptr %add.ptr.i147, i32 %mul.i148
  %mul2.i150 = mul i32 %r.sroa.7.0.copyload.i144, %i.0187
  %add.ptr3.i151 = getelementptr i8, ptr %add.ptr1.i149, i32 %mul2.i150
  %33 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ee.i, align 4
  %mul4.i153 = mul i32 %34, %r.sroa.9.0.copyload.i146
  %add.ptr5.i154 = getelementptr i8, ptr %add.ptr3.i151, i32 %mul4.i153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i154, i32 %24) #7, !srcloc !107
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %35 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %layout.i, align 4
  %arrayidx.i156 = getelementptr %struct.reg_offset_data, ptr %36, i32 21
  %37 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load4_noabort(i32 %37)
  %r.sroa.0.0.copyload.i157 = load i32, ptr %arrayidx.i156, align 4
  %r.sroa.5.0.arrayidx.sroa_idx.i158 = getelementptr %struct.reg_offset_data, ptr %36, i32 21, i32 1
  %38 = ptrtoint ptr %r.sroa.5.0.arrayidx.sroa_idx.i158 to i32
  call void @__asan_load4_noabort(i32 %38)
  %r.sroa.5.0.copyload.i159 = load i32, ptr %r.sroa.5.0.arrayidx.sroa_idx.i158, align 4
  %r.sroa.7.0.arrayidx.sroa_idx.i160 = getelementptr %struct.reg_offset_data, ptr %36, i32 21, i32 2
  %39 = ptrtoint ptr %r.sroa.7.0.arrayidx.sroa_idx.i160 to i32
  call void @__asan_load4_noabort(i32 %39)
  %r.sroa.7.0.copyload.i161 = load i32, ptr %r.sroa.7.0.arrayidx.sroa_idx.i160, align 4
  %r.sroa.9.0.arrayidx.sroa_idx.i162 = getelementptr %struct.reg_offset_data, ptr %36, i32 21, i32 3
  %40 = ptrtoint ptr %r.sroa.9.0.arrayidx.sroa_idx.i162 to i32
  call void @__asan_load4_noabort(i32 %40)
  %r.sroa.9.0.copyload.i163 = load i32, ptr %r.sroa.9.0.arrayidx.sroa_idx.i162, align 4
  %41 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bdev, align 4
  %add.ptr.i164 = getelementptr i8, ptr %42, i32 %r.sroa.0.0.copyload.i157
  %mul.i165 = mul i32 %r.sroa.5.0.copyload.i159, %i.0187
  %add.ptr1.i166 = getelementptr i8, ptr %add.ptr.i164, i32 %mul.i165
  %mul2.i167 = mul i32 %r.sroa.7.0.copyload.i161, %i.0187
  %add.ptr3.i168 = getelementptr i8, ptr %add.ptr1.i166, i32 %mul2.i167
  %43 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ee.i, align 4
  %mul4.i170 = mul i32 %44, %r.sroa.9.0.copyload.i163
  %add.ptr5.i171 = getelementptr i8, ptr %add.ptr3.i168, i32 %mul4.i170
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i171) #7, !srcloc !105
  %head = getelementptr %struct.bam_chan, ptr %13, i32 %i.0187, i32 6
  %desc_list = getelementptr %struct.bam_chan, ptr %13, i32 %i.0187, i32 11
  %46 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc_list, align 4
  %cmp40.not178 = icmp eq ptr %47, %desc_list
  br i1 %cmp40.not178, label %if.end6.for.end_crit_edge, label %for.body42.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body42.lr.ph:                                 ; preds = %if.end6
  %48 = and i32 %45, -65536
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %div123 = lshr i32 %49, 3
  %50 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %head, align 4
  %conv24 = zext i16 %51 to i32
  %sub = sub nsw i32 %div123, %conv24
  %and25 = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %div123, i32 %conv24)
  %cmp28 = icmp ult i32 %div123, %conv24
  %dec = sext i1 %cmp28 to i32
  %spec.select = add nsw i32 %and25, %dec
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 6
  br label %for.body42

for.body42:                                       ; preds = %list_del.exit.for.body42_crit_edge, %for.body42.lr.ph
  %avail.1183 = phi i32 [ %spec.select, %for.body42.lr.ph ], [ %sub59, %list_del.exit.for.body42_crit_edge ]
  %.pn.in179 = phi ptr [ %47, %for.body42.lr.ph ], [ %.pn185, %list_del.exit.for.body42_crit_edge ]
  %async_desc.0184 = getelementptr i8, ptr %.pn.in179, i32 -132
  %52 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn185 = load ptr, ptr %.pn.in179, align 4
  %xfer_len = getelementptr i8, ptr %.pn.in179, i32 -12
  %53 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %avail.1183, i32 %54)
  %cmp43 = icmp ult i32 %avail.1183, %54
  br i1 %cmp43, label %for.body42.for.end_crit_edge, label %if.end46

for.body42.for.end_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46:                                         ; preds = %for.body42
  %55 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %head, align 4
  %57 = trunc i32 %54 to i16
  %conv50 = add i16 %56, %57
  %58 = urem i16 %conv50, 4095
  store i16 %58, ptr %head, align 4
  %59 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xfer_len, align 4
  %num_desc = getelementptr i8, ptr %.pn.in179, i32 -16
  %61 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_desc, align 4
  %sub55 = sub i32 %62, %60
  store i32 %sub55, ptr %num_desc, align 4
  %curr_desc = getelementptr i8, ptr %.pn.in179, i32 -4
  %63 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %curr_desc, align 4
  %add.ptr57 = getelementptr %struct.bam_desc_hw, ptr %64, i32 %60
  store ptr %add.ptr57, ptr %curr_desc, align 4
  %sub59 = sub i32 %avail.1183, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %60)
  %tobool61.not = icmp eq i32 %62, %60
  br i1 %tobool61.not, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end46
  %chan.i = getelementptr i8, ptr %.pn.in179, i32 -120
  %65 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chan.i, align 4
  %67 = ptrtoint ptr %async_desc.0184 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %async_desc.0184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i.i = icmp slt i32 %68, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !106

do.body2.i.i:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/qcom/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !114
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then62
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %66, i32 0, i32 3
  %69 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %completed_cookie.i.i, align 4
  %70 = ptrtoint ptr %async_desc.0184 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %async_desc.0184, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@process_channel_irqs, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !115

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %66, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %74, ptr noundef nonnull @.str.33, ptr noundef %async_desc.0184, i32 noundef %68) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr i8, ptr %.pn.in179, i32 -24
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %76, ptr noundef %desc_completed.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %node.i, ptr %prev.i.i, align 4
  %78 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn.in179, i32 -20
  %79 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %node.i, ptr %76, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.if.end65_crit_edge

list_add_tail.exit.i.if.end65_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #7
  br label %if.end65

if.else:                                          ; preds = %if.end46
  %node = getelementptr i8, ptr %.pn.in179, i32 -24
  %81 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %desc_issued, align 4
  %call.i.i172 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %desc_issued, ptr noundef %82) #7
  br i1 %call.i.i172, label %if.end.i.i, label %if.else.if.end65_crit_edge

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %node, ptr %prev1.i.i, align 4
  %84 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %node, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn.in179, i32 -20
  %85 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %desc_issued, ptr %prev3.i.i, align 4
  %86 = ptrtoint ptr %desc_issued to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %node, ptr %desc_issued, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end.i.i, %if.else.if.end65_crit_edge, %if.then.i.i, %list_add_tail.exit.i.if.end65_crit_edge
  %call.i.i173 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in179) #7
  br i1 %call.i.i173, label %if.end.i.i175, label %if.end65.list_del.exit_crit_edge

if.end65.list_del.exit_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i175:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i174 = getelementptr inbounds %struct.list_head, ptr %.pn.in179, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i174, align 4
  %89 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %.pn.in179, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i175, %if.end65.list_del.exit_crit_edge
  %93 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in179, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in179, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp40.not = icmp eq ptr %.pn185, %desc_list
  br i1 %cmp40.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body42_crit_edge

list_del.exit.for.body42_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body42.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0187, 1
  %95 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %96
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup76_crit_edge

cleanup.cleanup76_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup76:                                        ; preds = %cleanup.cleanup76_crit_edge, %for.cond.preheader.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bamclk = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %bamclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bamclk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  %4 = ptrtoint ptr %bamclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bamclk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bamclk = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %bamclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bamclk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bamclk = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %bamclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bamclk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dma_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bamclk = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %bamclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bamclk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_bam_dma__239_1505_bam_dma_driver_init6, !1, !"__initcall__kmod_bam_dma__239_1505_bam_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1505, i32 1}
!2 = !{ptr @__exitcall_bam_dma_driver_exit, !1, !"__exitcall_bam_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1507, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1508, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1509, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1499, i32 11}
!12 = !{ptr @bam_dma_driver, !13, !"bam_dma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1495, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1259, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bam_dma_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bam_dma_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1274, i32 48}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1276, i32 3}
!26 = !{ptr @bam_dma_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bam_dma_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1281, i32 7}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1283, i32 7}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1286, i32 49}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1289, i32 4}
!36 = !{ptr @bam_dma_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bam_dma_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1291, i32 49}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1294, i32 4}
!42 = !{ptr @bam_dma_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bam_dma_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1298, i32 51}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1307, i32 3}
!48 = !{ptr @bam_dma_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bam_dma_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1332, i32 23}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1340, i32 3}
!54 = !{ptr @bam_dma_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bam_dma_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1368, i32 3}
!58 = !{ptr @bam_dma_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @bam_dma_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/qcom/../virt-dma.h", i32 101, i32 2}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !61, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/qcom/bam_dma.c", i32 551, i32 3}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @bam_alloc_chan._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @bam_alloc_chan._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/qcom/bam_dma.c", i32 591, i32 3}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @bam_free_chan._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @bam_free_chan._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/qcom/bam_dma.c", i32 670, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @bam_prep_slave_sg._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @bam_prep_slave_sg._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @bam_of_match, !81, !"bam_of_match", i1 false, i1 false}
!81 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1235, i32 34}
!82 = !{ptr @bam_v1_3_reg_info, !83, !"bam_v1_3_reg_info", i1 false, i1 false}
!83 = !{!"../drivers/dma/qcom/bam_dma.c", i32 114, i32 37}
!84 = !{ptr @bam_v1_4_reg_info, !85, !"bam_v1_4_reg_info", i1 false, i1 false}
!85 = !{!"../drivers/dma/qcom/bam_dma.c", i32 143, i32 37}
!86 = !{ptr @bam_v1_7_reg_info, !87, !"bam_v1_7_reg_info", i1 false, i1 false}
!87 = !{!"../drivers/dma/qcom/bam_dma.c", i32 172, i32 37}
!88 = !{ptr @bam_dma_pm_ops, !89, !"bam_dma_pm_ops", i1 false, i1 false}
!89 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1489, i32 32}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/qcom/bam_dma.c", i32 1454, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @bam_dma_runtime_resume._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @bam_dma_runtime_resume._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
!105 = !{i64 1285333}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 1284915}
!108 = !{i64 2154518501}
!109 = !{i64 2154424439}
!110 = !{i64 2154482972}
!111 = !{i64 2154528388}
!112 = !{i64 2154492174}
!113 = !{i64 2154489222}
!114 = !{i64 2154422931, i64 2154423426, i64 2154422968, i64 2154423024, i64 2154423058, i64 2154423082, i64 2154423123, i64 2154423144, i64 2154423172, i64 2154423206}
!115 = !{i64 2148730587, i64 2148730592, i64 2148730605, i64 2148730649, i64 2148730683, i64 2148730704}
